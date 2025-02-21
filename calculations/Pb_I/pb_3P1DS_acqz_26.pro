
 Working directory              : /wrk/irikura/molpro.srcw3k3zWk/
 Global scratch directory       : /wrk/irikura/molpro.srcw3k3zWk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.srcw3k3zWk/

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
 NSING=6
 
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
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Feb-25          TIME: 16:05:45  
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

     Node minimum: 4.719 MB, node maximum: 14.418 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056746. INTEGRALS IN      4 RECORDS. CPU TIME:     0.85 SEC, REAL TIME:     0.88 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    384 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.14 SEC

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
 CPU TIMES  *        10.17      9.79
 REAL TIME  *        11.15 SEC
 DISK USED  *        31.21 MB (local),      871.60 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  21  19

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20874.51036946  -20874.51036946     0.00D+00     0.13D+02     0     0       0.04      0.06    start
   2   -20877.37429349      -2.86392404     0.15D+00     0.59D+01     1     0       0.04      0.10    diag2
   3   -20884.06048053      -6.68618703     0.13D+00     0.78D+01     2     0       0.04      0.14    diag2
   4   -20884.32284852      -0.26236800     0.11D-01     0.89D-01     3     0       0.04      0.18    diag2
   5   -20884.36430092      -0.04145239     0.50D-02     0.51D-01     4     0       0.04      0.22    diag2
   6   -20884.37195604      -0.00765513     0.75D-03     0.52D-02     5     0       0.03      0.25    diag2
   7   -20884.37328374      -0.00132770     0.20D-03     0.13D-01     6     0       0.04      0.29    diag2
   8   -20884.37346879      -0.00018505     0.55D-04     0.42D-02     7     0       0.04      0.33    fixocc
   9   -20884.37349707      -0.00002828     0.18D-04     0.11D-02     8     0       0.04      0.37    diag2
  10   -20884.37350149      -0.00000442     0.72D-05     0.19D-03     9     0       0.04      0.41    diag2/orth
  11   -20884.37350175      -0.00000026     0.21D-05     0.30D-04     9     0       0.04      0.45    diag2
  12   -20884.37350176      -0.00000000     0.13D-06     0.12D-05     9     0       0.04      0.49    diag2
  13   -20884.37350176      -0.00000000     0.32D-07     0.76D-06     0     0       0.03      0.52    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.3735017554    
  RHF One-electron energy            -28596.4496527884    
  RHF Two-electron energy            7712.076151033001
  RHF Kinetic energy                  32688.9286453575    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.638882164917

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
    4.1     2.00000   -94.27602     1  1  d2-  0.95392    1  1  d2+ -0.30016
    5.1     2.00000   -94.27602     1  1  d2-  0.30016    1  1  d2+  0.95392
    6.1     2.00000   -94.27602     1  1  d0   1.00003
    7.1     2.00000   -94.27602     1  1  d1+  0.82012    1  1  d1-  0.57224
    8.1     2.00000   -94.27602     1  1  d1+ -0.57224    1  1  d1-  0.82012
    9.1     2.00000   -33.76531     1  3  s    0.28683    1  4  s    1.82870    1  5  s   -1.96244    1  6  s    2.65840
                                    1  8  s   -0.43152    1 10  s   -1.35709    1 11  s   -1.64090    1 12  s   -0.46853
   10.1     2.00000   -16.18309     1  2  d0   0.99933
   11.1     2.00000   -16.18309     1  2  d2-  0.74492    1  2  d2+  0.66613
   12.1     2.00000   -16.18309     1  2  d2- -0.66589    1  2  d2+  0.74483
   13.1     2.00000   -16.18309     1  2  d1-  0.99907
   14.1     2.00000   -16.18309     1  2  d1+  0.99930
   15.1     2.00000    -5.91932     1  4  s    0.38812    1  6  s    1.31668    1 10  s   -0.66960    1 11  s   -0.81429
   16.1     2.00000    -0.85058     1  3  d0   1.00025
   17.1     2.00000    -0.85058     1  3  d2-  0.79147    1  3  d2+  0.61151
   18.1     2.00000    -0.85058     1  3  d2- -0.61156    1  3  d2+  0.79152
   19.1     2.00000    -0.85058     1  3  d1+ -0.52102    1  3  d1-  0.85376
   20.1     2.00000    -0.85058     1  3  d1+  0.85381    1  3  d1-  0.52106
   21.1     2.00000    -0.35260     1  5  s   -0.30638    1  6  s    1.39136    1 11  s   -0.29667
    1.2     2.00000  -506.12404     1  1  py   0.99913
    2.2     2.00000  -506.12404     1  1  px   0.99914
    3.2     2.00000  -506.12404     1  1  pz   0.99916
    4.2     2.00000  -119.74048     1  2  py   1.00836
    5.2     2.00000  -119.74048     1  2  px   1.00836
    6.2     2.00000  -119.74048     1  2  pz   1.00836
    7.2     2.00000   -25.80840     1  3  pz   0.95201
    8.2     2.00000   -25.80840     1  3  py   0.95201
    9.2     2.00000   -25.80840     1  3  px   0.96641
   10.2     2.00000    -5.60740     1  1  f2+  0.99762
   11.2     2.00000    -5.60740     1  1  f1+  0.33425    1  1  f3+  0.93785
   12.2     2.00000    -5.60740     1  1  f0   0.45532    1  1  f2-  0.78452    1  1  f3-  0.38574
   13.2     2.00000    -5.60740     1  1  f0   0.86523    1  1  f2- -0.28459    1  1  f3- -0.36644
   14.2     2.00000    -5.60740     1  1  f1- -0.32870    1  1  f2- -0.54613    1  1  f3-  0.74227
   15.2     2.00000    -5.60740     1  1  f1+  0.94222    1  1  f3+ -0.33417
   16.2     2.00000    -5.60740     1  1  f1-  0.91407    1  1  f3-  0.40442
   17.2     2.00000    -3.61624     1  4  px   0.99221
   18.2     2.00000    -3.61624     1  4  py   0.99221
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
 CPU TIMES  *        10.71      0.54      9.79
 REAL TIME  *        11.71 SEC
 DISK USED  *        34.57 MB (local),      925.38 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

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
 Number of states:             6
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.240D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.242D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.418D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.412D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.412D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.909D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.474D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.482D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.350D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.138D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.410D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.387D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.380D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 2   3 5 6 4 1 2 3 5 6 4   1 1 5 3 4 6 2 1 5 3   6 4 21013 7141511 9
                                       12 8 1 5 3 6 4 21013   7 9111415 812 5 3 6   4 2 1 911 71514 812  1310 2 5 3 6 4 1 7 9
                                       11 81213101514 2 3 5   6 4 1 2 3 5 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.962D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.606D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.354D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.582D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.512D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.599D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.287D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.337D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.249D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.327D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.511D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.273D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.196D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 110   7 8 6 9 4 5 1 2 3 3   1 2 3 2 1 2 1 310 8   7 9 6 5 4 2 1 3 810
                                        7 9 6 4 5 6 7 9 810   4 5 2 1 3 6 810 7 9   4 51211132119161417  152018 2 1 3 6 7 910
                                        8 5 4 6 7 9 5 410 8   3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  3527  ( 114 closed/active, 2987 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    3788
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0 -20884.30239503  -20884.31432328   -0.01192825    0.10428379 0.00030209 0.00000000  0.15E+01      5.66
   2   11   16    0 -20884.31445353  -20884.31451006   -0.00005653    0.00315001 0.00000067 0.00000000  0.23E+00     12.07
   3   19   22    0 -20884.31451000  -20884.31451000   -0.00000000    0.00000558 0.00000001 0.00000000  0.97E-03     17.86
   4   20   20    0 -20884.31451000  -20884.31451000   -0.00000000    0.00000002 0.00000001 0.00000000  0.10E-06     23.09

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.31E-07)
                       Final energy: -20884.31451000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3413142392    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.10533990
 One electron energy                        -28578.31669203
 Two electron energy                          7693.97537779
 Virial ratio                                    1.63887773
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3413142392    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.10533990
 One electron energy                        -28578.31669203
 Two electron energy                          7693.97537779
 Virial ratio                                    1.63887773
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3413142392    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.10533990
 One electron energy                        -28578.31669204
 Two electron energy                          7693.97537780
 Virial ratio                                    1.63887773
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3088620262    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.93973413
 One electron energy                        -28577.33168820
 Two electron energy                          7693.02282617
 Virial ratio                                    1.63887997
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3088620262    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.93973413
 One electron energy                        -28577.33168820
 Two electron energy                          7693.02282617
 Virial ratio                                    1.63887997
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3088620262    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.93973413
 One electron energy                        -28577.33168819
 Two electron energy                          7693.02282616
 Virial ratio                                    1.63887997
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3088620262    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.93973413
 One electron energy                        -28577.33168819
 Two electron energy                          7693.02282616
 Virial ratio                                    1.63887997
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3088620262    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.93973413
 One electron energy                        -28577.33168819
 Two electron energy                          7693.02282616
 Virial ratio                                    1.63887997
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.2623371329    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.72043930
 One electron energy                        -28575.97140274
 Two electron energy                          7691.70906561
 Virial ratio                                    1.63888283
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000055612276
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999944598506
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999997
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999998240360
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.979686898723
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000001195806
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000001262901
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.020311087044
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999941
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999998197612
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000001818028
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000068400
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.763934796107
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000026722935
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999973471053
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.236058555981
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999944387783
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000057203882
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999998181975
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000001691240
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.256378305169
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999972081259
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000025266045
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.743630356975
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 2   4 6 3 5 1 2 4 6 3 5   1 1 2 4 6 5 3 1 4 2   6 3 5 9 71112 81415
                                       1013 1 4 6 5 3 2 9 7  11 81215141013 4 5 3   6 2 1 9 711 8121415  1310 2 5 3 4 6 1 9 7
                                       11 81215141310 2 3 5   4 6 1 2 3 5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 4   6 510 8 7 9 3 1 2 2   1 3 2 1 3 3 2 1 4 6   5 810 9 7 2 3 1 6 4
                                        5 810 7 9 6 4 5 810   7 9 1 2 3 6 4 5 810   7 91119121321161417  151820 6 4 510 8 7 9
                                        1 2 3 6 4 5 810 7 9   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.60999     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27076
                                    1  5  s    9.90678    1  6  s  -13.20179    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75361    1 11  s    8.14132    1 12  s    2.33001
    2.1     2.00000  -587.69892     1  2  s    1.25928    1  3  s    0.91634    1  4  s    2.61431    1  5  s   -6.06295
                                    1  6  s    8.07905    1  7  s    0.60613    1  8  s   -1.37504    1 10  s   -4.13298
                                    1 11  s   -4.98222    1 12  s   -1.42588
    3.1     2.00000  -143.75342     1  3  s    0.46645    1  4  s   -1.52684    1  5  s    3.55935    1  6  s   -4.76215
                                    1  7  s   -0.35631    1  8  s    0.80152    1 10  s    2.43495    1 11  s    2.93735
                                    1 12  s    0.84023
    4.1     2.00000   -94.50780     1  1  d0   1.00003
    5.1     2.00000   -94.50780     1  1  d1+  1.00003
    6.1     2.00000   -94.50780     1  1  d1-  1.00003
    7.1     2.00000   -94.50780     1  1  d2-  1.00003
    8.1     2.00000   -94.50780     1  1  d2+  1.00003
    9.1     2.00000   -33.99728     1  3  s    0.28681    1  4  s    1.82856    1  5  s   -1.96173    1  6  s    2.65708
                                    1  8  s   -0.43149    1 10  s   -1.35644    1 11  s   -1.64008    1 12  s   -0.46830
   10.1     2.00000   -16.41491     1  2  d0   0.99937
   11.1     2.00000   -16.41491     1  2  d1+  0.99937
   12.1     2.00000   -16.41491     1  2  d1-  0.99937
   13.1     2.00000   -16.41491     1  2  d2-  0.99937
   14.1     2.00000   -16.41491     1  2  d2+  0.99937
   15.1     2.00000    -6.15149     1  4  s    0.38851    1  6  s    1.32558    1 10  s   -0.67414    1 11  s   -0.81973
   16.1     2.00000    -1.08288     1  3  d0   1.00064
   17.1     2.00000    -1.08288     1  3  d1+  1.00064
   18.1     2.00000    -1.08288     1  3  d1-  1.00064
   19.1     2.00000    -1.08288     1  3  d2-  1.00064
   20.1     2.00000    -1.08288     1  3  d2+  1.00064
   21.1     2.00000    -0.56917     1  5  s   -0.35702    1  6  s    1.52515    1 10  s   -0.26020    1 11  s   -0.32545
    1.2     2.00000  -506.35590     1  1  pz   0.99918
    2.2     2.00000  -506.35590     1  1  px   0.99918
    3.2     2.00000  -506.35590     1  1  py   0.99918
    4.2     2.00000  -119.97221     1  2  pz   1.00837
    5.2     2.00000  -119.97221     1  2  px   1.00837
    6.2     2.00000  -119.97221     1  2  py   1.00837
    7.2     2.00000   -26.04010     1  3  pz   0.96641
    8.2     2.00000   -26.04010     1  3  px   0.96641
    9.2     2.00000   -26.04010     1  3  py   0.96641
   10.2     2.00000    -5.83920     1  1  f1+  1.00002
   11.2     2.00000    -5.83920     1  1  f0   1.00002
   12.2     2.00000    -5.83920     1  1  f1-  1.00002
   13.2     2.00000    -5.83920     1  1  f2+  1.00002
   14.2     2.00000    -5.83920     1  1  f2-  1.00002
   15.2     2.00000    -5.83920     1  1  f3+  1.00002
   16.2     2.00000    -5.83920     1  1  f3-  1.00002
   17.2     2.00000    -3.84815     1  4  pz   0.99671
   18.2     2.00000    -3.84815     1  4  px   0.99671
   19.2     2.00000    -3.84815     1  4  py   0.99671
   20.2     0.66442    -0.06659     1  9  py   0.35756    1 10  py   0.51609    1 11  py   0.27451
   21.2     0.66442    -0.06659     1  9  px   0.35756    1 10  px   0.51609    1 11  px   0.27451
   22.2     0.66442    -0.06659     1  9  pz   0.35756    1 10  pz   0.51609    1 11  pz   0.27451
   23.2     0.00225     0.28214     1  4  py  -0.76316    1  9  py  -1.14580    1 11  py   0.90877
   24.2     0.00225     0.28214     1  4  px  -0.76316    1  9  px  -1.14580    1 11  px   0.90877
   25.2     0.00225     0.28214     1  4  pz  -0.76316    1  9  pz  -1.14580    1 11  pz   0.90877
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 0aa000        -0.00000764      0.00134112      0.99895168
 a0a000         0.99892481      0.00744955     -0.00000236
 aa0000        -0.00744955      0.99892390     -0.00134114
 
 Energy:   -20884.34131424 -20884.34131424 -20884.34131424
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 020000         0.00030593     -0.05808802      0.00002094     -0.00046341      0.81308949      0.57434512
 200000        -0.00026893      0.73320014     -0.00002774     -0.00028820     -0.35623930      0.57434512
 a0b000         0.70595078      0.00013455      0.00044574     -0.00000502     -0.00025602      0.00000000
 b0a000        -0.70595078     -0.00013455     -0.00044574      0.00000502      0.00025602     -0.00000000
 ab0000        -0.00044573      0.00001990      0.70594769      0.00210702     -0.00001539     -0.00000000
 ba0000         0.00044573     -0.00001990     -0.70594769     -0.00210702      0.00001539      0.00000000
 0ab000         0.00000641      0.00048994     -0.00210702      0.70594753      0.00043740      0.00000000
 0ba000        -0.00000641     -0.00048994      0.00210702     -0.70594753     -0.00043740     -0.00000000
 002000        -0.00003701     -0.67511212      0.00000680      0.00075162     -0.45685019      0.57434512
 
 Energy:   -20884.30886203 -20884.30886203 -20884.30886203 -20884.30886203 -20884.30886203 -20884.26233713
 


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
 CPU TIMES  *        34.10     23.39      0.54      9.79
 REAL TIME  *        39.49 SEC
 DISK USED  *       269.06 MB (local),        4.57 GB (total)
 SF USED    *       563.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.34131   2.0
    -20884.34131   2.0
    -20884.34131   2.0
    -20884.30886   6.0
    -20884.30886   6.0
    -20884.30886   6.0
    -20884.30886   6.0
    -20884.30886   6.0
    -20884.26234  -0.0
                                                  


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


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.34131424
     2    -20884.34131424
     3    -20884.34131424

 Number of blocks in overlap matrix:   970   Smallest eigenvalue:  0.56D+00
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
    1     1     1     1.00000000     0.00000000-20884.34131424     0.00000000    -1.29544487  0.58D-01  0.12D+00    11.61
    1     2     2     1.00000000     0.00000000-20884.34131424    -0.00000000    -1.29559042  0.58D-01  0.12D+00    11.61
    1     3     3     1.00000000     0.00000000-20884.34131424    -0.00000000    -1.29531969  0.58D-01  0.12D+00    11.61
    2     1     1     1.10052599    -0.98573170-20885.32704594    -0.98573170    -0.03425432  0.44D-02  0.21D-02   279.56
    2     2     2     1.10060994    -0.98562789-20885.32694213    -0.98562789    -0.03436742  0.45D-02  0.22D-02   279.56
    2     3     3     1.10071515    -0.98550218-20885.32681642    -0.98550218    -0.03450232  0.45D-02  0.22D-02   279.56
    3     1     1     1.08508185    -1.01707622-20885.35839046    -0.03134452    -0.00228101  0.54D-04  0.65D-04   546.76
    3     2     2     1.08507752    -1.01707479-20885.35838903    -0.03144690    -0.00228146  0.54D-04  0.65D-04   546.76
    3     3     3     1.08507216    -1.01707313-20885.35838737    -0.03157095    -0.00228214  0.54D-04  0.65D-04   546.76
    4     1     1     1.08489466    -1.01750203-20885.35881627    -0.00042582    -0.00037991  0.35D-04  0.24D-04   812.03
    4     2     2     1.08489083    -1.01750099-20885.35881523    -0.00042620    -0.00038156  0.35D-04  0.24D-04   812.03
    4     3     3     1.08488607    -1.01749979-20885.35881403    -0.00042666    -0.00038344  0.35D-04  0.24D-04   812.03
    5     1     1     1.08491862    -1.01779174-20885.35910598    -0.00028971    -0.00006779  0.24D-05  0.11D-05  1077.25
    5     2     2     1.08491889    -1.01779173-20885.35910597    -0.00029074    -0.00006782  0.24D-05  0.11D-05  1077.25
    5     3     3     1.08491910    -1.01779173-20885.35910597    -0.00029195    -0.00006786  0.24D-05  0.11D-05  1077.25
    6     1     1     1.08488330    -1.01780457-20885.35911881    -0.00001283    -0.00000831  0.16D-05  0.33D-06  1342.54
    6     2     2     1.08488291    -1.01780456-20885.35911880    -0.00001283    -0.00000832  0.16D-05  0.33D-06  1342.54
    6     3     3     1.08488313    -1.01780456-20885.35911880    -0.00001283    -0.00000832  0.16D-05  0.33D-06  1342.54
    7     1     1     1.08476055    -1.01780990-20885.35912414    -0.00000533    -0.00000719  0.18D-06  0.17D-06  1607.63
    7     2     2     1.08476105    -1.01780989-20885.35912413    -0.00000533    -0.00000721  0.19D-06  0.17D-06  1607.63
    7     3     3     1.08476147    -1.01780988-20885.35912412    -0.00000532    -0.00000723  0.19D-06  0.17D-06  1607.63
    8     1     1     1.08473771    -1.01781125-20885.35912549    -0.00000135    -0.00000091  0.73D-07  0.29D-07  1872.83
    8     2     2     1.08473804    -1.01781125-20885.35912549    -0.00000136    -0.00000092  0.73D-07  0.29D-07  1872.83
    8     3     3     1.08473830    -1.01781125-20885.35912549    -0.00000136    -0.00000092  0.74D-07  0.29D-07  1872.83
    9     1     1     1.08473606    -1.01781146-20885.35912570    -0.00000021    -0.00000030  0.47D-07  0.15D-07  2137.82
    9     2     2     1.08473632    -1.01781146-20885.35912570    -0.00000021    -0.00000030  0.47D-07  0.15D-07  2137.82
    9     3     3     1.08473653    -1.01781146-20885.35912570    -0.00000021    -0.00000030  0.48D-07  0.15D-07  2137.82
   10     1     1     1.08473251    -1.01781163-20885.35912587    -0.00000017    -0.00000029  0.74D-08  0.67D-08  2402.96
   10     2     2     1.08473261    -1.01781163-20885.35912587    -0.00000017    -0.00000029  0.75D-08  0.67D-08  2402.96
   10     3     3     1.08473268    -1.01781163-20885.35912587    -0.00000017    -0.00000029  0.76D-08  0.68D-08  2402.96
   11     1     1     1.08473165    -1.01781168-20885.35912592    -0.00000005    -0.00000004  0.39D-08  0.13D-08  2668.16
   11     2     2     1.08473171    -1.01781168-20885.35912592    -0.00000005    -0.00000004  0.39D-08  0.13D-08  2668.16
   11     3     3     1.08473176    -1.01781168-20885.35912592    -0.00000005    -0.00000004  0.39D-08  0.13D-08  2668.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.1%
 S   0.6%  73.7%
 P   0.3%  15.7%   2.5%

 Initialization:   0.3%
 Other:            5.9%

 Total CPU:     2668.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0000           0.9572987   0.0000000   0.0000000
 22222222222222222/0/000          -0.0000000   0.9572987  -0.0000000
 222222222222222220//000          -0.0000000   0.0000000   0.9572987

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958514   -0.000000
 2           0.958514    0.000000    0.000000
 3          -0.000000    0.000000    0.958514

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958514    0.000000   -0.000000
 2           0.000000    0.958514    0.000000
 3          -0.000000    0.000000    0.958514


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95851407 (fixed)   0.95857337 (relaxed)   0.95851407 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00341527   -0.00932161   -0.85722139
 Singles      0.01787639   -0.08825691   -0.09780151
 Pairs        0.06714464    0.00000000   -0.06278878
 Total        1.08843630   -0.09757852   -1.01781168
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34131424
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.78494864
 One electron energy               -28575.52666238
 Two electron energy                 7690.16753646
 Virial quotient                       -0.63891513
 Correlation energy                    -1.01781168
 !MRCI STATE 1.1 Energy              -20885.3591259206    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44913742 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44900036 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44913742 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45096598 (Pople, fixed reference)
 Cluster corrected energies        -20885.45081447 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45096598 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95851404 (fixed)   0.95857334 (relaxed)   0.95851404 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00341527   -0.00932161   -0.85722126
 Singles      0.01787647   -0.08825699   -0.09780159
 Pairs        0.06714463   -0.00000000   -0.06278882
 Total        1.08843636   -0.09757860   -1.01781168
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34131424
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.78494978
 One electron energy               -28575.52666245
 Two electron energy                 7690.16753653
 Virial quotient                       -0.63891513
 Correlation energy                    -1.01781168
 !MRCI STATE 2.1 Energy              -20885.3591259199    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44913748 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44900042 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44913748 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45096605 (Pople, fixed reference)
 Cluster corrected energies        -20885.45081454 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45096605 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95851402 (fixed)   0.95857332 (relaxed)   0.95851402 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00341526   -0.00932161   -0.01175788
 Singles      0.01787653   -0.08825705   -0.09780165
 Pairs        0.06714461   -0.92023303   -0.90825215
 Total        1.08843641   -1.01781168   -1.01781168
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.34131424
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.78495148
 One electron energy               -28575.52666309
 Two electron energy                 7690.16753717
 Virial quotient                       -0.63891513
 Correlation energy                    -1.01781168
 !MRCI STATE 3.1 Energy              -20885.3591259191    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44913753 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44900047 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44913753 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45096610 (Pople, fixed reference)
 Cluster corrected energies        -20885.45081459 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45096610 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      208.49       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2721.55   2687.45     23.39      0.54      9.79
 REAL TIME  *      2762.22 SEC
 DISK USED  *       475.77 MB (local),        7.80 GB (total)
 SF USED    *         2.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.44913742  AU                              
 SETTING HLSDIAG(2)     =    -20885.44913748  AU                              
 SETTING HLSDIAG(3)     =    -20885.44913753  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.30886203
     2    -20884.30886203
     3    -20884.30886203
     4    -20884.30886203
     5    -20884.30886203
     6    -20884.26233713

 Number of blocks in overlap matrix:  1837   Smallest eigenvalue:  0.96D+00
 Number of N-2 electron functions:    1939
 Number of N-1 electron functions:   23568

 Number of internal configurations:                16366
 Number of singly external configurations:       1753492
 Number of doubly external configurations:      10770723
 Total number of contracted configurations:     12540581
 Total number of uncontracted configurations:   71912576

 Diagonal Coupling coefficients finished.               Storage:  15589090 words, CPU-Time:     11.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3278803 words, CPU-time:      4.46 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.30886203     0.00000000    -1.30125727  0.64D-01  0.12D+00    20.66
    1     2     2     1.00000000     0.00000000-20884.30886203    -0.00000000    -1.30018737  0.63D-01  0.12D+00    20.66
    1     3     3     1.00000000     0.00000000-20884.30886203     0.00000000    -1.30103758  0.63D-01  0.12D+00    20.66
    1     4     4     1.00000000     0.00000000-20884.30886203    -0.00000000    -1.30126210  0.64D-01  0.12D+00    20.66
    1     5     5     1.00000000     0.00000000-20884.30886203    -0.00000000    -1.30021570  0.63D-01  0.12D+00    20.66
    1     6     6     1.00000000     0.00000000-20884.26233713     0.00000000    -1.29847888  0.44D-01  0.14D+00    20.66
    2     1     1     1.10406615    -0.98891756-20885.29777958    -0.98891756    -0.03517334  0.47D-02  0.23D-02   394.57
    2     2     2     1.10417068    -0.98877952-20885.29764155    -0.98877952    -0.03532905  0.48D-02  0.24D-02   394.57
    2     3     3     1.10438500    -0.98843549-20885.29729751    -0.98843549    -0.03575004  0.49D-02  0.24D-02   394.57
    2     4     4     1.10449606    -0.98833604-20885.29719807    -0.98833604    -0.03585513  0.50D-02  0.24D-02   394.57
    2     5     5     1.10449707    -0.98831555-20885.29717757    -0.98831555    -0.03588237  0.50D-02  0.24D-02   394.57
    2     6     6     1.10206176    -0.99296484-20885.25530197    -0.99296484    -0.03526058  0.36D-02  0.34D-02   394.57
    3     1     1     1.08740779    -1.02105503-20885.32991706    -0.03213748    -0.00233605  0.66D-04  0.76D-04   768.13
    3     2     2     1.08740572    -1.02105136-20885.32991339    -0.03227184    -0.00233787  0.66D-04  0.77D-04   768.13
    3     3     3     1.08741336    -1.02104415-20885.32990618    -0.03260867    -0.00233753  0.68D-04  0.78D-04   768.13
    3     4     4     1.08741392    -1.02104178-20885.32990381    -0.03270574    -0.00233874  0.68D-04  0.78D-04   768.13
    3     5     5     1.08741339    -1.02104123-20885.32990326    -0.03272568    -0.00233871  0.68D-04  0.78D-04   768.13
    3     6     6     1.08691967    -1.02471955-20885.28705669    -0.03175471    -0.00317307  0.31D-04  0.13D-03   768.13
    4     1     1     1.08715765    -1.02150358-20885.33036560    -0.00044854    -0.00045326  0.43D-04  0.32D-04  1137.40
    4     2     2     1.08715561    -1.02150100-20885.33036302    -0.00044964    -0.00045740  0.43D-04  0.33D-04  1137.40
    4     3     3     1.08716075    -1.02149580-20885.33035782    -0.00045164    -0.00046751  0.44D-04  0.33D-04  1137.40
    4     4     4     1.08716034    -1.02149411-20885.33035613    -0.00045232    -0.00047007  0.44D-04  0.34D-04  1137.40
    4     5     5     1.08716009    -1.02149370-20885.33035572    -0.00045246    -0.00047079  0.44D-04  0.34D-04  1137.40
    4     6     6     1.08664776    -1.02528776-20885.28762490    -0.00056821    -0.00043265  0.22D-04  0.51D-04  1137.40
    5     1     1     1.08702034    -1.02184593-20885.33070795    -0.00034235    -0.00007372  0.38D-05  0.15D-05  1506.93
    5     2     2     1.08702095    -1.02184587-20885.33070790    -0.00034488    -0.00007370  0.38D-05  0.15D-05  1506.93
    5     3     3     1.08702365    -1.02184566-20885.33070769    -0.00034987    -0.00007327  0.39D-05  0.15D-05  1506.93
    5     4     4     1.08702434    -1.02184562-20885.33070764    -0.00035151    -0.00007331  0.39D-05  0.15D-05  1506.93
    5     5     5     1.08702445    -1.02184561-20885.33070764    -0.00035192    -0.00007329  0.39D-05  0.15D-05  1506.93
    5     6     6     1.08651776    -1.02562227-20885.28795941    -0.00033451    -0.00008579  0.16D-05  0.31D-05  1506.93
    6     1     1     1.08696206    -1.02186039-20885.33072241    -0.00001446    -0.00001182  0.25D-05  0.59D-06  1876.71
    6     2     2     1.08696247    -1.02186035-20885.33072237    -0.00001447    -0.00001188  0.25D-05  0.59D-06  1876.71
    6     3     3     1.08696419    -1.02186013-20885.33072216    -0.00001447    -0.00001221  0.26D-05  0.60D-06  1876.71
    6     4     4     1.08696466    -1.02186010-20885.33072212    -0.00001448    -0.00001225  0.26D-05  0.60D-06  1876.71
    6     5     5     1.08696474    -1.02186009-20885.33072212    -0.00001448    -0.00001226  0.26D-05  0.60D-06  1876.71
    6     6     6     1.08646748    -1.02563843-20885.28797556    -0.00001616    -0.00001042  0.12D-05  0.14D-05  1876.71
    7     1     1     1.08676626    -1.02186849-20885.33073051    -0.00000810    -0.00000873  0.23D-06  0.22D-06  2246.54
    7     2     2     1.08676636    -1.02186849-20885.33073051    -0.00000814    -0.00000874  0.23D-06  0.22D-06  2246.54
    7     3     3     1.08676689    -1.02186848-20885.33073051    -0.00000835    -0.00000876  0.23D-06  0.22D-06  2246.54
    7     4     4     1.08676828    -1.02186846-20885.33073048    -0.00000836    -0.00000888  0.23D-06  0.23D-06  2246.54
    7     5     5     1.08676903    -1.02186844-20885.33073047    -0.00000835    -0.00000892  0.23D-06  0.23D-06  2246.54
    7     6     6     1.08631738    -1.02564474-20885.28798188    -0.00000632    -0.00001005  0.12D-06  0.43D-06  2246.54
    8     1     1     1.08674490    -1.02187005-20885.33073208    -0.00000156    -0.00000104  0.12D-06  0.54D-07  2616.13
    8     2     2     1.08674528    -1.02187004-20885.33073207    -0.00000156    -0.00000106  0.12D-06  0.54D-07  2616.13
    8     3     3     1.08674439    -1.02187004-20885.33073207    -0.00000156    -0.00000102  0.12D-06  0.54D-07  2616.13
    8     4     4     1.08674479    -1.02187004-20885.33073207    -0.00000158    -0.00000102  0.12D-06  0.54D-07  2616.13
    8     5     5     1.08674443    -1.02187004-20885.33073207    -0.00000160    -0.00000102  0.12D-06  0.54D-07  2616.13
    8     6     6     1.08627897    -1.02564670-20885.28798383    -0.00000196    -0.00000143  0.35D-07  0.11D-06  2616.13
    9     1     1     1.08674122    -1.02187033-20885.33073236    -0.00000028    -0.00000054  0.70D-07  0.29D-07  2986.21
    9     2     2     1.08674074    -1.02187033-20885.33073236    -0.00000029    -0.00000056  0.69D-07  0.30D-07  2986.21
    9     3     3     1.08674104    -1.02187033-20885.33073236    -0.00000029    -0.00000056  0.70D-07  0.30D-07  2986.21
    9     4     4     1.08674077    -1.02187033-20885.33073236    -0.00000029    -0.00000056  0.69D-07  0.30D-07  2986.21
    9     5     5     1.08674151    -1.02187033-20885.33073236    -0.00000029    -0.00000053  0.70D-07  0.29D-07  2986.21
    9     6     6     1.08627408    -1.02564701-20885.28798414    -0.00000031    -0.00000041  0.23D-07  0.68D-07  2986.21
   10     1     1     1.08673366    -1.02187059-20885.33073262    -0.00000026    -0.00000043  0.13D-07  0.11D-07  3355.60
   10     2     2     1.08673373    -1.02187059-20885.33073262    -0.00000026    -0.00000043  0.14D-07  0.11D-07  3355.60
   10     3     3     1.08673365    -1.02187059-20885.33073262    -0.00000026    -0.00000043  0.14D-07  0.11D-07  3355.60
   10     4     4     1.08673364    -1.02187059-20885.33073262    -0.00000026    -0.00000043  0.14D-07  0.11D-07  3355.60
   10     5     5     1.08673373    -1.02187059-20885.33073262    -0.00000026    -0.00000043  0.13D-07  0.11D-07  3355.60
   10     6     6     1.08626223    -1.02564724-20885.28798437    -0.00000023    -0.00000044  0.46D-08  0.19D-07  3355.60
   11     1     1     1.08673174    -1.02187067-20885.33073270    -0.00000008    -0.00000006  0.84D-08  0.28D-08  3725.07
   11     2     2     1.08673184    -1.02187067-20885.33073270    -0.00000008    -0.00000006  0.87D-08  0.29D-08  3725.07
   11     3     3     1.08673178    -1.02187067-20885.33073270    -0.00000008    -0.00000006  0.84D-08  0.28D-08  3725.07
   11     4     4     1.08673178    -1.02187067-20885.33073270    -0.00000008    -0.00000006  0.87D-08  0.29D-08  3725.07
   11     5     5     1.08673178    -1.02187067-20885.33073270    -0.00000008    -0.00000006  0.87D-08  0.29D-08  3725.07
   11     6     6     1.08625918    -1.02564732-20885.28798446    -0.00000008    -0.00000007  0.23D-08  0.59D-08  3725.07
   12     1     1     1.08672963    -1.02187069-20885.33073271    -0.00000002    -0.00000003  0.48D-08  0.16D-08  4041.74
   12     2     2     1.08672961    -1.02187069-20885.33073271    -0.00000002    -0.00000004  0.49D-08  0.17D-08  4041.74
   12     3     3     1.08672956    -1.02187069-20885.33073271    -0.00000002    -0.00000004  0.49D-08  0.17D-08  4041.74
   12     4     4     1.08672968    -1.02187069-20885.33073271    -0.00000002    -0.00000003  0.49D-08  0.16D-08  4041.74
   12     5     5     1.08672956    -1.02187069-20885.33073271    -0.00000002    -0.00000004  0.49D-08  0.17D-08  4041.74
   12     6     6     1.08625918    -1.02564732-20885.28798446    -0.00000000    -0.00000007  0.23D-08  0.59D-08  4041.74


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.5%  60.0%
 P   0.4%  16.3%   6.1%

 Initialization:   0.4%
 Other:           15.1%

 Total CPU:     4041.7 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.9561438   0.0000000
 22222222222222222/0\000           0.0000000  -0.0000000   0.9561438  -0.0000000  -0.0000000   0.0000000
 22222222222222222/\0000           0.0000000   0.9561438   0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222222222222222200000           0.7791583  -0.0000000  -0.0000000  -0.0488501   0.0000000   0.5499518
 22222222222222222002000          -0.3472738   0.0000000   0.0000000   0.6991959   0.0000000   0.5499518
 22222222222222222020000          -0.4318845   0.0000000  -0.0000000  -0.6503459  -0.0000000   0.5499518
 22222222222222222000/0\          -0.0000000   0.0000000  -0.0515761   0.0000000   0.0000000  -0.0000000
 222222222222222220000/\           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0515761  -0.0000000
 22222222222222222000/\0          -0.0000000  -0.0515761  -0.0000000   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.797622    0.000000   -0.000000   -0.529688    0.000000
 2          -0.000000   -0.000000    0.957481    0.000000   -0.000000    0.000000
 3           0.957481   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.529688   -0.000000   -0.000000   -0.797622   -0.000000
 5          -0.000000    0.000000   -0.000000    0.957481   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956635

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957481   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.957481   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.957481    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.957481    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.957481   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956635


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.79762168 (fixed)   0.95754661 (relaxed)   0.95748100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00373291   -0.01006945   -0.85679754
 Singles      0.01921519   -0.09110221   -0.10151812
 Pairs        0.06783820   -0.00000002   -0.06355503
 Total        1.09078630   -0.10117168   -1.02187069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30886203
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.71688357
 One electron energy               -28574.81375248
 Two electron energy                 7689.48301977
 Virial quotient                       -0.63891559
 Correlation energy                    -1.02187069
 !MRCI STATE 1.1 Energy              -20885.3307327145    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42350457 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42335181 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42350457 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42599321 (Pople, fixed reference)
 Cluster corrected energies        -20885.42582278 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42599321 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95748100 (fixed)   0.95754662 (relaxed)   0.95748100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00373291   -0.01006946   -0.85679756
 Singles      0.01921519   -0.09110222   -0.10151813
 Pairs        0.06783818   -0.00000000   -0.06355500
 Total        1.09078628   -0.10117168   -1.02187069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30886203
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.71689780
 One electron energy               -28574.81371365
 Two electron energy                 7689.48298094
 Virial quotient                       -0.63891559
 Correlation energy                    -1.02187069
 !MRCI STATE 2.1 Energy              -20885.3307327133    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42350455 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42335180 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42350455 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42599319 (Pople, fixed reference)
 Cluster corrected energies        -20885.42582277 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42599319 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95748103 (fixed)   0.95754664 (relaxed)   0.95748103 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00373291   -0.01006946   -0.85679765
 Singles      0.01921513   -0.09110217   -0.10151807
 Pairs        0.06783818    0.00000000   -0.06355496
 Total        1.09078622   -0.10117162   -1.02187069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30886203
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.71689377
 One electron energy               -28574.81370701
 Two electron energy                 7689.48297429
 Virial quotient                       -0.63891559
 Correlation energy                    -1.02187069
 !MRCI STATE 3.1 Energy              -20885.3307327127    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42350449 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42335174 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42350449 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42599312 (Pople, fixed reference)
 Cluster corrected energies        -20885.42582270 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42599312 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.79762167 (fixed)   0.95754660 (relaxed)   0.95748098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00373291   -0.01006944   -0.85679747
 Singles      0.01921525   -0.09110228   -0.10151819
 Pairs        0.06783818    0.00000002   -0.06355503
 Total        1.09078634   -0.10117170   -1.02187069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30886203
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.71688949
 One electron energy               -28574.81375988
 Two electron energy                 7689.48302717
 Virial quotient                       -0.63891559
 Correlation energy                    -1.02187069
 !MRCI STATE 4.1 Energy              -20885.3307327127    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42350461 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42335185 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42350461 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42599326 (Pople, fixed reference)
 Cluster corrected energies        -20885.42582283 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42599326 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95748103 (fixed)   0.95754665 (relaxed)   0.95748103 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00373291   -0.01006945   -0.85679765
 Singles      0.01921513   -0.09110217   -0.10151808
 Pairs        0.06783818    0.00000000   -0.06355496
 Total        1.09078622   -0.10117162   -1.02187069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30886203
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.71689503
 One electron energy               -28574.81370877
 Two electron energy                 7689.48297606
 Virial quotient                       -0.63891559
 Correlation energy                    -1.02187069
 !MRCI STATE 5.1 Energy              -20885.3307327123    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42350449 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42335173 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42350449 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42599312 (Pople, fixed reference)
 Cluster corrected energies        -20885.42582270 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42599312 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95663476 (fixed)   0.95669781 (relaxed)   0.95663476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594499   -0.01456139   -0.01890595
 Singles      0.01547685   -0.08403710   -0.09143511
 Pairs        0.07129513   -0.92704883   -0.91530626
 Total        1.09271697   -1.02564732   -1.02564732
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.26233713
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.62802861
 One electron energy               -28573.79642572
 Two electron energy                 7688.50844126
 Virial quotient                       -0.63891602
 Correlation energy                    -1.02564732
 !MRCI STATE 6.1 Energy              -20885.2879844566    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.38307937 (Davidson, fixed reference)
 Cluster corrected energies        -20885.38293164 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.38307937 (Davidson, rotated reference)

 Cluster corrected energies        -20885.38581061 (Pople, fixed reference)
 Cluster corrected energies        -20885.38564518 (Pople, relaxed reference)
 Cluster corrected energies        -20885.38581061 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      787.47       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6855.47   4133.92   2687.45     23.39      0.54      9.79
 REAL TIME  *      6989.40 SEC
 DISK USED  *         1.03 GB (local),       16.84 GB (total)
 SF USED    *         6.01 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20885.42350457  AU                              
 SETTING HLSDIAG(5)     =    -20885.42350455  AU                              
 SETTING HLSDIAG(6)     =    -20885.42350449  AU                              
 SETTING HLSDIAG(7)     =    -20885.42350461  AU                              
 SETTING HLSDIAG(8)     =    -20885.42350449  AU                              
 SETTING HLSDIAG(9)     =    -20885.38307937  AU                              


         HLSDIAG
    -20885.44914
    -20885.44914
    -20885.44914
    -20885.42350
    -20885.42350
    -20885.42350
    -20885.42350
    -20885.42350
    -20885.38308
                                                  

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

 Time for Seward_LS:     119.01 sec

       96933845. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27010 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    119.01 sec, REAL time:    121.34 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   448 records. CPU time:      0.96 sec, REAL time:      1.77 sec
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

              2       7      787.47       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6976.61    121.14   4133.92   2687.45     23.39      0.54      9.79
 REAL TIME  *      7113.94 SEC
 DISK USED  *         1.03 GB (local),       22.40 GB (total)
 SF USED    *         6.01 GB
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

 Original energies: -20885.359126 -20885.359126 -20885.359126
 Replaced energies: -20885.449137 -20885.449137 -20885.449138

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies: -20885.330733 -20885.330733 -20885.330733 -20885.330733 -20885.330733 -20885.287984
 Replaced energies: -20885.423505 -20885.423505 -20885.423504 -20885.423505 -20885.423504 -20885.383079



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.44913753

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.02       0.00       0.00      -0.00    4242.23      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00    4242.23       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00   -4242.23       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00    5999.42      -0.00      -0.00       0.00       0.00       0.00       0.00    2654.05

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    4788.14
                            0.00   -5999.42      -0.00   -4242.23      -0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00   -4242.23       0.00       0.02       0.00       0.00      -0.00    4242.23      -0.00       0.00
                           -0.00       0.00    4242.23       0.00       0.00       0.00       0.00       0.00    4242.23    3018.06

    5   2.1  1.0  0.0    4242.23       0.00       0.00       0.00       0.01       0.00   -4242.23       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    6   3.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                        -4242.23      -0.00      -0.00      -0.00      -0.00       0.00   -4242.23      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00   -4242.23       0.00       0.02       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    4242.23      -0.00      -0.00       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00    4242.23       0.00       0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   -5999.42   -2654.05

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    4788.14
                           -0.00      -0.00      -0.00   -4242.23      -0.00      -0.00      -0.00    5999.42       0.00      -0.00

   10   1.1  0.0  0.0      -0.00      -0.00    4788.14       0.00       0.00       0.00      -0.00      -0.00    4788.14    5625.78
                            0.00   -2654.05      -0.00   -3018.06      -0.00       0.00      -0.00    2654.05       0.00       0.00

   11   2.1  0.0  0.0       0.00   -4154.81      -0.00       0.00       0.00       0.00       0.00   -4154.81      -0.00       0.00
                            0.00      -0.00   -4154.81       0.00      -0.00      -0.00      -0.00       0.00    4154.81      -0.00

   12   3.1  0.0  0.0    4154.81       0.00      -0.00       0.00       0.00       0.00    4154.81       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    5875.78       0.00       0.00       0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00    -300.20       0.00       0.00       0.00      -0.00       0.00    -300.20       0.00
                            0.00   -3996.55       0.00    6076.52       0.00      -0.00      -0.00    3996.55      -0.00      -0.00

   14   5.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                        -4154.81      -0.00      -0.00       0.00   -5875.78      -0.00    4154.81       0.00       0.00      -0.00

   15   6.1  0.0  0.0       0.00      -0.00   -6573.55       0.00       0.00       0.00       0.00      -0.00   -6573.55       0.00
                            0.00   -6573.55       0.00   -9296.40      -0.00      -0.00      -0.00    6573.55      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00    4154.81      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00    4154.81      -0.00

    2   2.1  1.0  1.0   -4154.81       0.00       0.00       0.00      -0.00
                            0.00       0.00    3996.55       0.00    6573.55

    3   3.1  1.0  1.0      -0.00      -0.00    -300.20       0.00   -6573.55
                         4154.81       0.00      -0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -6076.52      -0.00    9296.40

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    5875.78       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00   -5875.78       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00    4154.81      -0.00      -0.00       0.00
                            0.00      -0.00       0.00   -4154.81       0.00

    8   2.1  1.0 -1.0   -4154.81       0.00       0.00       0.00      -0.00
                           -0.00      -0.00   -3996.55      -0.00   -6573.55

    9   3.1  1.0 -1.0      -0.00      -0.00    -300.20       0.00   -6573.55
                        -4154.81      -0.00       0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5625.79       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5625.80       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5625.77       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5625.80       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14498.09
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by -20885.44913753 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.024       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    5999.422       0.000       0.000

    2    1  |1 1>+              0.000       0.010       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -5999.422      -0.000       0.000       0.000   -5999.420

    1    1  |1 0>              -0.000       0.000      -0.000       0.024       0.000       0.000       0.000   -5999.423
                                0.000       0.000    5999.422       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.010       0.000    5999.423       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                            -5999.422      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    5999.423      -0.000       0.024       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000   -5999.423       0.000      -0.000       0.000       0.010
                               -0.000      -0.000    5999.420       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -5999.420      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000    6771.454       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3018.064      -0.000       0.000       0.000   -3753.395

    2    1  |0 0>               0.000   -5875.783      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |0 0>            5875.783       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    5875.779      -0.000      -0.000

    4    1  |0 0>              -0.000       0.000    -424.541       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    6076.523       0.000      -0.000       0.000   -5651.982

    5    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -5875.780      -0.000   -5875.785      -0.000

    6    1  |0 0>               0.000      -0.000   -9296.402       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -9296.403      -0.000      -0.000       0.000   -9296.408

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000    5875.783      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000   -5875.783       0.000       0.000       0.000      -0.000
                             5999.420       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    6771.454      -0.000      -0.000    -424.541       0.000   -9296.402
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    3018.064      -0.000      -0.000   -6076.523      -0.000    9296.403

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    5875.780       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000   -5875.779       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000    5875.785      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3753.395       0.000       0.000    5651.982       0.000    9296.408

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    5875.783       0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000    5625.783       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5625.787       0.000       0.000       0.000       0.000
                            -5875.783      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5625.800       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5625.774       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5625.801       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14498.089
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.53845088    -0.08931336   -19602.02      0.00000000        0.00      0.0000
    2-20885.47647287    -0.02733535    -5999.42      0.06197801    13602.60      1.6865
    3-20885.47647285    -0.02733532    -5999.41      0.06197804    13602.61      1.6865
    4-20885.47647283    -0.02733530    -5999.41      0.06197805    13602.61      1.6865
    5-20885.46052429    -0.01138676    -2499.11      0.07792660    17102.91      2.1205
    6-20885.46052423    -0.01138670    -2499.09      0.07792665    17102.92      2.1205
    7-20885.46052422    -0.01138670    -2499.09      0.07792666    17102.93      2.1205
    8-20885.46052421    -0.01138668    -2499.09      0.07792668    17102.93      2.1205
    9-20885.46052417    -0.01138664    -2499.08      0.07792671    17102.94      2.1205
   10-20885.38478251     0.06435502    14124.29      0.15366837    33726.31      4.1815
   11-20885.38478250     0.06435503    14124.30      0.15366839    33726.31      4.1815
   12-20885.38478240     0.06435513    14124.32      0.15366849    33726.33      4.1815
   13-20885.38478236     0.06435517    14124.33      0.15366852    33726.34      4.1815
   14-20885.38478234     0.06435519    14124.33      0.15366855    33726.35      4.1815
   15-20885.34843671     0.10070081    22101.27      0.19001417    41703.29      5.1705

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000001  0.70710564  0.00000006 -0.00000000 -0.49435026 -0.00000012 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70710620 -0.00000001 -0.00000000  0.49434960 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.52207415 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000002 -0.00000000 -0.46245307
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.52207376 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000001  0.05857287

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00328204  0.00000000  0.00000000 -0.00082964  0.00000000
                          -0.00000000  0.00000000 -0.00000006  0.70709968 -0.00000000  0.00000012 -0.49434772  0.00000001

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001  0.70710793  0.00000006  0.00000000  0.49434773  0.00000012  0.00000002

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00328204  0.00000000  0.00000000 -0.00082965  0.00000000
                           0.00000000 -0.00000000  0.00000006 -0.70709865 -0.00000000  0.00000012 -0.49434870  0.00000001

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.52207412  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000002 -0.52102573

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70710736 -0.00000001 -0.00000000 -0.49434822  0.00000000  0.00000000  0.00000001

   1    1  |0 0>           0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000001  0.60435654
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000056  0.00000000  0.00000000  0.71500931 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000092 -0.00000000  0.00000000  0.71500919  0.00000018  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000001  0.00000002  0.38208866
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000026  0.00000000 -0.00000018  0.71500831 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00119997  0.00000000

   6    1  |0 0>           0.42698499  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.50558821 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000002 -0.00000000  0.00000001 -0.50558806  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.33463138  0.58166727 -0.04988924 -0.00000000 -0.00000000 -0.00000000 -0.24651943
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.56781153  0.24762822 -0.52868364 -0.00000001 -0.00000000 -0.00000000  0.24652008

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00339798  0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.50557628  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.50558749  0.00000001  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00339798  0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.50557676 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.23317982  0.33403880  0.47879417  0.00000001 -0.00000000  0.00000000  0.24652018

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.00000000 -0.00000001  0.50558779 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>          -0.38208852  0.69893078 -0.01604046 -0.00000000 -0.00000000 -0.00000000  0.00000038
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000002  0.00000000 -0.00000001  0.69911494 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.69911505 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.60435704  0.01604061  0.69893027  0.00000001 -0.00000000  0.00000001  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000002  0.00000000 -0.00000001 -0.00000000  0.00000002  0.69909913 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00469865 -0.00000000

   6    1  |0 0>          -0.00000015 -0.00000068  0.00000004 -0.00000000  0.00000000  0.00000000  0.90425871
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.53845088     -0.08931336   -19602.02      0.00000000        0.00      0.0000
     2   1 -20885.47647287     -0.02733535    -5999.42      0.06197801    13602.60      1.6865
     3   1 -20885.47647285     -0.02733532    -5999.41      0.06197804    13602.61      1.6865
     4   1 -20885.47647283     -0.02733530    -5999.41      0.06197805    13602.61      1.6865
     5   1 -20885.46052429     -0.01138676    -2499.11      0.07792660    17102.91      2.1205
     6   1 -20885.46052423     -0.01138670    -2499.09      0.07792665    17102.92      2.1205
     7   1 -20885.46052422     -0.01138670    -2499.09      0.07792666    17102.93      2.1205
     8   1 -20885.46052421     -0.01138668    -2499.09      0.07792668    17102.93      2.1205
     9   1 -20885.46052417     -0.01138664    -2499.08      0.07792671    17102.94      2.1205
    10   1 -20885.38478251      0.06435502    14124.29      0.15366837    33726.31      4.1815
    11   1 -20885.38478250      0.06435503    14124.30      0.15366839    33726.31      4.1815
    12   1 -20885.38478240      0.06435513    14124.32      0.15366849    33726.33      4.1815
    13   1 -20885.38478236      0.06435517    14124.33      0.15366852    33726.34      4.1815
    14   1 -20885.38478234      0.06435519    14124.33      0.15366855    33726.35      4.1815
    15   1 -20885.34843671      0.10070081    22101.27      0.19001417    41703.29      5.1705

 E0 = -20885.44913753 is the energy of the lowest zeroth-order state
 E1 = -20885.53845088 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000001  0.70710564  0.00000006 -0.00000000 -0.49435026 -0.00000012 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70710620 -0.00000001 -0.00000000  0.49434960 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.52207415 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000002 -0.00000000 -0.46245307
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.52207376 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000001  0.05857287

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00328204  0.00000000  0.00000000 -0.00082964  0.00000000
                               -0.00000000  0.00000000 -0.00000006  0.70709968 -0.00000000  0.00000012 -0.49434772  0.00000001

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001  0.70710793  0.00000006  0.00000000  0.49434773  0.00000012  0.00000002

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00328204  0.00000000  0.00000000 -0.00082965  0.00000000
                                0.00000000 -0.00000000  0.00000006 -0.70709865 -0.00000000  0.00000012 -0.49434870  0.00000001

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.52207412  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000002 -0.52102573

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70710736 -0.00000001 -0.00000000 -0.49434822  0.00000000  0.00000000  0.00000001

 10  1     1    1  |0 0>        0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000001  0.60435654
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000056  0.00000000  0.00000000  0.71500931 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000092 -0.00000000  0.00000000  0.71500919  0.00000018  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000001  0.00000002  0.38208866
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000026  0.00000000 -0.00000018  0.71500831 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00119997  0.00000000

 15  1     6    1  |0 0>        0.42698499  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.50558821 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000002 -0.00000000  0.00000001 -0.50558806  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.33463138  0.58166727 -0.04988924 -0.00000000 -0.00000000 -0.00000000 -0.24651943
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.56781153  0.24762822 -0.52868364 -0.00000001 -0.00000000 -0.00000000  0.24652008

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00339798  0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.50557628  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.50558749  0.00000001  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00339798  0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.50557676 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.23317982  0.33403880  0.47879417  0.00000001 -0.00000000  0.00000000  0.24652018

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.00000000 -0.00000001  0.50558779 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.38208852  0.69893078 -0.01604046 -0.00000000 -0.00000000 -0.00000000  0.00000038
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000002  0.00000000 -0.00000001  0.69911494 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.69911505 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.60435704  0.01604061  0.69893027  0.00000001 -0.00000000  0.00000001  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000002  0.00000000 -0.00000001 -0.00000000  0.00000002  0.69909913 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00469865 -0.00000000

 15  1     6    1  |0 0>       -0.00000015 -0.00000068  0.00000004 -0.00000000  0.00000000  0.00000000  0.90425871
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%   24.44%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%   24.44%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        27.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.39%
  4  1     1    1  |1 0>         27.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.34%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   24.44%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%   24.44%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   24.44%    0.00%
  8  1     2    1  |1 1>-        27.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.15%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%   24.44%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.52%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   51.12%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   51.12%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.60%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   51.12%    0.00%
 15  1     6    1  |0 0>         18.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.56%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   25.56%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        11.20%   33.83%    0.25%    0.00%    0.00%    0.00%    6.08%
  4  1     1    1  |1 0>         32.24%    6.13%   27.95%    0.00%    0.00%    0.00%    6.08%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.56%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.56%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   25.56%    0.00%
  8  1     2    1  |1 1>-         5.44%   11.16%   22.92%    0.00%    0.00%    0.00%    6.08%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   25.56%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>         14.60%   48.85%    0.03%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   48.88%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   48.88%    0.00%    0.00%
 13  1     4    1  |0 0>         36.52%    0.03%   48.85%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   48.88%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.77%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1955.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      787.47       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9357.68   2381.06    121.14   4133.92   2687.45     23.39      0.54      9.79
 REAL TIME  *      9542.52 SEC
 DISK USED  *         1.03 GB (local),       22.40 GB (total)
 SF USED    *         6.01 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.348436713204

              CI              CI           MULTI         RHF-SCF
 -20885.28798446 -20885.35912592 -20884.26233713 -20884.37350176
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
