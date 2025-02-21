
 Working directory              : /wrk/irikura/molpro.pgGnXV1ond/
 Global scratch directory       : /wrk/irikura/molpro.pgGnXV1ond/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.pgGnXV1ond/

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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Feb-25          TIME: 10:14:45  
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

     167.772 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 4.456 MB, node maximum: 17.826 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056746. INTEGRALS IN      4 RECORDS. CPU TIME:     0.76 SEC, REAL TIME:     0.79 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    640 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.15 SEC

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
 CPU TIMES  *         9.57      9.36
 REAL TIME  *        10.50 SEC
 DISK USED  *        31.21 MB (local),      871.98 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  21  19

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20874.51036946  -20874.51036946     0.00D+00     0.13D+02     0     0       0.03      0.06    start
   2   -20877.37429351      -2.86392405     0.15D+00     0.59D+01     1     0       0.04      0.10    diag2
   3   -20884.06048053      -6.68618702     0.13D+00     0.78D+01     2     0       0.04      0.14    diag2
   4   -20884.32284852      -0.26236799     0.11D-01     0.89D-01     3     0       0.04      0.18    diag2
   5   -20884.36430092      -0.04145239     0.50D-02     0.51D-01     4     0       0.04      0.22    diag2
   6   -20884.37195604      -0.00765513     0.75D-03     0.52D-02     5     0       0.05      0.27    diag2
   7   -20884.37328374      -0.00132770     0.20D-03     0.13D-01     6     0       0.05      0.32    diag2
   8   -20884.37346879      -0.00018505     0.55D-04     0.42D-02     7     0       0.06      0.38    fixocc
   9   -20884.37349707      -0.00002828     0.18D-04     0.11D-02     8     0       0.06      0.44    diag2
  10   -20884.37350149      -0.00000442     0.72D-05     0.19D-03     9     0       0.04      0.48    diag2/orth
  11   -20884.37350175      -0.00000026     0.21D-05     0.29D-04     9     0       0.03      0.51    diag2
  12   -20884.37350176      -0.00000000     0.13D-06     0.12D-05     9     0       0.04      0.55    diag2
  13   -20884.37350176      -0.00000000     0.32D-07     0.92D-06     0     0       0.04      0.59    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.3735017556    
  RHF One-electron energy            -28596.4496530270    
  RHF Two-electron energy            7712.076151271423
  RHF Kinetic energy                  32688.9286455916    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.638882164912

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
    4.1     2.00000   -94.27602     1  1  d2+  0.99872
    5.1     2.00000   -94.27602     1  1  d2-  0.99872
    6.1     2.00000   -94.27602     1  1  d0   1.00003
    7.1     2.00000   -94.27602     1  1  d1+  0.99980
    8.1     2.00000   -94.27602     1  1  d1-  0.99980
    9.1     2.00000   -33.76531     1  3  s    0.28683    1  4  s    1.82870    1  5  s   -1.96244    1  6  s    2.65840
                                    1  8  s   -0.43152    1 10  s   -1.35709    1 11  s   -1.64090    1 12  s   -0.46853
   10.1     2.00000   -16.18309     1  2  d0   0.99933
   11.1     2.00000   -16.18309     1  2  d2-  0.93916    1  2  d2+  0.33996
   12.1     2.00000   -16.18309     1  2  d2- -0.34011    1  2  d2+  0.93967
   13.1     2.00000   -16.18309     1  2  d1+  0.99885
   14.1     2.00000   -16.18309     1  2  d1-  0.99874
   15.1     2.00000    -5.91932     1  4  s    0.38812    1  6  s    1.31668    1 10  s   -0.66960    1 11  s   -0.81429
   16.1     2.00000    -0.85058     1  3  d0   1.00025
   17.1     2.00000    -0.85058     1  3  d2- -0.56790    1  3  d2+  0.82306
   18.1     2.00000    -0.85058     1  3  d2-  0.82330    1  3  d2+  0.56804
   19.1     2.00000    -0.85058     1  3  d1+  0.79771    1  3  d1- -0.60345
   20.1     2.00000    -0.85058     1  3  d1+  0.60328    1  3  d1-  0.79748
   21.1     2.00000    -0.35260     1  5  s   -0.30638    1  6  s    1.39136    1 11  s   -0.29667
    1.2     2.00000  -506.12404     1  1  py   0.99917
    2.2     2.00000  -506.12404     1  1  px   0.99917
    3.2     2.00000  -506.12404     1  1  pz   0.99918
    4.2     2.00000  -119.74048     1  2  py   1.00826
    5.2     2.00000  -119.74048     1  2  px   1.00826
    6.2     2.00000  -119.74048     1  2  pz   1.00836
    7.2     2.00000   -25.80840     1  3  pz   0.96587
    8.2     2.00000   -25.80840     1  3  py   0.96587
    9.2     2.00000   -25.80840     1  3  px   0.96641
   10.2     2.00000    -5.60740     1  1  f1+  0.36777    1  1  f3+  0.92922
   11.2     2.00000    -5.60740     1  1  f0   0.87669    1  1  f2+  0.33007
   12.2     2.00000    -5.60740     1  1  f1- -0.28707    1  1  f3-  0.56766    1  1  f2+  0.76300
   13.2     2.00000    -5.60740     1  1  f1- -0.28094    1  1  f0   0.46273    1  1  f2- -0.31978    1  1  f3-  0.61098
                                    1  1  f2+ -0.48104
   14.2     2.00000    -5.60740     1  1  f2-  0.91578    1  1  f3-  0.25039    1  1  f2+ -0.27790
   15.2     2.00000    -5.60740     1  1  f1-  0.90076    1  1  f3-  0.43246
   16.2     2.00000    -5.60740     1  1  f1+  0.92994    1  1  f3+ -0.36747
   17.2     2.00000    -3.61624     1  4  py   0.99221
   18.2     2.00000    -3.61624     1  4  px   0.99221
   19.2     2.00000    -3.61624     1  4  pz   0.99221
   20.2     1.00000    -0.05172     1  9  pz   0.29817    1 10  pz   0.45085    1 11  pz   0.33836
   21.2     1.00000    -0.05172     1  9  py   0.29817    1 10  py   0.45085    1 11  py   0.33836
   22.2     1.00000    -0.05172     1  9  px   0.29817    1 10  px   0.45085    1 11  px   0.33836


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
 CPU TIMES  *        10.17      0.59      9.36
 REAL TIME  *        11.14 SEC
 DISK USED  *        34.57 MB (local),      925.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  40 (   21   19)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     149 (   78   71)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.494D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.505D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.692D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.215D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.628D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.291D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.478D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.513D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.408D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.422D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 2   3 5 4 6 1 2 5 3 4 6   1 1 5 3 6 4 2 1 3 5   6 4 21013 7141511 9
                                       12 8 1 5 3 6 4 21013   7 911141512 8 5 3 6   4 2 1 911 71415 812  1310 2 5 3 6 4 1 7 9
                                       1112 813101514 2 3 5   6 4 1 2 3 5 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.285D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.286D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.226D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.143D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.176D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.324D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.324D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.513D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.566D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.717D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.358D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.298D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.287D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.287D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.204D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.276D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.210D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 7   610 9 8 5 4 2 1 3 3   2 1 3 2 1 2 1 310 8   7 9 6 5 4 2 1 3 810
                                        7 9 6 4 5 6 7 9 810   4 5 2 1 3 6 810 7 9   4 51211132119161417  151820 2 1 3 6 7 910
                                        8 5 4 6 9 7 4 5 810   3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  3527  ( 114 closed/active, 2987 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    4112
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0 -20884.21035584  -20884.23519631   -0.02484047    0.15458365 0.00003286 0.00000000  0.58E+00      5.75
   2    7   10    0 -20884.23439811  -20884.23444638   -0.00004827    0.00729574 0.00000047 0.00000000  0.26E-01     12.04
   3    7   10    0 -20884.23444650  -20884.23444650   -0.00000000    0.00002256 0.00000000 0.00000000  0.11E-03     17.47
   4    3    4    0 -20884.23444650  -20884.23444650    0.00000000    0.00000000 0.00000000 0.00000000  0.25E-07     22.17

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.78E-08)
                       Final energy: -20884.23444650
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3392668978    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.69113094
 One electron energy                        -28580.58996753
 Two electron energy                          7696.25070064
 Virial ratio                                    1.63886622
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3392668975    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.69113099
 One electron energy                        -28580.58996786
 Two electron energy                          7696.25070096
 Virial ratio                                    1.63886622
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3392668975    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.69113100
 One electron energy                        -28580.58996788
 Two electron energy                          7696.25070098
 Virial ratio                                    1.63886622
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3049960809    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61280878
 One electron energy                        -28579.93134064
 Two electron energy                          7695.62634456
 Virial ratio                                    1.63886670
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3049960809    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61280878
 One electron energy                        -28579.93134064
 Two electron energy                          7695.62634456
 Virial ratio                                    1.63886670
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3049960803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61280884
 One electron energy                        -28579.93134096
 Two electron energy                          7695.62634488
 Virial ratio                                    1.63886670
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3049960803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61280885
 One electron energy                        -28579.93134098
 Two electron energy                          7695.62634490
 Virial ratio                                    1.63886670
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3049960801    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61280886
 One electron energy                        -28579.93134109
 Two electron energy                          7695.62634501
 Virial ratio                                    1.63886670
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.2559214847    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.40619107
 One electron energy                        -28578.06217159
 Two electron energy                          7693.80625011
 Virial ratio                                    1.63886923
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -20884.1682672130    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.10852399
 One electron energy                        -28560.98031038
 Two electron energy                          7676.81204316
 Virial ratio                                    1.63889192
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -20884.1682672130    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.10852399
 One electron energy                        -28560.98031038
 Two electron energy                          7676.81204317
 Virial ratio                                    1.63889192
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -20884.1682672128    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.10852397
 One electron energy                        -28560.98031034
 Two electron energy                          7676.81204312
 Virial ratio                                    1.63889192
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -20884.1550272812    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.33122640
 One electron energy                        -28562.73478058
 Two electron energy                          7678.57975330
 Virial ratio                                    1.63888716
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -20884.1550272810    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.33122640
 One electron energy                        -28562.73478057
 Two electron energy                          7678.57975329
 Virial ratio                                    1.63888716
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -20884.1550272809    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.33122640
 One electron energy                        -28562.73478058
 Two electron energy                          7678.57975330
 Virial ratio                                    1.63888716
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -20884.1550272804    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.33122639
 One electron energy                        -28562.73478056
 Two electron energy                          7678.57975328
 Virial ratio                                    1.63888716
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -20884.1550272803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.33122639
 One electron energy                        -28562.73478056
 Two electron energy                          7678.57975328
 Virial ratio                                    1.63888716
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -20884.1413963089    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.54555632
 One electron energy                        -28564.65527807
 Two electron energy                          7680.51388176
 Virial ratio                                    1.63888255
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999745
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000010753128
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999989210063
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000003624
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.077400813572
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999263364
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000730011
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.922599062335
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999891813003
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000108187415
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999582
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.832309842130
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000031929
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     3.999999967334
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.167690454802
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.000000000739
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000005399
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999753
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999994849
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999993423
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.998052026433
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000891
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000004247
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.001947981001
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999997716
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999602
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000002772
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.008902146058
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000000001030
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000792
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     3.991097822803
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     3.999999998512
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999994856
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999989247119
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000010795088
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000002953
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.924547159995
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000735745
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999265742
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.075452956663
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000108189281
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999891812983
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999997646
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.158788011812
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.999999967041
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000031875
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     0.841211722395
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     1.000000000750
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 3   5 4 2 6 1 5 3 4 2 6   1 1 5 3 4 6 2 1 3 5   6 4 210131415 7 911
                                       12 8 1 3 5 6 4 21013   7 9141511 812 5 3 4   6 2 1 913101415 711   812 2 5 3 4 6 1 7 9
                                       1310 812151411 2 3 5   4 6 1 2 3 5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 3 2 4   7 910 8 6 5 1 2 3 3   2 1 3 2 1 1 2 3 7 9  10 8 6 5 4 2 1 3 810
                                        7 9 6 4 5 6 7 9 810   4 5 1 2 3 6 810 7 9   4 51118201715161413  211219 6 7 910 8 4 5
                                        1 2 3 6 9 7 4 5 810   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.68862     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27075
                                    1  5  s    9.90677    1  6  s  -13.20177    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75360    1 11  s    8.14131    1 12  s    2.33000
    2.1     2.00000  -587.77719     1  2  s    1.25928    1  3  s    0.91633    1  4  s    2.61430    1  5  s   -6.06291
                                    1  6  s    8.07898    1  7  s    0.60613    1  8  s   -1.37503    1 10  s   -4.13295
                                    1 11  s   -4.98218    1 12  s   -1.42587
    3.1     2.00000  -143.83156     1  3  s    0.46646    1  4  s   -1.52682    1  5  s    3.55925    1  6  s   -4.76198
                                    1  7  s   -0.35630    1  8  s    0.80151    1 10  s    2.43487    1 11  s    2.93724
                                    1 12  s    0.84020
    4.1     2.00000   -94.58589     1  1  d2+  1.00003
    5.1     2.00000   -94.58589     1  1  d2-  1.00003
    6.1     2.00000   -94.58589     1  1  d0   1.00003
    7.1     2.00000   -94.58589     1  1  d1+  1.00003
    8.1     2.00000   -94.58589     1  1  d1-  1.00003
    9.1     2.00000   -34.07539     1  3  s    0.28680    1  4  s    1.82848    1  5  s   -1.96136    1  6  s    2.65640
                                    1  8  s   -0.43148    1 10  s   -1.35611    1 11  s   -1.63965    1 12  s   -0.46819
   10.1     2.00000   -16.49297     1  2  d2-  0.99940
   11.1     2.00000   -16.49297     1  2  d2+  0.99940
   12.1     2.00000   -16.49297     1  2  d1+  0.99940
   13.1     2.00000   -16.49297     1  2  d0   0.99940
   14.1     2.00000   -16.49297     1  2  d1-  0.99940
   15.1     2.00000    -6.22952     1  4  s    0.38890    1  6  s    1.33373    1 10  s   -0.67819    1 11  s   -0.82474
   16.1     2.00000    -1.16072     1  3  d2+  1.00141
   17.1     2.00000    -1.16072     1  3  d2-  1.00141
   18.1     2.00000    -1.16072     1  3  d1+  1.00141
   19.1     2.00000    -1.16072     1  3  d0   1.00141
   20.1     2.00000    -1.16072     1  3  d1-  1.00141
   21.1     2.00000    -0.63488     1  5  s   -0.41749    1  6  s    1.66901    1 10  s   -0.30693    1 11  s   -0.39271
    1.2     2.00000  -506.43412     1  1  pz   0.99918
    2.2     2.00000  -506.43412     1  1  py   0.99918
    3.2     2.00000  -506.43412     1  1  px   0.99918
    4.2     2.00000  -120.05024     1  2  pz   1.00839
    5.2     2.00000  -120.05024     1  2  py   1.00839
    6.2     2.00000  -120.05024     1  2  px   1.00839
    7.2     2.00000   -26.11804     1  3  px   0.96632
    8.2     2.00000   -26.11804     1  3  pz   0.96632
    9.2     2.00000   -26.11804     1  3  py   0.96632
   10.2     2.00000    -5.91722     1  1  f1+  1.00003
   11.2     2.00000    -5.91722     1  1  f3+  1.00003
   12.2     2.00000    -5.91722     1  1  f3-  1.00003
   13.2     2.00000    -5.91722     1  1  f2+  1.00003
   14.2     2.00000    -5.91722     1  1  f2-  1.00003
   15.2     2.00000    -5.91722     1  1  f0   1.00003
   16.2     2.00000    -5.91722     1  1  f1-  1.00003
   17.2     2.00000    -3.92605     1  4  px   0.99958
   18.2     2.00000    -3.92605     1  4  py   0.99958
   19.2     2.00000    -3.92605     1  4  pz   0.99958
   20.2     0.49952    -0.10167     1  9  pz   0.38242    1 10  pz   0.56697
   21.2     0.49952    -0.10167     1  9  py   0.38242    1 10  py   0.56697
   22.2     0.49952    -0.10167     1  9  px   0.38242    1 10  px   0.56697
   23.2     0.16715     0.02654     1 11  pz  -0.35259    1 12  pz   1.24437
   24.2     0.16715     0.02654     1 11  py  -0.35259    1 12  py   1.24437
   25.2     0.16715     0.02654     1 11  px  -0.35259    1 12  px   1.24437
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 a0a000         0.99714845     -0.00001570     -0.00007157
 aa0000         0.00001594      0.99714309      0.00326981
 0aa000         0.00007152     -0.00326981      0.99714309
 00aa00        -0.05314443      0.00000084      0.00000381
 a0000a         0.05314443     -0.00000084     -0.00000381
 0a0a00        -0.00000085     -0.05314415     -0.00017427
 0a000a         0.00000381     -0.00017427      0.05314414
 a000a0         0.00000085      0.05314414      0.00017427
 00a0a0        -0.00000381      0.00017427     -0.05314414
 
 Energy:   -20884.33926690 -20884.33926690 -20884.33926690
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 020000        -0.00001788     -0.01787383      0.00005071      0.00001531      0.80974964      0.55993188      0.00000000
 200000         0.00003038      0.71020068     -0.00005241     -0.00000044     -0.38939565      0.55993186      0.00000000
 a0b000         0.70143459     -0.00002178     -0.00000717     -0.00002660      0.00001500     -0.00000000     -0.00000000
 b0a000        -0.70143459      0.00002178      0.00000717      0.00002660     -0.00001500      0.00000000      0.00000000
 0ab000         0.00002661     -0.00000690      0.00034750      0.70143450     -0.00001344     -0.00000000     -0.00000001
 0ba000        -0.00002661      0.00000690     -0.00034750     -0.70143450      0.00001344      0.00000000      0.00000001
 ba0000        -0.00000716     -0.00002802     -0.70143450      0.00034750      0.00004330      0.00000000      0.00000000
 ab0000         0.00000716      0.00002802      0.70143450     -0.00034750     -0.00004330     -0.00000000     -0.00000000
 002000        -0.00001251     -0.69232686      0.00000170     -0.00001487     -0.42035402      0.55993187     -0.00000000
 0b00a0         0.00000160      0.00160427     -0.00000455     -0.00000137     -0.07267925     -0.09917685      0.00000000
 0a00b0        -0.00000160     -0.00160427      0.00000455      0.00000137      0.07267925      0.09917685     -0.00000000
 b00a00        -0.00000273     -0.06374421      0.00000470      0.00000004      0.03495029     -0.09917685     -0.00000000
 a00b00         0.00000273      0.06374421     -0.00000470     -0.00000004     -0.03495029      0.09917685      0.00000000
 00ab00         0.06295741     -0.00000195     -0.00000064     -0.00000239      0.00000135     -0.00000000     -0.00002390
 00ba00        -0.06295741      0.00000195      0.00000064      0.00000239     -0.00000135      0.00000000      0.00002390
 a0000b         0.06295740     -0.00000195     -0.00000064     -0.00000239      0.00000135     -0.00000000      0.00002390
 b0000a        -0.06295740      0.00000195      0.00000064      0.00000239     -0.00000135      0.00000000     -0.00002390
 0b0a00        -0.00000064     -0.00000252     -0.06295740      0.00003119      0.00000389      0.00000000     -0.00520065
 0a0b00         0.00000064      0.00000252      0.06295740     -0.00003119     -0.00000389     -0.00000000      0.00520065
 0b000a        -0.00000239      0.00000062     -0.00003119     -0.06295740      0.00000121      0.00000000     -0.49997297
 0a000b         0.00000239     -0.00000062      0.00003119      0.06295740     -0.00000121     -0.00000000      0.49997297
 00b0a0        -0.00000239      0.00000062     -0.00003119     -0.06295740      0.00000121     -0.00000000      0.49997293
 00a0b0         0.00000239     -0.00000062      0.00003119      0.06295740     -0.00000121      0.00000000     -0.49997293
 b000a0        -0.00000064     -0.00000252     -0.06295739      0.00003119      0.00000389      0.00000000      0.00520065
 a000b0         0.00000064      0.00000252      0.06295739     -0.00003119     -0.00000389     -0.00000000     -0.00520065
 00a00b        -0.00000112     -0.06213994      0.00000015     -0.00000133     -0.03772896      0.09917685      0.00000000
 00b00a         0.00000112      0.06213994     -0.00000015      0.00000133      0.03772896     -0.09917685     -0.00000000
 
 Energy:   -20884.30499608 -20884.30499608 -20884.30499608 -20884.30499608 -20884.30499608 -20884.25592148 -20884.16826721

 State:              8               9              10              11              12              13              14
 020000        -0.00000000      0.00000000     -0.10295228     -0.00000113      0.00000252      0.00486225     -0.00000095
 200000         0.00000000      0.00000000      0.04726530     -0.00000029     -0.00000300     -0.09159040      0.00000117
 a0b000        -0.00000000      0.00000000      0.00000079     -0.00000152      0.00000083     -0.00000074     -0.08925866
 b0a000         0.00000000     -0.00000000     -0.00000079      0.00000152     -0.00000083      0.00000074      0.08925866
 0ab000        -0.00000000      0.00000000      0.00000102     -0.08925866      0.00000923      0.00000081      0.00000152
 0ba000         0.00000000     -0.00000000     -0.00000102      0.08925866     -0.00000923     -0.00000081     -0.00000152
 ba0000        -0.00000001     -0.00000000      0.00000210      0.00000923      0.08925866     -0.00000184      0.00000083
 ab0000         0.00000001      0.00000000     -0.00000210     -0.00000923     -0.08925866      0.00000184     -0.00000083
 002000        -0.00000000     -0.00000000      0.05568695      0.00000142      0.00000048      0.08672815     -0.00000022
 0b00a0        -0.00000000      0.00000000     -0.57174457     -0.00000630      0.00001401      0.02700245     -0.00000526
 0a00b0         0.00000000     -0.00000000      0.57174457      0.00000630     -0.00001401     -0.02700245      0.00000526
 b00a00         0.00000000      0.00000000      0.26248744     -0.00000161     -0.00001667     -0.50864652      0.00000651
 a00b00        -0.00000000     -0.00000000     -0.26248744      0.00000161      0.00001667      0.50864652     -0.00000651
 00ab00         0.00000998     -0.50000000     -0.00000437      0.00000844     -0.00000462      0.00000409      0.49569720
 00ba00        -0.00000998      0.50000000      0.00000437     -0.00000844      0.00000462     -0.00000409     -0.49569720
 a0000b        -0.00000998      0.50000000     -0.00000437      0.00000844     -0.00000462      0.00000409      0.49569720
 b0000a         0.00000998     -0.50000000      0.00000437     -0.00000844      0.00000462     -0.00000409     -0.49569720
 0b0a00         0.49997297      0.00001022     -0.00001166     -0.00005124     -0.49569718      0.00001022     -0.00000461
 0a0b00        -0.49997297     -0.00001022      0.00001166      0.00005124      0.49569718     -0.00001022      0.00000461
 0b000a        -0.00520065      0.00002379      0.00000568     -0.49569718      0.00005124      0.00000449      0.00000844
 0a000b         0.00520065     -0.00002379     -0.00000568      0.49569718     -0.00005124     -0.00000449     -0.00000844
 00b0a0         0.00520065     -0.00002379      0.00000568     -0.49569722      0.00005124      0.00000449      0.00000844
 00a0b0        -0.00520065      0.00002379     -0.00000568      0.49569722     -0.00005124     -0.00000449     -0.00000844
 b000a0        -0.49997293     -0.00001022     -0.00001166     -0.00005124     -0.49569722      0.00001022     -0.00000461
 a000b0         0.49997293      0.00001022      0.00001166      0.00005124      0.49569722     -0.00001022      0.00000461
 00a00b         0.00000000      0.00000000     -0.30925706     -0.00000791     -0.00000266     -0.48164408      0.00000125
 00b00a        -0.00000000     -0.00000000      0.30925706      0.00000791      0.00000266      0.48164408     -0.00000125
 
 Energy:   -20884.16826721 -20884.16826721 -20884.15502728 -20884.15502728 -20884.15502728 -20884.15502728 -20884.15502728

 State:             15
 020000        -0.14062307
 200000        -0.14062308
 a0b000         0.00000000
 b0a000        -0.00000000
 0ab000        -0.00000000
 0ba000         0.00000000
 ba0000        -0.00000000
 ab0000         0.00000000
 002000        -0.14062308
 0b00a0        -0.39563361
 0a00b0         0.39563361
 b00a00        -0.39563366
 a00b00         0.39563366
 00ab00        -0.00000000
 00ba00         0.00000000
 a0000b        -0.00000000
 b0000a         0.00000000
 0b0a00         0.00000000
 0a0b00        -0.00000000
 0b000a        -0.00000000
 0a000b         0.00000000
 00b0a0        -0.00000000
 00a0b0         0.00000000
 b000a0         0.00000000
 a000b0        -0.00000000
 00a00b         0.39563365
 00b00a        -0.39563365
 
 Energy:   -20884.14139631
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.78       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        32.77     22.60      0.59      9.36
 REAL TIME  *        38.00 SEC
 DISK USED  *       269.06 MB (local),        4.57 GB (total)
 SF USED    *       564.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.33927   2.0
    -20884.33927   2.0
    -20884.33927   2.0
    -20884.30500   6.0
    -20884.30500   6.0
    -20884.30500   6.0
    -20884.30500   6.0
    -20884.30500   6.0
    -20884.25592  -0.0
    -20884.16827   2.0
    -20884.16827   2.0
    -20884.16827   2.0
    -20884.15503   6.0
    -20884.15503   6.0
    -20884.15503   6.0
    -20884.15503   6.0
    -20884.15503   6.0
    -20884.14140  -0.0
                                                  


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
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.29 sec, npass=  1  Memory used:   6.08 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.33926690
     2    -20884.33926690
     3    -20884.33926690

 Number of blocks in overlap matrix:   970   Smallest eigenvalue:  0.16D-01
 Number of N-2 electron functions:    1072
 Number of N-1 electron functions:   39123

 Number of internal configurations:                24480
 Number of singly external configurations:       2912532
 Number of doubly external configurations:       5954377
 Total number of contracted configurations:      8891389
 Total number of uncontracted configurations:  110548093

 Diagonal Coupling coefficients finished.               Storage:  16186932 words, CPU-Time:      4.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2869442 words, CPU-time:      2.49 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.33926690     0.00000000    -1.30656023  0.48D-01  0.14D+00    10.59
    1     2     2     1.00000000     0.00000000-20884.33926690    -0.00000000    -1.30669584  0.48D-01  0.14D+00    10.59
    1     3     3     1.00000000     0.00000000-20884.33926690     0.00000000    -1.30640166  0.48D-01  0.13D+00    10.59
    2     1     1     1.10357942    -0.98713864-20885.32640554    -0.98713864    -0.03453173  0.46D-02  0.25D-02   275.42
    2     2     2     1.10367402    -0.98701551-20885.32628241    -0.98701551    -0.03466913  0.46D-02  0.25D-02   275.42
    2     3     3     1.10376575    -0.98689948-20885.32616638    -0.98689948    -0.03479601  0.47D-02  0.25D-02   275.42
    3     1     1     1.08690243    -1.01913404-20885.35840093    -0.03199540    -0.00235758  0.55D-04  0.69D-04   539.95
    3     2     2     1.08689767    -1.01913214-20885.35839904    -0.03211664    -0.00235778  0.55D-04  0.69D-04   539.95
    3     3     3     1.08689288    -1.01913038-20885.35839728    -0.03223091    -0.00235824  0.56D-04  0.69D-04   539.95
    4     1     1     1.08672937    -1.01956997-20885.35883687    -0.00043594    -0.00037308  0.35D-04  0.26D-04   803.50
    4     2     2     1.08672525    -1.01956856-20885.35883546    -0.00043642    -0.00037540  0.35D-04  0.26D-04   803.50
    4     3     3     1.08672107    -1.01956727-20885.35883417    -0.00043688    -0.00037748  0.35D-04  0.26D-04   803.50
    5     1     1     1.08685997    -1.01986303-20885.35912993    -0.00029306    -0.00007192  0.26D-05  0.12D-05  1067.39
    5     2     2     1.08685994    -1.01986302-20885.35912992    -0.00029446    -0.00007181  0.26D-05  0.12D-05  1067.39
    5     3     3     1.08685982    -1.01986301-20885.35912991    -0.00029575    -0.00007174  0.26D-05  0.12D-05  1067.39
    6     1     1     1.08682893    -1.01987653-20885.35914343    -0.00001350    -0.00000823  0.17D-05  0.38D-06  1330.97
    6     2     2     1.08682888    -1.01987651-20885.35914340    -0.00001349    -0.00000826  0.17D-05  0.38D-06  1330.97
    6     3     3     1.08682877    -1.01987649-20885.35914339    -0.00001348    -0.00000828  0.17D-05  0.38D-06  1330.97
    7     1     1     1.08671351    -1.01988172-20885.35914862    -0.00000519    -0.00000766  0.22D-06  0.19D-06  1594.57
    7     2     2     1.08671403    -1.01988172-20885.35914861    -0.00000521    -0.00000768  0.22D-06  0.19D-06  1594.57
    7     3     3     1.08671458    -1.01988171-20885.35914861    -0.00000522    -0.00000769  0.22D-06  0.19D-06  1594.57
    8     1     1     1.08668959    -1.01988320-20885.35915010    -0.00000147    -0.00000104  0.75D-07  0.35D-07  1858.29
    8     2     2     1.08668985    -1.01988320-20885.35915009    -0.00000148    -0.00000104  0.75D-07  0.35D-07  1858.29
    8     3     3     1.08669009    -1.01988320-20885.35915009    -0.00000149    -0.00000105  0.76D-07  0.35D-07  1858.29
    9     1     1     1.08668980    -1.01988343-20885.35915032    -0.00000023    -0.00000030  0.50D-07  0.18D-07  2121.92
    9     2     2     1.08668942    -1.01988343-20885.35915032    -0.00000023    -0.00000030  0.49D-07  0.18D-07  2121.92
    9     3     3     1.08668962    -1.01988343-20885.35915032    -0.00000023    -0.00000030  0.49D-07  0.18D-07  2121.92
   10     1     1     1.08668984    -1.01988360-20885.35915050    -0.00000018    -0.00000031  0.79D-08  0.78D-08  2384.99
   10     2     2     1.08668972    -1.01988360-20885.35915050    -0.00000018    -0.00000031  0.78D-08  0.77D-08  2384.99
   10     3     3     1.08668978    -1.01988360-20885.35915050    -0.00000018    -0.00000031  0.79D-08  0.78D-08  2384.99
   11     1     1     1.08668959    -1.01988366-20885.35915056    -0.00000006    -0.00000004  0.38D-08  0.16D-08  2648.52
   11     2     2     1.08668956    -1.01988366-20885.35915056    -0.00000006    -0.00000004  0.38D-08  0.16D-08  2648.52
   11     3     3     1.08668952    -1.01988366-20885.35915056    -0.00000006    -0.00000004  0.38D-08  0.16D-08  2648.52


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.6%  73.6%
 P   0.3%  15.8%   2.5%

 Initialization:   0.3%
 Other:            5.9%

 Total CPU:     2648.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0000           0.0000000  -0.0000000   0.9561235
 22222222222222222/0/000          -0.0000000   0.9561235   0.0000000
 222222222222222220//000           0.9561235   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.958530
 2           0.958530   -0.000000    0.000000
 3           0.000000    0.958530   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958530   -0.000000   -0.000000
 2          -0.000000    0.958530    0.000000
 3          -0.000000    0.000000    0.958530


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95853000 (fixed)   0.95853992 (relaxed)   0.95853000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157406   -0.00361115   -0.00479282
 Singles      0.01291551   -0.05397140   -0.06168943
 Pairs        0.07391054   -0.96230111   -0.95340141
 Total        1.08840011   -1.01988366   -1.01988366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33926690
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.01855720
 One electron energy               -28576.70503794
 Two electron energy                 7691.34588738
 Virial quotient                       -0.63891056
 Correlation energy                    -1.01988366
 !MRCI STATE 1.1 Energy              -20885.3591505592    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44930838 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44928541 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44930838 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45113677 (Pople, fixed reference)
 Cluster corrected energies        -20885.45111138 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45113677 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95853002 (fixed)   0.95853994 (relaxed)   0.95853002 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157406   -0.00361115   -0.88893567
 Singles      0.01291546   -0.05397137   -0.06168939
 Pairs        0.07391055   -0.00000000   -0.06925861
 Total        1.08840007   -0.05758252   -1.01988366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33926690
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.01855250
 One electron energy               -28576.70503342
 Two electron energy                 7691.34588286
 Virial quotient                       -0.63891056
 Correlation energy                    -1.01988366
 !MRCI STATE 2.1 Energy              -20885.3591505586    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44930835 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44928538 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44930835 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45113674 (Pople, fixed reference)
 Cluster corrected energies        -20885.45111134 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45113674 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95853004 (fixed)   0.95853995 (relaxed)   0.95853004 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157406   -0.00361115   -0.88893574
 Singles      0.01291541   -0.05397133   -0.06168934
 Pairs        0.07391057    0.00000000   -0.06925859
 Total        1.08840004   -0.05758248   -1.01988366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33926690
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.01854964
 One electron energy               -28576.70503094
 Two electron energy                 7691.34588038
 Virial quotient                       -0.63891056
 Correlation energy                    -1.01988366
 !MRCI STATE 3.1 Energy              -20885.3591505584    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44930831 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44928534 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44930831 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45113669 (Pople, fixed reference)
 Cluster corrected energies        -20885.45111130 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45113669 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      209.16       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2700.61   2667.84     22.60      0.59      9.36
 REAL TIME  *      2739.00 SEC
 DISK USED  *       476.44 MB (local),        7.81 GB (total)
 SF USED    *         2.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.44930838  AU                              
 SETTING HLSDIAG(2)     =    -20885.44930835  AU                              
 SETTING HLSDIAG(3)     =    -20885.44930831  AU                              


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
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.30499608
     2    -20884.30499608
     3    -20884.30499608
     4    -20884.30499608
     5    -20884.30499608
     6    -20884.25592148
     7    -20884.16826721
     8    -20884.16826721
     9    -20884.16826721
    10    -20884.15502728
    11    -20884.15502728
    12    -20884.15502728
    13    -20884.15502728
    14    -20884.15502728
    15    -20884.14139631

 Number of blocks in overlap matrix:  4438   Smallest eigenvalue:  0.91D+00
 Number of N-2 electron functions:    4540
 Number of N-1 electron functions:   23568

 Number of internal configurations:                16366
 Number of singly external configurations:       1753492
 Number of doubly external configurations:      25219314
 Total number of contracted configurations:     26989172
 Total number of uncontracted configurations:   71912576

 Diagonal Coupling coefficients finished.               Storage:  22416904 words, CPU-Time:     63.83 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4522081 words, CPU-time:     10.46 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.30499608     0.00000000    -1.31761338  0.57D-01  0.14D+00    85.20
    1     2     2     1.00000000     0.00000000-20884.30499608     0.00000000    -1.31660118  0.55D-01  0.14D+00    85.20
    1     3     3     1.00000000     0.00000000-20884.30499608     0.00000000    -1.31766067  0.57D-01  0.14D+00    85.20
    1     4     4     1.00000000     0.00000000-20884.30499608     0.00000000    -1.31734147  0.56D-01  0.14D+00    85.20
    1     5     5     1.00000000     0.00000000-20884.30499608     0.00000000    -1.31664340  0.55D-01  0.14D+00    85.20
    1     6     6     1.00000000     0.00000000-20884.25592148     0.00000000    -1.31718563  0.39D-01  0.16D+00    85.20
    1     7     7     1.00000000     0.00000000-20884.16826721     0.00000000    -1.26694630  0.45D-01  0.12D+00    85.20
    1     8     8     1.00000000     0.00000000-20884.16826721     0.00000000    -1.26698657  0.45D-01  0.12D+00    85.20
    1     9     9     1.00000000     0.00000000-20884.16826721     0.00000000    -1.26700017  0.45D-01  0.12D+00    85.20
    1    10    10     1.00000000     0.00000000-20884.15502728    -0.00000000    -1.27305431  0.44D-01  0.12D+00    85.20
    1    11    11     1.00000000     0.00000000-20884.15502728     0.00000000    -1.27331516  0.45D-01  0.12D+00    85.20
    1    12    12     1.00000000     0.00000000-20884.15502728    -0.00000000    -1.27342468  0.45D-01  0.12D+00    85.20
    1    13    13     1.00000000     0.00000000-20884.15502728     0.00000000    -1.27304267  0.44D-01  0.12D+00    85.20
    1    14    14     1.00000000     0.00000000-20884.15502728     0.00000000    -1.27338644  0.45D-01  0.12D+00    85.20
    1    15    15     1.00000000     0.00000000-20884.14139631    -0.00000000    -1.28165865  0.48D-01  0.13D+00    85.20
    2     1     1     1.10940114    -0.98972174-20885.29471782    -0.98972174    -0.03732270  0.52D-02  0.31D-02  1392.52
    2     2     2     1.10947098    -0.98955939-20885.29455547    -0.98955939    -0.03752465  0.53D-02  0.32D-02  1392.52
    2     3     3     1.10977172    -0.98922637-20885.29422245    -0.98922637    -0.03788110  0.55D-02  0.32D-02  1392.52
    2     4     4     1.10994002    -0.98900068-20885.29399676    -0.98900068    -0.03813981  0.56D-02  0.32D-02  1392.52
    2     5     5     1.10996061    -0.98895436-20885.29395044    -0.98895436    -0.03819776  0.56D-02  0.32D-02  1392.52
    2     6     6     1.11040761    -0.99196584-20885.24788733    -0.99196584    -0.03993041  0.47D-02  0.51D-02  1392.52
    2     7     7     1.09751593    -0.98116568-20885.14943290    -0.98116568    -0.02909278  0.34D-02  0.19D-02  1392.52
    2     8     8     1.09754360    -0.98112883-20885.14939605    -0.98112883    -0.02913435  0.34D-02  0.19D-02  1392.52
    2     9     9     1.09754897    -0.98112267-20885.14938989    -0.98112267    -0.02914068  0.34D-02  0.19D-02  1392.52
    2    10    10     1.09840492    -0.98206334-20885.13709062    -0.98206334    -0.03031046  0.35D-02  0.23D-02  1392.52
    2    11    11     1.09842437    -0.98202727-20885.13705455    -0.98202727    -0.03035569  0.35D-02  0.23D-02  1392.52
    2    12    12     1.09864442    -0.98181156-20885.13683884    -0.98181156    -0.03059572  0.37D-02  0.24D-02  1392.52
    2    13    13     1.09868583    -0.98175755-20885.13678483    -0.98175755    -0.03065951  0.37D-02  0.24D-02  1392.52
    2    14    14     1.09871520    -0.98172519-20885.13675247    -0.98172519    -0.03069481  0.37D-02  0.24D-02  1392.52
    2    15    15     1.10288991    -0.98129158-20885.12268789    -0.98129158    -0.03428204  0.53D-02  0.31D-02  1392.52
    3     1     1     1.08979506    -1.02423523-20885.32923131    -0.03451349    -0.00245188  0.74D-04  0.94D-04  2706.70
    3     2     2     1.08979586    -1.02423033-20885.32922642    -0.03467094    -0.00245246  0.75D-04  0.94D-04  2706.70
    3     3     3     1.08980249    -1.02422539-20885.32922147    -0.03499902    -0.00245445  0.76D-04  0.96D-04  2706.70
    3     4     4     1.08980257    -1.02421911-20885.32921519    -0.03521843    -0.00245681  0.76D-04  0.97D-04  2706.70
    3     5     5     1.08980317    -1.02421753-20885.32921361    -0.03526317    -0.00245718  0.76D-04  0.97D-04  2706.70
    3     6     6     1.08971151    -1.02863392-20885.28455540    -0.03666807    -0.00379045  0.64D-04  0.18D-03  2706.70
    3     7     7     1.08475983    -1.00808121-20885.17634843    -0.02691553    -0.00242089  0.55D-04  0.62D-04  2706.70
    3     8     8     1.08475891    -1.00808063-20885.17634784    -0.02695179    -0.00242074  0.55D-04  0.62D-04  2706.70
    3     9     9     1.08475854    -1.00808056-20885.17634777    -0.02695789    -0.00242087  0.55D-04  0.62D-04  2706.70
    3    10    10     1.08500886    -1.00999870-20885.16502598    -0.02793537    -0.00240675  0.39D-04  0.75D-04  2706.70
    3    11    11     1.08500936    -1.00999785-20885.16502514    -0.02797058    -0.00240663  0.39D-04  0.75D-04  2706.70
    3    12    12     1.08501623    -1.00999157-20885.16501885    -0.02818001    -0.00240999  0.40D-04  0.76D-04  2706.70
    3    13    13     1.08501569    -1.00999038-20885.16501766    -0.02823283    -0.00241012  0.40D-04  0.76D-04  2706.70
    3    14    14     1.08501574    -1.00998972-20885.16501700    -0.02826453    -0.00241048  0.40D-04  0.76D-04  2706.70
    3    15    15     1.08570535    -1.01282462-20885.15422093    -0.03153304    -0.00279012  0.61D-04  0.11D-03  2706.70
    4     1     1     1.08952693    -1.02471460-20885.32971068    -0.00047938    -0.00052224  0.47D-04  0.45D-04  4019.55
    4     2     2     1.08952779    -1.02471102-20885.32970710    -0.00048068    -0.00052835  0.47D-04  0.45D-04  4019.55
    4     3     3     1.08953158    -1.02470777-20885.32970385    -0.00048238    -0.00053521  0.48D-04  0.46D-04  4019.55
    4     4     4     1.08953098    -1.02470336-20885.32969944    -0.00048426    -0.00054279  0.48D-04  0.47D-04  4019.55
    4     5     5     1.08953147    -1.02470226-20885.32969834    -0.00048473    -0.00054481  0.48D-04  0.47D-04  4019.55
    4     6     6     1.08934650    -1.02932436-20885.28524585    -0.00069045    -0.00059803  0.42D-04  0.80D-04  4019.55
    4     7     7     1.08457957    -1.00851859-20885.17678580    -0.00043737    -0.00032445  0.36D-04  0.19D-04  4019.55
    4     8     8     1.08457876    -1.00851810-20885.17678531    -0.00043748    -0.00032514  0.36D-04  0.19D-04  4019.55
    4     9     9     1.08457846    -1.00851807-20885.17678528    -0.00043751    -0.00032520  0.36D-04  0.19D-04  4019.55
    4    10    10     1.08484391    -1.01043726-20885.16546454    -0.00043856    -0.00034193  0.25D-04  0.28D-04  4019.55
    4    11    11     1.08484437    -1.01043660-20885.16546388    -0.00043875    -0.00034301  0.26D-04  0.28D-04  4019.55
    4    12    12     1.08484922    -1.01043219-20885.16545947    -0.00044062    -0.00034995  0.26D-04  0.28D-04  4019.55
    4    13    13     1.08484867    -1.01043129-20885.16545857    -0.00044092    -0.00035138  0.26D-04  0.29D-04  4019.55
    4    14    14     1.08484860    -1.01043083-20885.16545811    -0.00044111    -0.00035212  0.26D-04  0.29D-04  4019.55
    4    15    15     1.08547238    -1.01334602-20885.15474232    -0.00052140    -0.00047964  0.39D-04  0.51D-04  4019.55
    5     1     1     1.08945389    -1.02511270-20885.33010878    -0.00039810    -0.00008059  0.48D-05  0.19D-05  5336.38
    5     2     2     1.08945685    -1.02511267-20885.33010875    -0.00040165    -0.00008009  0.49D-05  0.19D-05  5336.38
    5     3     3     1.08945559    -1.02511260-20885.33010868    -0.00040483    -0.00008049  0.49D-05  0.19D-05  5336.38
    5     4     4     1.08945861    -1.02511255-20885.33010863    -0.00040919    -0.00008001  0.50D-05  0.19D-05  5336.38
    5     5     5     1.08945904    -1.02511252-20885.33010860    -0.00041027    -0.00007996  0.50D-05  0.19D-05  5336.38
    5     6     6     1.08920999    -1.02979854-20885.28572003    -0.00047418    -0.00011022  0.51D-05  0.42D-05  5336.38
    5     7     7     1.08461724    -1.00877414-20885.17704135    -0.00025555    -0.00007567  0.30D-05  0.14D-05  5336.38
    5     8     8     1.08461728    -1.00877413-20885.17704135    -0.00025603    -0.00007565  0.30D-05  0.14D-05  5336.38
    5     9     9     1.08461738    -1.00877413-20885.17704134    -0.00025606    -0.00007565  0.30D-05  0.14D-05  5336.38
    5    10    10     1.08493612    -1.01070153-20885.16572881    -0.00026427    -0.00007221  0.23D-05  0.17D-05  5336.38
    5    11    11     1.08493641    -1.01070151-20885.16572879    -0.00026491    -0.00007218  0.23D-05  0.17D-05  5336.38
    5    12    12     1.08493916    -1.01070138-20885.16572866    -0.00026919    -0.00007208  0.24D-05  0.17D-05  5336.38
    5    13    13     1.08493943    -1.01070136-20885.16572864    -0.00027007    -0.00007206  0.24D-05  0.17D-05  5336.38
    5    14    14     1.08493949    -1.01070136-20885.16572864    -0.00027052    -0.00007204  0.24D-05  0.17D-05  5336.38
    5    15    15     1.08549634    -1.01371526-20885.15511157    -0.00036924    -0.00008838  0.57D-05  0.24D-05  5336.38
    6     1     1     1.08938951    -1.02512879-20885.33012487    -0.00001609    -0.00001432  0.32D-05  0.81D-06  6653.75
    6     2     2     1.08939150    -1.02512871-20885.33012479    -0.00001604    -0.00001451  0.32D-05  0.82D-06  6653.75
    6     3     3     1.08939066    -1.02512869-20885.33012477    -0.00001610    -0.00001445  0.32D-05  0.82D-06  6653.75
    6     4     4     1.08939265    -1.02512861-20885.33012469    -0.00001606    -0.00001466  0.33D-05  0.83D-06  6653.75
    6     5     5     1.08939292    -1.02512858-20885.33012466    -0.00001606    -0.00001470  0.33D-05  0.83D-06  6653.75
    6     6     6     1.08914483    -1.02982012-20885.28574160    -0.00002158    -0.00001820  0.34D-05  0.21D-05  6653.75
    6     7     7     1.08458737    -1.00878860-20885.17705581    -0.00001446    -0.00000970  0.20D-05  0.46D-06  6653.75
    6     8     8     1.08458740    -1.00878859-20885.17705581    -0.00001446    -0.00000971  0.20D-05  0.46D-06  6653.75
    6     9     9     1.08458748    -1.00878859-20885.17705580    -0.00001446    -0.00000971  0.20D-05  0.46D-06  6653.75
    6    10    10     1.08491102    -1.01071529-20885.16574257    -0.00001376    -0.00000911  0.16D-05  0.64D-06  6653.75
    6    11    11     1.08491122    -1.01071527-20885.16574255    -0.00001376    -0.00000913  0.16D-05  0.64D-06  6653.75
    6    12    12     1.08491326    -1.01071515-20885.16574243    -0.00001377    -0.00000929  0.16D-05  0.65D-06  6653.75
    6    13    13     1.08491345    -1.01071513-20885.16574241    -0.00001377    -0.00000932  0.17D-05  0.65D-06  6653.75
    6    14    14     1.08491348    -1.01071512-20885.16574240    -0.00001377    -0.00000933  0.17D-05  0.66D-06  6653.75
    6    15    15     1.08545622    -1.01373281-20885.15512912    -0.00001755    -0.00001535  0.38D-05  0.11D-05  6653.75
    7     1     1     1.08916572    -1.02513884-20885.33013492    -0.00001005    -0.00000929  0.22D-06  0.26D-06  7966.55
    7     2     2     1.08916600    -1.02513884-20885.33013492    -0.00001012    -0.00000931  0.22D-06  0.26D-06  7966.55
    7     3     3     1.08916711    -1.02513882-20885.33013490    -0.00001012    -0.00000939  0.22D-06  0.26D-06  7966.55
    7     4     4     1.08916719    -1.02513877-20885.33013485    -0.00001016    -0.00000958  0.23D-06  0.27D-06  7966.55
    7     5     5     1.08916810    -1.02513875-20885.33013483    -0.00001017    -0.00000965  0.24D-06  0.27D-06  7966.55
    7     6     6     1.08893522    -1.02983193-20885.28575341    -0.00001181    -0.00001533  0.32D-06  0.57D-06  7966.55
    7     7     7     1.08448554    -1.00879444-20885.17706165    -0.00000584    -0.00000949  0.34D-06  0.25D-06  7966.55
    7     8     8     1.08448557    -1.00879444-20885.17706165    -0.00000585    -0.00000949  0.34D-06  0.25D-06  7966.55
    7     9     9     1.08448569    -1.00879444-20885.17706165    -0.00000585    -0.00000949  0.34D-06  0.25D-06  7966.55
    7    10    10     1.08481824    -1.01072088-20885.16574816    -0.00000559    -0.00000834  0.18D-06  0.26D-06  7966.55
    7    11    11     1.08481836    -1.01072088-20885.16574816    -0.00000561    -0.00000834  0.18D-06  0.26D-06  7966.55
    7    12    12     1.08481855    -1.01072088-20885.16574816    -0.00000573    -0.00000835  0.18D-06  0.26D-06  7966.55
    7    13    13     1.08481866    -1.01072086-20885.16574814    -0.00000573    -0.00000836  0.18D-06  0.26D-06  7966.55
    7    14    14     1.08481878    -1.01072085-20885.16574814    -0.00000573    -0.00000837  0.19D-06  0.26D-06  7966.55
    7    15    15     1.08531793    -1.01374281-20885.15513912    -0.00001000    -0.00001196  0.35D-06  0.37D-06  7966.55
    8     1     1     1.08914811    -1.02514048-20885.33013656    -0.00000164    -0.00000104  0.12D-06  0.75D-07  9279.68
    8     2     2     1.08914798    -1.02514048-20885.33013656    -0.00000164    -0.00000104  0.12D-06  0.75D-07  9279.68
    8     3     3     1.08914868    -1.02514048-20885.33013656    -0.00000166    -0.00000105  0.12D-06  0.75D-07  9279.68
    8     4     4     1.08914866    -1.02514046-20885.33013654    -0.00000169    -0.00000109  0.12D-06  0.74D-07  9279.68
    8     5     5     1.08914836    -1.02514046-20885.33013654    -0.00000171    -0.00000108  0.12D-06  0.74D-07  9279.68
    8     6     6     1.08890317    -1.02983472-20885.28575620    -0.00000279    -0.00000190  0.14D-06  0.16D-06  9279.68
    8     7     7     1.08445933    -1.00879632-20885.17706353    -0.00000188    -0.00000153  0.14D-06  0.54D-07  9279.68
    8     8     8     1.08445942    -1.00879632-20885.17706353    -0.00000188    -0.00000153  0.14D-06  0.54D-07  9279.68
    8     9     9     1.08445935    -1.00879632-20885.17706353    -0.00000188    -0.00000153  0.14D-06  0.54D-07  9279.68
    8    10    10     1.08479837    -1.01072249-20885.16574977    -0.00000161    -0.00000119  0.66D-07  0.64D-07  9279.68
    8    11    11     1.08479851    -1.01072249-20885.16574977    -0.00000161    -0.00000120  0.66D-07  0.64D-07  9279.68
    8    12    12     1.08479842    -1.01072249-20885.16574977    -0.00000161    -0.00000120  0.66D-07  0.64D-07  9279.68
    8    13    13     1.08479815    -1.01072249-20885.16574977    -0.00000163    -0.00000123  0.67D-07  0.64D-07  9279.68
    8    14    14     1.08479815    -1.01072249-20885.16574977    -0.00000163    -0.00000123  0.67D-07  0.64D-07  9279.68
    8    15    15     1.08530007    -1.01374497-20885.15514128    -0.00000216    -0.00000150  0.16D-06  0.11D-06  9279.68
    9     1     1     1.08914785    -1.02514080-20885.33013688    -0.00000032    -0.00000068  0.66D-07  0.39D-07 10594.16
    9     2     2     1.08914777    -1.02514080-20885.33013688    -0.00000032    -0.00000068  0.65D-07  0.39D-07 10594.16
    9     3     3     1.08914821    -1.02514080-20885.33013688    -0.00000032    -0.00000067  0.67D-07  0.39D-07 10594.16
    9     4     4     1.08914792    -1.02514078-20885.33013687    -0.00000032    -0.00000067  0.70D-07  0.39D-07 10594.16
    9     5     5     1.08914818    -1.02514078-20885.33013686    -0.00000032    -0.00000066  0.70D-07  0.39D-07 10594.16
    9     6     6     1.08890041    -1.02983519-20885.28575668    -0.00000048    -0.00000086  0.92D-07  0.94D-07 10594.16
    9     7     7     1.08445629    -1.00879666-20885.17706387    -0.00000034    -0.00000047  0.94D-07  0.29D-07 10594.16
    9     8     8     1.08445622    -1.00879666-20885.17706387    -0.00000034    -0.00000047  0.94D-07  0.29D-07 10594.16
    9     9     9     1.08445624    -1.00879666-20885.17706387    -0.00000034    -0.00000047  0.94D-07  0.29D-07 10594.16
    9    10    10     1.08479719    -1.01072276-20885.16575005    -0.00000027    -0.00000039  0.42D-07  0.36D-07 10594.16
    9    11    11     1.08479729    -1.01072276-20885.16575004    -0.00000027    -0.00000039  0.43D-07  0.36D-07 10594.16
    9    12    12     1.08479698    -1.01072276-20885.16575004    -0.00000027    -0.00000038  0.43D-07  0.36D-07 10594.16
    9    13    13     1.08479723    -1.01072276-20885.16575004    -0.00000028    -0.00000039  0.42D-07  0.36D-07 10594.16
    9    14    14     1.08479697    -1.01072276-20885.16575004    -0.00000028    -0.00000038  0.43D-07  0.36D-07 10594.16
    9    15    15     1.08529874    -1.01374537-20885.15514168    -0.00000040    -0.00000077  0.10D-06  0.60D-07 10594.16
   10     1     1     1.08914652    -1.02514109-20885.33013717    -0.00000029    -0.00000044  0.14D-07  0.13D-07 11908.62
   10     2     2     1.08914651    -1.02514109-20885.33013717    -0.00000029    -0.00000044  0.14D-07  0.13D-07 11908.62
   10     3     3     1.08914657    -1.02514109-20885.33013717    -0.00000029    -0.00000045  0.14D-07  0.13D-07 11908.62
   10     4     4     1.08914648    -1.02514108-20885.33013716    -0.00000030    -0.00000047  0.15D-07  0.13D-07 11908.62
   10     5     5     1.08914647    -1.02514108-20885.33013716    -0.00000030    -0.00000047  0.15D-07  0.13D-07 11908.62
   10     6     6     1.08889383    -1.02983563-20885.28575712    -0.00000044    -0.00000079  0.20D-07  0.29D-07 11908.62
   10     7     7     1.08444931    -1.00879693-20885.17706414    -0.00000027    -0.00000053  0.19D-07  0.14D-07 11908.62
   10     8     8     1.08444930    -1.00879693-20885.17706414    -0.00000027    -0.00000053  0.19D-07  0.14D-07 11908.62
   10     9     9     1.08444929    -1.00879693-20885.17706414    -0.00000027    -0.00000053  0.19D-07  0.14D-07 11908.62
   10    10    10     1.08479472    -1.01072298-20885.16575026    -0.00000021    -0.00000039  0.81D-08  0.12D-07 11908.62
   10    11    11     1.08479475    -1.01072298-20885.16575026    -0.00000021    -0.00000039  0.82D-08  0.12D-07 11908.62
   10    12    12     1.08479473    -1.01072298-20885.16575026    -0.00000021    -0.00000039  0.82D-08  0.12D-07 11908.62
   10    13    13     1.08479457    -1.01072298-20885.16575026    -0.00000021    -0.00000039  0.83D-08  0.12D-07 11908.62
   10    14    14     1.08479458    -1.01072297-20885.16575026    -0.00000021    -0.00000039  0.83D-08  0.12D-07 11908.62
   10    15    15     1.08529609    -1.01374574-20885.15514205    -0.00000037    -0.00000065  0.23D-07  0.20D-07 11908.62
   11     1     1     1.08914512    -1.02514116-20885.33013725    -0.00000008    -0.00000006  0.95D-08  0.38D-08 13227.96
   11     2     2     1.08914516    -1.02514117-20885.33013725    -0.00000008    -0.00000006  0.95D-08  0.37D-08 13227.96
   11     3     3     1.08914508    -1.02514116-20885.33013725    -0.00000008    -0.00000006  0.97D-08  0.37D-08 13227.96
   11     4     4     1.08914512    -1.02514117-20885.33013724    -0.00000008    -0.00000006  0.95D-08  0.38D-08 13227.96
   11     5     5     1.08914508    -1.02514116-20885.33013724    -0.00000008    -0.00000006  0.98D-08  0.37D-08 13227.96
   11     6     6     1.08889173    -1.02983577-20885.28575726    -0.00000014    -0.00000011  0.12D-07  0.88D-08 13227.96
   11     7     7     1.08444753    -1.00879703-20885.17706424    -0.00000010    -0.00000009  0.99D-08  0.35D-08 13227.96
   11     8     8     1.08444752    -1.00879703-20885.17706424    -0.00000010    -0.00000009  0.98D-08  0.35D-08 13227.96
   11     9     9     1.08444752    -1.00879703-20885.17706424    -0.00000010    -0.00000009  0.98D-08  0.34D-08 13227.96
   11    10    10     1.08479408    -1.01072305-20885.16575033    -0.00000007    -0.00000006  0.44D-08  0.34D-08 13227.96
   11    11    11     1.08479393    -1.01072305-20885.16575033    -0.00000007    -0.00000006  0.43D-08  0.33D-08 13227.96
   11    12    12     1.08479406    -1.01072305-20885.16575033    -0.00000007    -0.00000006  0.44D-08  0.33D-08 13227.96
   11    13    13     1.08479407    -1.01072305-20885.16575033    -0.00000007    -0.00000006  0.44D-08  0.34D-08 13227.96
   11    14    14     1.08479394    -1.01072305-20885.16575033    -0.00000007    -0.00000006  0.44D-08  0.33D-08 13227.96
   11    15    15     1.08529515    -1.01374586-20885.15514217    -0.00000012    -0.00000009  0.14D-07  0.60D-08 13227.96
   12     1     1     1.08914287    -1.02514118-20885.33013727    -0.00000002    -0.00000004  0.48D-08  0.21D-08 14143.19
   12     2     2     1.08914294    -1.02514118-20885.33013727    -0.00000002    -0.00000004  0.51D-08  0.21D-08 14143.19
   12     3     3     1.08914294    -1.02514119-20885.33013727    -0.00000002    -0.00000004  0.48D-08  0.21D-08 14143.19
   12     4     4     1.08914291    -1.02514118-20885.33013726    -0.00000002    -0.00000004  0.50D-08  0.21D-08 14143.19
   12     5     5     1.08914286    -1.02514118-20885.33013726    -0.00000002    -0.00000004  0.49D-08  0.21D-08 14143.19
   12     6     6     1.08888938    -1.02983581-20885.28575730    -0.00000004    -0.00000004  0.34D-08  0.53D-08 14143.19
   12     7     7     1.08444664    -1.00879705-20885.17706426    -0.00000002    -0.00000003  0.66D-08  0.19D-08 14143.19
   12     8     8     1.08444664    -1.00879705-20885.17706426    -0.00000002    -0.00000003  0.66D-08  0.19D-08 14143.19
   12     9     9     1.08444663    -1.00879705-20885.17706426    -0.00000002    -0.00000003  0.66D-08  0.19D-08 14143.19
   12    10    10     1.08479391    -1.01072305-20885.16575033    -0.00000000    -0.00000006  0.42D-08  0.33D-08 14143.19
   12    11    11     1.08479406    -1.01072305-20885.16575033    -0.00000000    -0.00000006  0.43D-08  0.34D-08 14143.19
   12    12    12     1.08479405    -1.01072305-20885.16575033    -0.00000000    -0.00000006  0.43D-08  0.34D-08 14143.19
   12    13    13     1.08479392    -1.01072305-20885.16575033    -0.00000000    -0.00000006  0.42D-08  0.33D-08 14143.19
   12    14    14     1.08479405    -1.01072305-20885.16575033    -0.00000000    -0.00000006  0.43D-08  0.34D-08 14143.19
   12    15    15     1.08529198    -1.01374592-20885.15514223    -0.00000006    -0.00000001  0.37D-09  0.29D-09 14143.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  41.9%
 P   0.5%  17.5%  13.2%

 Initialization:   0.5%
 Other:           25.4%

 Total CPU:    14143.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222/\0000           0.0000000  -0.0000000   0.0000000   0.0000000   0.9536385  -0.0000000  -0.0000000  -0.0000000
                                  -0.0000000   0.0000000   0.0000000  -0.0832057   0.0000000   0.0000000   0.0000000
 22222222222222222/0\000           0.9536385   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                                   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0832057   0.0000000
 222222222222222220/\000          -0.0000000  -0.0000000   0.9536385   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                                   0.0000000  -0.0000000  -0.0832057  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222222222222222002000          -0.0000000   0.7785539   0.0000000  -0.0117503   0.0000000   0.5443270  -0.0000000  -0.0000000
                                  -0.0000000  -0.0633598   0.0000000   0.0000000   0.0245152  -0.0000000  -0.0916797
 22222222222222222/00\00           0.0000000  -0.0350462   0.0000000  -0.0586400   0.0000000   0.0920829  -0.0000000  -0.0000000
                                  -0.0000000  -0.1198699  -0.0000000   0.0000000   0.7700848  -0.0000000   0.5451876
 2222222222222222200/00\          -0.0000000   0.0683068   0.0000000  -0.0010309   0.0000000   0.0920829   0.0000000  -0.0000000
                                   0.0000000   0.7268480  -0.0000000  -0.0000000  -0.2812321   0.0000000   0.5451875
 22222222222222222020000           0.0000000  -0.3791009  -0.0000000   0.6801226  -0.0000000   0.5443270  -0.0000000  -0.0000000
                                  -0.0000000   0.0529107  -0.0000000   0.0000000   0.0426136   0.0000000  -0.0916797
 222222222222222220/0\00           0.0000000  -0.0000000   0.0000000   0.0000000   0.0591622   0.0000000   0.0000000   0.0000000
                                   0.6780985  -0.0000000  -0.0000000   0.6749440  -0.0000000  -0.0000000   0.0000000
 222222222222222220/000\          -0.0000000  -0.0000000   0.0591622   0.0000000  -0.0000000   0.0000000   0.6780985  -0.0000000
                                  -0.0000000   0.0000000   0.6749440   0.0000000   0.0000000   0.0000000   0.0000000
 2222222222222222200/\00           0.0591622   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6780984
                                  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6749440  -0.0000000
 22222222222222222/0000\           0.0591622   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6780984
                                  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6749441   0.0000000
 2222222222222222200/0\0          -0.0000000  -0.0000000   0.0591622   0.0000000  -0.0000000   0.0000000  -0.6780984  -0.0000000
                                   0.0000000   0.0000000   0.6749441   0.0000000   0.0000000   0.0000000   0.0000000
 22222222222222222/000\0           0.0000000  -0.0000000   0.0000000   0.0000000   0.0591622  -0.0000000  -0.0000000   0.0000000
                                  -0.6780984  -0.0000000  -0.0000000   0.6749441  -0.0000000  -0.0000000  -0.0000000
 22222222222222222200000           0.0000000  -0.3994530   0.0000000  -0.6683723   0.0000000   0.5443271   0.0000000  -0.0000000
                                   0.0000000   0.0104491   0.0000000  -0.0000000  -0.0671288   0.0000000  -0.0916798
 222222222222222220/00\0           0.0000000  -0.0332606  -0.0000000   0.0596709  -0.0000000   0.0920829   0.0000000   0.0000000
                                   0.0000000  -0.6069781   0.0000000  -0.0000000  -0.4888528  -0.0000000   0.5451875

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956630    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.037099    0.000000
 2           0.000000   -0.825000   -0.000000   -0.000000   -0.484268    0.000000    0.000000   -0.000000    0.000000    0.019568
             0.000000    0.000000    0.031519   -0.000000   -0.000000
 3           0.000000   -0.000000    0.000000    0.956630   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.037099   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.484268    0.000000    0.000000    0.825000    0.000000    0.000000    0.000000    0.000000   -0.031519
            -0.000000   -0.000000    0.019568   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.956630   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.037099    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.953441   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.074424
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958976    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.958976    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958976   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 10         -0.000000   -0.023206   -0.000000    0.000000   -0.030166   -0.000000    0.000000   -0.000000    0.000000   -0.773625
             0.000000   -0.000000   -0.565171   -0.000000    0.000000
 11         -0.000000    0.000000   -0.000000    0.038059    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.958078   -0.000000    0.000000   -0.000000   -0.000000
 12          0.000000    0.000000    0.038059    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.958078    0.000000    0.000000    0.000000
 13          0.000000    0.030166   -0.000000    0.000000   -0.023206   -0.000000    0.000000    0.000000    0.000000   -0.565171
             0.000000   -0.000000    0.773625    0.000000   -0.000000
 14          0.038059   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.958078    0.000000
 15          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.076244    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.955419

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957349   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000451    0.000000
 2          -0.000000    0.957349   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000418
            -0.000000   -0.000000   -0.000169    0.000000    0.000000
 3           0.000000   -0.000000    0.957349   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000451    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.957349   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000169
             0.000000   -0.000000   -0.000418    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.957349   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000451   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956341   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000830
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958976   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958976   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958976   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000000    0.000418    0.000000   -0.000169    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958834
             0.000000   -0.000000    0.000000    0.000000    0.000000
 11         -0.000000   -0.000000    0.000451    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.958834    0.000000   -0.000000    0.000000    0.000000
 12          0.000000   -0.000000    0.000000   -0.000000    0.000451   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.958834    0.000000   -0.000000   -0.000000
 13          0.000000   -0.000169    0.000000   -0.000418   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.958834   -0.000000   -0.000000
 14          0.000451    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.958834    0.000000
 15          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000830    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.958456


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95663028 (fixed)   0.95734941 (relaxed)   0.95734929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178450   -0.00417357   -0.88901805
 Singles      0.01440686   -0.05697500   -0.06575208
 Pairs        0.07489509   -0.00000000   -0.07037105
 Total        1.09108645   -0.06114857   -1.02514118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30476536
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.00970442
 One electron energy               -28576.48823836
 Two electron energy                 7691.15810109
 Virial quotient                       -0.63890985
 Correlation energy                    -1.02537190
 !MRCI STATE 1.1 Energy              -20885.3301372653    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42353475 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42353447 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42353475 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42606766 (Pople, fixed reference)
 Cluster corrected energies        -20885.42606734 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42606766 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.82500046 (fixed)   0.95734939 (relaxed)   0.95734927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178449   -0.00417356   -0.88901787
 Singles      0.01440694   -0.05697513   -0.06575223
 Pairs        0.07489507   -0.00000001   -0.07037108
 Total        1.09108650   -0.06114870   -1.02514118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30476536
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.00969697
 One electron energy               -28576.48820177
 Two electron energy                 7691.15806451
 Virial quotient                       -0.63890985
 Correlation energy                    -1.02537190
 !MRCI STATE 2.1 Energy              -20885.3301372652    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42353480 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42353452 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42353480 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42606772 (Pople, fixed reference)
 Cluster corrected energies        -20885.42606740 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42606772 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95663025 (fixed)   0.95734938 (relaxed)   0.95734926 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178450   -0.00417357   -0.88901791
 Singles      0.01440695   -0.05697510   -0.06575218
 Pairs        0.07489507   -0.00000000   -0.07037110
 Total        1.09108651   -0.06114866   -1.02514118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30476536
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.00971316
 One electron energy               -28576.48824849
 Two electron energy                 7691.15811123
 Virial quotient                       -0.63890985
 Correlation energy                    -1.02537191
 !MRCI STATE 3.1 Energy              -20885.3301372651    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42353482 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42353454 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42353482 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42606773 (Pople, fixed reference)
 Cluster corrected energies        -20885.42606742 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42606773 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.82500047 (fixed)   0.95734940 (relaxed)   0.95734928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178449   -0.00417356   -0.88901795
 Singles      0.01440690   -0.05697508   -0.06575218
 Pairs        0.07489508   -0.00000000   -0.07037106
 Total        1.09108647   -0.06114865   -1.02514118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30476536
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.00969159
 One electron energy               -28576.48819377
 Two electron energy                 7691.15805651
 Virial quotient                       -0.63890985
 Correlation energy                    -1.02537190
 !MRCI STATE 4.1 Energy              -20885.3301372642    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42353477 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42353449 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42353477 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42606769 (Pople, fixed reference)
 Cluster corrected energies        -20885.42606737 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42606769 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95663029 (fixed)   0.95734942 (relaxed)   0.95734930 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178450   -0.00417357   -0.88901803
 Singles      0.01440693   -0.05697504   -0.06575220
 Pairs        0.07489500    0.00000000   -0.07037096
 Total        1.09108643   -0.06114861   -1.02514118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30476536
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.00975210
 One electron energy               -28576.48825531
 Two electron energy                 7691.15811805
 Virial quotient                       -0.63890984
 Correlation energy                    -1.02537190
 !MRCI STATE 5.1 Energy              -20885.3301372637    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42353473 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42353445 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42353473 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42606764 (Pople, fixed reference)
 Cluster corrected energies        -20885.42606733 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42606764 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95344132 (fixed)   0.95634159 (relaxed)   0.95634122 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00413126   -0.00907526   -0.98140008
 Singles      0.01056624   -0.04947789   -0.05520472
 Pairs        0.07869036    0.08843850    0.00676899
 Total        1.09338786    0.02988535   -1.02983581
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.25521240
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.95137041
 One electron energy               -28575.50701384
 Two electron energy                 7690.22125654
 Virial quotient                       -0.63890963
 Correlation energy                    -1.03054489
 !MRCI STATE 6.1 Energy              -20885.2857572965    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.38199768 (Davidson, fixed reference)
 Cluster corrected energies        -20885.38199681 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.38199768 (Davidson, rotated reference)

 Cluster corrected energies        -20885.38482537 (Pople, fixed reference)
 Cluster corrected energies        -20885.38482439 (Pople, relaxed reference)
 Cluster corrected energies        -20885.38482537 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95897598 (fixed)   0.95897598 (relaxed)   0.95897598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00271232   -0.00639561   -0.87491913
 Singles      0.01485842   -0.06015666   -0.06910547
 Pairs        0.06981727    0.00000000   -0.06477244
 Total        1.08738801   -0.06655227   -1.00879705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16826721
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.34531354
 One electron energy               -28559.87828301
 Two electron energy                 7674.70121875
 Virial quotient                       -0.63891815
 Correlation energy                    -1.00879705
 !MRCI STATE 7.1 Energy              -20885.1770642600    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26522103 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26522103 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26522103 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26729306 (Pople, fixed reference)
 Cluster corrected energies        -20885.26729306 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26729306 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95897598 (fixed)   0.95897598 (relaxed)   0.95897598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00271232   -0.00639561   -0.87491914
 Singles      0.01485841   -0.06015665   -0.06910546
 Pairs        0.06981727   -0.00000000   -0.06477244
 Total        1.08738801   -0.06655226   -1.00879705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16826721
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.34531467
 One electron energy               -28559.87828415
 Two electron energy                 7674.70121989
 Virial quotient                       -0.63891815
 Correlation energy                    -1.00879705
 !MRCI STATE 8.1 Energy              -20885.1770642590    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26522102 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26522102 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26522102 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26729306 (Pople, fixed reference)
 Cluster corrected energies        -20885.26729306 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26729306 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95897599 (fixed)   0.95897599 (relaxed)   0.95897599 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00271232   -0.00639561   -0.87491915
 Singles      0.01485840   -0.06015664   -0.06910546
 Pairs        0.06981727    0.00000000   -0.06477244
 Total        1.08738800   -0.06655226   -1.00879705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16826721
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.34531407
 One electron energy               -28559.87828354
 Two electron energy                 7674.70121928
 Virial quotient                       -0.63891815
 Correlation energy                    -1.00879705
 !MRCI STATE 9.1 Energy              -20885.1770642589    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26522101 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26522101 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26522101 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26729305 (Pople, fixed reference)
 Cluster corrected energies        -20885.26729305 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26729305 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.77362505 (fixed)   0.95883911 (relaxed)   0.95883401 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00268818   -0.00628968   -0.87686804
 Singles      0.01454710   -0.05966185   -0.06836850
 Pairs        0.07047475   -0.00000004   -0.06548651
 Total        1.08771004   -0.06595157   -1.01072305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15525800
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.42153895
 One electron energy               -28560.78223575
 Two electron energy                 7675.61648542
 Virial quotient                       -0.63891631
 Correlation energy                    -1.01049233
 !MRCI STATE 10.1 Energy             -20885.1657503288    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25438065 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25436898 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25438065 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25649164 (Pople, fixed reference)
 Cluster corrected energies        -20885.25647869 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25649164 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95807840 (fixed)   0.95883904 (relaxed)   0.95883395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00268819   -0.00628968   -0.87686788
 Singles      0.01454725   -0.05966193   -0.06836860
 Pairs        0.07047475    0.00000000   -0.06548657
 Total        1.08771019   -0.06595161   -1.01072305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15525800
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.42152885
 One electron energy               -28560.78225139
 Two electron energy                 7675.61650106
 Virial quotient                       -0.63891631
 Correlation energy                    -1.01049233
 !MRCI STATE 11.1 Energy             -20885.1657503288    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25438081 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25436913 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25438081 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25649181 (Pople, fixed reference)
 Cluster corrected energies        -20885.25647886 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25649181 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95807841 (fixed)   0.95883904 (relaxed)   0.95883395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00268819   -0.00628968   -0.87686789
 Singles      0.01454725   -0.05966193   -0.06836860
 Pairs        0.07047475    0.00000000   -0.06548655
 Total        1.08771018   -0.06595161   -1.01072305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15525800
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.42151730
 One electron energy               -28560.78224144
 Two electron energy                 7675.61649111
 Virial quotient                       -0.63891631
 Correlation energy                    -1.01049233
 !MRCI STATE 12.1 Energy             -20885.1657503285    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25438079 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25436912 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25438079 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25649179 (Pople, fixed reference)
 Cluster corrected energies        -20885.25647884 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25649179 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.77362504 (fixed)   0.95883910 (relaxed)   0.95883401 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00268818   -0.00628968   -0.87686811
 Singles      0.01454711   -0.05966187   -0.06836851
 Pairs        0.07047475    0.00000006   -0.06548643
 Total        1.08771005   -0.06595149   -1.01072305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15525800
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.42153856
 One electron energy               -28560.78223497
 Two electron energy                 7675.61648464
 Virial quotient                       -0.63891631
 Correlation energy                    -1.01049233
 !MRCI STATE 13.1 Energy             -20885.1657503280    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25438066 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25436898 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25438066 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25649164 (Pople, fixed reference)
 Cluster corrected energies        -20885.25647869 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25649164 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95807841 (fixed)   0.95883904 (relaxed)   0.95883395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00268819   -0.00628968   -0.87686790
 Singles      0.01454724   -0.05966192   -0.06836859
 Pairs        0.07047476   -0.00000000   -0.06548656
 Total        1.08771018   -0.06595160   -1.01072305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15525800
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.42152778
 One electron energy               -28560.78225000
 Two electron energy                 7675.61649968
 Virial quotient                       -0.63891631
 Correlation energy                    -1.01049233
 !MRCI STATE 14.1 Energy             -20885.1657503280    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25438080 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25436912 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25438080 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25649180 (Pople, fixed reference)
 Cluster corrected energies        -20885.25647885 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25649180 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95541878 (fixed)   0.95846075 (relaxed)   0.95845582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301912   -0.00700242   -0.01169274
 Singles      0.01402632   -0.05823251   -0.06655641
 Pairs        0.07152317   -0.94584567   -0.93549677
 Total        1.08856861   -1.01108060   -1.01374592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.14210539
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.48750752
 One electron energy               -28561.65998809
 Two electron energy                 7676.50484586
 Virial quotient                       -0.63891470
 Correlation energy                    -1.01303684
 !MRCI STATE 15.1 Energy             -20885.1551422275    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.24486549 (Davidson, fixed reference)
 Cluster corrected energies        -20885.24485414 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.24486549 (Davidson, rotated reference)

 Cluster corrected energies        -20885.24707767 (Pople, fixed reference)
 Cluster corrected energies        -20885.24706506 (Pople, relaxed reference)
 Cluster corrected energies        -20885.24707767 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3319.98       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19080.35  16379.74   2667.84     22.60      0.59      9.36
 REAL TIME  *     19674.52 SEC
 DISK USED  *         3.50 GB (local),       56.41 GB (total)
 SF USED    *        31.36 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.42353475  AU                              
 SETTING HLSDIAG(5)     =    -20885.42353480  AU                              
 SETTING HLSDIAG(6)     =    -20885.42353482  AU                              
 SETTING HLSDIAG(7)     =    -20885.42353477  AU                              
 SETTING HLSDIAG(8)     =    -20885.42353473  AU                              
 SETTING HLSDIAG(9)     =    -20885.38199768  AU                              
 SETTING HLSDIAG(10)    =    -20885.26522103  AU                              
 SETTING HLSDIAG(11)    =    -20885.26522102  AU                              
 SETTING HLSDIAG(12)    =    -20885.26522101  AU                              
 SETTING HLSDIAG(13)    =    -20885.25438065  AU                              
 SETTING HLSDIAG(14)    =    -20885.25438081  AU                              
 SETTING HLSDIAG(15)    =    -20885.25438079  AU                              
 SETTING HLSDIAG(16)    =    -20885.25438066  AU                              
 SETTING HLSDIAG(17)    =    -20885.25438080  AU                              
 SETTING HLSDIAG(18)    =    -20885.24486549  AU                              


         HLSDIAG
    -20885.44931
    -20885.44931
    -20885.44931
    -20885.42353
    -20885.42353
    -20885.42353
    -20885.42353
    -20885.42353
    -20885.38200
    -20885.26522
    -20885.26522
    -20885.26522
    -20885.25438
    -20885.25438
    -20885.25438
    -20885.25438
    -20885.25438
    -20885.24487
                                                  

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

 Time for Seward_LS:     116.76 sec

       97146785. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27010 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    116.76 sec, REAL time:    118.90 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   448 records. CPU time:      0.98 sec, REAL time:      1.76 sec
 SORTLS2 read   110556387. and wrote   547794150. SO integrals in    48 records. CPU time:      0.45 sec, REAL time:      0.66 sec

 FILE SIZES: FILE 1:  2050.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2050.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1955.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3319.98       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19199.27    118.92  16379.74   2667.84     22.60      0.59      9.36
 REAL TIME  *     19796.62 SEC
 DISK USED  *         3.50 GB (local),       61.97 GB (total)
 SF USED    *        31.36 GB
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

 Original energies: -20885.359151 -20885.359151 -20885.359151
 Replaced energies: -20885.449308 -20885.449308 -20885.449308

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies: -20885.330137 -20885.330137 -20885.330137 -20885.330137 -20885.330137 -20885.285757 -20885.177064 -20885.177064
                    -20885.177064 -20885.165750 -20885.165750 -20885.165750 -20885.165750 -20885.165750 -20885.155142
 Replaced energies: -20885.423535 -20885.423535 -20885.423535 -20885.423535 -20885.423535 -20885.381998 -20885.265221 -20885.265221
                    -20885.265221 -20885.254381 -20885.254381 -20885.254381 -20885.254381 -20885.254381 -20885.244865



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.44930838

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   -4317.45       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00   -4317.45      -0.00       0.00       0.00       0.00    4297.35

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00   -6105.79    4317.45      -0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02    4317.45       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00    6105.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      -0.00    4317.45       0.00       0.00       0.00       0.00       0.00   -4317.45       0.00
                            0.00   -4317.45      -0.00       0.00       0.00       0.00      -0.00   -4317.45      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00
                         4317.45       0.00      -0.00      -0.00       0.00       0.00    4317.45      -0.00      -0.00       0.00

    6   3.1  1.0  0.0   -4317.45      -0.00       0.00       0.00       0.00       0.02    4317.45       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   -6077.38

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    4317.45       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00   -4317.45      -0.00       0.00      -0.00      -0.00   -4297.35

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00    4317.45       0.00      -0.00       0.00       0.00    6105.79      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00   -4317.45      -0.00       0.00       0.00       0.00       0.02      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00   -6105.79      -0.00       0.00

   10   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    5656.66
                        -4297.35      -0.00       0.00       0.00      -0.00    6077.38    4297.35       0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00    2415.92      -0.00       0.00       0.00       0.00      -0.00    2415.92      -0.00       0.00
                           -0.00      -0.00   -4961.56   -3600.06       0.00       0.00       0.00       0.00    4961.56      -0.00

   12   3.1  0.0  0.0       0.00       0.00    4297.35       0.00       0.00       0.00       0.00       0.00    4297.35       0.00
                           -0.00    4297.35      -0.00       0.00      -0.00       0.00       0.00   -4297.35       0.00      -0.00

   13   4.1  0.0  0.0       0.00   -4334.28       0.00       0.00       0.00       0.00       0.00   -4334.28       0.00       0.00
                           -0.00       0.00      74.88   -6023.69      -0.00       0.00       0.00      -0.00     -74.88      -0.00

   14   5.1  0.0  0.0    4297.34       0.00      -0.00       0.00       0.00       0.00    4297.34       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00   -6077.36      -0.00      -0.00       0.00       0.00      -0.00

   15   6.1  0.0  0.0      -0.00    6874.02       0.00       0.00       0.00       0.00      -0.00    6874.02       0.00       0.00
                            0.00       0.00    6874.02   -9721.33      -0.00       0.00      -0.00      -0.00   -6874.02      -0.00

   16   7.1  0.0  0.0      -0.00       0.00    -970.16       0.00       0.00       0.00      -0.00       0.00    -970.16       0.00
                           -0.00     970.16       0.00       0.00      -0.00       0.00       0.00    -970.16      -0.00      -0.00

   17   8.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                          970.16       0.00      -0.00       0.00       0.00    1372.02    -970.16      -0.00       0.00      -0.00

   18   9.1  0.0  0.0    -970.16       0.00       0.00       0.00       0.00       0.00    -970.16       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00   -1372.02       0.00       0.00       0.00       0.00      -0.00

   19  10.1  0.0  0.0       0.00    -827.69      -0.00       0.00       0.00       0.00       0.00    -827.69      -0.00       0.00
                           -0.00      -0.00     991.14     231.16      -0.00       0.00       0.00       0.00    -991.14      -0.00

   20  11.1  0.0  0.0       0.00       0.00    -920.37       0.00       0.00       0.00       0.00       0.00    -920.37       0.00
                           -0.00    -920.36      -0.00       0.00      -0.00       0.00       0.00     920.36       0.00      -0.00

   21  12.1  0.0  0.0    -920.37      -0.00      -0.00       0.00       0.00       0.00    -920.37      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00    1301.59      -0.00      -0.00       0.00       0.00      -0.00

   22  13.1  0.0  0.0       0.00    -666.61      -0.00       0.00       0.00       0.00       0.00    -666.61      -0.00       0.00
                            0.00      -0.00    -383.49   -1485.07      -0.00      -0.00      -0.00       0.00     383.49      -0.00

   23  14.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          920.36      -0.00       0.00       0.00      -0.00   -1301.59    -920.36       0.00      -0.00      -0.00

   24  15.1  0.0  0.0      -0.00   -2021.95      -0.00       0.00       0.00       0.00      -0.00   -2021.95      -0.00       0.00
                           -0.00       0.00   -2021.95    2859.46      -0.00      -0.00       0.00      -0.00    2021.95      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -0.00       0.00       0.00    4297.34      -0.00      -0.00      -0.00    -970.16       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00    -970.16       0.00       0.00       0.00

    2   2.1  1.0  1.0    2415.92       0.00   -4334.28       0.00    6874.02       0.00      -0.00       0.00    -827.69       0.00
                            0.00   -4297.35      -0.00       0.00      -0.00    -970.16      -0.00       0.00       0.00     920.36

    3   3.1  1.0  1.0      -0.00    4297.35       0.00      -0.00       0.00    -970.16       0.00       0.00      -0.00    -920.37
                         4961.56       0.00     -74.88       0.00   -6874.02      -0.00       0.00       0.00    -991.14       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3600.06      -0.00    6023.69      -0.00    9721.33      -0.00      -0.00      -0.00    -231.16      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    6077.36       0.00       0.00      -0.00    1372.02       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00   -1372.02      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00       0.00       0.00    4297.34      -0.00      -0.00      -0.00    -970.16       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     970.16      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0    2415.92       0.00   -4334.28       0.00    6874.02       0.00      -0.00       0.00    -827.69       0.00
                           -0.00    4297.35       0.00      -0.00       0.00     970.16       0.00      -0.00      -0.00    -920.36

    9   3.1  1.0 -1.0      -0.00    4297.35       0.00      -0.00       0.00    -970.16       0.00       0.00      -0.00    -920.37
                        -4961.56      -0.00      74.88      -0.00    6874.02       0.00      -0.00      -0.00     991.14      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5656.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5656.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5656.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5656.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14772.99       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   40402.50       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   40402.51       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40402.51       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42781.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42781.66
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

    1   1.1  1.0  1.0    -920.37       0.00       0.00      -0.00
                           -0.00      -0.00    -920.36       0.00

    2   2.1  1.0  1.0      -0.00    -666.61      -0.00   -2021.95
                            0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00
                            0.00     383.49      -0.00    2021.95

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00    1485.07      -0.00   -2859.46

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -1301.59       0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00    1301.59       0.00

    7   1.1  1.0 -1.0    -920.37       0.00       0.00      -0.00
                            0.00       0.00     920.36      -0.00

    8   2.1  1.0 -1.0      -0.00    -666.61      -0.00   -2021.95
                           -0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00
                           -0.00    -383.49       0.00   -2021.95

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

   21  12.1  0.0  0.0   42781.66       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   22  13.1  0.0  0.0       0.00   42781.69       0.00       0.00
                           -0.00       0.00       0.00       0.00

   23  14.1  0.0  0.0       0.00       0.00   42781.66       0.00
                           -0.00      -0.00       0.00       0.00

   24  15.1  0.0  0.0       0.00       0.00       0.00   44870.03
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 24)

    The diagonal matrixelements are shifted by -20885.44930838 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -6105.790      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.007       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    6105.790       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.016      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    6105.792

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000   -6105.790      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.007       0.000       0.000       0.000
                             6105.790       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.016   -6105.791      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -6105.791       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.007
                               -0.000      -0.000   -6105.792       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    6105.791       0.000       0.000       0.000       0.000
                               -0.000    6105.792       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    6077.378   -6077.376      -0.000

    2    1  |0 0>              -0.000    3416.633      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3600.055       0.000       0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000    6077.376       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    6077.375

    4    1  |0 0>               0.000   -6129.595       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -6023.692      -0.000       0.000      -0.000       0.000

    5    1  |0 0>            6077.364       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -6077.364      -0.000       0.000      -0.000

    6    1  |0 0>              -0.000    9721.333       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -9721.330      -0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000   -1372.016       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    1372.020

    8    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    1372.016    1372.020       0.000

    9    1  |0 0>           -1372.019       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1372.016       0.000      -0.000      -0.000

   10    1  |0 0>               0.000   -1170.525      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     231.164      -0.000       0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000   -1301.593       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000   -1301.591

   12    1  |0 0>           -1301.593      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    1301.592      -0.000       0.000      -0.000

   13    1  |0 0>               0.000    -942.724      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1485.067      -0.000      -0.000       0.000      -0.000

   14    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -1301.593    1301.591      -0.000

   15    1  |0 0>              -0.000   -2859.465      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    2859.463      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000    6077.364      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000    3416.633       0.000   -6129.595       0.000    9721.333       0.000
                            -6105.792       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000    6077.376       0.000      -0.000       0.000   -1372.016
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            6105.791       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    3600.055      -0.000    6023.692      -0.000    9721.330      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000    6077.364       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -6077.378      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    6077.376       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -6077.375      -0.000       0.000      -0.000   -1372.020

    3    1  |1 1>-              0.016       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    7016.706       0.000    -105.896       0.000   -9721.333      -0.000

    1    1  |0 0>               0.000    5656.659       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5656.647       0.000       0.000       0.000       0.000       0.000
                            -7016.706      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5656.644       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5656.653       0.000       0.000       0.000
                              105.896      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5656.662       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14772.992       0.000
                             9721.333      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   40402.504
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1401.682      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -542.338      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2859.467      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000   -1372.019       0.000       0.000   -1301.593       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000   -1170.525       0.000      -0.000    -942.724      -0.000   -2859.465
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000   -1301.593      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -231.164      -0.000       0.000    1485.067      -0.000   -2859.463

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1372.016       0.000       0.000   -1301.592       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1372.016      -0.000      -0.000      -0.000       0.000       0.000    1301.593       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1372.020       0.000       0.000       0.000      -0.000      -0.000   -1301.591       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    1301.591       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1401.682       0.000       0.000     542.338      -0.000    2859.467

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

    8    1  |0 0>           40402.506       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000   40402.508       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000   42781.692       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000   42781.658       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000   42781.661       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000   42781.691       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   42781.660       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44870.029
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.54317332    -0.09386493   -20600.97      0.00000000        0.00      0.0000
    2-20885.47749659    -0.02818821    -6186.60      0.06567673    14414.38      1.7872
    3-20885.47749657    -0.02818819    -6186.59      0.06567674    14414.38      1.7872
    4-20885.47749656    -0.02818818    -6186.59      0.06567675    14414.38      1.7872
    5-20885.46185075    -0.01254236    -2752.73      0.08132257    17848.24      2.2129
    6-20885.46185073    -0.01254235    -2752.73      0.08132258    17848.24      2.2129
    7-20885.46185065    -0.01254227    -2752.71      0.08132266    17848.26      2.2129
    8-20885.46185049    -0.01254211    -2752.68      0.08132282    17848.30      2.2129
    9-20885.46185046    -0.01254208    -2752.67      0.08132285    17848.30      2.2129
   10-20885.38361640     0.06569198    14417.72      0.15955691    35018.69      4.3418
   11-20885.38361639     0.06569199    14417.73      0.15955693    35018.70      4.3418
   12-20885.38361619     0.06569219    14417.77      0.15955712    35018.74      4.3418
   13-20885.38361614     0.06569225    14417.78      0.15955718    35018.75      4.3418
   14-20885.38361610     0.06569228    14417.79      0.15955722    35018.76      4.3418
   15-20885.34608553     0.10322285    22654.80      0.19708778    43255.77      5.3630
   16-20885.26485283     0.18445555    40483.31      0.27832048    61084.29      7.5735
   17-20885.26485282     0.18445556    40483.32      0.27832049    61084.29      7.5735
   18-20885.26485282     0.18445557    40483.32      0.27832050    61084.29      7.5735
   19-20885.25393704     0.19537135    42879.05      0.28923628    63480.03      7.8705
   20-20885.25393703     0.19537136    42879.06      0.28923629    63480.03      7.8705
   21-20885.25393702     0.19537136    42879.06      0.28923629    63480.03      7.8705
   22-20885.25393689     0.19537150    42879.09      0.28923643    63480.06      7.8705
   23-20885.25393688     0.19537150    42879.09      0.28923643    63480.06      7.8705
   24-20885.24255273     0.20675566    45377.62      0.30062059    65978.59      8.1803

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.70649477  0.00000015  0.00000000 -0.00000001 -0.00000000 -0.49432337 -0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.52009441  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.40282309
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002141

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000015  0.70649360 -0.49432403 -0.00000006  0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00061091  0.00009498  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002932
                           0.52009443  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.55163456

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.70649389 -0.00000015 -0.00000000 -0.00000001 -0.00000000 -0.49432442 -0.00000003

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000014  0.00000000 -0.00000000
                          -0.00000000 -0.00000015  0.70649352  0.00000015 -0.00000006  0.49432470 -0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000
                          -0.00000000 -0.00000015  0.70649514  0.00000015  0.00000006 -0.49432287  0.00000000 -0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00061091  0.00009498  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000015  0.70649453  0.49432294  0.00000006 -0.00000001 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000791
                          -0.52009437 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.14881126

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000008  0.71448537 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021 -0.00000000  0.00000000

   2    1  |0 0>           0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000002  0.19666044
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001045

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000043  0.71448577  0.00000008 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00013728 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000003  0.68688725
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003651

   5    1  |0 0>          -0.00000000 -0.00000043  0.00000000 -0.00000000  0.00000001  0.00000000  0.71448521  0.00000004
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.42879084  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000001  0.04161156  0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00003598 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000001  0.04161158  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.04161156  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00297381
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000016

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.02826029 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000543  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02826034 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.02810342
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000149

  14    1  |0 0>           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.02826030  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

  15    1  |0 0>           0.06814583  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00000001  0.00000003  0.00000001  0.50423018  0.00000002 -0.00000002 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.40440251  0.01216401 -0.58210817  0.00000001  0.00000001  0.00000000  0.24368261  0.00000000
                          -0.00002689 -0.00000002  0.00004103 -0.00000000 -0.00000000  0.00000000  0.00000008  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000001 -0.00000002  0.50423080  0.00000002  0.00000000 -0.02941856
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002888 -0.00000000 -0.00000000 -0.00055359

   1    1  |1 0>           0.00000975  0.00000082  0.00002126 -0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000
                          -0.14665375  0.49803860  0.30158818 -0.00000003 -0.00000000 -0.00000001  0.24368220 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000003  0.00000001  0.50423038  0.00000002 -0.00000002  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000002 -0.50423063 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002  0.50423016 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002888 -0.00000000 -0.00000000  0.00055359
                          -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.50423056 -0.00000002 -0.00000000 -0.02941867

   3    1  |1 1>-          0.00003665  0.00000084 -0.00001977  0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000
                          -0.55105600  0.51020249 -0.28052006 -0.00000002  0.00000000 -0.00000000 -0.24368294 -0.00000000

   1    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.00000002 -0.00000002  0.69954402 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.68688761  0.61801396 -0.32774991 -0.00000003  0.00000000 -0.00000000 -0.00000047 -0.00000000
                           0.00004568 -0.00000102  0.00002310 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000001 -0.00000002  0.69954360  0.00000002 -0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00004006 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.19666047  0.32775018  0.61801420 -0.00000003 -0.00000001 -0.00000001 -0.00000023 -0.00000000
                          -0.00001308 -0.00000054 -0.00004356  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000001  0.00000004  0.00000001  0.69954418  0.00000002 -0.00000002  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000011  0.00000079 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.90166623  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000028  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000 -0.00000000  0.99895701
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01879802

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.02810338  0.02977399 -0.03542719 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                          -0.00000187 -0.00000005  0.00000250 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.04627736  0.00000000  0.00000000  0.00000004
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000265 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.04627732  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00297379 -0.03542720 -0.02977402  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000
                           0.00000020  0.00000006  0.00000210 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.04627733  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000001 -0.00000005  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.09409785  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000 -0.02942387 -0.00000000 -0.00000000 -0.03735916  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02548367 -0.03480685 -0.05877027
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001000 -0.00000288  0.00000009

   3    1  |1 1>+         -0.00000000  0.00000000 -0.03735918  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000286 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001684  0.00000039 -0.00000009
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04288548 -0.00466613 -0.05877020

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.02942376 -0.00000000 -0.00000000 -0.03735913  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.02942377 -0.00000000  0.00000000  0.03735917 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02942389 -0.00000000 -0.00000000 -0.03735911  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000286 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.03735913 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000683  0.00000327  0.00000009
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01740171 -0.03947288  0.05877033

   1    1  |0 0>          -0.00000002  0.00000000 -0.00000000 -0.01219941  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00508898 -0.01108713  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000200 -0.00000092 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.01219940  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01108715  0.00508899  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000435  0.00000042 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.01219938  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000003 -0.05600381
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.99913386  0.00000005 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000005  0.99913386 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.04595712  0.99747066  0.00000010
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001804  0.00008251 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.99852880 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00007644  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000008  0.00000006  0.00000007  0.99852880 -0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.99747058  0.04595712 -0.00000007
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00039158  0.00000380  0.00000000

  14    1  |0 0>          -0.00000004  0.00000000  0.00000000  0.99852880 -0.00000007 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00000010  0.99322794
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000159


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.54317332     -0.09386493   -20600.97      0.00000000        0.00      0.0000
     2   1 -20885.47749659     -0.02818821    -6186.60      0.06567673    14414.38      1.7872
     3   1 -20885.47749657     -0.02818819    -6186.59      0.06567674    14414.38      1.7872
     4   1 -20885.47749656     -0.02818818    -6186.59      0.06567675    14414.38      1.7872
     5   1 -20885.46185075     -0.01254236    -2752.73      0.08132257    17848.24      2.2129
     6   1 -20885.46185073     -0.01254235    -2752.73      0.08132258    17848.24      2.2129
     7   1 -20885.46185065     -0.01254227    -2752.71      0.08132266    17848.26      2.2129
     8   1 -20885.46185049     -0.01254211    -2752.68      0.08132282    17848.30      2.2129
     9   1 -20885.46185046     -0.01254208    -2752.67      0.08132285    17848.30      2.2129
    10   1 -20885.38361640      0.06569198    14417.72      0.15955691    35018.69      4.3418
    11   1 -20885.38361639      0.06569199    14417.73      0.15955693    35018.70      4.3418
    12   1 -20885.38361619      0.06569219    14417.77      0.15955712    35018.74      4.3418
    13   1 -20885.38361614      0.06569225    14417.78      0.15955718    35018.75      4.3418
    14   1 -20885.38361610      0.06569228    14417.79      0.15955722    35018.76      4.3418
    15   1 -20885.34608553      0.10322285    22654.80      0.19708778    43255.77      5.3630
    16   1 -20885.26485283      0.18445555    40483.31      0.27832048    61084.29      7.5735
    17   1 -20885.26485282      0.18445556    40483.32      0.27832049    61084.29      7.5735
    18   1 -20885.26485282      0.18445557    40483.32      0.27832050    61084.29      7.5735
    19   1 -20885.25393704      0.19537135    42879.05      0.28923628    63480.03      7.8705
    20   1 -20885.25393703      0.19537136    42879.06      0.28923629    63480.03      7.8705
    21   1 -20885.25393702      0.19537136    42879.06      0.28923629    63480.03      7.8705
    22   1 -20885.25393689      0.19537150    42879.09      0.28923643    63480.06      7.8705
    23   1 -20885.25393688      0.19537150    42879.09      0.28923643    63480.06      7.8705
    24   1 -20885.24255273      0.20675566    45377.62      0.30062059    65978.59      8.1803

 E0 = -20885.44930838 is the energy of the lowest zeroth-order state
 E1 = -20885.54317332 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.70649477  0.00000015  0.00000000 -0.00000001 -0.00000000 -0.49432337 -0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.52009441  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.40282309
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002141

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000015  0.70649360 -0.49432403 -0.00000006  0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00061091  0.00009498  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002932
                                0.52009443  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.55163456

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.70649389 -0.00000015 -0.00000000 -0.00000001 -0.00000000 -0.49432442 -0.00000003

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000014  0.00000000 -0.00000000
                               -0.00000000 -0.00000015  0.70649352  0.00000015 -0.00000006  0.49432470 -0.00000000  0.00000001

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000
                               -0.00000000 -0.00000015  0.70649514  0.00000015  0.00000006 -0.49432287  0.00000000 -0.00000001

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00061091  0.00009498  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000015  0.70649453  0.49432294  0.00000006 -0.00000001 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000791
                               -0.52009437 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.14881126

 10  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000008  0.71448537 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000002  0.19666044
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001045

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000043  0.71448577  0.00000008 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00013728 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000003  0.68688725
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003651

 14  1     5    1  |0 0>       -0.00000000 -0.00000043  0.00000000 -0.00000000  0.00000001  0.00000000  0.71448521  0.00000004
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.42879084  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000001  0.04161156  0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00003598 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     8    1  |0 0>        0.00000000 -0.00000001  0.04161158  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     9    1  |0 0>        0.00000000  0.04161156  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    10    1  |0 0>        0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00297381
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000016

 20  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.02826029 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000543  0.00000000 -0.00000000  0.00000000

 21  1    12    1  |0 0>        0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02826034 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    13    1  |0 0>       -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.02810342
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000149

 23  1    14    1  |0 0>        0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.02826030  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

 24  1    15    1  |0 0>        0.06814583  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00000001  0.00000003  0.00000001  0.50423018  0.00000002 -0.00000002 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.40440251  0.01216401 -0.58210817  0.00000001  0.00000001  0.00000000  0.24368261  0.00000000
                               -0.00002689 -0.00000002  0.00004103 -0.00000000 -0.00000000  0.00000000  0.00000008  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000001 -0.00000002  0.50423080  0.00000002  0.00000000 -0.02941856
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002888 -0.00000000 -0.00000000 -0.00055359

  4  1     1    1  |1 0>        0.00000975  0.00000082  0.00002126 -0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000
                               -0.14665375  0.49803860  0.30158818 -0.00000003 -0.00000000 -0.00000001  0.24368220 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000003  0.00000001  0.50423038  0.00000002 -0.00000002  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000002 -0.50423063 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002  0.50423016 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002888 -0.00000000 -0.00000000  0.00055359
                               -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.50423056 -0.00000002 -0.00000000 -0.02941867

  9  1     3    1  |1 1>-       0.00003665  0.00000084 -0.00001977  0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000
                               -0.55105600  0.51020249 -0.28052006 -0.00000002  0.00000000 -0.00000000 -0.24368294 -0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.00000002 -0.00000002  0.69954402 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.68688761  0.61801396 -0.32774991 -0.00000003  0.00000000 -0.00000000 -0.00000047 -0.00000000
                                0.00004568 -0.00000102  0.00002310 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000001 -0.00000002  0.69954360  0.00000002 -0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00004006 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.19666047  0.32775018  0.61801420 -0.00000003 -0.00000001 -0.00000001 -0.00000023 -0.00000000
                               -0.00001308 -0.00000054 -0.00004356  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000001  0.00000004  0.00000001  0.69954418  0.00000002 -0.00000002  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000011  0.00000079 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.90166623  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000028  0.00000000

 16  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000 -0.00000000  0.99895701
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01879802

 17  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    10    1  |0 0>       -0.02810338  0.02977399 -0.03542719 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                               -0.00000187 -0.00000005  0.00000250 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.04627736  0.00000000  0.00000000  0.00000004
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000265 -0.00000000 -0.00000000  0.00000000

 21  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.04627732  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    13    1  |0 0>        0.00297379 -0.03542720 -0.02977402  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000
                                0.00000020  0.00000006  0.00000210 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    14    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.04627733  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    15    1  |0 0>        0.00000001 -0.00000005  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.09409785  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000 -0.02942387 -0.00000000 -0.00000000 -0.03735916  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02548367 -0.03480685 -0.05877027
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001000 -0.00000288  0.00000009

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.03735918  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000286 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001684  0.00000039 -0.00000009
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04288548 -0.00466613 -0.05877020

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.02942376 -0.00000000 -0.00000000 -0.03735913  0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.02942377 -0.00000000  0.00000000  0.03735917 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02942389 -0.00000000 -0.00000000 -0.03735911  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000286 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.03735913 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000683  0.00000327  0.00000009
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01740171 -0.03947288  0.05877033

 10  1     1    1  |0 0>       -0.00000002  0.00000000 -0.00000000 -0.01219941  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00508898 -0.01108713  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000200 -0.00000092 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.01219940  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01108715  0.00508899  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000435  0.00000042 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.01219938  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000003 -0.05600381
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009

 16  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     8    1  |0 0>        0.99913386  0.00000005 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     9    1  |0 0>       -0.00000005  0.99913386 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.04595712  0.99747066  0.00000010
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001804  0.00008251 -0.00000000

 20  1    11    1  |0 0>        0.00000000  0.00000000  0.99852880 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00007644  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    12    1  |0 0>       -0.00000000 -0.00000008  0.00000006  0.00000007  0.99852880 -0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    13    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.99747058  0.04595712 -0.00000007
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00039158  0.00000380  0.00000000

 23  1    14    1  |0 0>       -0.00000004  0.00000000  0.00000000  0.99852880 -0.00000007 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    15    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00000010  0.99322794
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000159



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.91%    0.00%    0.00%    0.00%    0.00%   24.44%    0.00%
  2  1     2    1  |1 1>+        27.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.23%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.91%   24.44%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         27.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.43%
  5  1     2    1  |1 0>          0.00%   49.91%    0.00%    0.00%    0.00%    0.00%   24.44%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.91%    0.00%    0.00%   24.44%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   49.91%    0.00%    0.00%   24.44%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.91%   24.44%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        27.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.21%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   51.05%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.87%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   51.05%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   47.18%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   51.05%    0.00%
 15  1     6    1  |0 0>         18.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |0 0>          0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%
 22  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%
 23  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 24  1    15    1  |0 0>          0.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        16.35%    0.01%   33.88%    0.00%    0.00%    0.00%    5.94%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.09%
  4  1     1    1  |1 0>          2.15%   24.80%    9.10%    0.00%    0.00%    0.00%    5.94%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.42%    0.00%    0.00%    0.09%
  9  1     3    1  |1 1>-        30.37%   26.03%    7.87%    0.00%    0.00%    0.00%    5.94%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   48.94%    0.00%    0.00%
 11  1     2    1  |0 0>         47.18%   38.19%   10.74%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   48.94%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          3.87%   10.74%   38.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   48.94%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.30%    0.00%
 16  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.83%
 17  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    10    1  |0 0>          0.08%    0.09%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.21%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.21%    0.00%    0.00%    0.00%    0.00%
 22  1    13    1  |0 0>          0.00%    0.13%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.00%    0.00%
 24  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.89%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.09%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.12%    0.35%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.35%
  5  1     2    1  |1 0>          0.00%    0.09%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.09%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.09%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.16%    0.35%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.31%
 16  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |0 0>         99.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |0 0>          0.00%   99.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.21%   99.49%    0.00%
 20  1    11    1  |0 0>          0.00%    0.00%   99.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.71%    0.00%    0.00%    0.00%
 22  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.49%    0.21%    0.00%
 23  1    14    1  |0 0>          0.00%    0.00%    0.00%   99.71%    0.00%    0.00%    0.00%    0.00%
 24  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   98.65%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1955.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3319.98       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     30269.42  11070.15    118.92  16379.74   2667.84     22.60      0.59      9.36
 REAL TIME  *     31086.77 SEC
 DISK USED  *         3.50 GB (local),       61.97 GB (total)
 SF USED    *        31.36 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.242552727930

              CI              CI           MULTI         RHF-SCF
 -20885.15514223 -20885.35915056 -20884.15502728 -20884.37350176
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
