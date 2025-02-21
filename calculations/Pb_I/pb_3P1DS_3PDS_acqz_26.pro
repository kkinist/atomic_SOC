
 Working directory              : /wrk/irikura/molpro.xCUFFUFfbt/
 Global scratch directory       : /wrk/irikura/molpro.xCUFFUFfbt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xCUFFUFfbt/

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
 
 NTRIP=12
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
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Feb-25          TIME: 10:55:17  
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

     Node minimum: 4.194 MB, node maximum: 18.088 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5767446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5767446      RECORD LENGTH: 524288

 Memory used in sort:       6.32 MW

 SORT1 READ   163901556. AND WROTE     1056746. INTEGRALS IN      4 RECORDS. CPU TIME:     0.81 SEC, REAL TIME:     0.84 SEC
 SORT2 READ    17018275. AND WROTE    92236821. INTEGRALS IN    816 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.14 SEC

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
 CPU TIMES  *         9.75      9.44
 REAL TIME  *        10.70 SEC
 DISK USED  *        31.21 MB (local),      876.79 MB (total)
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
   2   -20877.37429350      -2.86392404     0.15D+00     0.59D+01     1     0       0.04      0.10    diag2
   3   -20884.06048053      -6.68618703     0.13D+00     0.78D+01     2     0       0.03      0.13    diag2
   4   -20884.32284852      -0.26236800     0.11D-01     0.89D-01     3     0       0.04      0.17    diag2
   5   -20884.36430092      -0.04145239     0.50D-02     0.51D-01     4     0       0.04      0.21    diag2
   6   -20884.37195605      -0.00765513     0.75D-03     0.52D-02     5     0       0.04      0.25    diag2
   7   -20884.37328374      -0.00132770     0.20D-03     0.13D-01     6     0       0.03      0.28    diag2
   8   -20884.37346879      -0.00018505     0.55D-04     0.42D-02     7     0       0.04      0.32    fixocc
   9   -20884.37349707      -0.00002828     0.18D-04     0.11D-02     8     0       0.04      0.36    diag2
  10   -20884.37350149      -0.00000442     0.72D-05     0.19D-03     9     0       0.03      0.39    diag2/orth
  11   -20884.37350175      -0.00000026     0.21D-05     0.29D-04     9     0       0.04      0.43    diag2
  12   -20884.37350176      -0.00000000     0.13D-06     0.12D-05     9     0       0.03      0.46    diag2
  13   -20884.37350176      -0.00000000     0.32D-07     0.77D-06     0     0       0.04      0.50    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.3735017555    
  RHF One-electron energy            -28596.4496528499    
  RHF Two-electron energy            7712.076151094403
  RHF Kinetic energy                  32688.9286454949    
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
    4.1     2.00000   -94.27602     1  1  d2+  0.99885
    5.1     2.00000   -94.27602     1  1  d2-  0.99885
    6.1     2.00000   -94.27602     1  1  d0   1.00003
    7.1     2.00000   -94.27602     1  1  d1+  0.99971
    8.1     2.00000   -94.27602     1  1  d1-  0.99971
    9.1     2.00000   -33.76531     1  3  s    0.28683    1  4  s    1.82870    1  5  s   -1.96244    1  6  s    2.65840
                                    1  8  s   -0.43152    1 10  s   -1.35709    1 11  s   -1.64090    1 12  s   -0.46853
   10.1     2.00000   -16.18309     1  2  d0   0.99933
   11.1     2.00000   -16.18309     1  2  d2-  0.93902    1  2  d2+  0.34031
   12.1     2.00000   -16.18309     1  2  d2- -0.34046    1  2  d2+  0.93955
   13.1     2.00000   -16.18309     1  2  d1+  0.99909
   14.1     2.00000   -16.18309     1  2  d1-  0.99893
   15.1     2.00000    -5.91932     1  4  s    0.38812    1  6  s    1.31668    1 10  s   -0.66960    1 11  s   -0.81429
   16.1     2.00000    -0.85058     1  3  d0   1.00025
   17.1     2.00000    -0.85058     1  3  d2-  0.75069    1  3  d2+  0.66101
   18.1     2.00000    -0.85058     1  3  d2- -0.66072    1  3  d2+  0.75032
   19.1     2.00000    -0.85058     1  3  d1+  0.57164    1  3  d1-  0.82022
   20.1     2.00000    -0.85058     1  3  d1+  0.82061    1  3  d1- -0.57190
   21.1     2.00000    -0.35260     1  5  s   -0.30638    1  6  s    1.39136    1 11  s   -0.29667
    1.2     2.00000  -506.12404     1  1  py   0.99914
    2.2     2.00000  -506.12404     1  1  px   0.99917
    3.2     2.00000  -506.12404     1  1  pz   0.99914
    4.2     2.00000  -119.74048     1  2  py   1.00834
    5.2     2.00000  -119.74048     1  2  px   1.00835
    6.2     2.00000  -119.74048     1  2  pz   1.00836
    7.2     2.00000   -25.80840     1  3  pz   0.96608
    8.2     2.00000   -25.80840     1  3  px   0.96618
    9.2     2.00000   -25.80840     1  3  py   0.96621
   10.2     2.00000    -5.60740     1  1  f1+  0.36761    1  1  f3+  0.92927
   11.2     2.00000    -5.60740     1  1  f1- -0.28596    1  1  f3-  0.57278    1  1  f2+  0.76822
   12.2     2.00000    -5.60740     1  1  f0   0.81921    1  1  f2-  0.56242
   13.2     2.00000    -5.60740     1  1  f1- -0.31404    1  1  f3-  0.66910    1  1  f2+ -0.61366
   14.2     2.00000    -5.60740     1  1  f0  -0.52366    1  1  f2-  0.81281
   15.2     2.00000    -5.60740     1  1  f1-  0.90074    1  1  f3-  0.43269
   16.2     2.00000    -5.60740     1  1  f1+  0.93001    1  1  f3+ -0.36731
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
 CPU TIMES  *        10.27      0.52      9.44
 REAL TIME  *        11.26 SEC
 DISK USED  *        34.57 MB (local),      930.58 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  40 (   21   19)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     149 (   78   71)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              21   (36 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.466D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.482D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.699D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.265D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.248D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.648D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.342D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.403D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.398D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.414D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 2   3 5 4 6 1 2 3 5 6 4   1 1 5 3 4 6 2 1 3 5   4 6 21013 7141511 9
                                       12 8 1 5 3 4 6 21013   711 9141512 8 5 3 4   6 2 1 911 71514 812  1310 2 5 3 4 6 1 7 9
                                       1112 813101514 2 3 5   6 4 1 2 3 5 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.305D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.930D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.726D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.529D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.260D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.354D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.285D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.271D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.530D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.539D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.355D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.298D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.187D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.187D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.290D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.290D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.222D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.263D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 7  10 6 9 8 5 4 2 1 3 3   1 2 3 1 2 1 2 310 8   7 9 6 5 4 1 2 3 810
                                        7 9 6 5 4 6 7 9 810   5 4 1 2 3 6 810 7 9   4 51112132119161417  152018 1 2 3 6 7 910
                                        8 5 4 6 9 7 4 5 810   3 1 2 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  3527  ( 114 closed/active, 2987 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    3923
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0 -20884.21105636  -20884.23817992   -0.02712356    0.15527438 0.00011610 0.00000000  0.70E+00      5.63
   2    7   12    0 -20884.23737180  -20884.23741344   -0.00004164    0.00781484 0.00000050 0.00000000  0.27E-01     12.04
   3    6   10    0 -20884.23741351  -20884.23741351   -0.00000000    0.00002072 0.00000000 0.00000000  0.76E-04     17.42
   4    4    4    0 -20884.23741351  -20884.23741351    0.00000000    0.00000005 0.00000001 0.00000000  0.14E-07     22.08

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.37E-07)
                       Final energy: -20884.23741351
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.3390873177    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.72176660
 One electron energy                        -28580.68482142
 Two electron energy                          7696.34573411
 Virial ratio                                    1.63886561
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.3390873175    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.72176663
 One electron energy                        -28580.68482157
 Two electron energy                          7696.34573425
 Virial ratio                                    1.63886561
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.3390873174    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.72176664
 One electron energy                        -28580.68482163
 Two electron energy                          7696.34573431
 Virial ratio                                    1.63886561
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -20884.1657020548    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072333
 One electron energy                        -28561.91492926
 Two electron energy                          7677.74922721
 Virial ratio                                    1.63888984
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -20884.1657020548    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072333
 One electron energy                        -28561.91492924
 Two electron energy                          7677.74922719
 Virial ratio                                    1.63888984
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -20884.1657020547    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072332
 One electron energy                        -28561.91492922
 Two electron energy                          7677.74922716
 Virial ratio                                    1.63888984
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -20884.1657020544    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072331
 One electron energy                        -28561.91492914
 Two electron energy                          7677.74922708
 Virial ratio                                    1.63888984
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -20884.1657020544    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072331
 One electron energy                        -28561.91492914
 Two electron energy                          7677.74922708
 Virial ratio                                    1.63888984
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -20884.1623481323    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.40784947
 One electron energy                        -28563.36142193
 Two electron energy                          7679.19907380
 Virial ratio                                    1.63888588
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -20884.1623481323    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.40784946
 One electron energy                        -28563.36142190
 Two electron energy                          7679.19907377
 Virial ratio                                    1.63888588
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -20884.1623481321    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.40784944
 One electron energy                        -28563.36142180
 Two electron energy                          7679.19907367
 Virial ratio                                    1.63888588
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -20884.1589478773    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32688.21072332
 One electron energy                        -28561.91492920
 Two electron energy                          7677.75598132
 Virial ratio                                    1.63888963
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.3049923071    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61590069
 One electron energy                        -28579.82647898
 Two electron energy                          7695.52148667
 Virial ratio                                    1.63886664
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.3049923071    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61590069
 One electron energy                        -28579.82647898
 Two electron energy                          7695.52148667
 Virial ratio                                    1.63886664
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.3049923069    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61590072
 One electron energy                        -28579.82647910
 Two electron energy                          7695.52148680
 Virial ratio                                    1.63886664
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.3049923067    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61590073
 One electron energy                        -28579.82647916
 Two electron energy                          7695.52148685
 Virial ratio                                    1.63886664
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.3049923067    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.61590074
 One electron energy                        -28579.82647919
 Two electron energy                          7695.52148688
 Virial ratio                                    1.63886664
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -20884.2567171476    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32689.35810889
 One electron energy                        -28577.57537982
 Two electron energy                          7693.31866268
 Virial ratio                                    1.63887020
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999607
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999973753
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000026601
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.362586468026
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999981149
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000018201
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000002675
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.637412988085
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000014846
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999985431
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999535
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.999997732585
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.530257101440
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000043073
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999956320
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.469743859513
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000017174
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999983140
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999607
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.050827208467
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999997782
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000002788
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999995885
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.949172628658
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999542
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999996166
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.000000004153
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999485861
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.909558963768
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000020567
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000006217
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.090441007420
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999983220
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000043107
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999973792
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.586586323507
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000021069
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999979012
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000001440
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.413414383257
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999985611
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000018403
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.999999996311
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000002781554
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.560183934792
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999936360
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000037463
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.439815133066
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 4 6 1 2   6 4 3 5 1 2 6 4 5 3   1 1 6 4 2 5 3 1 3 5   6 4 2 711 912 81415
                                       1013 1 5 3 6 4 2 711   9 81214151013 5 3 6   4 2 111 7 9 8121415  1310 2 5 3 6 4 1 711
                                        9 81215141310 2 3 5   6 4 1 2 3 5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 6   5 410 8 7 9 3 2 1 1   2 3 1 2 3 2 1 3 6 5   410 8 7 9 2 1 3 6 5
                                        810 4 7 9 6 5 810 4   7 9 2 1 3 6 810 5 4   7 91219111321161417  152018 6 5 410 8 7 9
                                        2 1 3 6 5 4 9 710 8   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.68893     1  1  s    0.93297    1  2  s   -0.42222    1  3  s   -1.49679    1  4  s   -4.27075
                                    1  5  s    9.90677    1  6  s  -13.20177    1  7  s   -0.99156    1  8  s    2.24707
                                    1 10  s    6.75360    1 11  s    8.14131    1 12  s    2.33000
    2.1     2.00000  -587.77749     1  2  s    1.25928    1  3  s    0.91633    1  4  s    2.61430    1  5  s   -6.06291
                                    1  6  s    8.07898    1  7  s    0.60613    1  8  s   -1.37503    1 10  s   -4.13295
                                    1 11  s   -4.98217    1 12  s   -1.42587
    3.1     2.00000  -143.83186     1  3  s    0.46646    1  4  s   -1.52682    1  5  s    3.55924    1  6  s   -4.76197
                                    1  7  s   -0.35630    1  8  s    0.80151    1 10  s    2.43486    1 11  s    2.93724
                                    1 12  s    0.84020
    4.1     2.00000   -94.58619     1  1  d0   1.00003
    5.1     2.00000   -94.58619     1  1  d2+  1.00003
    6.1     2.00000   -94.58619     1  1  d2-  1.00003
    7.1     2.00000   -94.58619     1  1  d1+  1.00003
    8.1     2.00000   -94.58619     1  1  d1-  1.00003
    9.1     2.00000   -34.07570     1  3  s    0.28680    1  4  s    1.82848    1  5  s   -1.96135    1  6  s    2.65637
                                    1  8  s   -0.43147    1 10  s   -1.35609    1 11  s   -1.63963    1 12  s   -0.46818
   10.1     2.00000   -16.49327     1  2  d0   0.99940
   11.1     2.00000   -16.49327     1  2  d1-  0.99940
   12.1     2.00000   -16.49327     1  2  d1+  0.99940
   13.1     2.00000   -16.49327     1  2  d2-  0.99940
   14.1     2.00000   -16.49327     1  2  d2+  0.99940
   15.1     2.00000    -6.22984     1  4  s    0.38892    1  6  s    1.33406    1 10  s   -0.67836    1 11  s   -0.82494
   16.1     2.00000    -1.16104     1  3  d0   1.00142
   17.1     2.00000    -1.16104     1  3  d1-  1.00142
   18.1     2.00000    -1.16104     1  3  d1+  1.00142
   19.1     2.00000    -1.16104     1  3  d2+  1.00142
   20.1     2.00000    -1.16104     1  3  d2-  1.00142
   21.1     2.00000    -0.63473     1  5  s   -0.42331    1  6  s    1.68198    1 10  s   -0.31210    1 11  s   -0.39981
    1.2     2.00000  -506.43442     1  1  pz   0.99918
    2.2     2.00000  -506.43442     1  1  py   0.99918
    3.2     2.00000  -506.43442     1  1  px   0.99918
    4.2     2.00000  -120.05054     1  2  pz   1.00839
    5.2     2.00000  -120.05054     1  2  py   1.00839
    6.2     2.00000  -120.05054     1  2  px   1.00839
    7.2     2.00000   -26.11834     1  3  pz   0.96632
    8.2     2.00000   -26.11834     1  3  py   0.96632
    9.2     2.00000   -26.11834     1  3  px   0.96632
   10.2     2.00000    -5.91753     1  1  f0   1.00003
   11.2     2.00000    -5.91753     1  1  f1-  1.00003
   12.2     2.00000    -5.91753     1  1  f1+  1.00003
   13.2     2.00000    -5.91753     1  1  f2+  1.00003
   14.2     2.00000    -5.91753     1  1  f2-  1.00003
   15.2     2.00000    -5.91753     1  1  f3+  1.00003
   16.2     2.00000    -5.91753     1  1  f3-  1.00003
   17.2     2.00000    -3.92637     1  4  pz   0.99972
   18.2     2.00000    -3.92637     1  4  py   0.99972
   19.2     2.00000    -3.92637     1  4  px   0.99972
   20.2     0.49809    -0.10240     1  9  px   0.38035    1 10  px   0.55279
   21.2     0.49809    -0.10240     1  9  py   0.38035    1 10  py   0.55279
   22.2     0.49809    -0.10240     1  9  pz   0.38035    1 10  pz   0.55279
   23.2     0.16857     0.03277     1 10  px  -0.25339    1 12  px   1.14272
   24.2     0.16857     0.03277     1 10  py  -0.25339    1 12  py   1.14272
   25.2     0.16857     0.03277     1 10  pz  -0.25339    1 12  pz   1.14272
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a0a000         0.99986880     -0.00012952     -0.00001985      0.00000000      0.00000000     -0.00000000     -0.00000000
 0aa000         0.00001983     -0.00016199      0.99986879     -0.00000000     -0.00000000      0.00000000     -0.00000000
 aa0000         0.00012952      0.99986879      0.00016199      0.00000000     -0.00000000     -0.00000000      0.00000000
 0a00a0        -0.00000000     -0.00000000     -0.00000000      0.81129249     -0.00005630      0.00001588      0.00001173
 a00a00        -0.00000000     -0.00000000     -0.00000000     -0.32593799      0.00000582     -0.00001419      0.00002167
 0a0a00         0.00000086      0.00665830      0.00000108     -0.00001296      0.00005504      0.70710684     -0.00002205
 0a000a        -0.00000013      0.00000108     -0.00665830      0.00005097      0.70710682     -0.00005503      0.00000716
 00aa00         0.00665830     -0.00000086     -0.00000013     -0.00001320     -0.00000716      0.00002205      0.70710680
 a0000a        -0.00665830      0.00000086      0.00000013     -0.00001320     -0.00000716      0.00002205      0.70710676
 00a0a0         0.00000013     -0.00000108      0.00665830      0.00005097      0.70710673     -0.00005503      0.00000716
 a000a0        -0.00000086     -0.00665830     -0.00000108     -0.00001296      0.00005503      0.70710672     -0.00002205
 00a00a        -0.00000000      0.00000000      0.00000000     -0.48535442      0.00005049     -0.00000169     -0.00003340
 000aa0        -0.00000171     -0.01317957     -0.00000214     -0.00000000      0.00000000      0.00000001      0.00000000
 000a0a        -0.01317957      0.00000171      0.00000026      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000aa        -0.00000026      0.00000214     -0.01317957      0.00000000     -0.00000001      0.00000000     -0.00000000
 
 Energy:   -20884.33908732 -20884.33908732 -20884.33908732 -20884.16570205 -20884.16570205 -20884.16570205 -20884.16570205

 State:              8               9              10              11              12
 a0a000         0.00000000     -0.00000016      0.00000047      0.00763063      0.00000000
 0aa000        -0.00000000      0.00763063      0.00000092      0.00000016     -0.00000000
 aa0000        -0.00000000     -0.00000092      0.00763063     -0.00000047      0.00000000
 0a00a0        -0.09203914      0.00000000      0.00000000      0.00000000      0.57735023
 a00a00         0.74861944     -0.00000000      0.00000000      0.00000000      0.57735030
 0a0a00         0.00000776      0.00008410     -0.70112975      0.00004342      0.00000000
 0a000a         0.00001669      0.70112976      0.00008410      0.00001499     -0.00000000
 00aa00        -0.00002621      0.00001500     -0.00004342     -0.70112980      0.00000000
 a0000a        -0.00002621     -0.00001500      0.00004342      0.70112983     -0.00000000
 00a0a0         0.00001669     -0.70112986     -0.00008410     -0.00001499     -0.00000000
 a000a0         0.00000776     -0.00008410      0.70112987     -0.00004342     -0.00000000
 00a00a        -0.65658033     -0.00000000      0.00000000      0.00000000      0.57735028
 000aa0         0.00000000      0.00001554     -0.12952119      0.00000802      0.00000000
 000a0a         0.00000000      0.00000277     -0.00000802     -0.12952119      0.00000000
 0000aa         0.00000000     -0.12952119     -0.00001554     -0.00000277      0.00000000
 
 Energy:   -20884.16570205 -20884.16234813 -20884.16234813 -20884.16234813 -20884.15894788
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 020000        -0.00028622     -0.12260085      0.00001913      0.00009832      0.80607367      0.56804339
 200000         0.00160325      0.75937919     -0.00002341      0.00000832     -0.29686111      0.56804338
 ab0000         0.00005827      0.00001606      0.70610860     -0.00008504     -0.00001429     -0.00000000
 ba0000        -0.00005827     -0.00001606     -0.70610860      0.00008504      0.00001429      0.00000000
 0ba000        -0.00001132      0.00004405     -0.00008504     -0.70610860      0.00009283      0.00000000
 0ab000         0.00001132     -0.00004405      0.00008504      0.70610860     -0.00009283     -0.00000000
 a0b000         0.70610706     -0.00148081     -0.00005824     -0.00001140      0.00002550     -0.00000000
 b0a000        -0.70610706      0.00148081      0.00005824      0.00001140     -0.00002550      0.00000000
 002000        -0.00131703     -0.63677833      0.00000428     -0.00010664     -0.50921257      0.56804338
 00b00a         0.00004393      0.02124125     -0.00000014      0.00000356      0.01698599     -0.07027651
 00a00b        -0.00004393     -0.02124125      0.00000014     -0.00000356     -0.01698599      0.07027651
 0a00b0        -0.00000955     -0.00408964      0.00000064      0.00000328      0.02688850      0.07027651
 0b00a0         0.00000955      0.00408964     -0.00000064     -0.00000328     -0.02688850     -0.07027651
 b00a00        -0.00005348     -0.02533089      0.00000078     -0.00000028      0.00990250     -0.07027651
 a00b00         0.00005348      0.02533089     -0.00000078      0.00000028     -0.00990250      0.07027651
 
 Energy:   -20884.30499231 -20884.30499231 -20884.30499231 -20884.30499231 -20884.30499231 -20884.25671715
 


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
 CPU TIMES  *        32.78     22.51      0.52      9.44
 REAL TIME  *        38.03 SEC
 DISK USED  *       269.06 MB (local),        4.57 GB (total)
 SF USED    *       564.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.33909   2.0
    -20884.33909   2.0
    -20884.33909   2.0
    -20884.16570   6.0
    -20884.16570   6.0
    -20884.16570   6.0
    -20884.16570   6.0
    -20884.16570   6.0
    -20884.16235   2.0
    -20884.16235   2.0
    -20884.16235   2.0
    -20884.15895   0.0
    -20884.30499   6.0
    -20884.30499   6.0
    -20884.30499   6.0
    -20884.30499   6.0
    -20884.30499   6.0
    -20884.25672  -0.0
                                                  


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
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.27 sec, npass=  1  Memory used:   6.08 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.33908732
     2    -20884.33908732
     3    -20884.33908732
     4    -20884.16570205
     5    -20884.16570205
     6    -20884.16570205
     7    -20884.16570205
     8    -20884.16570205
     9    -20884.16234813
    10    -20884.16234813
    11    -20884.16234813
    12    -20884.15894788

 Number of blocks in overlap matrix:  3605   Smallest eigenvalue:  0.83D+00
 Number of N-2 electron functions:    3673
 Number of N-1 electron functions:   39123

 Number of internal configurations:                24480
 Number of singly external configurations:       2912532
 Number of doubly external configurations:      20402968
 Total number of contracted configurations:     23339980
 Total number of uncontracted configurations:  110548093

 Diagonal Coupling coefficients finished.               Storage:  24329884 words, CPU-Time:     54.71 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4112720 words, CPU-time:      8.47 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.33908732     0.00000000    -1.30981016  0.49D-01  0.14D+00    74.55
    1     2     2     1.00000000     0.00000000-20884.33908732     0.00000000    -1.30994024  0.49D-01  0.14D+00    74.55
    1     3     3     1.00000000     0.00000000-20884.33908732     0.00000000    -1.30968759  0.49D-01  0.14D+00    74.55
    1     4     4     1.00000000     0.00000000-20884.16570205     0.00000000    -1.26828439  0.44D-01  0.12D+00    74.55
    1     5     5     1.00000000     0.00000000-20884.16570205    -0.00000000    -1.26832020  0.44D-01  0.12D+00    74.55
    1     6     6     1.00000000     0.00000000-20884.16570205    -0.00000000    -1.26828196  0.44D-01  0.12D+00    74.55
    1     7     7     1.00000000     0.00000000-20884.16570205     0.00000000    -1.26826121  0.44D-01  0.12D+00    74.55
    1     8     8     1.00000000     0.00000000-20884.16570205     0.00000000    -1.26821176  0.44D-01  0.12D+00    74.55
    1     9     9     1.00000000     0.00000000-20884.16234813     0.00000000    -1.27205868  0.45D-01  0.12D+00    74.55
    1    10    10     1.00000000     0.00000000-20884.16234813     0.00000000    -1.27220492  0.45D-01  0.12D+00    74.55
    1    11    11     1.00000000     0.00000000-20884.16234813     0.00000000    -1.27217017  0.45D-01  0.12D+00    74.55
    1    12    12     1.00000000     0.00000000-20884.15894788    -0.00000000    -1.26938969  0.44D-01  0.12D+00    74.55
    2     1     1     1.10422339    -0.98627419-20885.32536150    -0.98627419    -0.03594547  0.45D-02  0.29D-02  1442.28
    2     2     2     1.10431577    -0.98615139-20885.32523870    -0.98615139    -0.03608097  0.46D-02  0.29D-02  1442.28
    2     3     3     1.10442550    -0.98601776-20885.32510508    -0.98601776    -0.03622488  0.47D-02  0.29D-02  1442.28
    2     4     4     1.09702035    -0.98142977-20885.14713182    -0.98142977    -0.02938317  0.33D-02  0.20D-02  1442.28
    2     5     5     1.09703092    -0.98141914-20885.14712120    -0.98141914    -0.02939506  0.33D-02  0.20D-02  1442.28
    2     6     6     1.09703339    -0.98141593-20885.14711799    -0.98141593    -0.02940118  0.33D-02  0.20D-02  1442.28
    2     7     7     1.09704710    -0.98140079-20885.14710285    -0.98140079    -0.02941538  0.33D-02  0.20D-02  1442.28
    2     8     8     1.09705438    -0.98139582-20885.14709787    -0.98139582    -0.02941816  0.33D-02  0.20D-02  1442.28
    2     9     9     1.09759171    -0.98126158-20885.14360972    -0.98126158    -0.03047892  0.39D-02  0.20D-02  1442.28
    2    10    10     1.09762734    -0.98121231-20885.14356045    -0.98121231    -0.03053821  0.39D-02  0.20D-02  1442.28
    2    11    11     1.09764870    -0.98118700-20885.14353513    -0.98118700    -0.03056522  0.39D-02  0.20D-02  1442.28
    2    12    12     1.09776757    -0.98145805-20885.14040592    -0.98145805    -0.02982248  0.34D-02  0.22D-02  1442.28
    3     1     1     1.08689404    -1.01938131-20885.35846863    -0.03310712    -0.00234630  0.52D-04  0.76D-04  2812.94
    3     2     2     1.08688947    -1.01937910-20885.35846642    -0.03322771    -0.00234708  0.52D-04  0.76D-04  2812.94
    3     3     3     1.08688390    -1.01937703-20885.35846434    -0.03335927    -0.00234802  0.53D-04  0.76D-04  2812.94
    3     4     4     1.08436824    -1.00856511-20885.17426716    -0.02713534    -0.00239644  0.43D-04  0.64D-04  2812.94
    3     5     5     1.08436880    -1.00856484-20885.17426690    -0.02714570    -0.00239613  0.43D-04  0.64D-04  2812.94
    3     6     6     1.08436750    -1.00856476-20885.17426681    -0.02714883    -0.00239631  0.43D-04  0.64D-04  2812.94
    3     7     7     1.08436766    -1.00856476-20885.17426681    -0.02716396    -0.00239604  0.43D-04  0.64D-04  2812.94
    3     8     8     1.08436995    -1.00856464-20885.17426670    -0.02716882    -0.00239574  0.43D-04  0.64D-04  2812.94
    3     9     9     1.08429750    -1.00934855-20885.17169669    -0.02808697    -0.00240804  0.46D-04  0.68D-04  2812.94
    3    10    10     1.08429685    -1.00934783-20885.17169596    -0.02813552    -0.00240763  0.46D-04  0.69D-04  2812.94
    3    11    11     1.08429570    -1.00934759-20885.17169572    -0.02816059    -0.00240757  0.46D-04  0.69D-04  2812.94
    3    12    12     1.08460175    -1.00901413-20885.16796201    -0.02755608    -0.00239695  0.39D-04  0.68D-04  2812.94
    4     1     1     1.08671811    -1.01982218-20885.35890950    -0.00044087    -0.00040749  0.33D-04  0.31D-04  4180.23
    4     2     2     1.08671409    -1.01982060-20885.35890792    -0.00044150    -0.00041013  0.33D-04  0.32D-04  4180.23
    4     3     3     1.08670921    -1.01981913-20885.35890645    -0.00044211    -0.00041249  0.33D-04  0.32D-04  4180.23
    4     4     4     1.08421233    -1.00899611-20885.17469817    -0.00043100    -0.00031043  0.28D-04  0.20D-04  4180.23
    4     5     5     1.08421297    -1.00899586-20885.17469791    -0.00043102    -0.00031080  0.28D-04  0.20D-04  4180.23
    4     6     6     1.08421206    -1.00899581-20885.17469786    -0.00043105    -0.00031085  0.28D-04  0.20D-04  4180.23
    4     7     7     1.08421202    -1.00899578-20885.17469784    -0.00043103    -0.00031093  0.28D-04  0.20D-04  4180.23
    4     8     8     1.08421389    -1.00899565-20885.17469771    -0.00043101    -0.00031106  0.28D-04  0.20D-04  4180.23
    4     9     9     1.08414592    -1.00978778-20885.17213592    -0.00043923    -0.00034416  0.29D-04  0.24D-04  4180.23
    4    10    10     1.08414533    -1.00978718-20885.17213532    -0.00043935    -0.00034515  0.29D-04  0.24D-04  4180.23
    4    11    11     1.08414434    -1.00978699-20885.17213512    -0.00043940    -0.00034546  0.29D-04  0.24D-04  4180.23
    4    12    12     1.08444406    -1.00944587-20885.16839375    -0.00043174    -0.00031407  0.25D-04  0.23D-04  4180.23
    5     1     1     1.08685400    -1.02013659-20885.35922391    -0.00031441    -0.00007052  0.27D-05  0.13D-05  5549.98
    5     2     2     1.08685405    -1.02013657-20885.35922389    -0.00031597    -0.00007044  0.27D-05  0.13D-05  5549.98
    5     3     3     1.08685392    -1.02013657-20885.35922388    -0.00031743    -0.00007038  0.27D-05  0.13D-05  5549.98
    5     4     4     1.08432080    -1.00923739-20885.17493944    -0.00024128    -0.00007046  0.19D-05  0.13D-05  5549.98
    5     5     5     1.08432138    -1.00923738-20885.17493944    -0.00024152    -0.00007045  0.19D-05  0.13D-05  5549.98
    5     6     6     1.08432141    -1.00923738-20885.17493943    -0.00024157    -0.00007046  0.19D-05  0.13D-05  5549.98
    5     7     7     1.08432130    -1.00923737-20885.17493943    -0.00024159    -0.00007047  0.19D-05  0.13D-05  5549.98
    5     8     8     1.08432183    -1.00923737-20885.17493942    -0.00024172    -0.00007046  0.19D-05  0.13D-05  5549.98
    5     9     9     1.08428004    -1.01005244-20885.17240057    -0.00026465    -0.00007116  0.26D-05  0.13D-05  5549.98
    5    10    10     1.08428004    -1.01005243-20885.17240057    -0.00026525    -0.00007118  0.26D-05  0.13D-05  5549.98
    5    11    11     1.08427983    -1.01005243-20885.17240056    -0.00026544    -0.00007124  0.26D-05  0.13D-05  5549.98
    5    12    12     1.08455743    -1.00968883-20885.16863671    -0.00024296    -0.00006977  0.18D-05  0.14D-05  5549.98
    6     1     1     1.08681782    -1.02014992-20885.35923724    -0.00001333    -0.00000867  0.18D-05  0.43D-06  6919.51
    6     2     2     1.08681781    -1.02014989-20885.35923721    -0.00001333    -0.00000871  0.18D-05  0.43D-06  6919.51
    6     3     3     1.08681766    -1.02014988-20885.35923720    -0.00001332    -0.00000872  0.18D-05  0.43D-06  6919.51
    6     4     4     1.08430056    -1.00925062-20885.17495268    -0.00001323    -0.00000778  0.13D-05  0.38D-06  6919.51
    6     5     5     1.08430102    -1.00925061-20885.17495267    -0.00001323    -0.00000779  0.13D-05  0.39D-06  6919.51
    6     6     6     1.08430103    -1.00925061-20885.17495267    -0.00001323    -0.00000779  0.13D-05  0.39D-06  6919.51
    6     7     7     1.08430094    -1.00925061-20885.17495266    -0.00001324    -0.00000779  0.13D-05  0.39D-06  6919.51
    6     8     8     1.08430136    -1.00925060-20885.17495266    -0.00001324    -0.00000780  0.13D-05  0.39D-06  6919.51
    6     9     9     1.08425861    -1.01006598-20885.17241412    -0.00001355    -0.00000889  0.17D-05  0.42D-06  6919.51
    6    10    10     1.08425876    -1.01006598-20885.17241411    -0.00001354    -0.00000890  0.17D-05  0.42D-06  6919.51
    6    11    11     1.08425876    -1.01006598-20885.17241411    -0.00001354    -0.00000890  0.17D-05  0.42D-06  6919.51
    6    12    12     1.08453708    -1.00970193-20885.16864981    -0.00001310    -0.00000768  0.12D-05  0.43D-06  6919.51
    7     1     1     1.08668327    -1.02015561-20885.35924293    -0.00000569    -0.00000745  0.19D-06  0.18D-06  8288.64
    7     2     2     1.08668386    -1.02015560-20885.35924292    -0.00000571    -0.00000748  0.19D-06  0.18D-06  8288.64
    7     3     3     1.08668450    -1.02015559-20885.35924291    -0.00000571    -0.00000750  0.19D-06  0.18D-06  8288.64
    7     4     4     1.08422416    -1.00925514-20885.17495719    -0.00000452    -0.00000760  0.20D-06  0.20D-06  8288.64
    7     5     5     1.08422404    -1.00925514-20885.17495719    -0.00000452    -0.00000760  0.20D-06  0.20D-06  8288.64
    7     6     6     1.08422420    -1.00925513-20885.17495719    -0.00000452    -0.00000760  0.20D-06  0.20D-06  8288.64
    7     7     7     1.08422427    -1.00925513-20885.17495719    -0.00000452    -0.00000761  0.20D-06  0.20D-06  8288.64
    7     8     8     1.08422418    -1.00925513-20885.17495719    -0.00000453    -0.00000760  0.20D-06  0.20D-06  8288.64
    7     9     9     1.08417480    -1.01007141-20885.17241954    -0.00000542    -0.00000810  0.22D-06  0.21D-06  8288.64
    7    10    10     1.08417487    -1.01007141-20885.17241954    -0.00000543    -0.00000810  0.22D-06  0.21D-06  8288.64
    7    11    11     1.08417505    -1.01007140-20885.17241953    -0.00000542    -0.00000811  0.22D-06  0.21D-06  8288.64
    7    12    12     1.08445986    -1.00970641-20885.16865429    -0.00000448    -0.00000746  0.18D-06  0.20D-06  8288.64
    8     1     1     1.08666138    -1.02015700-20885.35924432    -0.00000139    -0.00000091  0.70D-07  0.34D-07  9654.66
    8     2     2     1.08666174    -1.02015699-20885.35924431    -0.00000139    -0.00000091  0.70D-07  0.34D-07  9654.66
    8     3     3     1.08666204    -1.02015699-20885.35924431    -0.00000140    -0.00000092  0.71D-07  0.34D-07  9654.66
    8     4     4     1.08420185    -1.00925668-20885.17495874    -0.00000155    -0.00000122  0.67D-07  0.38D-07  9654.66
    8     5     5     1.08420176    -1.00925668-20885.17495874    -0.00000155    -0.00000122  0.67D-07  0.38D-07  9654.66
    8     6     6     1.08420188    -1.00925668-20885.17495874    -0.00000155    -0.00000122  0.67D-07  0.38D-07  9654.66
    8     7     7     1.08420192    -1.00925668-20885.17495874    -0.00000155    -0.00000122  0.67D-07  0.38D-07  9654.66
    8     8     8     1.08420187    -1.00925668-20885.17495874    -0.00000155    -0.00000122  0.67D-07  0.38D-07  9654.66
    8     9     9     1.08415686    -1.01007297-20885.17242111    -0.00000157    -0.00000116  0.80D-07  0.41D-07  9654.66
    8    10    10     1.08415691    -1.01007297-20885.17242110    -0.00000157    -0.00000116  0.80D-07  0.41D-07  9654.66
    8    11    11     1.08415700    -1.01007297-20885.17242110    -0.00000157    -0.00000116  0.80D-07  0.41D-07  9654.66
    8    12    12     1.08443781    -1.00970792-20885.16865580    -0.00000151    -0.00000118  0.59D-07  0.40D-07  9654.66
    9     1     1     1.08666165    -1.02015721-20885.35924453    -0.00000021    -0.00000031  0.45D-07  0.18D-07 11023.77
    9     2     2     1.08666192    -1.02015721-20885.35924452    -0.00000021    -0.00000031  0.45D-07  0.18D-07 11023.77
    9     3     3     1.08666215    -1.02015721-20885.35924452    -0.00000021    -0.00000031  0.46D-07  0.18D-07 11023.77
    9     4     4     1.08420044    -1.00925694-20885.17495900    -0.00000026    -0.00000030  0.44D-07  0.19D-07 11023.77
    9     5     5     1.08420051    -1.00925694-20885.17495899    -0.00000026    -0.00000030  0.44D-07  0.19D-07 11023.77
    9     6     6     1.08420053    -1.00925694-20885.17495899    -0.00000026    -0.00000030  0.44D-07  0.19D-07 11023.77
    9     7     7     1.08420052    -1.00925694-20885.17495899    -0.00000026    -0.00000030  0.44D-07  0.19D-07 11023.77
    9     8     8     1.08420057    -1.00925694-20885.17495899    -0.00000026    -0.00000030  0.45D-07  0.19D-07 11023.77
    9     9     9     1.08415624    -1.01007323-20885.17242137    -0.00000026    -0.00000036  0.52D-07  0.22D-07 11023.77
    9    10    10     1.08415628    -1.01007323-20885.17242136    -0.00000026    -0.00000036  0.52D-07  0.22D-07 11023.77
    9    11    11     1.08415635    -1.01007323-20885.17242136    -0.00000026    -0.00000036  0.52D-07  0.22D-07 11023.77
    9    12    12     1.08443654    -1.00970817-20885.16865605    -0.00000025    -0.00000030  0.39D-07  0.20D-07 11023.77
   10     1     1     1.08666282    -1.02015738-20885.35924470    -0.00000018    -0.00000029  0.72D-08  0.70D-08 12391.35
   10     2     2     1.08666289    -1.02015738-20885.35924470    -0.00000018    -0.00000029  0.72D-08  0.70D-08 12391.35
   10     3     3     1.08666294    -1.02015738-20885.35924470    -0.00000018    -0.00000029  0.73D-08  0.70D-08 12391.35
   10     4     4     1.08419802    -1.00925711-20885.17495917    -0.00000017    -0.00000034  0.82D-08  0.88D-08 12391.35
   10     5     5     1.08419799    -1.00925711-20885.17495917    -0.00000017    -0.00000034  0.82D-08  0.88D-08 12391.35
   10     6     6     1.08419803    -1.00925711-20885.17495917    -0.00000017    -0.00000034  0.82D-08  0.88D-08 12391.35
   10     7     7     1.08419805    -1.00925711-20885.17495917    -0.00000017    -0.00000034  0.82D-08  0.88D-08 12391.35
   10     8     8     1.08419803    -1.00925711-20885.17495917    -0.00000017    -0.00000034  0.82D-08  0.88D-08 12391.35
   10     9     9     1.08415546    -1.01007343-20885.17242157    -0.00000020    -0.00000036  0.93D-08  0.94D-08 12391.35
   10    10    10     1.08415547    -1.01007343-20885.17242157    -0.00000020    -0.00000037  0.93D-08  0.94D-08 12391.35
   10    11    11     1.08415547    -1.01007343-20885.17242156    -0.00000020    -0.00000037  0.93D-08  0.94D-08 12391.35
   10    12    12     1.08443421    -1.00970834-20885.16865622    -0.00000017    -0.00000033  0.74D-08  0.88D-08 12391.35
   11     1     1     1.08666259    -1.02015744-20885.35924475    -0.00000005    -0.00000004  0.38D-08  0.14D-08 13759.89
   11     2     2     1.08666264    -1.02015743-20885.35924475    -0.00000005    -0.00000004  0.38D-08  0.14D-08 13759.89
   11     3     3     1.08666268    -1.02015743-20885.35924475    -0.00000005    -0.00000004  0.38D-08  0.14D-08 13759.89
   11     4     4     1.08419744    -1.00925718-20885.17495923    -0.00000006    -0.00000006  0.37D-08  0.19D-08 13759.89
   11     5     5     1.08419742    -1.00925718-20885.17495923    -0.00000006    -0.00000006  0.36D-08  0.19D-08 13759.89
   11     6     6     1.08419745    -1.00925718-20885.17495923    -0.00000006    -0.00000006  0.37D-08  0.19D-08 13759.89
   11     7     7     1.08419746    -1.00925718-20885.17495923    -0.00000006    -0.00000006  0.37D-08  0.19D-08 13759.89
   11     8     8     1.08419745    -1.00925718-20885.17495923    -0.00000006    -0.00000006  0.37D-08  0.19D-08 13759.89
   11     9     9     1.08415526    -1.01007350-20885.17242163    -0.00000007    -0.00000005  0.47D-08  0.20D-08 13759.89
   11    10    10     1.08415527    -1.01007350-20885.17242163    -0.00000007    -0.00000005  0.47D-08  0.20D-08 13759.89
   11    11    11     1.08415526    -1.01007350-20885.17242163    -0.00000007    -0.00000005  0.47D-08  0.20D-08 13759.89
   11    12    12     1.08443368    -1.00970841-20885.16865628    -0.00000006    -0.00000005  0.33D-08  0.19D-08 13759.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  56.7%
 P   0.4%  18.7%   7.0%

 Initialization:   0.5%
 Other:           15.8%

 Total CPU:    13759.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0000           0.9577931   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                                  -0.0349051  -0.0000000   0.0000000   0.0000000
 22222222222222222/0/000          -0.0000000   0.9577930  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                                  -0.0000000  -0.0349051   0.0000000  -0.0000000
 222222222222222220//000           0.0000000   0.0000000   0.9577930   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                   0.0000000  -0.0000000   0.0349051   0.0000000
 2222222222222222200/00/          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0615463  -0.0000000   0.0000000   0.7806194
                                   0.0000000  -0.0000000   0.0000000   0.5536242
 22222222222222222/00/00          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.7068093  -0.0000000  -0.0000000  -0.3370092
                                  -0.0000000  -0.0000000  -0.0000000   0.5536242
 222222222222222220/000/          -0.0000000  -0.0000000  -0.0253949   0.0000000   0.0000000   0.0000000   0.6781343  -0.0000000
                                   0.0000000  -0.0000000   0.6716558   0.0000000
 22222222222222222/0000/           0.0000000  -0.0253949   0.0000000   0.0000000   0.0000000   0.6781343  -0.0000000   0.0000000
                                   0.0000000  -0.6716559  -0.0000000   0.0000000
 222222222222222220/0/00           0.0253949   0.0000000  -0.0000000   0.6781342   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                   0.6716559  -0.0000000  -0.0000000  -0.0000000
 22222222222222222/000/0          -0.0253949  -0.0000000   0.0000000   0.6781341  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  -0.6716560  -0.0000000  -0.0000000   0.0000000
 2222222222222222200//00           0.0000000   0.0253949   0.0000000   0.0000000  -0.0000000   0.6781341  -0.0000000   0.0000000
                                  -0.0000000   0.6716560  -0.0000000   0.0000000
 2222222222222222200/0/0           0.0000000   0.0000000   0.0253949   0.0000000   0.0000000   0.0000000   0.6781340  -0.0000000
                                   0.0000000  -0.0000000  -0.6716561  -0.0000000
 222222222222222220/00/0           0.0000000   0.0000000   0.0000000  -0.0000000  -0.6452632  -0.0000000   0.0000000  -0.4436104
                                   0.0000000  -0.0000000  -0.0000000   0.5536241
 22222222222222222000//0          -0.0092734   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                                   0.1280231   0.0000000  -0.0000000  -0.0000000
 22222222222222222000/0/           0.0000000  -0.0092734   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                                  -0.0000000   0.1280231   0.0000000   0.0000000
 222222222222222220000//           0.0000000   0.0000000  -0.0092734  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                                  -0.0000000   0.0000000  -0.1280231  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958128    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.027101
            -0.000000   -0.000000
 2           0.958128    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.027101    0.000000
 3          -0.000000   -0.000000    0.958128    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.027101   -0.000000
             0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.959027    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.723973    0.000000   -0.000000   -0.000000    0.628964    0.000000    0.000000
            -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959027    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.959027   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 8          -0.000000   -0.000000    0.000000   -0.628964   -0.000000   -0.000000    0.000000   -0.723973   -0.000000    0.000000
             0.000000   -0.000000
 9          -0.000000   -0.027644    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958684
            -0.000000    0.000000
 10         -0.027644   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.958684   -0.000000
 11          0.000000    0.000000    0.027644   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958684   -0.000000
             0.000000   -0.000000
 12         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.958905

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958511   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000263    0.000000
            -0.000000    0.000000
 2          -0.000000    0.958511   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000263
            -0.000000   -0.000000
 3           0.000000   -0.000000    0.958511    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000263    0.000000
 4           0.000000   -0.000000    0.000000    0.959027   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.959027    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.959027    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.959027   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.959027   -0.000000    0.000000
             0.000000   -0.000000
 9          -0.000263   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959083    0.000000
             0.000000   -0.000000
 10          0.000000   -0.000263    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.959083
            -0.000000    0.000000
 11         -0.000000   -0.000000    0.000263    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.959083    0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.958905


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95812779 (fixed)   0.95851100 (relaxed)   0.95851095 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163877   -0.00384236   -0.88743209
 Singles      0.01325393   -0.05590965   -0.06378810
 Pairs        0.07355068    0.00000000   -0.06893725
 Total        1.08844338   -0.05975201   -1.02015744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33894327
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.05256610
 One electron energy               -28576.99988675
 Two electron energy                 7691.64064199
 Virial quotient                       -0.63890990
 Correlation energy                    -1.02030148
 !MRCI STATE 1.1 Energy              -20885.3592447530    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44948367 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44948355 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44948367 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45131746 (Pople, fixed reference)
 Cluster corrected energies        -20885.45131734 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45131746 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95812777 (fixed)   0.95851098 (relaxed)   0.95851093 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163876   -0.00384236   -0.88743199
 Singles      0.01325400   -0.05590971   -0.06378817
 Pairs        0.07355066   -0.00000000   -0.06893728
 Total        1.08844343   -0.05975207   -1.02015743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33894327
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.05256753
 One electron energy               -28576.99988829
 Two electron energy                 7691.64064353
 Virial quotient                       -0.63890990
 Correlation energy                    -1.02030148
 !MRCI STATE 2.1 Energy              -20885.3592447520    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44948371 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44948360 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44948371 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45131752 (Pople, fixed reference)
 Cluster corrected energies        -20885.45131739 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45131752 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95812776 (fixed)   0.95851096 (relaxed)   0.95851091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163876   -0.00384236   -0.88743194
 Singles      0.01325404   -0.05590974   -0.06378820
 Pairs        0.07355065    0.00000000   -0.06893730
 Total        1.08844346   -0.05975210   -1.02015743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.33894327
 Nuclear energy                         0.00000000
 Kinetic energy                     32689.05257138
 One electron energy               -28576.99989396
 Two electron energy                 7691.64064921
 Virial quotient                       -0.63890990
 Correlation energy                    -1.02030148
 !MRCI STATE 3.1 Energy              -20885.3592447515    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.44948375 (Davidson, fixed reference)
 Cluster corrected energies        -20885.44948363 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.44948375 (Davidson, rotated reference)

 Cluster corrected energies        -20885.45131755 (Pople, fixed reference)
 Cluster corrected energies        -20885.45131743 (Pople, relaxed reference)
 Cluster corrected energies        -20885.45131755 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95902654 (fixed)   0.95902654 (relaxed)   0.95902654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00283704   -0.00670164   -0.87446770
 Singles      0.01471504   -0.06133505   -0.07007127
 Pairs        0.06972128    0.00000000   -0.06471821
 Total        1.08727336   -0.06803669   -1.00925718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16570205
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39418453
 One electron energy               -28560.59275430
 Two electron energy                 7675.41779507
 Virial quotient                       -0.63891713
 Correlation energy                    -1.00925718
 !MRCI STATE 4.1 Energy              -20885.1749592342    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26304049 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26304049 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26304049 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26473122 (Pople, fixed reference)
 Cluster corrected energies        -20885.26473122 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26473122 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72397254 (fixed)   0.95902655 (relaxed)   0.95902655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00283704   -0.00670164   -0.87446771
 Singles      0.01471502   -0.06133504   -0.07007126
 Pairs        0.06972127   -0.00000002   -0.06471822
 Total        1.08727333   -0.06803671   -1.00925718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16570205
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39418302
 One electron energy               -28560.59274885
 Two electron energy                 7675.41778961
 Virial quotient                       -0.63891713
 Correlation energy                    -1.00925718
 !MRCI STATE 5.1 Energy              -20885.1749592341    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26304047 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26304047 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26304047 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26473120 (Pople, fixed reference)
 Cluster corrected energies        -20885.26473120 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26473120 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95902654 (fixed)   0.95902654 (relaxed)   0.95902654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00283704   -0.00670164   -0.87446768
 Singles      0.01471505   -0.06133506   -0.07007128
 Pairs        0.06972127    0.00000000   -0.06471821
 Total        1.08727336   -0.06803670   -1.00925718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16570205
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39418425
 One electron energy               -28560.59275407
 Two electron energy                 7675.41779483
 Virial quotient                       -0.63891713
 Correlation energy                    -1.00925718
 !MRCI STATE 6.1 Energy              -20885.1749592336    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26304050 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26304050 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26304050 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26473123 (Pople, fixed reference)
 Cluster corrected energies        -20885.26473123 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26473123 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95902653 (fixed)   0.95902653 (relaxed)   0.95902653 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00283704   -0.00670164   -0.87446767
 Singles      0.01471506   -0.06133507   -0.07007129
 Pairs        0.06972127   -0.00000000   -0.06471822
 Total        1.08727337   -0.06803671   -1.00925718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16570205
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39418580
 One electron energy               -28560.59275860
 Two electron energy                 7675.41779937
 Virial quotient                       -0.63891713
 Correlation energy                    -1.00925718
 !MRCI STATE 7.1 Energy              -20885.1749592332    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26304051 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26304051 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26304051 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26473124 (Pople, fixed reference)
 Cluster corrected energies        -20885.26473124 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26473124 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.72397254 (fixed)   0.95902654 (relaxed)   0.95902654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00283704   -0.00670164   -0.87446775
 Singles      0.01471505   -0.06133507   -0.07007129
 Pairs        0.06972127    0.00000007   -0.06471815
 Total        1.08727336   -0.06803664   -1.00925718
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16570205
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39418389
 One electron energy               -28560.59275062
 Two electron energy                 7675.41779139
 Virial quotient                       -0.63891713
 Correlation energy                    -1.00925718
 !MRCI STATE 8.1 Energy              -20885.1749592332    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26304049 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26304049 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26304049 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26473122 (Pople, fixed reference)
 Cluster corrected energies        -20885.26473122 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26473122 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95868409 (fixed)   0.95908902 (relaxed)   0.95908252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275899   -0.00650331   -0.87572445
 Singles      0.01445883   -0.06081957   -0.06937833
 Pairs        0.06992861   -0.00000000   -0.06497072
 Total        1.08714643   -0.06732287   -1.01007350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16249218
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.45851120
 One electron energy               -28561.32688719
 Two electron energy                 7676.15446556
 Virial quotient                       -0.63891579
 Correlation energy                    -1.00992946
 !MRCI STATE 9.1 Energy              -20885.1724216340    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26043338 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26041852 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26043338 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26211203 (Pople, fixed reference)
 Cluster corrected energies        -20885.26209564 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26211203 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95868409 (fixed)   0.95908901 (relaxed)   0.95908252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275899   -0.00650330   -0.87572444
 Singles      0.01445884   -0.06081958   -0.06937834
 Pairs        0.06992861    0.00000000   -0.06497072
 Total        1.08714644   -0.06732288   -1.01007350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16249218
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.45851093
 One electron energy               -28561.32688622
 Two electron energy                 7676.15446459
 Virial quotient                       -0.63891579
 Correlation energy                    -1.00992946
 !MRCI STATE 10.1 Energy             -20885.1724216331    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26043339 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26041852 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26043339 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26211204 (Pople, fixed reference)
 Cluster corrected energies        -20885.26209565 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26211204 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95868409 (fixed)   0.95908902 (relaxed)   0.95908252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275899   -0.00650330   -0.87572444
 Singles      0.01445884   -0.06081958   -0.06937834
 Pairs        0.06992861    0.00000000   -0.06497072
 Total        1.08714643   -0.06732288   -1.01007350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.16249218
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.45851058
 One electron energy               -28561.32688090
 Two electron energy                 7676.15445927
 Virial quotient                       -0.63891579
 Correlation energy                    -1.00992946
 !MRCI STATE 11.1 Energy             -20885.1724216327    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.26043338 (Davidson, fixed reference)
 Cluster corrected energies        -20885.26041852 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.26043338 (Davidson, rotated reference)

 Cluster corrected energies        -20885.26211203 (Pople, fixed reference)
 Cluster corrected energies        -20885.26209564 (Pople, relaxed reference)
 Cluster corrected energies        -20885.26211203 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95890521 (fixed)   0.95890521 (relaxed)   0.95890521 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287232   -0.00674131   -0.00886536
 Singles      0.01474449   -0.06139419   -0.07014145
 Pairs        0.06993171   -0.94157291   -0.93070159
 Total        1.08754852   -1.00970841   -1.00970841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.15894788
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.39701274
 One electron energy               -28560.59828956
 Two electron energy                 7675.42963328
 Virial quotient                       -0.63891688
 Correlation energy                    -1.00970841
 !MRCI STATE 12.1 Energy             -20885.1686562823    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.25705476 (Davidson, fixed reference)
 Cluster corrected energies        -20885.25705476 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.25705476 (Davidson, rotated reference)

 Cluster corrected energies        -20885.25877498 (Pople, fixed reference)
 Cluster corrected energies        -20885.25877498 (Pople, relaxed reference)
 Cluster corrected energies        -20885.25877498 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     2156.81       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15452.25  15419.45     22.51      0.52      9.44
 REAL TIME  *     15821.63 SEC
 DISK USED  *         2.37 GB (local),       38.24 GB (total)
 SF USED    *        21.85 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20885.44948367  AU                              
 SETTING HLSDIAG(2)     =    -20885.44948371  AU                              
 SETTING HLSDIAG(3)     =    -20885.44948375  AU                              
 SETTING HLSDIAG(4)     =    -20885.26304049  AU                              
 SETTING HLSDIAG(5)     =    -20885.26304047  AU                              
 SETTING HLSDIAG(6)     =    -20885.26304050  AU                              
 SETTING HLSDIAG(7)     =    -20885.26304051  AU                              
 SETTING HLSDIAG(8)     =    -20885.26304049  AU                              
 SETTING HLSDIAG(9)     =    -20885.26043338  AU                              
 SETTING HLSDIAG(10)    =    -20885.26043339  AU                              
 SETTING HLSDIAG(11)    =    -20885.26043338  AU                              
 SETTING HLSDIAG(12)    =    -20885.25705476  AU                              


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


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.30499231
     2    -20884.30499231
     3    -20884.30499231
     4    -20884.30499231
     5    -20884.30499231
     6    -20884.25671715

 Number of blocks in overlap matrix:  1837   Smallest eigenvalue:  0.27D+00
 Number of N-2 electron functions:    1939
 Number of N-1 electron functions:   23568

 Number of internal configurations:                16366
 Number of singly external configurations:       1753492
 Number of doubly external configurations:      10770723
 Total number of contracted configurations:     12540581
 Total number of uncontracted configurations:   71912576

 Diagonal Coupling coefficients finished.               Storage:  15589090 words, CPU-Time:     11.24 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3278803 words, CPU-time:      4.47 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.30499231    -0.00000000    -1.31562104  0.57D-01  0.14D+00    19.15
    1     2     2     1.00000000     0.00000000-20884.30499231    -0.00000000    -1.31474522  0.56D-01  0.14D+00    19.15
    1     3     3     1.00000000     0.00000000-20884.30499231    -0.00000000    -1.31540633  0.57D-01  0.14D+00    19.15
    1     4     4     1.00000000     0.00000000-20884.30499231    -0.00000000    -1.31562281  0.57D-01  0.14D+00    19.15
    1     5     5     1.00000000     0.00000000-20884.30499231    -0.00000000    -1.31472965  0.56D-01  0.14D+00    19.15
    1     6     6     1.00000000     0.00000000-20884.25671715    -0.00000000    -1.31371843  0.39D-01  0.16D+00    19.15
    2     1     1     1.10863910    -0.99016648-20885.29515879    -0.99016648    -0.03640558  0.52D-02  0.29D-02   386.35
    2     2     2     1.10875238    -0.99001517-20885.29500748    -0.99001517    -0.03657610  0.52D-02  0.29D-02   386.35
    2     3     3     1.10902023    -0.98967531-20885.29466762    -0.98967531    -0.03696042  0.54D-02  0.29D-02   386.35
    2     4     4     1.10913148    -0.98957886-20885.29457117    -0.98957886    -0.03706040  0.54D-02  0.29D-02   386.35
    2     5     5     1.10913502    -0.98955238-20885.29454469    -0.98955238    -0.03709553  0.55D-02  0.29D-02   386.35
    2     6     6     1.10872554    -0.99225753-20885.24897468    -0.99225753    -0.03820283  0.44D-02  0.47D-02   386.35
    3     1     1     1.08950297    -1.02391972-20885.32891202    -0.03375324    -0.00244539  0.75D-04  0.87D-04   754.31
    3     2     2     1.08950070    -1.02391583-20885.32890814    -0.03390066    -0.00244691  0.75D-04  0.88D-04   754.31
    3     3     3     1.08950852    -1.02391039-20885.32890269    -0.03423507    -0.00244754  0.76D-04  0.89D-04   754.31
    3     4     4     1.08950777    -1.02390861-20885.32890091    -0.03432975    -0.00244838  0.77D-04  0.89D-04   754.31
    3     5     5     1.08950803    -1.02390767-20885.32889998    -0.03435529    -0.00244848  0.77D-04  0.89D-04   754.31
    3     6     6     1.08910407    -1.02731128-20885.28402842    -0.03505375    -0.00361115  0.56D-04  0.16D-03   754.31
    4     1     1     1.08923823    -1.02439121-20885.32938352    -0.00047149    -0.00048782  0.48D-04  0.40D-04  1122.07
    4     2     2     1.08923622    -1.02438843-20885.32938074    -0.00047260    -0.00049226  0.48D-04  0.40D-04  1122.07
    4     3     3     1.08924165    -1.02438461-20885.32937691    -0.00047422    -0.00049988  0.49D-04  0.41D-04  1122.07
    4     4     4     1.08924027    -1.02438335-20885.32937566    -0.00047475    -0.00050193  0.49D-04  0.41D-04  1122.07
    4     5     5     1.08924066    -1.02438267-20885.32937497    -0.00047499    -0.00050309  0.49D-04  0.41D-04  1122.07
    4     6     6     1.08876938    -1.02795943-20885.28467657    -0.00064815    -0.00051445  0.37D-04  0.67D-04  1122.07
    5     1     1     1.08915457    -1.02476950-20885.32976181    -0.00037829    -0.00008102  0.45D-05  0.18D-05  1489.88
    5     2     2     1.08915744    -1.02476946-20885.32976177    -0.00038103    -0.00008052  0.46D-05  0.18D-05  1489.88
    5     3     3     1.08915804    -1.02476945-20885.32976175    -0.00038484    -0.00008049  0.46D-05  0.18D-05  1489.88
    5     4     4     1.08915546    -1.02476944-20885.32976175    -0.00038609    -0.00008098  0.45D-05  0.18D-05  1489.88
    5     5     5     1.08915834    -1.02476943-20885.32976173    -0.00038676    -0.00008046  0.46D-05  0.18D-05  1489.88
    5     6     6     1.08866445    -1.02837139-20885.28508854    -0.00041196    -0.00010770  0.38D-05  0.38D-05  1489.88
    6     1     1     1.08909353    -1.02478547-20885.32977777    -0.00001596    -0.00001334  0.30D-05  0.73D-06  1856.69
    6     2     2     1.08909413    -1.02478541-20885.32977772    -0.00001595    -0.00001342  0.30D-05  0.74D-06  1856.69
    6     3     3     1.08909548    -1.02478538-20885.32977768    -0.00001593    -0.00001353  0.30D-05  0.74D-06  1856.69
    6     4     4     1.08909590    -1.02478536-20885.32977767    -0.00001593    -0.00001355  0.30D-05  0.74D-06  1856.69
    6     5     5     1.08909611    -1.02478534-20885.32977765    -0.00001592    -0.00001358  0.30D-05  0.75D-06  1856.69
    6     6     6     1.08860782    -1.02839194-20885.28510909    -0.00002055    -0.00001496  0.26D-05  0.18D-05  1856.69
    7     1     1     1.08888366    -1.02479472-20885.32978703    -0.00000926    -0.00000970  0.25D-06  0.26D-06  2224.63
    7     2     2     1.08888381    -1.02479472-20885.32978703    -0.00000931    -0.00000971  0.25D-06  0.26D-06  2224.63
    7     3     3     1.08888422    -1.02479471-20885.32978702    -0.00000933    -0.00000973  0.25D-06  0.26D-06  2224.63
    7     4     4     1.08888465    -1.02479466-20885.32978697    -0.00000930    -0.00000992  0.26D-06  0.26D-06  2224.63
    7     5     5     1.08888545    -1.02479465-20885.32978695    -0.00000930    -0.00000997  0.26D-06  0.26D-06  2224.63
    7     6     6     1.08842887    -1.02840124-20885.28511839    -0.00000931    -0.00001471  0.36D-06  0.55D-06  2224.63
    8     1     1     1.08886227    -1.02479644-20885.32978875    -0.00000172    -0.00000111  0.12D-06  0.68D-07  2592.48
    8     2     2     1.08886232    -1.02479644-20885.32978875    -0.00000173    -0.00000111  0.12D-06  0.68D-07  2592.48
    8     3     3     1.08886259    -1.02479644-20885.32978875    -0.00000173    -0.00000111  0.12D-06  0.68D-07  2592.48
    8     4     4     1.08886229    -1.02479643-20885.32978874    -0.00000177    -0.00000115  0.13D-06  0.68D-07  2592.48
    8     5     5     1.08886270    -1.02479643-20885.32978873    -0.00000178    -0.00000116  0.13D-06  0.67D-07  2592.48
    8     6     6     1.08838974    -1.02840406-20885.28512120    -0.00000281    -0.00000211  0.14D-06  0.14D-06  2592.48
    9     1     1     1.08886085    -1.02479676-20885.32978906    -0.00000031    -0.00000061  0.73D-07  0.38D-07  2960.11
    9     2     2     1.08886087    -1.02479676-20885.32978906    -0.00000031    -0.00000061  0.73D-07  0.38D-07  2960.11
    9     3     3     1.08886107    -1.02479675-20885.32978906    -0.00000031    -0.00000061  0.74D-07  0.38D-07  2960.11
    9     4     4     1.08886085    -1.02479675-20885.32978905    -0.00000032    -0.00000061  0.76D-07  0.37D-07  2960.11
    9     5     5     1.08886114    -1.02479674-20885.32978905    -0.00000032    -0.00000060  0.77D-07  0.37D-07  2960.11
    9     6     6     1.08838639    -1.02840453-20885.28512168    -0.00000047    -0.00000068  0.95D-07  0.83D-07  2960.11
   10     1     1     1.08885779    -1.02479705-20885.32978935    -0.00000029    -0.00000047  0.14D-07  0.13D-07  3327.89
   10     2     2     1.08885775    -1.02479705-20885.32978935    -0.00000029    -0.00000047  0.14D-07  0.13D-07  3327.89
   10     3     3     1.08885774    -1.02479705-20885.32978935    -0.00000029    -0.00000047  0.14D-07  0.13D-07  3327.89
   10     4     4     1.08885767    -1.02479704-20885.32978935    -0.00000030    -0.00000048  0.15D-07  0.13D-07  3327.89
   10     5     5     1.08885773    -1.02479704-20885.32978935    -0.00000030    -0.00000049  0.15D-07  0.13D-07  3327.89
   10     6     6     1.08837860    -1.02840491-20885.28512206    -0.00000039    -0.00000077  0.19D-07  0.28D-07  3327.89
   11     1     1     1.08885634    -1.02479713-20885.32978944    -0.00000008    -0.00000006  0.89D-08  0.36D-08  3695.74
   11     2     2     1.08885631    -1.02479713-20885.32978944    -0.00000008    -0.00000006  0.89D-08  0.36D-08  3695.74
   11     3     3     1.08885632    -1.02479713-20885.32978944    -0.00000008    -0.00000006  0.89D-08  0.36D-08  3695.74
   11     4     4     1.08885624    -1.02479713-20885.32978944    -0.00000009    -0.00000006  0.91D-08  0.35D-08  3695.74
   11     5     5     1.08885627    -1.02479713-20885.32978943    -0.00000009    -0.00000006  0.91D-08  0.35D-08  3695.74
   11     6     6     1.08837629    -1.02840506-20885.28512220    -0.00000014    -0.00000012  0.96D-08  0.80D-08  3695.74
   12     1     1     1.08885438    -1.02479715-20885.32978945    -0.00000002    -0.00000004  0.50D-08  0.20D-08  4063.29
   12     2     2     1.08885435    -1.02479715-20885.32978945    -0.00000002    -0.00000004  0.50D-08  0.20D-08  4063.29
   12     3     3     1.08885435    -1.02479715-20885.32978945    -0.00000002    -0.00000004  0.50D-08  0.20D-08  4063.29
   12     4     4     1.08885435    -1.02479715-20885.32978945    -0.00000002    -0.00000004  0.52D-08  0.20D-08  4063.29
   12     5     5     1.08885438    -1.02479715-20885.32978945    -0.00000002    -0.00000004  0.53D-08  0.20D-08  4063.29
   12     6     6     1.08837489    -1.02840508-20885.28512223    -0.00000003    -0.00000004  0.64D-08  0.48D-08  4063.29
   13     1     1     1.08885438    -1.02479715-20885.32978945    -0.00000000    -0.00000004  0.50D-08  0.20D-08  4167.05
   13     2     2     1.08885435    -1.02479715-20885.32978945     0.00000000    -0.00000004  0.50D-08  0.20D-08  4167.05
   13     3     3     1.08885435    -1.02479715-20885.32978945    -0.00000000    -0.00000004  0.50D-08  0.20D-08  4167.05
   13     4     4     1.08885435    -1.02479715-20885.32978945    -0.00000000    -0.00000004  0.52D-08  0.20D-08  4167.05
   13     5     5     1.08885438    -1.02479715-20885.32978945    -0.00000000    -0.00000004  0.53D-08  0.20D-08  4167.05
   13     6     6     1.08836905    -1.02840512-20885.28512227    -0.00000003    -0.00000001  0.35D-10  0.19D-09  4167.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.5%  59.7%
 P   0.4%  16.9%   6.1%

 Initialization:   0.4%
 Other:           15.0%

 Total CPU:     4167.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222222220/\000          -0.0000000   0.9564125   0.0000000   0.0000000   0.0000000   0.0000000
 22222222222222222/0\000          -0.0000000  -0.0000000   0.9564125   0.0000000   0.0000000   0.0000000
 22222222222222222/\0000           0.9564125   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 22222222222222222200000          -0.0000000  -0.0000000  -0.0000000   0.7804633  -0.0263384   0.5445709
 22222222222222222002000          -0.0000000  -0.0000000  -0.0000000  -0.3674219   0.6890702   0.5445709
 22222222222222222020000          -0.0000000   0.0000000   0.0000000  -0.4130414  -0.6627318   0.5445709
 2222222222222222200/00\          -0.0000000  -0.0000000   0.0000000  -0.0144119   0.0270284   0.0882219
 222222222222222220/00\0          -0.0000000  -0.0000000  -0.0000000  -0.0162013  -0.0259953   0.0882219
 22222222222222222/00\00          -0.0000000  -0.0000000  -0.0000000   0.0306133  -0.0010331   0.0882218

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.957385   -0.000000   -0.000000   -0.000000
 2          -0.000000   -0.000000    0.000000    0.957385    0.000000   -0.000000
 3           0.957385    0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.879392   -0.000000    0.000000   -0.378491    0.000000
 5           0.000000   -0.378491    0.000000    0.000000   -0.879392   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.956494

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957385   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.957385   -0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.957385    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.957385    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.957385   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.956494


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95738471 (fixed)   0.95741524 (relaxed)   0.95738471 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197577   -0.00453542   -0.88690831
 Singles      0.01476347   -0.05919988   -0.06812649
 Pairs        0.07426647    0.00000000   -0.06976235
 Total        1.09100571   -0.06373530   -1.02479715
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30499231
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.98326225
 One electron energy               -28576.03481571
 Two electron energy                 7690.70502626
 Virial quotient                       -0.63891035
 Correlation energy                    -1.02479715
 !MRCI STATE 1.1 Energy              -20885.3297894543    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42305184 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42298055 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42305184 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42557370 (Pople, fixed reference)
 Cluster corrected energies        -20885.42549413 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42557370 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95738473 (fixed)   0.95741525 (relaxed)   0.95738473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197576   -0.00453542   -0.88690837
 Singles      0.01476343   -0.05919985   -0.06812645
 Pairs        0.07426648    0.00000000   -0.06976233
 Total        1.09100567   -0.06373527   -1.02479715
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30499231
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.98325806
 One electron energy               -28576.03481231
 Two electron energy                 7690.70502286
 Virial quotient                       -0.63891035
 Correlation energy                    -1.02479715
 !MRCI STATE 2.1 Energy              -20885.3297894537    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42305180 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42298051 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42305180 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42557366 (Pople, fixed reference)
 Cluster corrected energies        -20885.42549409 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42557366 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95738473 (fixed)   0.95741525 (relaxed)   0.95738473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197577   -0.00453542   -0.88690837
 Singles      0.01476343   -0.05919985   -0.06812645
 Pairs        0.07426648    0.00000000   -0.06976233
 Total        1.09100567   -0.06373526   -1.02479715
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30499231
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.98325600
 One electron energy               -28576.03480882
 Two electron energy                 7690.70501936
 Virial quotient                       -0.63891035
 Correlation energy                    -1.02479715
 !MRCI STATE 3.1 Energy              -20885.3297894536    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42305180 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42298052 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42305180 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42557366 (Pople, fixed reference)
 Cluster corrected energies        -20885.42549409 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42557366 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.87939200 (fixed)   0.95741526 (relaxed)   0.95738473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197576   -0.00453541   -0.88690830
 Singles      0.01476344   -0.05919988   -0.06812650
 Pairs        0.07426646   -0.00000004   -0.06976235
 Total        1.09100566   -0.06373534   -1.02479715
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30499231
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.98323659
 One electron energy               -28576.03476187
 Two electron energy                 7690.70497242
 Virial quotient                       -0.63891035
 Correlation energy                    -1.02479715
 !MRCI STATE 4.1 Energy              -20885.3297894535    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42305179 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42298051 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42305179 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42557365 (Pople, fixed reference)
 Cluster corrected energies        -20885.42549408 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42557365 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.87939199 (fixed)   0.95741524 (relaxed)   0.95738472 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197575   -0.00453541   -0.88690829
 Singles      0.01476349   -0.05919994   -0.06812656
 Pairs        0.07426645    0.00000004   -0.06976229
 Total        1.09100569   -0.06373531   -1.02479715
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.30499231
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.98324113
 One electron energy               -28576.03476847
 Two electron energy                 7690.70497902
 Virial quotient                       -0.63891035
 Correlation energy                    -1.02479715
 !MRCI STATE 5.1 Energy              -20885.3297894523    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.42305183 (Davidson, fixed reference)
 Cluster corrected energies        -20885.42298054 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.42305183 (Davidson, rotated reference)

 Cluster corrected energies        -20885.42557369 (Pople, fixed reference)
 Cluster corrected energies        -20885.42549412 (Pople, relaxed reference)
 Cluster corrected energies        -20885.42557369 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95649440 (fixed)   0.95657143 (relaxed)   0.95649440 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00428957   -0.00913059   -0.01238934
 Singles      0.01119075   -0.05254938   -0.05860585
 Pairs        0.07755737   -0.96672514   -0.95740993
 Total        1.09303768   -1.02840512   -1.02840512
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.25671715
 Nuclear energy                         0.00000000
 Kinetic energy                     32688.87084213
 One electron energy               -28574.25150393
 Two electron energy                 7688.96638166
 Virial quotient                       -0.63891118
 Correlation energy                    -1.02840512
 !MRCI STATE 6.1 Energy              -20885.2851222652    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20885.38080270 (Davidson, fixed reference)
 Cluster corrected energies        -20885.38062167 (Davidson, relaxed reference)
 Cluster corrected energies        -20885.38080270 (Davidson, rotated reference)

 Cluster corrected energies        -20885.38358094 (Pople, fixed reference)
 Cluster corrected energies        -20885.38337812 (Pople, relaxed reference)
 Cluster corrected energies        -20885.38358094 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      267.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2735.78       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19711.23   4258.97  15419.45     22.51      0.52      9.44
 REAL TIME  *     20176.66 SEC
 DISK USED  *         2.93 GB (local),       47.29 GB (total)
 SF USED    *        21.85 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =    -20885.42305184  AU                              
 SETTING HLSDIAG(14)    =    -20885.42305180  AU                              
 SETTING HLSDIAG(15)    =    -20885.42305180  AU                              
 SETTING HLSDIAG(16)    =    -20885.42305179  AU                              
 SETTING HLSDIAG(17)    =    -20885.42305183  AU                              
 SETTING HLSDIAG(18)    =    -20885.38080270  AU                              


         HLSDIAG
    -20885.44948
    -20885.44948
    -20885.44948
    -20885.26304
    -20885.26304
    -20885.26304
    -20885.26304
    -20885.26304
    -20885.26043
    -20885.26043
    -20885.26043
    -20885.25705
    -20885.42305
    -20885.42305
    -20885.42305
    -20885.42305
    -20885.42305
    -20885.38080
                                                  

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

 Time for Seward_LS:     120.48 sec

       96401495. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    27010 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    120.48 sec, REAL time:    122.86 sec


 SORTLS1 read   110556387. and wrote   110556387. SO integrals in   448 records. CPU time:      1.21 sec, REAL time:      1.75 sec
 SORTLS2 read   110556387. and wrote   547794150. SO integrals in    48 records. CPU time:      0.45 sec, REAL time:      0.65 sec

 FILE SIZES: FILE 1:  2050.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2050.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1955.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2735.78       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19834.08    122.85   4258.97  15419.45     22.51      0.52      9.44
 REAL TIME  *     20302.71 SEC
 DISK USED  *         2.93 GB (local),       52.84 GB (total)
 SF USED    *        21.85 GB
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

 Original energies: -20885.359245 -20885.359245 -20885.359245 -20885.174959 -20885.174959 -20885.174959 -20885.174959 -20885.174959
                    -20885.172422 -20885.172422 -20885.172422 -20885.168656
 Replaced energies: -20885.449484 -20885.449484 -20885.449484 -20885.263040 -20885.263040 -20885.263040 -20885.263041 -20885.263040
                    -20885.260433 -20885.260433 -20885.260433 -20885.257055

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies: -20885.329789 -20885.329789 -20885.329789 -20885.329789 -20885.329789 -20885.285122
 Replaced energies: -20885.423052 -20885.423052 -20885.423052 -20885.423052 -20885.423052 -20885.380803



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20885.44948375

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.01      -0.01       0.02    -142.14      -0.01       0.01    1802.49       0.15       0.03

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.01   -6209.98      -0.21      -0.01      -0.06   -1565.93       0.00       0.27       0.01

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01    6209.98       0.03      -0.02      -0.01    1566.06      -0.02       0.00      -0.01    1407.31

    4   4.1  1.0  1.0       0.00       0.00       0.00   40919.56       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.21       0.02       0.03    7330.52       0.10       0.06     577.93       0.04       0.12

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40919.57       0.00       0.00       0.00       0.00       0.00
                          142.14       0.01       0.01   -7330.52       0.01      -0.03       0.01      -0.02    -277.62       0.04

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40919.56       0.00       0.00       0.00       0.00
                            0.01       0.06   -1566.06      -0.10       0.03       0.01   -3676.65      -0.01       0.01       0.08

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40919.56       0.00       0.00       0.00
                           -0.01    1565.93       0.02      -0.06      -0.01    3676.65       0.00      -0.03       0.01   -3057.46

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40919.56       0.00       0.00
                        -1802.49      -0.00      -0.00    -577.93       0.02       0.01       0.03       0.03    3519.61      -0.07

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41491.76       0.00
                           -0.15      -0.27       0.01      -0.04     277.62      -0.01      -0.01   -3519.61       0.05      -0.12

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41491.76
                           -0.03      -0.01   -1407.31      -0.12      -0.04      -0.08    3057.46       0.07       0.12      -0.13

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02   -1407.64       0.02       0.15      -0.07    3057.48      -0.12       0.03       0.26   -3864.80

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2541.74       0.00      -0.01       0.02      -0.03       0.00      -0.01       0.04   -5011.25      -0.00

   13   1.1  1.0  0.0       0.01       0.01    4391.08       0.02       0.01       0.02   -1106.28       0.04      -0.06       0.03
                           -0.12   -4391.02      -0.01       0.06      -0.03    1106.18      -0.01       0.02       0.08    -994.53

   14   2.1  1.0  0.0      -0.00       0.01       0.00       0.02   -1052.63       0.00       0.04    -723.68       0.08       0.01
                         4391.06       0.06      -0.00   -1106.19       0.16       0.04      -0.29      -0.17     994.57       0.04

   15   3.1  1.0  0.0   -4391.01       0.03       0.00   -1106.13       0.00       0.01       0.01       0.01    -994.39      -0.01
                            0.02      -0.02       0.03       0.37    1152.79       0.08      -0.39    -549.96       0.24       0.04

   16   4.1  1.0  0.0       0.04       0.01    1107.22       0.01       0.02      -0.02   -2599.78      -0.02      -0.00       0.03
                            0.04    1107.23      -0.01       0.15      -0.18   -2599.74       0.13      -0.05       0.16   -2161.60

   17   5.1  1.0  0.0      -0.01    1053.52       0.00       0.04      -0.01   -2945.65       0.00       0.01      -0.02   -2056.86
                           -0.01      -0.01   -1153.89       0.18      -0.02      -0.03    2237.87       0.00      -0.18      -0.31

   18   6.1  1.0  0.0       0.01       0.00       0.06      -0.03    2945.65       0.02       0.02   -4284.59       0.01       0.06
                        -1107.45      -0.12       0.00    2599.79       0.12       0.01       0.13      -0.05    2161.66       0.02

   19   7.1  1.0  0.0    1107.25      -0.02       0.03    2599.76      -0.07       0.02       0.00       0.00   -2161.64      -0.02
                            0.01       0.00       0.01      -0.00   -2237.83      -0.02      -0.01   -4693.34      -0.03       0.00

   20   8.1  1.0  0.0      -0.01     724.33       0.06      -0.02       0.01    4284.67       0.00       0.00       0.00   -1414.05
                            0.01      -0.00     550.18      -0.08      -0.02       0.01    4693.31       0.01       0.07       0.15

   21   9.1  1.0  0.0      -0.07      -0.02     995.40      -0.01       0.01       0.01    2161.96      -0.01      -0.01      -0.02
                           -0.04    -995.40      -0.03      -0.14       0.03   -2161.97      -0.21       0.04      -0.14   -2732.89

   22  10.1  1.0  0.0      -0.00      -0.00       0.07      -0.03    2057.17       0.01      -0.03    1414.36       0.01       0.06
                          995.64       0.05       0.00    2161.93      -0.05      -0.01      -0.12       0.01    2732.81      -0.01

   23  11.1  1.0  0.0     995.41      -0.01      -0.02   -2161.94       0.07      -0.00       0.00      -0.00    2732.84      -0.00
                           -0.01       0.01      -0.20       0.02    2253.34       0.04      -0.02   -1074.42       0.00       0.01

   24  12.1  1.0  0.0       0.02    1797.28       0.04       0.03      -0.00       0.00       0.00       0.01      -0.02   -3543.46
                           -0.01      -0.03    1797.44       0.12       0.01      -0.03       0.03      -0.01      -0.11      -0.23

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

   37   1.1  0.0  0.0      -0.00       0.00   -4281.26       0.00       0.00       0.00    1273.30      -0.00       0.00      -0.00
                            0.00   -4281.26       0.00       0.00      -0.00    1273.29      -0.00       0.00       0.00    -768.32

   38   2.1  0.0  0.0   -4281.26       0.00       0.00   -1273.29      -0.00       0.00       0.00       0.00    -768.31       0.00
                           -0.00      -0.00       0.00       0.00    1096.01      -0.00       0.00    2298.66      -0.00      -0.00

   39   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00   -1442.69      -0.00       0.00    2098.50       0.00      -0.00
                         4281.26       0.00      -0.00   -1273.29       0.00       0.00       0.00       0.00     768.32       0.00

   40   4.1  0.0  0.0       0.00   -2614.76       0.00       0.00      -0.00    2161.19      -0.00       0.00       0.00    -469.25
                            0.00       0.00    4940.72      -0.00       0.00      -0.00     -85.89       0.00       0.00      -0.00

   41   5.1  0.0  0.0      -0.00   -4195.42      -0.00      -0.00      -0.00   -1346.95       0.00      -0.00      -0.00    -752.91
                            0.00      -0.00    -166.73      -0.00      -0.00      -0.00   -2545.12       0.00      -0.00       0.00

   42   6.1  0.0  0.0       0.00   -6681.89      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -666.04
                           -0.00      -0.00   -6681.89      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.01      -0.00   -4391.01       0.04      -0.01       0.01    1107.25      -0.01
                            0.02   -2541.74       0.12   -4391.06      -0.02      -0.04       0.01    1107.45      -0.01      -0.01

    2   2.1  1.0  1.0       0.00       0.00       0.01       0.01       0.03       0.01    1053.52       0.00      -0.02     724.33
                         1407.64      -0.00    4391.02      -0.06       0.02   -1107.23       0.01       0.12      -0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00    4391.08       0.00       0.00    1107.22       0.00       0.06       0.03       0.06
                           -0.02       0.01       0.01       0.00      -0.03       0.01    1153.89      -0.00      -0.01    -550.18

    4   4.1  1.0  1.0       0.00       0.00       0.02       0.02   -1106.13       0.01       0.04      -0.03    2599.76      -0.02
                           -0.15      -0.02      -0.06    1106.19      -0.37      -0.15      -0.18   -2599.79       0.00       0.08

    5   5.1  1.0  1.0       0.00       0.00       0.01   -1052.63       0.00       0.02      -0.01    2945.65      -0.07       0.01
                            0.07       0.03       0.03      -0.16   -1152.79       0.18       0.02      -0.12    2237.83       0.02

    6   6.1  1.0  1.0       0.00       0.00       0.02       0.00       0.01      -0.02   -2945.65       0.02       0.02    4284.67
                        -3057.48      -0.00   -1106.18      -0.04      -0.08    2599.74       0.03      -0.01       0.02      -0.01

    7   7.1  1.0  1.0       0.00       0.00   -1106.28       0.04       0.01   -2599.78       0.00       0.02       0.00       0.00
                            0.12       0.01       0.01       0.29       0.39      -0.13   -2237.87      -0.13       0.01   -4693.31

    8   8.1  1.0  1.0       0.00       0.00       0.04    -723.68       0.01      -0.02       0.01   -4284.59       0.00       0.00
                           -0.03      -0.04      -0.02       0.17     549.96       0.05      -0.00       0.05    4693.34      -0.01

    9   9.1  1.0  1.0       0.00       0.00      -0.06       0.08    -994.39      -0.00      -0.02       0.01   -2161.64       0.00
                           -0.26    5011.25      -0.08    -994.57      -0.24      -0.16       0.18   -2161.66       0.03      -0.07

   10  10.1  1.0  1.0       0.00       0.00       0.03       0.01      -0.01       0.03   -2056.86       0.06      -0.02   -1414.05
                         3864.80       0.00     994.53      -0.04      -0.04    2161.60       0.31      -0.02      -0.00      -0.15

   11  11.1  1.0  1.0   41491.76       0.00    -994.56      -0.04      -0.00    2161.66      -0.01       0.04       0.00       0.01
                            0.09      -0.08      -0.01      -0.02       0.37      -0.14    2252.97       0.12      -0.01   -1074.21

   12  12.1  1.0  1.0       0.00   42233.28      -0.00   -1795.22      -0.01       0.01      -0.00      -0.01       0.00      -0.00
                            0.08      -0.04       0.04      -0.20    1795.19      -0.08       0.00       0.00       0.02      -0.04

   13   1.1  1.0  0.0    -994.56      -0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      -0.04   -1795.22       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37   -1795.19      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0    2161.66       0.01       0.00       0.00       0.00   40919.56       0.00       0.00       0.00       0.00
                            0.14       0.08      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00   40919.57       0.00       0.00       0.00
                        -2252.97      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.04      -0.01       0.00       0.00       0.00       0.00       0.00   40919.56       0.00       0.00
                           -0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40919.56       0.00
                            0.01      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40919.56
                         1074.21       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0   -2732.84       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.20      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0      -0.01    3544.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02   -3544.39      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3543.52       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.01       0.01    4391.08       0.02       0.01       0.02   -1106.28       0.04
                           -0.00      -0.00      -0.12   -4391.02      -0.01       0.06      -0.03    1106.18      -0.01       0.02

   26   2.1  1.0 -1.0       0.00       0.00      -0.00       0.01       0.00       0.02   -1052.63       0.00       0.04    -723.68
                           -0.00      -0.00    4391.06       0.06      -0.00   -1106.19       0.16       0.04      -0.29      -0.17

   27   3.1  1.0 -1.0       0.00       0.00   -4391.01       0.03       0.00   -1106.13       0.00       0.01       0.01       0.01
                           -0.00      -0.00       0.02      -0.02       0.03       0.37    1152.79       0.08      -0.39    -549.96

   28   4.1  1.0 -1.0       0.00       0.00       0.04       0.01    1107.22       0.01       0.02      -0.02   -2599.78      -0.02
                           -0.00      -0.00       0.04    1107.23      -0.01       0.15      -0.18   -2599.74       0.13      -0.05

   29   5.1  1.0 -1.0       0.00       0.00      -0.01    1053.52       0.00       0.04      -0.01   -2945.65       0.00       0.01
                           -0.00      -0.00      -0.01      -0.01   -1153.89       0.18      -0.02      -0.03    2237.87       0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.01       0.00       0.06      -0.03    2945.65       0.02       0.02   -4284.59
                           -0.00      -0.00   -1107.45      -0.12       0.00    2599.79       0.12       0.01       0.13      -0.05

   31   7.1  1.0 -1.0       0.00       0.00    1107.25      -0.02       0.03    2599.76      -0.07       0.02       0.00       0.00
                           -0.00      -0.00       0.01       0.00       0.01      -0.00   -2237.83      -0.02      -0.01   -4693.34

   32   8.1  1.0 -1.0       0.00       0.00      -0.01     724.33       0.06      -0.02       0.01    4284.67       0.00       0.00
                           -0.00      -0.00       0.01      -0.00     550.18      -0.08      -0.02       0.01    4693.31       0.01

   33   9.1  1.0 -1.0       0.00       0.00      -0.07      -0.02     995.40      -0.01       0.01       0.01    2161.96      -0.01
                           -0.00      -0.00      -0.04    -995.40      -0.03      -0.14       0.03   -2161.97      -0.21       0.04

   34  10.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.07      -0.03    2057.17       0.01      -0.03    1414.36
                           -0.00      -0.00     995.64       0.05       0.00    2161.93      -0.05      -0.01      -0.12       0.01

   35  11.1  1.0 -1.0       0.00       0.00     995.41      -0.01      -0.02   -2161.94       0.07      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.01       0.01      -0.20       0.02    2253.34       0.04      -0.02   -1074.42

   36  12.1  1.0 -1.0       0.00       0.00       0.02    1797.28       0.04       0.03      -0.00       0.00       0.00       0.01
                           -0.00      -0.00      -0.01      -0.03    1797.44       0.12       0.01      -0.03       0.03      -0.01

   37   1.1  0.0  0.0     768.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00    3590.26       0.00      -0.00     283.07

   38   2.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    6054.61       0.00       0.00       0.00    1800.71      -0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00   -6054.61      -0.00      -0.00      -0.00   -1800.71      -0.00

   40   4.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -886.66      -0.00    3289.42       0.00      -0.00   -3177.85       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.92       0.00   -6169.03       0.00      -0.00   -1694.48      -0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          666.03      -0.00    9449.62       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.07      -0.00     995.41       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04    -995.64       0.01       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.02      -0.00      -0.01    1797.28       0.00       0.00       0.00       0.00       0.00       0.00
                          995.40      -0.05      -0.01       0.03       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     995.40       0.07      -0.02       0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00       0.20   -1797.44       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.01      -0.03   -2161.94       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14   -2161.93      -0.02      -0.12       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.01    2057.17       0.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.05   -2253.34      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.01       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2161.97       0.01      -0.04       0.03       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    2161.96      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.21       0.12       0.02      -0.03       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      -0.01    1414.36      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.01    1074.42       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.01       0.01    2732.84      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14   -2732.81      -0.00       0.11       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.02       0.06      -0.00   -3543.46       0.00       0.00       0.00       0.00       0.00       0.00
                         2732.89       0.01      -0.01       0.23       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0   -2732.84      -0.01      -0.01       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20      -0.12       0.02   -3543.52       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.01    3544.38      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.03    3544.39      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01      -0.00   -4391.01       0.04      -0.01       0.01
                            0.00       0.00       0.00       0.00       0.12   -4391.06      -0.02      -0.04       0.01    1107.45

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01       0.01       0.03       0.01    1053.52       0.00
                            0.00       0.00       0.00       0.00    4391.02      -0.06       0.02   -1107.23       0.01       0.12

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00    4391.08       0.00       0.00    1107.22       0.00       0.06
                            0.00       0.00       0.00       0.00       0.01       0.00      -0.03       0.01    1153.89      -0.00

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.02       0.02   -1106.13       0.01       0.04      -0.03
                            0.00       0.00       0.00       0.00      -0.06    1106.19      -0.37      -0.15      -0.18   -2599.79

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01   -1052.63       0.00       0.02      -0.01    2945.65
                            0.00       0.00       0.00       0.00       0.03      -0.16   -1152.79       0.18       0.02      -0.12

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.02       0.00       0.01      -0.02   -2945.65       0.02
                            0.00       0.00       0.00       0.00   -1106.18      -0.04      -0.08    2599.74       0.03      -0.01

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00   -1106.28       0.04       0.01   -2599.78       0.00       0.02
                            0.00       0.00       0.00       0.00       0.01       0.29       0.39      -0.13   -2237.87      -0.13

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.04    -723.68       0.01      -0.02       0.01   -4284.59
                            0.00       0.00       0.00       0.00      -0.02       0.17     549.96       0.05      -0.00       0.05

   21   9.1  1.0  0.0   41491.76       0.00       0.00       0.00      -0.06       0.08    -994.39      -0.00      -0.02       0.01
                            0.00       0.00       0.00       0.00      -0.08    -994.57      -0.24      -0.16       0.18   -2161.66

   22  10.1  1.0  0.0       0.00   41491.76       0.00       0.00       0.03       0.01      -0.01       0.03   -2056.86       0.06
                           -0.00       0.00       0.00       0.00     994.53      -0.04      -0.04    2161.60       0.31      -0.02

   23  11.1  1.0  0.0       0.00       0.00   41491.76       0.00    -994.56      -0.04      -0.00    2161.66      -0.01       0.04
                           -0.00      -0.00       0.00       0.00      -0.01      -0.02       0.37      -0.14    2252.97       0.12

   24  12.1  1.0  0.0       0.00       0.00       0.00   42233.28      -0.00   -1795.22      -0.01       0.01      -0.00      -0.01
                           -0.00      -0.00      -0.00       0.00       0.04      -0.20    1795.19      -0.08       0.00       0.00

   25   1.1  1.0 -1.0      -0.06       0.03    -994.56      -0.00       0.02       0.00       0.00       0.00       0.00       0.00
                            0.08    -994.53       0.01      -0.04       0.04      -0.01       0.01      -0.02     142.14       0.01

   26   2.1  1.0 -1.0       0.08       0.01      -0.04   -1795.22       0.00       0.01       0.00       0.00       0.00       0.00
                          994.57       0.04       0.02       0.20       0.01       0.01    6209.98       0.21       0.01       0.06

   27   3.1  1.0 -1.0    -994.39      -0.01      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24       0.04      -0.37   -1795.19      -0.01   -6209.98      -0.03       0.02       0.01   -1566.06

   28   4.1  1.0 -1.0      -0.00       0.03    2161.66       0.01       0.00       0.00       0.00   40919.56       0.00       0.00
                            0.16   -2161.60       0.14       0.08       0.02      -0.21      -0.02      -0.03   -7330.52      -0.10

   29   5.1  1.0 -1.0      -0.02   -2056.86      -0.01      -0.00       0.00       0.00       0.00       0.00   40919.57       0.00
                           -0.18      -0.31   -2252.97      -0.00    -142.14      -0.01      -0.01    7330.52      -0.01       0.03

   30   6.1  1.0 -1.0       0.01       0.06       0.04      -0.01       0.00       0.00       0.00       0.00       0.00   40919.56
                         2161.66       0.02      -0.12      -0.00      -0.01      -0.06    1566.06       0.10      -0.03      -0.01

   31   7.1  1.0 -1.0   -2161.64      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.01      -0.02       0.01   -1565.93      -0.02       0.06       0.01   -3676.65

   32   8.1  1.0 -1.0       0.00   -1414.05       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07       0.15    1074.21       0.04    1802.49       0.00       0.00     577.93      -0.02      -0.01

   33   9.1  1.0 -1.0      -0.01      -0.02   -2732.84       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14   -2732.89      -0.20      -0.04       0.15       0.27      -0.01       0.04    -277.62       0.01

   34  10.1  1.0 -1.0       0.01       0.06      -0.01    3544.38       0.00       0.00       0.00       0.00       0.00       0.00
                         2732.81      -0.01       0.12      -0.03       0.03       0.01    1407.31       0.12       0.04       0.08

   35  11.1  1.0 -1.0    2732.84      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.02   -3544.39       0.02    1407.64      -0.02      -0.15       0.07   -3057.48

   36  12.1  1.0 -1.0      -0.02   -3543.46       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11      -0.23    3543.52       0.01   -2541.74      -0.00       0.01      -0.02       0.03      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00   -4281.26       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01      -0.00    4281.26      -0.00      -0.00       0.00   -1273.29

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00   -4281.26       0.00       0.00   -1273.29      -0.00       0.00
                           -0.00    1086.56      -0.00       0.00       0.00       0.00      -0.00      -0.00   -1096.01       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -1442.69      -0.00
                           -0.00       0.00    1086.56       0.00   -4281.26      -0.00       0.00    1273.29      -0.00      -0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   -2614.76       0.00       0.00      -0.00    2161.19
                          590.33       0.00       0.00      -0.00      -0.00      -0.00   -4940.72       0.00      -0.00       0.00

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00   -4195.42      -0.00      -0.00      -0.00   -1346.95
                        -1107.09       0.00       0.00      -0.00      -0.00       0.00     166.73       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   -6681.89      -0.00      -0.00      -0.00      -0.00
                          941.92       0.00       0.00       0.00       0.00       0.00    6681.89       0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -4281.26       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00   -4281.26      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2614.76
                            0.00       0.00       0.00       0.00       0.00       0.00    4281.26       0.00      -0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   -4281.26       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -4940.72

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1273.29      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    1273.29       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -1442.69      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1096.01      -0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    2161.19
                            0.00       0.00       0.00       0.00       0.00       0.00   -1273.29       0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    1273.30       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      85.89

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    2098.50       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -2298.66      -0.00      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -768.31       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -768.32      -0.00

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -469.25
                            0.00       0.00       0.00       0.00       0.00       0.00     768.32       0.00      -0.00       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     768.31       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     886.66

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0    1107.25      -0.01      -0.07      -0.00     995.41       0.02       0.00       0.00       0.00       0.00
                           -0.01      -0.01       0.04    -995.64       0.01       0.01       0.00       0.00       0.00   -3289.42

   14   2.1  1.0  0.0      -0.02     724.33      -0.02      -0.00      -0.01    1797.28       0.00       0.00       0.00       0.00
                           -0.00       0.00     995.40      -0.05      -0.01       0.03       0.00   -6054.61       0.00      -0.00

   15   3.1  1.0  0.0       0.03       0.06     995.40       0.07      -0.02       0.04       0.00       0.00       0.00       0.00
                           -0.01    -550.18       0.03      -0.00       0.20   -1797.44       0.00      -0.00    6054.61       0.00

   16   4.1  1.0  0.0    2599.76      -0.02      -0.01      -0.03   -2161.94       0.03       0.00       0.00       0.00       0.00
                            0.00       0.08       0.14   -2161.93      -0.02      -0.12      -0.00      -0.00       0.00    3177.85

   17   5.1  1.0  0.0      -0.07       0.01       0.01    2057.17       0.07      -0.00       0.00       0.00       0.00       0.00
                         2237.83       0.02      -0.03       0.05   -2253.34      -0.01   -3590.26      -0.00       0.00      -0.00

   18   6.1  1.0  0.0       0.02    4284.67       0.01       0.01      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.01    2161.97       0.01      -0.04       0.03      -0.00   -1800.71       0.00      -0.00

   19   7.1  1.0  0.0       0.00       0.00    2161.96      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01   -4693.31       0.21       0.12       0.02      -0.03       0.00       0.00    1800.71      -0.00

   20   8.1  1.0  0.0       0.00       0.00      -0.01    1414.36      -0.00       0.01       0.00       0.00       0.00       0.00
                         4693.34      -0.01      -0.04      -0.01    1074.42       0.01    -283.07      -0.00       0.00      -0.00

   21   9.1  1.0  0.0   -2161.64       0.00      -0.01       0.01    2732.84      -0.02       0.00       0.00       0.00       0.00
                            0.03      -0.07       0.14   -2732.81      -0.00       0.11       0.00       0.00       0.00    -590.33

   22  10.1  1.0  0.0      -0.02   -1414.05      -0.02       0.06      -0.00   -3543.46       0.00       0.00       0.00       0.00
                           -0.00      -0.15    2732.89       0.01      -0.01       0.23      -0.00   -1086.56      -0.00      -0.00

   23  11.1  1.0  0.0       0.00       0.01   -2732.84      -0.01      -0.01       0.01       0.00       0.00       0.00       0.00
                           -0.01   -1074.21       0.20      -0.12       0.02   -3543.52       0.00       0.00   -1086.56      -0.00

   24  12.1  1.0  0.0       0.00      -0.00       0.01    3544.38      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.02      -0.04       0.04       0.03    3544.39      -0.01       0.01      -0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -4281.26       0.00       0.00
                           -0.01   -1802.49      -0.15      -0.03      -0.02    2541.74       0.00      -0.00    4281.26       0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2614.76
                         1565.93      -0.00      -0.27      -0.01   -1407.64       0.00   -4281.26      -0.00       0.00       0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   -4281.26       0.00      -0.00       0.00
                            0.02      -0.00       0.01   -1407.31       0.02      -0.01       0.00       0.00      -0.00    4940.72

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1273.29      -0.00       0.00
                           -0.06    -577.93      -0.04      -0.12       0.15       0.02       0.00       0.00   -1273.29      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -1442.69      -0.00
                           -0.01       0.02     277.62      -0.04      -0.07      -0.03      -0.00    1096.01       0.00       0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    2161.19
                         3676.65       0.01      -0.01      -0.08    3057.48       0.00    1273.29      -0.00       0.00      -0.00

   31   7.1  1.0 -1.0   40919.56       0.00       0.00       0.00       0.00       0.00    1273.30       0.00       0.00      -0.00
                           -0.00       0.03      -0.01    3057.46      -0.12      -0.01      -0.00       0.00       0.00     -85.89

   32   8.1  1.0 -1.0       0.00   40919.56       0.00       0.00       0.00       0.00      -0.00       0.00    2098.50       0.00
                           -0.03      -0.03   -3519.61       0.07       0.03       0.04       0.00    2298.66       0.00       0.00

   33   9.1  1.0 -1.0       0.00       0.00   41491.76       0.00       0.00       0.00       0.00    -768.31       0.00       0.00
                            0.01    3519.61      -0.05       0.12       0.26   -5011.25       0.00      -0.00     768.32       0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00   41491.76       0.00       0.00      -0.00       0.00      -0.00    -469.25
                        -3057.46      -0.07      -0.12       0.13   -3864.80      -0.00    -768.32      -0.00       0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   41491.76       0.00     768.31       0.00       0.00      -0.00
                            0.12      -0.03      -0.26    3864.80      -0.09       0.08      -0.00       0.00       0.00    -886.66

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   42233.28      -0.00      -0.00       0.00       0.00
                            0.01      -0.04    5011.25       0.00      -0.08       0.04       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0    1273.30      -0.00       0.00      -0.00     768.31      -0.00    5801.13       0.00       0.00       0.00
                            0.00      -0.00      -0.00     768.32       0.00      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00    -768.31       0.00       0.00      -0.00       0.00    5801.14       0.00       0.00
                           -0.00   -2298.66       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00    2098.50       0.00      -0.00       0.00       0.00       0.00       0.00    5801.14       0.00
                           -0.00      -0.00    -768.32      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      -0.00       0.00       0.00    -469.25      -0.00       0.00       0.00       0.00       0.00    5801.14
                           85.89      -0.00      -0.00       0.00     886.66       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0       0.00      -0.00      -0.00    -752.91       0.00      -0.00       0.00       0.00       0.00       0.00
                         2545.12      -0.00       0.00      -0.00     -29.92      -0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00      -0.00       0.00    -666.04      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -666.03       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42

    1   1.1  1.0  1.0      -0.00       0.00
                           -0.00       0.00

    2   2.1  1.0  1.0   -4195.42   -6681.89
                            0.00       0.00

    3   3.1  1.0  1.0      -0.00      -0.00
                          166.73    6681.89

    4   4.1  1.0  1.0      -0.00      -0.00
                            0.00       0.00

    5   5.1  1.0  1.0      -0.00      -0.00
                            0.00      -0.00

    6   6.1  1.0  1.0   -1346.95      -0.00
                            0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00
                         2545.12      -0.00

    8   8.1  1.0  1.0      -0.00      -0.00
                           -0.00       0.00

    9   9.1  1.0  1.0      -0.00       0.00
                            0.00       0.00

   10  10.1  1.0  1.0    -752.91    -666.04
                           -0.00      -0.00

   11  11.1  1.0  1.0       0.00      -0.00
                          -29.92    -666.03

   12  12.1  1.0  1.0      -0.00       0.00
                           -0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00
                         6169.03   -9449.62

   14   2.1  1.0  0.0       0.00       0.00
                           -0.00      -0.00

   15   3.1  1.0  0.0       0.00       0.00
                            0.00       0.00

   16   4.1  1.0  0.0       0.00       0.00
                         1694.48      -0.00

   17   5.1  1.0  0.0       0.00       0.00
                            0.00      -0.00

   18   6.1  1.0  0.0       0.00       0.00
                           -0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00
                           -0.00       0.00

   20   8.1  1.0  0.0       0.00       0.00
                           -0.00      -0.00

   21   9.1  1.0  0.0       0.00       0.00
                         1107.09    -941.92

   22  10.1  1.0  0.0       0.00       0.00
                           -0.00      -0.00

   23  11.1  1.0  0.0       0.00       0.00
                           -0.00      -0.00

   24  12.1  1.0  0.0       0.00       0.00
                            0.00      -0.00

   25   1.1  1.0 -1.0      -0.00       0.00
                            0.00      -0.00

   26   2.1  1.0 -1.0   -4195.42   -6681.89
                           -0.00      -0.00

   27   3.1  1.0 -1.0      -0.00      -0.00
                         -166.73   -6681.89

   28   4.1  1.0 -1.0      -0.00      -0.00
                           -0.00      -0.00

   29   5.1  1.0 -1.0      -0.00      -0.00
                           -0.00       0.00

   30   6.1  1.0 -1.0   -1346.95      -0.00
                           -0.00       0.00

   31   7.1  1.0 -1.0       0.00       0.00
                        -2545.12       0.00

   32   8.1  1.0 -1.0      -0.00      -0.00
                            0.00      -0.00

   33   9.1  1.0 -1.0      -0.00       0.00
                           -0.00      -0.00

   34  10.1  1.0 -1.0    -752.91    -666.04
                            0.00       0.00

   35  11.1  1.0 -1.0       0.00      -0.00
                           29.92     666.03

   36  12.1  1.0 -1.0      -0.00       0.00
                            0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   41   5.1  0.0  0.0    5801.14       0.00
                            0.00       0.00

   42   6.1  0.0  0.0       0.00   15073.75
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 42)

    The diagonal matrixelements are shifted by -20885.44948375 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.018       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40919.564       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40919.569       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40919.563       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40919.560       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40919.564
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.017       0.004       0.046       0.041       0.002       0.025       0.688       0.019
                                0.000   -6209.871      -0.015       0.009      -0.015    1565.273      -0.015       0.009

    2    1  |1 0>               0.004       0.013       0.023       0.024       0.633       0.001       0.017       0.458
                             6209.871       0.000       0.014   -1565.129       0.120       0.115      -0.208      -0.123

    3    1  |1 0>               0.046       0.023       0.006       0.777       0.002       0.046       0.024       0.047
                                0.015      -0.014       0.000       0.264    1631.070       0.055      -0.279    -777.914

    4    1  |1 0>               0.041       0.024       0.777       0.018       0.042      -0.034      -0.011      -0.026
                               -0.009    1565.129      -0.264       0.000      -0.251   -3676.619       0.092       0.019

    5    1  |1 0>               0.002       0.633       0.002       0.042      -0.015       0.001      -0.045       0.018
                                0.015      -0.120   -1631.070       0.251       0.000      -0.103    3164.800       0.014

    6    1  |1 0>               0.025       0.001       0.046      -0.034       0.001       0.021       0.030       0.055
                            -1565.273      -0.115      -0.055    3676.619       0.103       0.000       0.108      -0.041

    7    1  |1 0>               0.688       0.017       0.024      -0.011      -0.045       0.030       0.002       0.003
                                0.015       0.208       0.279      -0.092   -3164.800      -0.108       0.000   -6637.365

    8    1  |1 0>               0.019       0.458       0.047      -0.026       0.018       0.055       0.003       0.003
                               -0.009       0.123     777.914      -0.019      -0.014       0.041    6637.365       0.000

    9    1  |1 0>              -0.095       0.041       0.710      -0.012      -0.003       0.018       0.224      -0.004
                               -0.081   -1407.121      -0.192      -0.208       0.149   -3057.271      -0.128      -0.022

   10    1  |1 0>               0.015       0.003       0.044      -0.003       0.223       0.055      -0.038       0.218
                             1407.261       0.010      -0.024    3057.198       0.181      -0.015      -0.083      -0.104

   11    1  |1 0>               0.603      -0.039      -0.020      -0.200       0.044       0.024       0.004       0.002
                               -0.018      -0.008       0.123      -0.087    3186.443       0.112      -0.019   -1519.306

   12    1  |1 0>               0.011       1.456       0.020       0.028      -0.004      -0.002       0.002       0.006
                                0.020      -0.162    2540.377       0.028       0.008      -0.018       0.039      -0.034

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.035       0.006      -0.009       0.025    -142.141      -0.014       0.005    1802.486

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.006      -0.012   -6209.978      -0.206      -0.008      -0.063   -1565.932       0.004

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009    6209.978       0.029      -0.016      -0.005    1566.061      -0.024       0.003

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.025       0.206       0.016       0.035    7330.518       0.096       0.064     577.926

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              142.141       0.008       0.005   -7330.518       0.005      -0.030       0.013      -0.017

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.014       0.063   -1566.061      -0.096       0.030       0.010   -3676.650      -0.009

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005    1565.932       0.024      -0.064      -0.013    3676.650       0.001      -0.034

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1802.486      -0.004      -0.003    -577.926       0.017       0.009       0.034       0.033

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.147      -0.274       0.011      -0.043     277.619      -0.007      -0.006   -3519.609

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.027      -0.011   -1407.311      -0.120      -0.036      -0.084    3057.455       0.069

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.019   -1407.643       0.016       0.148      -0.074    3057.475      -0.118       0.026

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2541.737       0.004      -0.007       0.015      -0.033       0.002      -0.009       0.037

    1    1  |0 0>              -0.000       0.000   -6054.614       0.000       0.000       0.000    1800.711      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>           -6054.612       0.000       0.000   -1800.711      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000      -0.000   -2040.273      -0.000       0.000    2967.731
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000   -3697.835       0.000       0.000      -0.000    3056.387      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000   -5933.223      -0.000      -0.000      -0.000   -1904.869       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   -9449.621      -0.000      -0.000      -0.000      -0.004       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.017       0.004       0.046       0.041
                                0.000       0.000       0.000       0.000       0.000   -6209.871      -0.015       0.009

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.004       0.013       0.023       0.024
                                0.000       0.000       0.000       0.000    6209.871       0.000       0.014   -1565.129

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.046       0.023       0.006       0.777
                                0.000       0.000       0.000       0.000       0.015      -0.014       0.000       0.264

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.041       0.024       0.777       0.018
                                0.000       0.000       0.000       0.000      -0.009    1565.129      -0.264       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.002       0.633       0.002       0.042
                                0.000       0.000       0.000       0.000       0.015      -0.120   -1631.070       0.251

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.025       0.001       0.046      -0.034
                                0.000       0.000       0.000       0.000   -1565.273      -0.115      -0.055    3676.619

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.688       0.017       0.024      -0.011
                                0.000       0.000       0.000       0.000       0.015       0.208       0.279      -0.092

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.019       0.458       0.047      -0.026
                                0.000       0.000       0.000       0.000      -0.009       0.123     777.914      -0.019

    9    1  |1 1>+          41491.759       0.000       0.000       0.000      -0.095       0.041       0.710      -0.012
                                0.000       0.000       0.000       0.000      -0.081   -1407.121      -0.192      -0.208

   10    1  |1 1>+              0.000   41491.758       0.000       0.000       0.015       0.003       0.044      -0.003
                                0.000       0.000       0.000       0.000    1407.261       0.010      -0.024    3057.198

   11    1  |1 1>+              0.000       0.000   41491.759       0.000       0.603      -0.039      -0.020      -0.200
                                0.000       0.000       0.000       0.000      -0.018      -0.008       0.123      -0.087

   12    1  |1 1>+              0.000       0.000       0.000   42233.281       0.011       1.456       0.020       0.028
                                0.000       0.000       0.000       0.000       0.020      -0.162    2540.377       0.028

    1    1  |1 0>              -0.095       0.015       0.603       0.011       0.018       0.000       0.000       0.000
                                0.081   -1407.261       0.018      -0.020       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.041       0.003      -0.039       1.456       0.000       0.007       0.000       0.000
                             1407.121      -0.010       0.008       0.162      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.710       0.044      -0.020       0.020       0.000       0.000       0.000       0.000
                                0.192       0.024      -0.123   -2540.377      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.012      -0.003      -0.200       0.028       0.000       0.000       0.000   40919.564
                                0.208   -3057.198       0.087      -0.028      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.003       0.223       0.044      -0.004       0.000       0.000       0.000       0.000
                               -0.149      -0.181   -3186.443      -0.008      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.018       0.055       0.024      -0.002       0.000       0.000       0.000       0.000
                             3057.271       0.015      -0.112       0.018      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.224      -0.038       0.004       0.002       0.000       0.000       0.000       0.000
                                0.128       0.083       0.019      -0.039      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.004       0.218       0.002       0.006       0.000       0.000       0.000       0.000
                                0.022       0.104    1519.306       0.034      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.019      -0.007      -0.004      -0.006       0.000       0.000       0.000       0.000
                                0.000   -3864.832      -0.142       0.048      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.007       0.083      -0.007       0.647       0.000       0.000       0.000       0.000
                             3864.832       0.000       0.078       0.141      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.004      -0.007      -0.016       0.001       0.000       0.000       0.000       0.000
                                0.142      -0.078       0.000   -5011.915      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.006       0.647       0.001      -0.000       0.000       0.000       0.000       0.000
                               -0.048      -0.141    5011.915       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.004   -6209.873       0.019
                                0.147       0.027       0.019   -2541.737       0.169      -0.025      -0.008      -0.069

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.004       0.000       0.019      -0.011
                                0.274       0.011    1407.643      -0.004      -0.025      -0.088       0.018      -0.733

    3    1  |1 1>-              0.000       0.000       0.000       0.000    6209.873      -0.019       0.000    1565.075
                               -0.011    1407.311      -0.016       0.007      -0.008       0.018      -0.047      -0.255

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.019       0.011   -1565.075       0.000
                                0.043       0.120      -0.148      -0.015      -0.069      -0.733      -0.255      -0.215

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.012   -1489.273      -0.001      -0.021
                             -277.619       0.036       0.074       0.033       0.032      -0.101       0.772      -0.001

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.009      -0.001      -0.033       0.003
                                0.007       0.084   -3057.475      -0.002       0.893       0.057      -0.061      -0.035

    7    1  |1 1>-              0.000       0.000       0.000       0.000   -1565.206       0.042      -0.014   -3676.629
                                0.006   -3057.455       0.118       0.009      -0.004       0.207       0.268      -0.089

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.031   -1023.902      -0.033       0.004
                             3519.609      -0.069      -0.026      -0.037      -0.026       0.124      -0.156       0.090

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.010       0.066   -1406.992       0.009
                                0.046      -0.123      -0.257    5011.246      -0.031       0.581      -0.147      -0.012

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.021       0.005      -0.053       0.043
                                0.123      -0.129    3864.799       0.003      -0.787      -0.067      -0.029      -0.236

   11    1  |1 1>-              0.000       0.000       0.000       0.000   -1407.121      -0.020       0.015    3057.246
                                0.257   -3864.799       0.094      -0.084       0.002      -0.017       0.405      -0.114

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.012   -2540.277      -0.035      -0.020
                            -5011.246      -0.003       0.084      -0.039       0.036      -0.120      -1.589      -0.143

    1    1  |0 0>               0.000      -0.000    1086.556      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |0 0>           -1086.555       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    6054.611       0.000       0.000

    3    1  |0 0>               0.000      -0.000       0.000       0.006       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000   -6054.612      -0.000

    4    1  |0 0>               0.000    -663.620      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3289.416       0.000      -0.000   -3177.853

    5    1  |0 0>              -0.000   -1064.770       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -6169.027       0.000      -0.000   -1694.480

    6    1  |0 0>               0.000    -941.917      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    9449.621       0.000      -0.000       0.005

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.002       0.025       0.688       0.019      -0.095       0.015       0.603       0.011
                               -0.015    1565.273      -0.015       0.009       0.081   -1407.261       0.018      -0.020

    2    1  |1 1>+              0.633       0.001       0.017       0.458       0.041       0.003      -0.039       1.456
                                0.120       0.115      -0.208      -0.123    1407.121      -0.010       0.008       0.162

    3    1  |1 1>+              0.002       0.046       0.024       0.047       0.710       0.044      -0.020       0.020
                             1631.070       0.055      -0.279    -777.914       0.192       0.024      -0.123   -2540.377

    4    1  |1 1>+              0.042      -0.034      -0.011      -0.026      -0.012      -0.003      -0.200       0.028
                               -0.251   -3676.619       0.092       0.019       0.208   -3057.198       0.087      -0.028

    5    1  |1 1>+             -0.015       0.001      -0.045       0.018      -0.003       0.223       0.044      -0.004
                                0.000      -0.103    3164.800       0.014      -0.149      -0.181   -3186.443      -0.008

    6    1  |1 1>+              0.001       0.021       0.030       0.055       0.018       0.055       0.024      -0.002
                                0.103       0.000       0.108      -0.041    3057.271       0.015      -0.112       0.018

    7    1  |1 1>+             -0.045       0.030       0.002       0.003       0.224      -0.038       0.004       0.002
                            -3164.800      -0.108       0.000   -6637.365       0.128       0.083       0.019      -0.039

    8    1  |1 1>+              0.018       0.055       0.003       0.003      -0.004       0.218       0.002       0.006
                               -0.014       0.041    6637.365       0.000       0.022       0.104    1519.306       0.034

    9    1  |1 1>+             -0.003       0.018       0.224      -0.004      -0.019      -0.007      -0.004      -0.006
                                0.149   -3057.271      -0.128      -0.022       0.000   -3864.832      -0.142       0.048

   10    1  |1 1>+              0.223       0.055      -0.038       0.218      -0.007       0.083      -0.007       0.647
                                0.181      -0.015      -0.083      -0.104    3864.832       0.000       0.078       0.141

   11    1  |1 1>+              0.044       0.024       0.004       0.002      -0.004      -0.007      -0.016       0.001
                             3186.443       0.112      -0.019   -1519.306       0.142      -0.078       0.000   -5011.915

   12    1  |1 1>+             -0.004      -0.002       0.002       0.006      -0.006       0.647       0.001      -0.000
                                0.008      -0.018       0.039      -0.034      -0.048      -0.141    5011.915       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40919.569       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40919.563       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40919.560       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40919.564       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   41491.759       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   41491.758       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   41491.759       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42233.281
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.012      -0.009    1565.206      -0.031      -0.010      -0.021    1407.121       0.012
                                0.032       0.893      -0.004      -0.026      -0.031      -0.787       0.002       0.036

    2    1  |1 1>-           1489.273       0.001      -0.042    1023.902      -0.066      -0.005       0.020    2540.277
                               -0.101       0.057       0.207       0.124       0.581      -0.067      -0.017      -0.120

    3    1  |1 1>-              0.001       0.033       0.014       0.033    1406.992       0.053      -0.015       0.035
                                0.772      -0.061       0.268      -0.156      -0.147      -0.029       0.405      -1.589

    4    1  |1 1>-              0.021      -0.003    3676.629      -0.004      -0.009      -0.043   -3057.246       0.020
                               -0.001      -0.035      -0.089       0.090      -0.012      -0.236      -0.114      -0.143

    5    1  |1 1>-              0.000    4165.782      -0.049       0.001       0.024    2909.061       0.054       0.002
                                0.022      -0.067      -0.029       0.010       0.104       0.256      -0.265      -0.003

    6    1  |1 1>-          -4165.782       0.000      -0.001    6059.381       0.000      -0.037      -0.027       0.007
                               -0.067      -0.015      -0.079       0.033       0.219      -0.006       0.060       0.019

    7    1  |1 1>-              0.049       0.001       0.000       0.003    3057.247      -0.010      -0.001       0.001
                               -0.029      -0.079       0.007       0.018       0.168       0.081       0.006      -0.004

    8    1  |1 1>-             -0.001   -6059.381      -0.003       0.000      -0.010    1999.985      -0.008       0.007
                                0.010       0.033       0.018      -0.017      -0.077      -0.112       0.147      -0.018

    9    1  |1 1>-             -0.024      -0.000   -3057.247       0.010       0.000       0.020    3864.818      -0.024
                                0.104       0.219       0.168      -0.077       0.198       0.055       0.136       0.104

   10    1  |1 1>-          -2909.061       0.037       0.010   -1999.985      -0.020       0.000       0.006   -5011.860
                                0.256      -0.006       0.081      -0.112       0.055       0.014      -0.088       0.189

   11    1  |1 1>-             -0.054       0.027       0.001       0.008   -3864.818      -0.006       0.000       0.008
                               -0.265       0.060       0.006       0.147       0.136      -0.088       0.028       0.616

   12    1  |1 1>-             -0.002      -0.007      -0.001      -0.007       0.024    5011.860      -0.008       0.000
                               -0.003       0.019      -0.004      -0.018       0.104       0.189       0.616      -0.008

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3590.265       0.000      -0.000     283.071      -0.000       0.000      -0.000      -0.006

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1800.710      -0.000       0.000      -0.000    1086.555      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -1800.711      -0.000      -0.000       0.000    1086.557       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     590.326       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000   -1107.088       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     941.918       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.035       0.006      -0.009       0.025    -142.141      -0.014       0.005    1802.486

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.006      -0.012   -6209.978      -0.206      -0.008      -0.063   -1565.932       0.004

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009    6209.978       0.029      -0.016      -0.005    1566.061      -0.024       0.003

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.025       0.206       0.016       0.035    7330.518       0.096       0.064     577.926

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              142.141       0.008       0.005   -7330.518       0.005      -0.030       0.013      -0.017

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.014       0.063   -1566.061      -0.096       0.030       0.010   -3676.650      -0.009

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005    1565.932       0.024      -0.064      -0.013    3676.650       0.001      -0.034

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1802.486      -0.004      -0.003    -577.926       0.017       0.009       0.034       0.033

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.147      -0.274       0.011      -0.043     277.619      -0.007      -0.006   -3519.609

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.027      -0.011   -1407.311      -0.120      -0.036      -0.084    3057.455       0.069

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.019   -1407.643       0.016       0.148      -0.074    3057.475      -0.118       0.026

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2541.737       0.004      -0.007       0.015      -0.033       0.002      -0.009       0.037

    1    1  |1 0>               0.000       0.004    6209.873      -0.019       0.012       0.009   -1565.206       0.031
                               -0.169       0.025       0.008       0.069      -0.032      -0.893       0.004       0.026

    2    1  |1 0>              -0.004       0.000      -0.019       0.011   -1489.273      -0.001       0.042   -1023.902
                                0.025       0.088      -0.018       0.733       0.101      -0.057      -0.207      -0.124

    3    1  |1 0>           -6209.873       0.019       0.000   -1565.075      -0.001      -0.033      -0.014      -0.033
                                0.008      -0.018       0.047       0.255      -0.772       0.061      -0.268       0.156

    4    1  |1 0>               0.019      -0.011    1565.075       0.000      -0.021       0.003   -3676.629       0.004
                                0.069       0.733       0.255       0.215       0.001       0.035       0.089      -0.090

    5    1  |1 0>              -0.012    1489.273       0.001       0.021       0.000   -4165.782       0.049      -0.001
                               -0.032       0.101      -0.772       0.001      -0.022       0.067       0.029      -0.010

    6    1  |1 0>              -0.009       0.001       0.033      -0.003    4165.782       0.000       0.001   -6059.381
                               -0.893      -0.057       0.061       0.035       0.067       0.015       0.079      -0.033

    7    1  |1 0>            1565.206      -0.042       0.014    3676.629      -0.049      -0.001       0.000      -0.003
                                0.004      -0.207      -0.268       0.089       0.029       0.079      -0.007      -0.018

    8    1  |1 0>              -0.031    1023.902       0.033      -0.004       0.001    6059.381       0.003       0.000
                                0.026      -0.124       0.156      -0.090      -0.010      -0.033      -0.018       0.017

    9    1  |1 0>              -0.010      -0.066    1406.992      -0.009       0.024       0.000    3057.247      -0.010
                                0.031      -0.581       0.147       0.012      -0.104      -0.219      -0.168       0.077

   10    1  |1 0>              -0.021      -0.005       0.053      -0.043    2909.061      -0.037      -0.010    1999.985
                                0.787       0.067       0.029       0.236      -0.256       0.006      -0.081       0.112

   11    1  |1 0>            1407.121       0.020      -0.015   -3057.246       0.054      -0.027      -0.001      -0.008
                               -0.002       0.017      -0.405       0.114       0.265      -0.060      -0.006      -0.147

   12    1  |1 0>               0.012    2540.277       0.035       0.020       0.002       0.007       0.001       0.007
                               -0.036       0.120       1.589       0.143       0.003      -0.019       0.004       0.018

    1    1  |1 1>-              0.018       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40919.564       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40919.569       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40919.563       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40919.560       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40919.564
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
                                0.000   -6054.612       0.000       0.000      -0.000    1800.704      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    1549.993      -0.000       0.000    3250.801

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             6054.611       0.000      -0.000   -1800.703       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    6987.234      -0.000       0.000      -0.000    -121.468       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -235.794      -0.000      -0.000      -0.000   -3599.350       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -9449.617      -0.000       0.000       0.000       0.001      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000   -6054.612       0.000       0.000
                                0.147       0.027       0.019   -2541.737       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   -3697.835
                                0.274       0.011    1407.643      -0.004       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000   -6054.614       0.000      -0.000       0.000
                               -0.011    1407.311      -0.016       0.007       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   -1800.711      -0.000       0.000
                                0.043       0.120      -0.148      -0.015       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000   -2040.273      -0.000
                             -277.619       0.036       0.074       0.033       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000    3056.387
                                0.007       0.084   -3057.475      -0.002       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000    1800.711       0.000       0.000      -0.000
                                0.006   -3057.455       0.118       0.009       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000    2967.731       0.000
                             3519.609      -0.069      -0.026      -0.037       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   -1086.555       0.000       0.000
                                0.046      -0.123      -0.257    5011.246       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -663.620
                                0.123      -0.129    3864.799       0.003       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000    1086.556       0.000       0.000      -0.000
                                0.257   -3864.799       0.094      -0.084       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.006       0.000
                            -5011.246      -0.003       0.084      -0.039       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.010       0.021   -1407.121      -0.012       0.000       0.000       0.000       0.000
                                0.031       0.787      -0.002      -0.036       0.000       0.000       0.000   -3289.416

    2    1  |1 0>               0.066       0.005      -0.020   -2540.277       0.000       0.000       0.000       0.000
                               -0.581       0.067       0.017       0.120       0.000   -6054.611       0.000      -0.000

    3    1  |1 0>           -1406.992      -0.053       0.015      -0.035       0.000       0.000       0.000       0.000
                                0.147       0.029      -0.405       1.589       0.000      -0.000    6054.612       0.000

    4    1  |1 0>               0.009       0.043    3057.246      -0.020       0.000       0.000       0.000       0.000
                                0.012       0.236       0.114       0.143      -0.000      -0.000       0.000    3177.853

    5    1  |1 0>              -0.024   -2909.061      -0.054      -0.002       0.000       0.000       0.000       0.000
                               -0.104      -0.256       0.265       0.003   -3590.265      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.037       0.027      -0.007       0.000       0.000       0.000       0.000
                               -0.219       0.006      -0.060      -0.019      -0.000   -1800.710       0.000      -0.000

    7    1  |1 0>           -3057.247       0.010       0.001      -0.001       0.000       0.000       0.000       0.000
                               -0.168      -0.081      -0.006       0.004       0.000       0.000    1800.711      -0.000

    8    1  |1 0>               0.010   -1999.985       0.008      -0.007       0.000       0.000       0.000       0.000
                                0.077       0.112      -0.147       0.018    -283.071      -0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.020   -3864.818       0.024       0.000       0.000       0.000       0.000
                               -0.198      -0.055      -0.136      -0.104       0.000       0.000       0.000    -590.326

   10    1  |1 0>               0.020       0.000      -0.006    5011.860       0.000       0.000       0.000       0.000
                               -0.055      -0.014       0.088      -0.189      -0.000   -1086.555      -0.000      -0.000

   11    1  |1 0>            3864.818       0.006       0.000      -0.008       0.000       0.000       0.000       0.000
                               -0.136       0.088      -0.028      -0.616       0.000       0.000   -1086.557      -0.000

   12    1  |1 0>              -0.024   -5011.860       0.008       0.000       0.000       0.000       0.000       0.000
                               -0.104      -0.189      -0.616       0.008       0.006      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000   -6054.611      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    6054.612       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000   -6987.234

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    1800.703       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1549.993      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1800.704       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000     121.468

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -3250.801      -0.000      -0.000

    9    1  |1 1>-          41491.759       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000   -1086.563      -0.000

   10    1  |1 1>-              0.000   41491.758       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1086.564       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000   41491.759       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000    1253.923

   12    1  |1 1>-              0.000       0.000       0.000   42233.281       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5801.133       0.000       0.000       0.000
                                0.000   -1086.564      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5801.142       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5801.141       0.000
                             1086.563       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5801.143
                                0.000      -0.000   -1253.923      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      42.316       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     941.912      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42

    1    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    2    1  |1 1>+          -5933.223   -9449.621
                                0.000       0.000

    3    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    4    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    5    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    6    1  |1 1>+          -1904.869      -0.004
                                0.000       0.000

    7    1  |1 1>+              0.000       0.000
                                0.000       0.000

    8    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    9    1  |1 1>+             -0.000       0.000
                                0.000       0.000

   10    1  |1 1>+          -1064.770    -941.917
                                0.000       0.000

   11    1  |1 1>+              0.000      -0.000
                                0.000       0.000

   12    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                             6169.027   -9449.621

    2    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    3    1  |1 0>               0.000       0.000
                                0.000       0.000

    4    1  |1 0>               0.000       0.000
                             1694.480      -0.005

    5    1  |1 0>               0.000       0.000
                                0.000      -0.000

    6    1  |1 0>               0.000       0.000
                               -0.000       0.000

    7    1  |1 0>               0.000       0.000
                               -0.000       0.000

    8    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    9    1  |1 0>               0.000       0.000
                             1107.088    -941.918

   10    1  |1 0>               0.000       0.000
                               -0.000      -0.000

   11    1  |1 0>               0.000       0.000
                               -0.000      -0.000

   12    1  |1 0>               0.000       0.000
                                0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                              235.794    9449.617

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    6    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>-              0.000       0.000
                             3599.350      -0.001

    8    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    9    1  |1 1>-              0.000       0.000
                                0.000       0.000

   10    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

   11    1  |1 1>-              0.000       0.000
                              -42.316    -941.912

   12    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>            5801.136       0.000
                                0.000       0.000

    6    1  |0 0>               0.000   15073.748
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20885.54171183    -0.09222809   -20241.73      0.00000000        0.00      0.0000
    2-20885.47954061    -0.03005687    -6596.72      0.06217122    13645.01      1.6918
    3-20885.47954040    -0.03005665    -6596.67      0.06217144    13645.05      1.6918
    4-20885.47953992    -0.03005617    -6596.57      0.06217192    13645.16      1.6918
    5-20885.46405141    -0.01456767    -3197.23      0.07766042    17044.49      2.1132
    6-20885.46405116    -0.01456742    -3197.18      0.07766067    17044.55      2.1133
    7-20885.46405083    -0.01456709    -3197.11      0.07766100    17044.62      2.1133
    8-20885.46405038    -0.01456663    -3197.01      0.07766145    17044.72      2.1133
    9-20885.46404985    -0.01456610    -3196.89      0.07766199    17044.84      2.1133
   10-20885.38385263     0.06563111    14404.36      0.15785920    34646.09      4.2956
   11-20885.38385250     0.06563124    14404.39      0.15785933    34646.12      4.2956
   12-20885.38385228     0.06563147    14404.44      0.15785955    34646.17      4.2956
   13-20885.38385207     0.06563168    14404.49      0.15785977    34646.21      4.2956
   14-20885.38385196     0.06563179    14404.51      0.15785987    34646.24      4.2956
   15-20885.34608308     0.10340066    22693.82      0.19562875    42935.55      5.3233
   16-20885.32351045     0.12597330    27647.94      0.21820138    47889.67      5.9376
   17-20885.32350984     0.12597390    27648.08      0.21820199    47889.80      5.9376
   18-20885.32350816     0.12597558    27648.44      0.21820367    47890.17      5.9376
   19-20885.29473251     0.15475124    33963.97      0.24697933    54205.70      6.7206
   20-20885.29227306     0.15721068    34503.76      0.24943877    54745.48      6.7876
   21-20885.29227156     0.15721219    34504.09      0.24944027    54745.81      6.7876
   22-20885.29226824     0.15721551    34504.82      0.24944359    54746.54      6.7877
   23-20885.28930932     0.16017443    35154.22      0.25240251    55395.95      6.8682
   24-20885.28930846     0.16017528    35154.41      0.25240337    55396.14      6.8682
   25-20885.28930775     0.16017599    35154.57      0.25240408    55396.29      6.8683
   26-20885.28930685     0.16017690    35154.77      0.25240498    55396.49      6.8683
   27-20885.28930575     0.16017800    35155.01      0.25240608    55396.73      6.8683
   28-20885.23085314     0.21863061    47983.87      0.31085869    68225.60      8.4589
   29-20885.23085079     0.21863296    47984.39      0.31086104    68226.11      8.4590
   30-20885.23084984     0.21863391    47984.60      0.31086199    68226.32      8.4590
   31-20885.22964874     0.21983501    48248.21      0.31206309    68489.93      8.4917
   32-20885.22964774     0.21983601    48248.43      0.31206409    68490.15      8.4917
   33-20885.22964677     0.21983697    48248.64      0.31206506    68490.36      8.4917
   34-20885.22964612     0.21983763    48248.78      0.31206572    68490.51      8.4917
   35-20885.22964515     0.21983859    48248.99      0.31206668    68490.72      8.4918
   36-20885.22953743     0.21994632    48272.64      0.31217441    68514.36      8.4947
   37-20885.22953730     0.21994644    48272.66      0.31217453    68514.39      8.4947
   38-20885.22953709     0.21994665    48272.71      0.31217474    68514.44      8.4947
   39-20885.22953660     0.21994715    48272.82      0.31217524    68514.55      8.4947
   40-20885.22953641     0.21994734    48272.86      0.31217542    68514.59      8.4947
   41-20885.22953577     0.21994798    48273.00      0.31217606    68514.73      8.4947
   42-20885.22953552     0.21994823    48273.06      0.31217631    68514.78      8.4948

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000072  0.46544230  0.20390903  0.48757963 -0.27604704  0.16615475  0.23856346  0.26990956
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.51630694 -0.00000127  0.00000471 -0.00000288  0.18982433  0.22787880  0.20428577 -0.05513704
                           0.07874865  0.00000105 -0.00000141 -0.00000179 -0.07285079 -0.15807358  0.02203891 -0.03568596

   3    1  |1 1>+          0.00000287  0.08282261 -0.28148922  0.03866416  0.09703313  0.12098158 -0.01867300  0.01759574
                          -0.00000839 -0.38490081  0.48242548  0.16568584  0.18283907  0.27982743 -0.02793926 -0.02224274

   4    1  |1 1>+         -0.00000027 -0.01935085 -0.00847328 -0.02028500 -0.02907487  0.01750090  0.02511951  0.02841183
                          -0.00000050 -0.00000671  0.00000079  0.00000668  0.00000118 -0.00000223  0.00000152  0.00000058

   5    1  |1 1>+          0.00000018 -0.00600184  0.00141741  0.00513946 -0.00159576  0.00371410  0.00112418 -0.00538485
                          -0.00000008 -0.01258309 -0.01485833  0.01824119  0.03351643 -0.02073541  0.00589360  0.04158485

   6    1  |1 1>+          0.00000696  0.00000379 -0.00000070 -0.00000012  0.01556369 -0.03278772  0.07838435 -0.03907777
                           0.00000105 -0.00000214 -0.00000008  0.00000113  0.00986398  0.01183686  0.01636051 -0.00921209

   7    1  |1 1>+          0.00000125  0.00344468 -0.01171345  0.00160532 -0.01021965 -0.01273948  0.00196466 -0.00184982
                          -0.00000793 -0.01601415  0.02007552  0.00689128 -0.01925321 -0.02946960  0.00295156  0.00233441

   8    1  |1 1>+         -0.00000005 -0.00413205  0.00097447  0.00353382  0.00232126 -0.00540299 -0.00163612  0.00783253
                          -0.00000028 -0.00865539 -0.01022448  0.01255515 -0.04874889  0.03015889 -0.00858095 -0.06050711

   9    1  |1 1>+         -0.00000110  0.00726004  0.00318619  0.00759799  0.00441997 -0.00265880 -0.00382189 -0.00432885
                           0.00000056 -0.00000172 -0.00000521  0.00000404  0.00000103  0.00000186 -0.00000107  0.00000012

  10    1  |1 1>+          0.03418475  0.00000168 -0.00000068 -0.00000133 -0.00304134 -0.00364975 -0.00327246  0.00088301
                           0.00521407 -0.00000047 -0.00000101  0.00000108  0.00116746  0.00253208 -0.00035292  0.00057134

  11    1  |1 1>+          0.00000093 -0.00129218  0.00439316 -0.00060326  0.00155528  0.00193930 -0.00030002  0.00028301
                          -0.00000857  0.00600800 -0.00752842 -0.00258735  0.00293109  0.00448483 -0.00044183 -0.00036010

  12    1  |1 1>+          0.00000014  0.01530877 -0.00361121 -0.01310059  0.00000022  0.00000015 -0.00000066 -0.00000247
                          -0.00000047  0.03211429  0.03789868 -0.04647562  0.00001451 -0.00000817 -0.00000703  0.00000182

   1    1  |1 0>          -0.07874848 -0.00000407 -0.00000564  0.00000171  0.01040471 -0.02283852  0.08869973 -0.06158686
                           0.51630186 -0.00001728  0.00000426  0.00001071 -0.16881795  0.04172542 -0.47433459  0.21311502

   2    1  |1 0>           0.00000036 -0.00000213 -0.00000555 -0.00000232 -0.00001080  0.00000293 -0.00000618  0.00000417
                          -0.00000059 -0.46542673 -0.20390050 -0.48755057 -0.27608683  0.16619235  0.23858583  0.26990746

   3    1  |1 0>          -0.00000184 -0.31821526 -0.37562322  0.46084081  0.28092426 -0.17379865  0.04944445  0.34862785
                          -0.00000001  0.15173686 -0.03580820 -0.12987784  0.01338106 -0.03113868 -0.00942854  0.04512765

   4    1  |1 0>          -0.00000224  0.00000257 -0.00000312 -0.00000276 -0.01644121 -0.03088791 -0.00469945 -0.00103038
                          -0.00000090  0.00000210 -0.00000123 -0.00000065 -0.02220518 -0.05239170  0.00692381 -0.01082644

   5    1  |1 0>           0.00000137  0.00144987 -0.00181933 -0.00062471 -0.03838659 -0.05875349  0.00586797  0.00466583
                           0.00000140  0.00031137 -0.00106016  0.00014698  0.02037247  0.02540213 -0.00391775  0.00369261

   6    1  |1 0>          -0.00000084 -0.00000440  0.00000008  0.00000291 -0.00000006 -0.00000031 -0.00000084  0.00000165
                           0.00000124  0.01935403  0.00847139  0.02029206 -0.02907236  0.01750031  0.02512123  0.02841608

   7    1  |1 0>           0.00000229  0.01322369  0.01562416 -0.01917941  0.02958187 -0.01830012  0.00520317  0.03670510
                          -0.00000118 -0.00631036  0.00148840  0.00540053  0.00140863 -0.00327823 -0.00099323  0.00475152

   8    1  |1 0>          -0.00000783 -0.01843064  0.02310094  0.00793281 -0.00302708 -0.00463317  0.00046282  0.00036617
                          -0.00000200 -0.00396371  0.01347718 -0.00185160  0.00160625  0.00200275 -0.00030902  0.00029099

   9    1  |1 0>          -0.00521522  0.00000137  0.00000552 -0.00000084 -0.00016756  0.00036633 -0.00142046  0.00098723
                           0.03418190  0.00001230 -0.00001388 -0.00000423  0.00270264 -0.00066780  0.00759551 -0.00341123

  10    1  |1 0>          -0.00000035  0.00000246 -0.00000161 -0.00000153 -0.00000028  0.00000004  0.00000002 -0.00000038
                           0.00000041 -0.00725475 -0.00317468 -0.00761251  0.00442441 -0.00266484 -0.00381876 -0.00431565

  11    1  |1 0>           0.00000370  0.00495561  0.00585668 -0.00719282  0.00450055 -0.00278564  0.00079072  0.00557547
                           0.00000033 -0.00236698  0.00055968  0.00202548  0.00021431 -0.00049751 -0.00015079  0.00072230

  12    1  |1 0>          -0.00002819 -0.03881567  0.04864952  0.01670816 -0.00000388  0.00000265 -0.00001392  0.00000563
                          -0.00000260 -0.00835330  0.02838742 -0.00389837 -0.00000140 -0.00000058 -0.00000129  0.00000060

   1    1  |1 1>-          0.00000371 -0.31820903 -0.37563795  0.46088172 -0.28088514  0.17377029 -0.04941919 -0.34860910
                           0.00000072  0.15174649 -0.03580752 -0.12987714 -0.01338067  0.03113466  0.00943422 -0.04512683

   2    1  |1 1>-          0.00000651  0.38491262 -0.48242115 -0.16567964  0.18283369  0.27983220 -0.02795194 -0.02222647
                           0.00000145  0.08282028 -0.28149033  0.03866039 -0.09702463 -0.12097772  0.01866428 -0.01758885

   3    1  |1 1>-          0.07874877 -0.00000652  0.00000257  0.00000262  0.08325423  0.13523391  0.06665912 -0.02589983
                          -0.51630611 -0.00000640 -0.00000634  0.00000480  0.02100532  0.26960555 -0.27004275  0.15797186

   4    1  |1 1>-         -0.00000039 -0.01322592 -0.01561702  0.01917460  0.02958247 -0.01830202  0.00520155  0.03670059
                          -0.00000168  0.00630835 -0.00149075 -0.00539851  0.00140936 -0.00328054 -0.00099360  0.00475426

   5    1  |1 1>-          0.00000050  0.00000460 -0.00000038 -0.00000255  0.00000004 -0.00000040 -0.00000167  0.00000036
                          -0.00000030 -0.02016989 -0.00883125 -0.02114463 -0.02502666  0.01506472  0.02162160  0.02445468

   6    1  |1 1>-          0.00000977  0.01601445 -0.02007485 -0.00689413 -0.01925911 -0.02946948  0.00293258  0.00234763
                           0.00000102  0.00344544 -0.01171327  0.00160908  0.01021863  0.01274106 -0.00196818  0.00185496

   7    1  |1 1>-          0.00000097 -0.00000174 -0.00000205 -0.00000293 -0.00657743 -0.01905103  0.01166171 -0.01024139
                          -0.00000661  0.00000036  0.00000318 -0.00000115 -0.03776813 -0.01960425 -0.07145937  0.02824471

   8    1  |1 1>-         -0.00000026 -0.00000271 -0.00000137 -0.00000000 -0.00000142  0.00000071  0.00000027  0.00000138
                          -0.00000005  0.00962700  0.00421536  0.01009110 -0.05248048  0.03158993  0.04535466  0.05131178

   9    1  |1 1>-         -0.00000065 -0.00496674 -0.00585794  0.00718064  0.00449703 -0.00278047  0.00079469  0.00558689
                           0.00000217  0.00236672 -0.00055886 -0.00202169  0.00021571 -0.00049735 -0.00014881  0.00072399

  10    1  |1 1>-         -0.00000978  0.00600488 -0.00752582 -0.00258378 -0.00292521 -0.00448282  0.00045496  0.00035222
                          -0.00000127  0.00129231 -0.00439150  0.00060380  0.00155477  0.00193767 -0.00029694  0.00028072

  11    1  |1 1>-         -0.00521412  0.00000122  0.00000085 -0.00000088  0.00133439  0.00216778  0.00106732 -0.00041418
                           0.03418629  0.00000357  0.00000188 -0.00000439  0.00033569  0.00432223 -0.00432319  0.00252660

  12    1  |1 1>-          0.00000034 -0.00000421  0.00000169  0.00000539 -0.00000035  0.00000063 -0.00000086 -0.00000166
                          -0.00000007 -0.04696100 -0.02058106 -0.04916771  0.00001575 -0.00000870 -0.00000523  0.00000206

   1    1  |0 0>           0.00000050  0.00000092  0.00000107  0.00000264  0.14246653  0.17763419 -0.02741084  0.02583063
                          -0.00000072  0.00000632  0.00000175  0.00000357  0.26845631  0.41087296 -0.04103241 -0.03264631

   2    1  |0 0>           0.00000004  0.00001118  0.00000613  0.00001642 -0.40534512  0.24399200  0.35029855  0.39630704
                          -0.00000002  0.00000048  0.00000291  0.00000249  0.00000818 -0.00000232  0.00000469 -0.00000352

   3    1  |0 0>           0.00000049  0.00000636  0.00000074  0.00000028 -0.01964618  0.04571772  0.01384804 -0.06626174
                          -0.00000126 -0.00000130  0.00001059 -0.00002305  0.41244730 -0.25516610  0.07257911  0.51187935

   4    1  |0 0>          -0.00000085 -0.00000973 -0.00000147  0.00000507  0.03557704  0.34723785 -0.32638386  0.19412187
                          -0.00000036  0.00000627 -0.00000141 -0.00000347 -0.10735051 -0.17634206 -0.08197327  0.03050700

   5    1  |0 0>           0.00000261  0.00000736  0.00000058 -0.00000615  0.26224276  0.12502323  0.50950408 -0.20360127
                           0.00000003 -0.00000205 -0.00000406 -0.00000099 -0.04224824 -0.12693963  0.08411123 -0.07248253

   6    1  |0 0>           0.41718974 -0.00000453  0.00000613  0.00000089  0.00000039 -0.00000041 -0.00000317  0.00000310
                           0.06363128 -0.00000074  0.00000264 -0.00000026 -0.00000064 -0.00000072 -0.00000088  0.00000047

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.05662250  0.11266748 -0.14547324 -0.36116841  0.30232326 -0.06462505  0.00000038  0.02322878
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.34112083  0.04644999 -0.28956115  0.23901791  0.09910785 -0.13935804 -0.13550949  0.00000559
                           0.18596100 -0.31173859  0.19917031 -0.17980139 -0.01735942 -0.06818247 -0.20388676  0.00001201

   3    1  |1 1>+          0.11279095 -0.00213548  0.16942015 -0.02635531  0.03182817 -0.08890861  0.00000593  0.01853819
                           0.29387350 -0.02711548  0.20114545  0.15232727  0.21810416 -0.33104575 -0.00000370 -0.00571795

   4    1  |1 1>+          0.00596277 -0.00301349  0.00388776  0.00966114 -0.00807084  0.00173537  0.00000004  0.28089268
                          -0.00000159  0.00001021  0.00000056 -0.00000480 -0.00000982 -0.00000495  0.00000281 -0.00000676

   5    1  |1 1>+          0.00223551 -0.00663147 -0.00188357  0.00147251  0.00422615  0.00423581 -0.00000072  0.06854283
                           0.00113185 -0.00358487 -0.00021609  0.00504780  0.00859544  0.00637972 -0.00000146  0.24998706

   6    1  |1 1>+          0.02809816 -0.00436861 -0.01228095  0.00181366 -0.00468658 -0.01201565 -0.00000571  0.00000203
                          -0.01165643  0.01717330  0.00756876  0.00456373  0.00355119  0.00400731 -0.00000994  0.00000748

   7    1  |1 1>+         -0.01187930 -0.00004142  0.00452403 -0.00069962  0.00085732 -0.00236876 -0.00003354 -0.22421034
                          -0.03094742 -0.00072123  0.00537746  0.00407173  0.00583137 -0.00882814  0.00002323  0.06917752

   8    1  |1 1>+         -0.00325185  0.00963410  0.00273442 -0.00213561 -0.00613682 -0.00615313 -0.00000195  0.04711077
                          -0.00164973  0.00520156  0.00032242 -0.00730925 -0.01250945 -0.00926242  0.00000075  0.17186665

   9    1  |1 1>+         -0.00090696 -0.00958428  0.01237275  0.03071568 -0.02570342  0.00549862  0.00000184  0.21781427
                           0.00000255  0.00000288  0.00000202 -0.00000055 -0.00000194 -0.00000740  0.00000180 -0.00000550

  10    1  |1 1>+          0.00546352 -0.00394905  0.02461973 -0.02032370 -0.00842652  0.01185313  0.00818731 -0.00000795
                          -0.00297774  0.02650634 -0.01693215  0.01528806  0.00147616  0.00579603  0.01231658 -0.00000802

  11    1  |1 1>+          0.00180659 -0.00017123  0.01440738 -0.00223635  0.00270933 -0.00755781 -0.00003680 -0.17388326
                           0.00470855 -0.00230466  0.01710579  0.01295906  0.01855437 -0.02814994  0.00002621  0.05364823

  12    1  |1 1>+          0.00000018  0.00000920  0.00000373 -0.00000056 -0.00000917 -0.00000623 -0.00000113 -0.03630892
                          -0.00000239  0.00000263  0.00000491  0.00000748 -0.00002745 -0.00000844  0.00000225 -0.13242600

   1    1  |1 0>           0.03764067 -0.47733526 -0.04215612 -0.17532576 -0.07517114 -0.10911536  0.20388902 -0.00003273
                           0.03715892 -0.10503744 -0.08523987 -0.08549199 -0.13721940 -0.15538707 -0.13551107  0.00001241

   2    1  |1 0>           0.00000147 -0.00000313 -0.00000138  0.00000042  0.00000293  0.00000206  0.00000062  0.00000124
                           0.05664207  0.11266697 -0.14547330 -0.36116984  0.30233369 -0.06462359  0.00000015 -0.02319099

   3    1  |1 0>           0.00950209  0.11824634  0.00731713 -0.16623918 -0.28413433 -0.21051998 -0.00000090 -0.02168617
                          -0.01874029 -0.21891827 -0.06217742  0.04851311  0.13951160  0.13982793 -0.00000084  0.00596116

   4    1  |1 0>           0.03519124  0.00390461 -0.01178448  0.00492480 -0.00108601  0.00073231  0.00000109 -0.00000531
                           0.06791584 -0.00032085 -0.01775921  0.01047919  0.00161749 -0.01158126  0.00000417 -0.00000003

   5    1  |1 0>          -0.06168478 -0.00144335  0.01073306  0.00810705  0.01161909 -0.01762618 -0.00000171 -0.00628501
                           0.02367266  0.00011740 -0.00904041  0.00140964 -0.00169796  0.00473896 -0.00000477 -0.02034915

   6    1  |1 0>          -0.00000142 -0.00000167 -0.00000327  0.00000091  0.00000144  0.00000222  0.00000393 -0.00000226
                           0.00596266 -0.00301114  0.00388515  0.00964950 -0.00806875  0.00172916 -0.00000087 -0.28089026

   7    1  |1 0>           0.00100497 -0.00316083 -0.00018512  0.00444224  0.00758961  0.00562096 -0.00000278 -0.26272435
                          -0.00197196  0.00584572  0.00165865 -0.00129518 -0.00372535 -0.00373504 -0.00000290  0.07202281

   8    1  |1 0>          -0.00486063 -0.00011446  0.00085344  0.00064036  0.00091986 -0.00138677  0.00002490  0.07963344
                           0.00186765  0.00000481 -0.00071247  0.00010925 -0.00013618  0.00037186  0.00003798  0.25809483

   9    1  |1 0>          -0.00060514  0.04058526  0.00357926  0.01490623  0.00639043  0.00927831 -0.01231577  0.00000670
                          -0.00059613  0.00893306  0.00724596  0.00726814  0.01166703  0.01321149  0.00818855 -0.00001178

  10    1  |1 0>          -0.00000005  0.00000735  0.00000106 -0.00000169 -0.00000479 -0.00000486  0.00000208 -0.00001361
                          -0.00090661 -0.00957400  0.01236771  0.03069778 -0.02571238  0.00548910 -0.00000045 -0.21782063

  11    1  |1 0>           0.00015439  0.01004932  0.00063242 -0.01412512 -0.02415985 -0.01789141 -0.00000566  0.20372762
                          -0.00030133 -0.01861283 -0.00528905  0.00412305  0.01185803  0.01188606 -0.00000464 -0.05586453

  12    1  |1 0>           0.00000046 -0.00000302 -0.00000550  0.00000022 -0.00000403 -0.00000850  0.00003519  0.03487307
                          -0.00000248  0.00002028 -0.00000042  0.00000770  0.00000222  0.00000682  0.00004751  0.11304378

   1    1  |1 1>-         -0.00949349 -0.11824558 -0.00731378  0.16624213  0.28412973  0.21051842  0.00000137 -0.02172715
                           0.01873569  0.21891054  0.06217587 -0.04851326 -0.13951068 -0.13982643  0.00000143  0.00595337

   2    1  |1 1>-          0.29386905 -0.02711654  0.20114411  0.15232552  0.21810350 -0.33104800  0.00000354  0.00571643
                          -0.11279882  0.00214058 -0.16942003  0.02635750 -0.03182820  0.08891008  0.00000468  0.01852806

   3    1  |1 1>-         -0.14832249 -0.16559659 -0.24132763  0.00447597 -0.05781154 -0.04093233 -0.20388597  0.00001088
                          -0.30396494 -0.05858737 -0.37480184  0.15352656 -0.03811051 -0.29474482  0.13550952 -0.00000328

   4    1  |1 1>-          0.00099947 -0.00316520 -0.00018805  0.00445619  0.00758278  0.00562983 -0.00000239  0.26272366
                          -0.00197140  0.00585205  0.00166409 -0.00130196 -0.00373378 -0.00373958  0.00000227 -0.07203296

   5    1  |1 1>-          0.00000011 -0.00001002 -0.00000078  0.00000439  0.00000552  0.00000558 -0.00000274  0.00000453
                           0.00513300 -0.00259639  0.00334745  0.00831844 -0.00694613  0.00149542  0.00000013  0.29277261

   6    1  |1 1>-         -0.03094771 -0.00072708  0.00536515  0.00405876  0.00581355 -0.00884247 -0.00002472 -0.06917830
                           0.01187755  0.00007750 -0.00452134  0.00071094 -0.00084604  0.00237834 -0.00003547 -0.22421146

   7    1  |1 1>-          0.02354701  0.02107422 -0.00419324  0.00948211  0.00247495  0.00473624 -0.00000952  0.00000016
                           0.03983586  0.00404466 -0.00545377  0.00866593  0.00631308  0.00043536  0.00000693  0.00000385

   8    1  |1 1>-          0.00000040  0.00000227 -0.00000068 -0.00000181  0.00000065 -0.00000148  0.00000111  0.00000078
                           0.01076597 -0.00543166  0.00701281  0.01741094 -0.01457473  0.00311488 -0.00000010 -0.13959173

   9    1  |1 1>-          0.00015185  0.01006135  0.00061818 -0.01414014 -0.02415558 -0.01790265  0.00000408 -0.20372372
                          -0.00030174 -0.01861380 -0.00529041  0.00412489  0.01186442  0.01188704 -0.00000106  0.05585181

  10    1  |1 1>-         -0.00470711  0.00230934 -0.01709745 -0.01294876 -0.01854115  0.02815413  0.00002670  0.05364525
                           0.00180704 -0.00019501  0.01440194 -0.00224577  0.00270298 -0.00756234  0.00003813  0.17388538

  11    1  |1 1>-         -0.00237746 -0.01407710 -0.02052192  0.00038457 -0.00491224 -0.00347732 -0.01231485  0.00001285
                          -0.00487140 -0.00498223 -0.03187249  0.01306052 -0.00323155 -0.02506232  0.00818486 -0.00001464

  12    1  |1 1>-          0.00000013  0.00000919  0.00000349 -0.00000093 -0.00000828 -0.00000545 -0.00000102  0.00000095
                          -0.00000028 -0.00000094  0.00000855  0.00001238 -0.00002824 -0.00000627  0.00000018  0.14158754

   1    1  |0 0>           0.16561765  0.00288903 -0.22913359  0.03564369 -0.04304506  0.12024658  0.00000022 -0.00000261
                           0.43149691  0.03667437 -0.27203910 -0.20602258 -0.29497988  0.44773673 -0.00000008 -0.00000055

   2    1  |0 0>           0.08315496 -0.15238079  0.19675165  0.48847330 -0.40889762  0.08739938 -0.00000018 -0.00001084
                          -0.00000087 -0.00000507 -0.00000229  0.00000145  0.00000530  0.00000372  0.00000032  0.00000075

   3    1  |0 0>           0.02751266 -0.29608073 -0.08409312  0.06561158  0.18868572  0.18911249 -0.00000077  0.00000040
                           0.01394669 -0.15992529 -0.00989811  0.22483450  0.38428501  0.28472181  0.00000157 -0.00001056

   4    1  |0 0>          -0.39566578  0.06513032  0.44340819 -0.18712417  0.03921845  0.34467199  0.00000000 -0.00000175
                           0.19403358 -0.17585489 -0.28607868  0.01333784 -0.06556320 -0.04387415 -0.00000107 -0.00000198

   5    1  |0 0>          -0.26452227 -0.10469907  0.12328298 -0.21325764 -0.16122886 -0.02247334  0.00000198  0.00000223
                           0.15770369  0.53984646 -0.09658136  0.23983843  0.06482063  0.12144266  0.00000204  0.00000567

   6    1  |0 0>           0.00000132  0.00000111 -0.00000017 -0.00000099 -0.00000204 -0.00000245  0.50110019 -0.00001342
                          -0.00000084 -0.00000090 -0.00000074  0.00000064  0.00000004  0.00000112  0.75395195 -0.00003973

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.01635644  0.02482589 -0.00000584  0.00109781  0.00029239  0.00126347  0.01262760 -0.03490417
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000919  0.00000532 -0.02125959 -0.00001000  0.00000117 -0.00000221 -0.00968586  0.00063406
                           0.00002466  0.00000425  0.01327768  0.00000773 -0.00000764 -0.00000528 -0.03454468  0.00526023

   3    1  |1 1>+          0.03032817  0.00263895  0.00000239 -0.00022804  0.00024319  0.00013632 -0.03465509 -0.01644216
                          -0.01079322 -0.00176541  0.00001361  0.00028479 -0.00161420  0.00012522  0.01008675 -0.00681066

   4    1  |1 1>+         -0.19779740  0.30023445  0.00005949 -0.19164542 -0.05049403 -0.21418392 -0.08060646  0.22284333
                          -0.00000964 -0.00003557 -0.00002522 -0.00064658 -0.00011636  0.00014723  0.00000130  0.00003776

   5    1  |1 1>+         -0.04612680 -0.09453591  0.00001780  0.00081480  0.03935073 -0.01067801 -0.10558833 -0.08630538
                          -0.11676819 -0.31077968  0.00004625  0.20090161  0.02439795 -0.18574090 -0.05686954  0.25868933

   6    1  |1 1>+         -0.00000310  0.00000234 -0.00005924 -0.00004060  0.00018581 -0.00005316  0.01768503  0.14608572
                          -0.00000882 -0.00000815  0.00007211 -0.00004337  0.00002563  0.00001013 -0.27560516 -0.10139503

   7    1  |1 1>+         -0.36686165 -0.03191434  0.00011646 -0.03837947  0.04188559  0.02446431 -0.22133975 -0.10494711
                           0.13054924  0.02130748  0.00008866  0.04835188 -0.28019872  0.02268105  0.06440054 -0.04349161

   8    1  |1 1>+         -0.03171060 -0.06500056  0.00000658  0.00048191  0.02701994 -0.00752693  0.15367291  0.12547315
                          -0.08027537 -0.21365830 -0.00000123  0.13827706  0.01689682 -0.12752543  0.08273582 -0.37637684

   9    1  |1 1>+         -0.15338970  0.23283313 -0.00006313  0.28985840  0.07636276  0.32391561  0.07275948 -0.20112433
                          -0.00000609 -0.00002637  0.00004946  0.00098063  0.00019598 -0.00023938  0.00001793 -0.00006064

  10    1  |1 1>+         -0.00000254 -0.00000197  0.48859611 -0.00004692  0.00014113  0.00009756 -0.05584671  0.00365063
                          -0.00002899 -0.00000213 -0.30532189  0.00000189  0.00011541 -0.00000350 -0.19913069  0.03027983

  11    1  |1 1>+         -0.28450346 -0.02476086 -0.00014414  0.05801036 -0.06335564 -0.03700915  0.19978732  0.09470899
                           0.10124421  0.01652604 -0.00007853 -0.07310498  0.42372502 -0.03431013 -0.05816455  0.03925857

  12    1  |1 1>+          0.02443678  0.05009680  0.00002630  0.00161903  0.08090436 -0.02216097  0.00007956 -0.00005146
                           0.06184886  0.16466538  0.00004975  0.41343222  0.05029793 -0.38195355  0.00000208 -0.00010914

   1    1  |1 0>          -0.00005368 -0.00000386 -0.01328887  0.00000522  0.00000051 -0.00000397  0.00430646  0.01056872
                           0.00001701  0.00000359 -0.02125866  0.00000149  0.00001335 -0.00000920  0.00622880  0.01112371

   2    1  |1 0>          -0.00000305 -0.00001131 -0.00000093  0.00000796  0.00000515 -0.00000301  0.00000211 -0.00000008
                           0.01633854 -0.02482373 -0.00000482 -0.00110501 -0.00029227 -0.00125389  0.01262482 -0.03490113

   3    1  |1 0>           0.01012866  0.02700019  0.00000439  0.00121803  0.00015138 -0.00114295  0.00785628 -0.03575796
                          -0.00400255 -0.00820548 -0.00000315  0.00000249 -0.00023712  0.00007407 -0.01459905 -0.01192093

   4    1  |1 0>           0.00000637  0.00001337  0.00003288 -0.00003817  0.00005688  0.00003392  0.46870847  0.00037103
                           0.00000884  0.00000271 -0.00002083 -0.00008563 -0.00000467  0.00000704 -0.08394581  0.07913594

   5    1  |1 0>          -0.01185405 -0.00193456  0.00001770 -0.00433660  0.02545158 -0.00209421  0.12834419 -0.08670518
                          -0.03328332 -0.00289803  0.00004266 -0.00339550  0.00381602  0.00226824  0.44134886  0.20931030

   6    1  |1 0>          -0.00001117 -0.00002960 -0.00002517 -0.00071965 -0.00014717  0.00017772 -0.00003717 -0.00000582
                           0.19780035 -0.30023307 -0.00001724  0.19186580  0.05052358  0.21412887 -0.08063131  0.22290659

   7    1  |1 0>           0.12271074  0.32661381 -0.00001877 -0.21128761 -0.02575194  0.19505720 -0.05021270  0.22840560
                          -0.04847389 -0.09935589  0.00001165  0.00078510  0.04132729 -0.01139645  0.09326860  0.07612177

   8    1  |1 0>           0.15028120  0.02452911  0.00009201  0.05563725 -0.32256076  0.02612953  0.01014451 -0.00684154
                           0.42229584  0.03673556 -0.00013771  0.04413862 -0.04822428 -0.02818624  0.03478650  0.01645487

   9    1  |1 0>           0.00002413 -0.00000436  0.30523055  0.00008246 -0.00020973 -0.00003144  0.02482973  0.06091107
                          -0.00001387  0.00000561  0.48856826 -0.00001616  0.00033946  0.00003129  0.03587385  0.06407790

  10    1  |1 0>          -0.00000403 -0.00003746  0.00004020  0.00105191  0.00022034 -0.00027655  0.00005113 -0.00001366
                           0.15338589 -0.23283202  0.00001976 -0.29010869 -0.07640310 -0.32386986  0.07278615 -0.20122075

  11    1  |1 0>          -0.09515368 -0.25328346 -0.00002623 -0.31951019 -0.03890903  0.29505466 -0.04530743  0.20619978
                           0.03759376  0.07705824  0.00001910  0.00121948  0.06249513 -0.01720097  0.08420020  0.06868506

  12    1  |1 0>           0.06581992  0.01074567 -0.00013694 -0.09458340  0.54846398 -0.04443809 -0.00007182  0.00002504
                           0.18496944  0.01610116  0.00023737 -0.07504000  0.08201288  0.04793088  0.00002321  0.00006512

   1    1  |1 1>-          0.01014738  0.02700765  0.00000115  0.00121742  0.00014029 -0.00116316 -0.00785922  0.03575820
                          -0.00401114 -0.00821567  0.00000047 -0.00001019 -0.00024277  0.00005628  0.01460192  0.01192599

   2    1  |1 1>-          0.01078838  0.00176005 -0.00000597 -0.00027360  0.00161186 -0.00013528  0.01008156 -0.00681107
                           0.03032319  0.00264093  0.00000764 -0.00021061  0.00023931  0.00015008  0.03466179  0.01644344

   3    1  |1 1>-          0.00002348  0.00000141  0.01327910 -0.00000166 -0.00000315  0.00000297  0.03884855  0.00530939
                          -0.00000486 -0.00000267  0.02124675 -0.00000940 -0.00000787  0.00000851 -0.00346124  0.01176263

   4    1  |1 1>-         -0.12271594 -0.32661142  0.00004177  0.21114400  0.02564071 -0.19518429 -0.05018696  0.22830297
                           0.04847559  0.09935662 -0.00002411 -0.00085258 -0.04134416  0.01124024  0.09319062  0.07618014

   5    1  |1 1>-          0.00001250  0.00003508  0.00002726  0.00067943  0.00012020 -0.00016708  0.00000129 -0.00004401
                          -0.20616295  0.31293161  0.00005176 -0.19976621 -0.05263006 -0.22322906 -0.06937843  0.19181167

   6    1  |1 1>-         -0.13055118 -0.02130868 -0.00007627 -0.04830400  0.28021706 -0.02271770  0.06434652 -0.04347696
                          -0.36685413 -0.03191245  0.00012994 -0.03830262  0.04189333  0.02450610  0.22136611  0.10502121

   7    1  |1 1>-          0.00000107  0.00000370  0.00010788 -0.00008597  0.00008993  0.00003080  0.19309288 -0.10102668
                           0.00000693 -0.00000122  0.00003879 -0.00003887 -0.00018465  0.00005751 -0.10161884 -0.06694697

   8    1  |1 1>-         -0.00000717 -0.00001318 -0.00000830 -0.00040043 -0.00008801  0.00011511 -0.00004011 -0.00003304
                           0.09830268 -0.14920844  0.00002101  0.09549205  0.02512986  0.10637215 -0.14554851  0.40235642

   9    1  |1 1>-          0.09515021  0.25327833  0.00006018  0.31933538  0.03880365 -0.29517489 -0.04530400  0.20604844
                          -0.03759583 -0.07705554 -0.00002192 -0.00126939 -0.06252004  0.01705395  0.08410038  0.06878031

  10    1  |1 1>-          0.10124138  0.01652555 -0.00005465 -0.07305318  0.42374055 -0.03434771  0.05805388 -0.03923429
                           0.28451081  0.02475535  0.00017159 -0.05794334  0.06334918  0.03704466  0.19982475  0.09481717

  11    1  |1 1>-          0.00002036 -0.00000468  0.30529936  0.00003239 -0.00017249 -0.00001101 -0.22394728 -0.03062275
                          -0.00000649 -0.00000817  0.48860660  0.00001975  0.00014156  0.00008399  0.01991867 -0.06779121

  12    1  |1 1>-          0.00000693  0.00002064 -0.00004933 -0.00132518 -0.00026062  0.00032693 -0.00003290  0.00005346
                          -0.09970631  0.15137251 -0.00005493  0.37533180  0.09886435  0.41920859 -0.00001799  0.00006468

   1    1  |0 0>          -0.00000361  0.00000039 -0.00000273 -0.00000922 -0.00000324 -0.00000409 -0.05238634 -0.02484178
                           0.00000045  0.00000131  0.00000141  0.00000499  0.00000322 -0.00000299  0.01523204 -0.01029100

   2    1  |0 0>           0.00000439 -0.00000054 -0.00000401 -0.00003032 -0.00000439  0.00000699  0.01907776 -0.05274166
                          -0.00000105 -0.00000267 -0.00000001 -0.00000887 -0.00000340  0.00000389 -0.00000507 -0.00000693

   3    1  |0 0>           0.00000275  0.00000160 -0.00000206 -0.00000776 -0.00000230 -0.00001972  0.02206168  0.01802048
                           0.00000559  0.00000139 -0.00000434  0.00001903  0.00001346  0.00001641  0.01188125 -0.05403983

   4    1  |0 0>          -0.00000159 -0.00000043 -0.00000488 -0.00000828  0.00001466 -0.00000460 -0.00492917  0.01510793
                          -0.00000655 -0.00000374  0.00000203 -0.00000059 -0.00000312 -0.00000194 -0.05159014 -0.00654568

   5    1  |0 0>           0.00000378 -0.00000026  0.00000674 -0.00000384 -0.00002555  0.00000717 -0.01186517 -0.00843484
                           0.00000854 -0.00000070 -0.00001468  0.00001000 -0.00001128 -0.00000329 -0.02111998  0.01217971

   6    1  |0 0>          -0.00002162 -0.00000837 -0.04118945  0.00000167 -0.00004105 -0.00000063  0.00000060  0.00000516
                          -0.00007102 -0.00000767  0.02573442  0.00000507 -0.00001863 -0.00000269  0.00000207 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00583063 -0.04056654  0.01073060  0.03695728  0.03017888  0.01930337 -0.00494004  0.00433829
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.03454724  0.00087761  0.03555587 -0.00000336 -0.00000518  0.00000441 -0.00516019 -0.00794547
                           0.00149882 -0.01060061  0.01849684  0.00000022 -0.00000763  0.00000941  0.00312830  0.00102077

   3    1  |1 1>+          0.00528875 -0.00115605 -0.01420136 -0.00393364 -0.02108998  0.04050600 -0.00246188 -0.00007185
                          -0.00452669  0.01792785  0.03129599 -0.00327420  0.01519047 -0.01747996 -0.00667594 -0.00259702

   4    1  |1 1>+          0.03721626  0.25901251 -0.06852594  0.05476332  0.04438420  0.02836179 -0.07577276  0.06775523
                          -0.00000450 -0.00006199 -0.00001544  0.00016331  0.00017025  0.00003829  0.00384889  0.00227170

   5    1  |1 1>+         -0.11029112  0.03211401 -0.09477447  0.00937092 -0.01366696  0.00344039  0.03580296 -0.09052545
                          -0.00965453 -0.23347142  0.02140771  0.04911280 -0.04360589 -0.02511866  0.05350843 -0.07866013

   6    1  |1 1>+         -0.50926323 -0.00378484  0.16334024 -0.00001885  0.00027568 -0.00031204  0.11117613 -0.13785894
                          -0.24504684  0.09791010  0.23149163 -0.00004743  0.00022364 -0.00030010 -0.12958660 -0.07209578

   7    1  |1 1>+          0.03373783 -0.00739934 -0.09064131  0.00580552  0.03119626 -0.05989919  0.03596364  0.00073066
                          -0.02897467  0.11445824  0.19974312  0.00487882 -0.02244446  0.02580386  0.09880269  0.03533151

   8    1  |1 1>+          0.16039211 -0.04674370  0.13781726  0.00626335 -0.00940676  0.00229793 -0.04630792  0.13005379
                           0.01407023  0.33946371 -0.03112721  0.03347835 -0.03047516 -0.01758278 -0.07482934  0.11203869

   9    1  |1 1>+         -0.03358274 -0.23386156  0.06187811 -0.30427724 -0.24964492 -0.15956838 -0.25186264  0.22141030
                           0.00001563  0.00008252  0.00003727  0.00014994  0.00033324  0.00003781 -0.00043739  0.00055468

  10    1  |1 1>+          0.19897998  0.00499861  0.20481106 -0.00029809  0.00006774 -0.00011462 -0.26624847 -0.41038201
                           0.00854746 -0.06105442  0.10654142 -0.00001082  0.00022072 -0.00052402  0.16132918  0.05241724

  11    1  |1 1>+         -0.03046707  0.00668925  0.08182066 -0.03251488 -0.17363581  0.33378301  0.12717464  0.00308689
                           0.02621787 -0.10333024 -0.18027595 -0.02708537  0.12532195 -0.14409402  0.34365827  0.13759574

  12    1  |1 1>+         -0.00004223 -0.00002081 -0.00002081 -0.10202961  0.14763148 -0.03554825 -0.00022705  0.00053741
                           0.00002160 -0.00010713  0.00000222 -0.53087714  0.47443200  0.27437277 -0.00065306  0.00071538

   1    1  |1 0>           0.01993348 -0.01296435 -0.00888273 -0.00000276  0.00000182 -0.00000183 -0.00279181 -0.00186573
                          -0.05714618 -0.00073218 -0.00497823  0.00000046 -0.00000590  0.00000102 -0.00116959  0.00847043

   2    1  |1 0>           0.00000689  0.00000257  0.00000448 -0.00000976 -0.00000760 -0.00000480  0.00001509 -0.00001861
                          -0.00583180 -0.04055520  0.01072957 -0.03695386 -0.03017151 -0.01929568 -0.00483580  0.00425198

   3    1  |1 0>           0.00134303  0.03226813 -0.00296110 -0.03482989  0.03110699  0.01798582  0.00301762 -0.00448445
                          -0.01524105  0.00443742 -0.01309720  0.00668861 -0.00968267  0.00233024 -0.00183256  0.00518875

   4    1  |1 0>           0.10819402  0.05255500 -0.29281533  0.00006002  0.00006016 -0.00003664  0.14224776  0.06028316
                           0.07613844  0.00646516  0.42203562  0.00018098  0.00013672  0.00008807  0.17945417  0.11408127

   5    1  |1 0>          -0.05759349  0.22817600  0.39827330 -0.00050925  0.00208416 -0.00234519  0.20681433  0.08386003
                          -0.06722826  0.01472069  0.18065233  0.00054293  0.00274760 -0.00556545 -0.08028331 -0.00427133

   6    1  |1 0>          -0.00005543 -0.00004018 -0.00007028  0.00002203  0.00003137  0.00009644 -0.00270042  0.00445915
                           0.03722439  0.25882228 -0.06846792 -0.05480978 -0.04505513 -0.02870322 -0.07758964  0.07176437

   7    1  |1 0>          -0.00854031 -0.20591812  0.01888072 -0.05161266  0.04644346  0.02674445  0.04949440 -0.07217514
                           0.09729993 -0.02836621  0.08360413  0.01006458 -0.01431843  0.00342118 -0.02800531  0.08189159

   8    1  |1 0>          -0.00465334  0.01800894  0.03137939  0.00551655 -0.02583145  0.02981152  0.01591357  0.01041270
                          -0.00533143  0.00117364  0.01427510 -0.00662442 -0.03597836  0.06925898 -0.00120357  0.00304625

   9    1  |1 0>           0.11497863 -0.07476873 -0.05119777 -0.00013751  0.00041567 -0.00084329 -0.14408431 -0.09632442
                          -0.32942247 -0.00424534 -0.02869958  0.00010569 -0.00053654  0.00036916 -0.06030170  0.43708932

  10    1  |1 0>           0.00006330  0.00005421  0.00008028 -0.00006564 -0.00026945 -0.00002051  0.00031406 -0.00043814
                          -0.03361280 -0.23356486  0.06177708  0.30466754  0.24777833  0.15856427 -0.25269954  0.22206547

  11    1  |1 0>          -0.00771422 -0.18582006  0.01704088 -0.28710275  0.25550203  0.14793220 -0.15829881  0.23450787
                           0.08781378 -0.02560488  0.07546700  0.05521873 -0.07975844  0.01920411  0.09517022 -0.26982796

  12    1  |1 0>           0.00015568 -0.00004731  0.00002831  0.04996713 -0.23166475  0.26653750  0.00022234 -0.00083335
                           0.00002807 -0.00001550 -0.00004898 -0.06001201 -0.32153057  0.61762459  0.00004463 -0.00011192

   1    1  |1 1>-         -0.00133938 -0.03227984  0.00296257 -0.03482472  0.03111782  0.01799916 -0.00310458  0.00458320
                           0.01524571 -0.00444145  0.01310064  0.00669433 -0.00968629  0.00233207  0.00185601 -0.00525582

   2    1  |1 1>-         -0.00452124  0.01792604  0.03130208  0.00327877 -0.01519571  0.01748264 -0.00664733 -0.00271580
                          -0.00528367  0.00114979  0.01420017 -0.00393949 -0.02108500  0.04050347  0.00246322  0.00005224

   3    1  |1 1>-          0.01844806 -0.00237093 -0.02737918 -0.00000514 -0.00000698  0.00001592 -0.00591560 -0.00287735
                          -0.02262808  0.00013991  0.03057735 -0.00000827  0.00000190 -0.00000271 -0.00632637  0.00051558

   4    1  |1 1>-         -0.00852223 -0.20606548  0.01888959  0.05141219 -0.04551795 -0.02655483  0.04773666 -0.07082759
                           0.09735241 -0.02834239  0.08365094 -0.00990434  0.01425489 -0.00330414 -0.02429582  0.08098712

   5    1  |1 1>-          0.00000298  0.00006264  0.00002580  0.00015028  0.00007620  0.00008523  0.00243577  0.00462061
                           0.03203381  0.22296586 -0.05899105  0.05681716  0.04614962  0.02964929 -0.06524306  0.05818707

   6    1  |1 1>-         -0.02880870  0.11442711  0.19977964 -0.00487876  0.02254328 -0.02585676  0.09828189  0.03995977
                          -0.03369710  0.00738212  0.09057727  0.00591970  0.03110027 -0.05957051 -0.03007394  0.00319784

   7    1  |1 1>-         -0.13686234  0.15046153 -0.06133458 -0.00007726  0.00014419 -0.00046257  0.00133607 -0.01364645
                           0.58540041  0.01025077  0.25870961  0.00007942 -0.00021166  0.00002342  0.05750287  0.25116915

   8    1  |1 1>-         -0.00005688  0.00000118 -0.00006338 -0.00010258 -0.00026474 -0.00010019  0.00284727 -0.00390809
                           0.06719704  0.46739390 -0.12364671 -0.02687787 -0.02259149 -0.01446532 -0.13269746  0.11360843

   9    1  |1 1>-         -0.00769074 -0.18605396  0.01706347  0.28676877 -0.25736513 -0.14867873 -0.15760565  0.23376499
                           0.08789786 -0.02557367  0.07551149 -0.05507358  0.07983456 -0.01922940  0.09493532 -0.26926442

  10    1  |1 1>-         -0.02593877  0.10326449  0.18033095 -0.02692569  0.12511964 -0.14405953 -0.34389629 -0.13672327
                          -0.03040888  0.00665034  0.08172556  0.03235223  0.17394297 -0.33389297  0.12713209  0.00320871

  11    1  |1 1>-         -0.10620365  0.01361755  0.15774998  0.00013343 -0.00015867  0.00026916  0.30543200  0.14873749
                           0.13025529 -0.00082431 -0.17613184  0.00018665  0.00045076 -0.00023376  0.32654333 -0.02671160

  12    1  |1 1>-         -0.00004941 -0.00010218 -0.00008310  0.00006044  0.00005648  0.00001493 -0.00011070  0.00011812
                           0.00002675 -0.00015167  0.00005577  0.56332432  0.46013841  0.29428192 -0.00079096  0.00063129

   1    1  |0 0>           0.00797691 -0.00174920 -0.02143803 -0.00001166  0.00002030 -0.00000830  0.01681229  0.00041515
                          -0.00683706  0.02708035  0.04726411 -0.00001109  0.00001423 -0.00000309  0.04546017  0.01813628

   2    1  |0 0>          -0.00880713 -0.06126759  0.01620849 -0.00002496  0.00012091  0.00006464  0.03336118 -0.02932140
                          -0.00000608  0.00000426 -0.00000651 -0.00001537 -0.00004015 -0.00000430  0.00005055 -0.00006585

   3    1  |0 0>           0.02303070 -0.00671103  0.01978897 -0.00001032 -0.00000491  0.00000065 -0.01256978  0.03564309
                           0.00201679  0.04874247 -0.00446776 -0.00001945 -0.00012087 -0.00004749 -0.02088829  0.03096082

   4    1  |0 0>          -0.02723214  0.00022360  0.04099076  0.00002288  0.00005011 -0.00002624  0.03783393 -0.00116789
                          -0.02356987  0.00249558  0.03603776 -0.00001454  0.00001797 -0.00002754 -0.03499565 -0.01692536

   5    1  |0 0>           0.07022102  0.00120539  0.02924034  0.00002550 -0.00004138  0.00003196  0.01234724  0.05610403
                           0.01699854 -0.01789660  0.00604331  0.00001074 -0.00004061  0.00008898  0.00004046  0.00347621

   6    1  |0 0>          -0.00000482  0.00000074  0.00000063 -0.00000138  0.00000424 -0.00000293  0.00000117 -0.00000257
                           0.00000447 -0.00000116  0.00000016  0.00000082  0.00000576 -0.00000924 -0.00000077 -0.00000273

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00759959 -0.00223724  0.00652683  0.00007670  0.00008525 -0.00006131  0.00011854  0.00003477
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00565504 -0.00385568 -0.00649733  0.00003731  0.00005313  0.00000316 -0.00006545  0.00003386
                          -0.00000469 -0.00250126  0.00084879  0.00002236 -0.00009536 -0.00003557 -0.00003051 -0.00010979

   3    1  |1 1>+          0.00148177  0.00358931 -0.00231707 -0.00004307  0.00007243  0.00003774 -0.00000407  0.00002206
                          -0.00661409  0.00144702  0.00487400  0.00007462  0.00001327  0.00001562 -0.00009508  0.00000022

   4    1  |1 1>+          0.11579211 -0.03086880  0.09986404 -0.21381266  0.15997565  0.13654228  0.01124434 -0.00920726
                           0.00525858  0.00122106 -0.00003862  0.23454587 -0.32088233  0.08451511 -0.18405980  0.23632452

   5    1  |1 1>+          0.03512969  0.06495504  0.06358753  0.38758284  0.29036820  0.00646595 -0.07835914  0.06313537
                           0.05431397  0.09869820  0.05847870  0.03939709  0.07522851  0.06091484 -0.00008168 -0.00168751

   6    1  |1 1>+         -0.03135420 -0.24481228  0.13139498 -0.23722379 -0.25031004 -0.02293053  0.16578401  0.13704232
                          -0.06413883 -0.03146637  0.01173707  0.04391955  0.08047787  0.17986527 -0.02766585  0.04618174

   7    1  |1 1>+         -0.02236017 -0.05287803  0.03589422  0.00770249 -0.19743698 -0.32182165 -0.07782324 -0.26598047
                           0.10213159 -0.02417382 -0.07531414  0.04625838  0.09150505  0.03138328  0.05253972 -0.34384783

   8    1  |1 1>+         -0.05238032 -0.09506443 -0.08996949 -0.01838767  0.08788881 -0.10501854 -0.25642861  0.03855746
                          -0.08410111 -0.14160641 -0.09137287  0.11234430  0.15525041 -0.19349647  0.33692215  0.28716161

   9    1  |1 1>+          0.39121087 -0.11314573  0.33737400  0.00437169  0.00420782 -0.00369047  0.00482582  0.00186567
                          -0.00150336 -0.00124688 -0.00178585  0.00008083 -0.00029103  0.00053324 -0.00147127  0.00014461

  10    1  |1 1>+          0.29166342 -0.19917040 -0.33486222  0.00211108  0.00301557  0.00033022 -0.00355491  0.00131114
                          -0.00030084 -0.12905916  0.04397221  0.00107643 -0.00472649 -0.00185875 -0.00131739 -0.00532608

  11    1  |1 1>+         -0.07725182 -0.18648725  0.12006710  0.00196056 -0.00442849 -0.00159426  0.00101308 -0.00038399
                           0.34023086 -0.07132329 -0.25195046 -0.00402497  0.00075141 -0.00087028  0.00391413  0.00008757

  12    1  |1 1>+         -0.00005427 -0.00018921 -0.00038010  0.00013055  0.00008032  0.00000244  0.00015554 -0.00008262
                           0.00046772 -0.00032746  0.00055390 -0.00001217 -0.00016940  0.00005833 -0.00003607 -0.00017370

   1    1  |1 0>          -0.00204551 -0.00213801  0.00079869  0.00000964 -0.00009861 -0.00003296 -0.00003947 -0.00004373
                          -0.00176936  0.00992903 -0.00103807  0.00012615 -0.00006238  0.00004052  0.00006725 -0.00008950

   2    1  |1 0>           0.00005247  0.00004620  0.00006130 -0.00000749  0.00001208 -0.00002442  0.00003837 -0.00000086
                           0.00756813 -0.00215617  0.00654738  0.00009245  0.00008565 -0.00007681  0.00008807  0.00004992

   3    1  |1 0>           0.00321485  0.00565755  0.00349590 -0.00003045  0.00000672  0.00012549  0.00003487 -0.00005941
                          -0.00219848 -0.00382187 -0.00357479 -0.00002652  0.00000616 -0.00001873 -0.00000238 -0.00005581

   4    1  |1 0>           0.02951937 -0.04809659  0.01411486  0.04429391  0.08082101  0.17933262 -0.02725931  0.04314420
                          -0.14706358 -0.03396595  0.21449688  0.22988426  0.25019816  0.02090629 -0.16559343 -0.13440096

   5    1  |1 0>           0.20166103 -0.04314668 -0.14936171  0.15094139 -0.22475993  0.06575355 -0.00227753  0.10850984
                           0.04476737  0.11038957 -0.07145016  0.05283932 -0.19379076 -0.05241966  0.04441456 -0.07693003

   6    1  |1 0>          -0.00014662  0.00051896 -0.00022522 -0.14587325  0.10240436  0.01550899 -0.35370109  0.22683543
                           0.11672727 -0.03645245  0.10077762 -0.21010768  0.09790418  0.45767148  0.07433244 -0.08325094

   7    1  |1 0>           0.04425194  0.08901706  0.04811642  0.12474289  0.17261872 -0.22293119  0.38933234  0.32859708
                          -0.03769827 -0.06073359 -0.05595730  0.05553062 -0.07429817  0.12045011  0.28799330 -0.04140764

   8    1  |1 0>           0.01365546  0.00193102 -0.01023255 -0.29571915  0.18787438 -0.14477156 -0.07151612  0.36780784
                           0.00561519  0.01204123 -0.00442112 -0.06784970 -0.01401583 -0.41352282 -0.18480130 -0.29400304

   9    1  |1 0>          -0.10552814 -0.11035898  0.04129896  0.00064500 -0.00510597 -0.00126359 -0.00178056 -0.00190293
                          -0.09119921  0.51239255 -0.05376137  0.00614149 -0.00288460  0.00193854  0.00333950 -0.00427734

  10    1  |1 0>           0.00109860  0.00089229  0.00131207 -0.00001899  0.00017120 -0.00034815  0.00118929 -0.00015537
                           0.39151106 -0.11373327  0.33725299  0.00426700  0.00420200 -0.00357351  0.00508263  0.00176604

  11    1  |1 0>          -0.16370245 -0.29343752 -0.17779718  0.00112385 -0.00095925 -0.00596378 -0.00170198  0.00225506
                           0.11372754  0.19794504  0.18599263  0.00081383 -0.00064561  0.00114473 -0.00003917  0.00316349

  12    1  |1 0>           0.00020725 -0.00079076  0.00018692  0.00000831 -0.00020815  0.00002151  0.00016354 -0.00009195
                          -0.00020212 -0.00028282  0.00014005 -0.00008617 -0.00009811  0.00002511  0.00014838  0.00017056

   1    1  |1 1>-         -0.00314287 -0.00570199 -0.00341069  0.00002503 -0.00003170 -0.00011888 -0.00004246  0.00003107
                           0.00220725  0.00384425  0.00362425  0.00000524 -0.00001424  0.00002014 -0.00002130  0.00007076

   2    1  |1 1>-         -0.00658576  0.00133419  0.00489970  0.00008348 -0.00002001  0.00001957 -0.00007164 -0.00001346
                          -0.00150846 -0.00363129  0.00233771  0.00003236 -0.00008700 -0.00003031  0.00002928  0.00000753

   3    1  |1 1>-         -0.00203992  0.00036256 -0.00005112 -0.00001056 -0.00000311  0.00000604 -0.00001272  0.00006547
                           0.00388904  0.00606100 -0.00753471  0.00015919 -0.00000818  0.00004259  0.00000323 -0.00005230

   4    1  |1 1>-          0.04745124  0.08782602  0.05207076  0.01377508 -0.00045675 -0.15433300  0.16902482  0.14241015
                          -0.03856198 -0.06117548 -0.05442462  0.41234384  0.25951340  0.05790218  0.04574028  0.04385963

   5    1  |1 1>-          0.00556818  0.00184504  0.00031519  0.15117699 -0.26182061  0.09292288 -0.38342692  0.36403848
                           0.10067382 -0.03346745  0.08671296  0.09575063 -0.10241500  0.12180157  0.03285256 -0.03731800

   6    1  |1 1>-          0.09948329 -0.01779748 -0.07358969 -0.30785724  0.32823731 -0.14124090 -0.02963308  0.06973078
                           0.02482391  0.05681145 -0.03454633 -0.09056994  0.19892650 -0.14944755 -0.13898794 -0.06552928

   7    1  |1 1>-         -0.02978604 -0.06675788  0.02502309 -0.04333905 -0.08501637 -0.18098082  0.02608746 -0.04786797
                          -0.11252877  0.21122055  0.08354528 -0.23177147 -0.25288424 -0.02121035  0.16875627  0.13323918

   8    1  |1 1>-          0.00163229  0.00056585  0.00147917  0.13859382 -0.10941412 -0.00651341  0.27809578 -0.16846511
                           0.20909458 -0.05860513  0.18010759  0.19342196 -0.08988103 -0.39080156 -0.05819837  0.07079092

   9    1  |1 1>-         -0.16419429 -0.29312247 -0.17839705  0.00114180 -0.00076483 -0.00603316 -0.00165329  0.00244608
                           0.11366816  0.19774882  0.18558493  0.00096573 -0.00055244  0.00114661  0.00013739  0.00307309

  10    1  |1 1>-         -0.34045584  0.07214467  0.25175796  0.00400384 -0.00052016  0.00084337 -0.00409831  0.00001878
                          -0.07703189 -0.18617409  0.11991948  0.00206458 -0.00432082 -0.00162610  0.00085270 -0.00057267

  11    1  |1 1>-          0.10523112 -0.01869811  0.00268103  0.00042766  0.00038441 -0.00059605  0.00046438 -0.00341771
                          -0.20045731 -0.31323052  0.38862789 -0.00825369 -0.00011523 -0.00226261  0.00021574  0.00296933

  12    1  |1 1>-         -0.00039005 -0.00033974 -0.00044055  0.00005941 -0.00009925  0.00016249 -0.00025576 -0.00001656
                           0.00028333 -0.00056987 -0.00009213 -0.00009702 -0.00000824  0.00009883  0.00022540 -0.00008912

   1    1  |0 0>          -0.01020140 -0.02463957  0.01586798  0.00026580 -0.00057636 -0.00021312  0.00012290 -0.00006263
                           0.04500755 -0.00948616 -0.03330585 -0.00053054  0.00008214 -0.00011311  0.00053077  0.00000573

   2    1  |0 0>          -0.05175273  0.01500039 -0.04460472 -0.00057078 -0.00055594  0.00047911 -0.00065564 -0.00024141
                           0.00017312  0.00014227  0.00020492 -0.00000740  0.00003034 -0.00005909  0.00017361 -0.00001902

   3    1  |0 0>          -0.01503507 -0.02616246 -0.02456745 -0.00011695  0.00007870 -0.00015125 -0.00000405 -0.00041234
                          -0.02168110 -0.03878128 -0.02355204  0.00015054 -0.00011455 -0.00079349 -0.00022348  0.00031010

   4    1  |0 0>          -0.02379846 -0.03426216  0.04510797 -0.00093482 -0.00002462 -0.00025587  0.00003823  0.00032598
                          -0.01180837  0.00267326 -0.00049597 -0.00005309 -0.00002100  0.00007367 -0.00004627  0.00040672

   5    1  |0 0>          -0.02452651  0.04822845  0.01707592  0.00029862 -0.00038983  0.00011521  0.00045438 -0.00038226
                           0.00739964  0.01574814 -0.00562387 -0.00011197  0.00065057  0.00020446  0.00020751  0.00046514

   6    1  |0 0>           0.00000076 -0.00000331  0.00000008 -0.00000119 -0.00000014 -0.00000048  0.00000040  0.00000086
                          -0.00000016  0.00000025  0.00000052 -0.00000072  0.00000010 -0.00000100  0.00000111  0.00000032

 State Sym Spin     / Nr.     41          42

   1    1  |1 1>+          0.00001465 -0.00005359
                          -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00004810 -0.00002612
                           0.00004727 -0.00001197

   3    1  |1 1>+          0.00004000  0.00002749
                          -0.00000593 -0.00003152

   4    1  |1 1>+          0.22724783 -0.06342194
                           0.23597707  0.27720100

   5    1  |1 1>+          0.02448835  0.28117108
                           0.40337671 -0.12910358

   6    1  |1 1>+          0.07124477  0.15363840
                           0.17842336 -0.25480513

   7    1  |1 1>+          0.28906172 -0.03567263
                           0.21665728  0.22506759

   8    1  |1 1>+          0.10106963 -0.05019557
                           0.18520446 -0.12932118

   9    1  |1 1>+          0.00066940 -0.00286389
                          -0.00063733  0.00009667

  10    1  |1 1>+         -0.00230522 -0.00140698
                           0.00202847 -0.00026638

  11    1  |1 1>+         -0.00152666 -0.00142080
                           0.00044248  0.00262869

  12    1  |1 1>+          0.00003035  0.00006667
                           0.00005607 -0.00001461

   1    1  |1 0>           0.00002665  0.00004740
                          -0.00000336 -0.00003864

   2    1  |1 0>           0.00002431 -0.00000513
                           0.00001616 -0.00005924

   3    1  |1 0>           0.00000599 -0.00000753
                           0.00002773  0.00001562

   4    1  |1 0>           0.17903172 -0.25718247
                          -0.06908420 -0.15080460

   5    1  |1 0>          -0.20619574 -0.29705412
                           0.24247331 -0.04525694

   6    1  |1 0>          -0.10461286 -0.12932840
                           0.03852218  0.13477545

   7    1  |1 0>           0.17652824 -0.13746749
                          -0.11282075  0.08418027

   8    1  |1 0>          -0.03064894  0.09141570
                           0.09128026  0.01329112

   9    1  |1 0>           0.00134685  0.00241210
                          -0.00014485 -0.00178103

  10    1  |1 0>           0.00043853 -0.00002808
                           0.00064983 -0.00282396

  11    1  |1 0>           0.00011218  0.00033992
                          -0.00149275 -0.00104493

  12    1  |1 0>           0.00002579 -0.00018921
                           0.00001087  0.00006764

   1    1  |1 1>-          0.00000185  0.00000427
                          -0.00003180 -0.00002789

   2    1  |1 1>-         -0.00000219 -0.00005870
                          -0.00003775 -0.00001848

   3    1  |1 1>-         -0.00002121  0.00005800
                          -0.00005003 -0.00006326

   4    1  |1 1>-         -0.32847360  0.06997747
                          -0.02339334  0.31891244

   5    1  |1 1>-          0.17613486  0.20306348
                          -0.20446859  0.13849789

   6    1  |1 1>-          0.20008174  0.35731281
                          -0.20600158  0.05506617

   7    1  |1 1>-         -0.17722343  0.25693833
                           0.07112063  0.15205764

   8    1  |1 1>-          0.10519935  0.12829816
                          -0.04906878 -0.10836030

   9    1  |1 1>-          0.00004977  0.00035104
                          -0.00146065 -0.00097149

  10    1  |1 1>-         -0.00047274 -0.00242755
                          -0.00154482 -0.00149329

  11    1  |1 1>-          0.00068550 -0.00266576
                           0.00243707  0.00319415

  12    1  |1 1>-         -0.00017609  0.00005617
                          -0.00002061  0.00003930

   1    1  |0 0>          -0.00020545 -0.00019110
                           0.00005876  0.00033223

   2    1  |0 0>          -0.00008846  0.00037586
                           0.00007069 -0.00000918

   3    1  |0 0>           0.00019477  0.00013356
                           0.00000934  0.00004636

   4    1  |0 0>           0.00028397  0.00036423
                          -0.00008770  0.00030241

   5    1  |0 0>           0.00013322 -0.00003755
                          -0.00022159 -0.00015032

   6    1  |0 0>           0.00000077  0.00000025
                           0.00000027  0.00000075


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20885.54171183     -0.09222809   -20241.73      0.00000000        0.00      0.0000
     2   1 -20885.47954061     -0.03005687    -6596.72      0.06217122    13645.01      1.6918
     3   1 -20885.47954040     -0.03005665    -6596.67      0.06217144    13645.05      1.6918
     4   1 -20885.47953992     -0.03005617    -6596.57      0.06217192    13645.16      1.6918
     5   1 -20885.46405141     -0.01456767    -3197.23      0.07766042    17044.49      2.1132
     6   1 -20885.46405116     -0.01456742    -3197.18      0.07766067    17044.55      2.1133
     7   1 -20885.46405083     -0.01456709    -3197.11      0.07766100    17044.62      2.1133
     8   1 -20885.46405038     -0.01456663    -3197.01      0.07766145    17044.72      2.1133
     9   1 -20885.46404985     -0.01456610    -3196.89      0.07766199    17044.84      2.1133
    10   1 -20885.38385263      0.06563111    14404.36      0.15785920    34646.09      4.2956
    11   1 -20885.38385250      0.06563124    14404.39      0.15785933    34646.12      4.2956
    12   1 -20885.38385228      0.06563147    14404.44      0.15785955    34646.17      4.2956
    13   1 -20885.38385207      0.06563168    14404.49      0.15785977    34646.21      4.2956
    14   1 -20885.38385196      0.06563179    14404.51      0.15785987    34646.24      4.2956
    15   1 -20885.34608308      0.10340066    22693.82      0.19562875    42935.55      5.3233
    16   1 -20885.32351045      0.12597330    27647.94      0.21820138    47889.67      5.9376
    17   1 -20885.32350984      0.12597390    27648.08      0.21820199    47889.80      5.9376
    18   1 -20885.32350816      0.12597558    27648.44      0.21820367    47890.17      5.9376
    19   1 -20885.29473251      0.15475124    33963.97      0.24697933    54205.70      6.7206
    20   1 -20885.29227306      0.15721068    34503.76      0.24943877    54745.48      6.7876
    21   1 -20885.29227156      0.15721219    34504.09      0.24944027    54745.81      6.7876
    22   1 -20885.29226824      0.15721551    34504.82      0.24944359    54746.54      6.7877
    23   1 -20885.28930932      0.16017443    35154.22      0.25240251    55395.95      6.8682
    24   1 -20885.28930846      0.16017528    35154.41      0.25240337    55396.14      6.8682
    25   1 -20885.28930775      0.16017599    35154.57      0.25240408    55396.29      6.8683
    26   1 -20885.28930685      0.16017690    35154.77      0.25240498    55396.49      6.8683
    27   1 -20885.28930575      0.16017800    35155.01      0.25240608    55396.73      6.8683
    28   1 -20885.23085314      0.21863061    47983.87      0.31085869    68225.60      8.4589
    29   1 -20885.23085079      0.21863296    47984.39      0.31086104    68226.11      8.4590
    30   1 -20885.23084984      0.21863391    47984.60      0.31086199    68226.32      8.4590
    31   1 -20885.22964874      0.21983501    48248.21      0.31206309    68489.93      8.4917
    32   1 -20885.22964774      0.21983601    48248.43      0.31206409    68490.15      8.4917
    33   1 -20885.22964677      0.21983697    48248.64      0.31206506    68490.36      8.4917
    34   1 -20885.22964612      0.21983763    48248.78      0.31206572    68490.51      8.4917
    35   1 -20885.22964515      0.21983859    48248.99      0.31206668    68490.72      8.4918
    36   1 -20885.22953743      0.21994632    48272.64      0.31217441    68514.36      8.4947
    37   1 -20885.22953730      0.21994644    48272.66      0.31217453    68514.39      8.4947
    38   1 -20885.22953709      0.21994665    48272.71      0.31217474    68514.44      8.4947
    39   1 -20885.22953660      0.21994715    48272.82      0.31217524    68514.55      8.4947
    40   1 -20885.22953641      0.21994734    48272.86      0.31217542    68514.59      8.4947
    41   1 -20885.22953577      0.21994798    48273.00      0.31217606    68514.73      8.4947
    42   1 -20885.22953552      0.21994823    48273.06      0.31217631    68514.78      8.4948

 E0 = -20885.44948375 is the energy of the lowest zeroth-order state
 E1 = -20885.54171183 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000072  0.46544230  0.20390903  0.48757963 -0.27604704  0.16615475  0.23856346  0.26990956
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.51630694 -0.00000127  0.00000471 -0.00000288  0.18982433  0.22787880  0.20428577 -0.05513704
                                0.07874865  0.00000105 -0.00000141 -0.00000179 -0.07285079 -0.15807358  0.02203891 -0.03568596

  3  1     3    1  |1 1>+       0.00000287  0.08282261 -0.28148922  0.03866416  0.09703313  0.12098158 -0.01867300  0.01759574
                               -0.00000839 -0.38490081  0.48242548  0.16568584  0.18283907  0.27982743 -0.02793926 -0.02224274

  4  1     4    1  |1 1>+      -0.00000027 -0.01935085 -0.00847328 -0.02028500 -0.02907487  0.01750090  0.02511951  0.02841183
                               -0.00000050 -0.00000671  0.00000079  0.00000668  0.00000118 -0.00000223  0.00000152  0.00000058

  5  1     5    1  |1 1>+       0.00000018 -0.00600184  0.00141741  0.00513946 -0.00159576  0.00371410  0.00112418 -0.00538485
                               -0.00000008 -0.01258309 -0.01485833  0.01824119  0.03351643 -0.02073541  0.00589360  0.04158485

  6  1     6    1  |1 1>+       0.00000696  0.00000379 -0.00000070 -0.00000012  0.01556369 -0.03278772  0.07838435 -0.03907777
                                0.00000105 -0.00000214 -0.00000008  0.00000113  0.00986398  0.01183686  0.01636051 -0.00921209

  7  1     7    1  |1 1>+       0.00000125  0.00344468 -0.01171345  0.00160532 -0.01021965 -0.01273948  0.00196466 -0.00184982
                               -0.00000793 -0.01601415  0.02007552  0.00689128 -0.01925321 -0.02946960  0.00295156  0.00233441

  8  1     8    1  |1 1>+      -0.00000005 -0.00413205  0.00097447  0.00353382  0.00232126 -0.00540299 -0.00163612  0.00783253
                               -0.00000028 -0.00865539 -0.01022448  0.01255515 -0.04874889  0.03015889 -0.00858095 -0.06050711

  9  1     9    1  |1 1>+      -0.00000110  0.00726004  0.00318619  0.00759799  0.00441997 -0.00265880 -0.00382189 -0.00432885
                                0.00000056 -0.00000172 -0.00000521  0.00000404  0.00000103  0.00000186 -0.00000107  0.00000012

 10  1    10    1  |1 1>+       0.03418475  0.00000168 -0.00000068 -0.00000133 -0.00304134 -0.00364975 -0.00327246  0.00088301
                                0.00521407 -0.00000047 -0.00000101  0.00000108  0.00116746  0.00253208 -0.00035292  0.00057134

 11  1    11    1  |1 1>+       0.00000093 -0.00129218  0.00439316 -0.00060326  0.00155528  0.00193930 -0.00030002  0.00028301
                               -0.00000857  0.00600800 -0.00752842 -0.00258735  0.00293109  0.00448483 -0.00044183 -0.00036010

 12  1    12    1  |1 1>+       0.00000014  0.01530877 -0.00361121 -0.01310059  0.00000022  0.00000015 -0.00000066 -0.00000247
                               -0.00000047  0.03211429  0.03789868 -0.04647562  0.00001451 -0.00000817 -0.00000703  0.00000182

 13  1     1    1  |1 0>       -0.07874848 -0.00000407 -0.00000564  0.00000171  0.01040471 -0.02283852  0.08869973 -0.06158686
                                0.51630186 -0.00001728  0.00000426  0.00001071 -0.16881795  0.04172542 -0.47433459  0.21311502

 14  1     2    1  |1 0>        0.00000036 -0.00000213 -0.00000555 -0.00000232 -0.00001080  0.00000293 -0.00000618  0.00000417
                               -0.00000059 -0.46542673 -0.20390050 -0.48755057 -0.27608683  0.16619235  0.23858583  0.26990746

 15  1     3    1  |1 0>       -0.00000184 -0.31821526 -0.37562322  0.46084081  0.28092426 -0.17379865  0.04944445  0.34862785
                               -0.00000001  0.15173686 -0.03580820 -0.12987784  0.01338106 -0.03113868 -0.00942854  0.04512765

 16  1     4    1  |1 0>       -0.00000224  0.00000257 -0.00000312 -0.00000276 -0.01644121 -0.03088791 -0.00469945 -0.00103038
                               -0.00000090  0.00000210 -0.00000123 -0.00000065 -0.02220518 -0.05239170  0.00692381 -0.01082644

 17  1     5    1  |1 0>        0.00000137  0.00144987 -0.00181933 -0.00062471 -0.03838659 -0.05875349  0.00586797  0.00466583
                                0.00000140  0.00031137 -0.00106016  0.00014698  0.02037247  0.02540213 -0.00391775  0.00369261

 18  1     6    1  |1 0>       -0.00000084 -0.00000440  0.00000008  0.00000291 -0.00000006 -0.00000031 -0.00000084  0.00000165
                                0.00000124  0.01935403  0.00847139  0.02029206 -0.02907236  0.01750031  0.02512123  0.02841608

 19  1     7    1  |1 0>        0.00000229  0.01322369  0.01562416 -0.01917941  0.02958187 -0.01830012  0.00520317  0.03670510
                               -0.00000118 -0.00631036  0.00148840  0.00540053  0.00140863 -0.00327823 -0.00099323  0.00475152

 20  1     8    1  |1 0>       -0.00000783 -0.01843064  0.02310094  0.00793281 -0.00302708 -0.00463317  0.00046282  0.00036617
                               -0.00000200 -0.00396371  0.01347718 -0.00185160  0.00160625  0.00200275 -0.00030902  0.00029099

 21  1     9    1  |1 0>       -0.00521522  0.00000137  0.00000552 -0.00000084 -0.00016756  0.00036633 -0.00142046  0.00098723
                                0.03418190  0.00001230 -0.00001388 -0.00000423  0.00270264 -0.00066780  0.00759551 -0.00341123

 22  1    10    1  |1 0>       -0.00000035  0.00000246 -0.00000161 -0.00000153 -0.00000028  0.00000004  0.00000002 -0.00000038
                                0.00000041 -0.00725475 -0.00317468 -0.00761251  0.00442441 -0.00266484 -0.00381876 -0.00431565

 23  1    11    1  |1 0>        0.00000370  0.00495561  0.00585668 -0.00719282  0.00450055 -0.00278564  0.00079072  0.00557547
                                0.00000033 -0.00236698  0.00055968  0.00202548  0.00021431 -0.00049751 -0.00015079  0.00072230

 24  1    12    1  |1 0>       -0.00002819 -0.03881567  0.04864952  0.01670816 -0.00000388  0.00000265 -0.00001392  0.00000563
                               -0.00000260 -0.00835330  0.02838742 -0.00389837 -0.00000140 -0.00000058 -0.00000129  0.00000060

 25  1     1    1  |1 1>-       0.00000371 -0.31820903 -0.37563795  0.46088172 -0.28088514  0.17377029 -0.04941919 -0.34860910
                                0.00000072  0.15174649 -0.03580752 -0.12987714 -0.01338067  0.03113466  0.00943422 -0.04512683

 26  1     2    1  |1 1>-       0.00000651  0.38491262 -0.48242115 -0.16567964  0.18283369  0.27983220 -0.02795194 -0.02222647
                                0.00000145  0.08282028 -0.28149033  0.03866039 -0.09702463 -0.12097772  0.01866428 -0.01758885

 27  1     3    1  |1 1>-       0.07874877 -0.00000652  0.00000257  0.00000262  0.08325423  0.13523391  0.06665912 -0.02589983
                               -0.51630611 -0.00000640 -0.00000634  0.00000480  0.02100532  0.26960555 -0.27004275  0.15797186

 28  1     4    1  |1 1>-      -0.00000039 -0.01322592 -0.01561702  0.01917460  0.02958247 -0.01830202  0.00520155  0.03670059
                               -0.00000168  0.00630835 -0.00149075 -0.00539851  0.00140936 -0.00328054 -0.00099360  0.00475426

 29  1     5    1  |1 1>-       0.00000050  0.00000460 -0.00000038 -0.00000255  0.00000004 -0.00000040 -0.00000167  0.00000036
                               -0.00000030 -0.02016989 -0.00883125 -0.02114463 -0.02502666  0.01506472  0.02162160  0.02445468

 30  1     6    1  |1 1>-       0.00000977  0.01601445 -0.02007485 -0.00689413 -0.01925911 -0.02946948  0.00293258  0.00234763
                                0.00000102  0.00344544 -0.01171327  0.00160908  0.01021863  0.01274106 -0.00196818  0.00185496

 31  1     7    1  |1 1>-       0.00000097 -0.00000174 -0.00000205 -0.00000293 -0.00657743 -0.01905103  0.01166171 -0.01024139
                               -0.00000661  0.00000036  0.00000318 -0.00000115 -0.03776813 -0.01960425 -0.07145937  0.02824471

 32  1     8    1  |1 1>-      -0.00000026 -0.00000271 -0.00000137 -0.00000000 -0.00000142  0.00000071  0.00000027  0.00000138
                               -0.00000005  0.00962700  0.00421536  0.01009110 -0.05248048  0.03158993  0.04535466  0.05131178

 33  1     9    1  |1 1>-      -0.00000065 -0.00496674 -0.00585794  0.00718064  0.00449703 -0.00278047  0.00079469  0.00558689
                                0.00000217  0.00236672 -0.00055886 -0.00202169  0.00021571 -0.00049735 -0.00014881  0.00072399

 34  1    10    1  |1 1>-      -0.00000978  0.00600488 -0.00752582 -0.00258378 -0.00292521 -0.00448282  0.00045496  0.00035222
                               -0.00000127  0.00129231 -0.00439150  0.00060380  0.00155477  0.00193767 -0.00029694  0.00028072

 35  1    11    1  |1 1>-      -0.00521412  0.00000122  0.00000085 -0.00000088  0.00133439  0.00216778  0.00106732 -0.00041418
                                0.03418629  0.00000357  0.00000188 -0.00000439  0.00033569  0.00432223 -0.00432319  0.00252660

 36  1    12    1  |1 1>-       0.00000034 -0.00000421  0.00000169  0.00000539 -0.00000035  0.00000063 -0.00000086 -0.00000166
                               -0.00000007 -0.04696100 -0.02058106 -0.04916771  0.00001575 -0.00000870 -0.00000523  0.00000206

 37  1     1    1  |0 0>        0.00000050  0.00000092  0.00000107  0.00000264  0.14246653  0.17763419 -0.02741084  0.02583063
                               -0.00000072  0.00000632  0.00000175  0.00000357  0.26845631  0.41087296 -0.04103241 -0.03264631

 38  1     2    1  |0 0>        0.00000004  0.00001118  0.00000613  0.00001642 -0.40534512  0.24399200  0.35029855  0.39630704
                               -0.00000002  0.00000048  0.00000291  0.00000249  0.00000818 -0.00000232  0.00000469 -0.00000352

 39  1     3    1  |0 0>        0.00000049  0.00000636  0.00000074  0.00000028 -0.01964618  0.04571772  0.01384804 -0.06626174
                               -0.00000126 -0.00000130  0.00001059 -0.00002305  0.41244730 -0.25516610  0.07257911  0.51187935

 40  1     4    1  |0 0>       -0.00000085 -0.00000973 -0.00000147  0.00000507  0.03557704  0.34723785 -0.32638386  0.19412187
                               -0.00000036  0.00000627 -0.00000141 -0.00000347 -0.10735051 -0.17634206 -0.08197327  0.03050700

 41  1     5    1  |0 0>        0.00000261  0.00000736  0.00000058 -0.00000615  0.26224276  0.12502323  0.50950408 -0.20360127
                                0.00000003 -0.00000205 -0.00000406 -0.00000099 -0.04224824 -0.12693963  0.08411123 -0.07248253

 42  1     6    1  |0 0>        0.41718974 -0.00000453  0.00000613  0.00000089  0.00000039 -0.00000041 -0.00000317  0.00000310
                                0.06363128 -0.00000074  0.00000264 -0.00000026 -0.00000064 -0.00000072 -0.00000088  0.00000047


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.05662250  0.11266748 -0.14547324 -0.36116841  0.30232326 -0.06462505  0.00000038  0.02322878
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.34112083  0.04644999 -0.28956115  0.23901791  0.09910785 -0.13935804 -0.13550949  0.00000559
                                0.18596100 -0.31173859  0.19917031 -0.17980139 -0.01735942 -0.06818247 -0.20388676  0.00001201

  3  1     3    1  |1 1>+       0.11279095 -0.00213548  0.16942015 -0.02635531  0.03182817 -0.08890861  0.00000593  0.01853819
                                0.29387350 -0.02711548  0.20114545  0.15232727  0.21810416 -0.33104575 -0.00000370 -0.00571795

  4  1     4    1  |1 1>+       0.00596277 -0.00301349  0.00388776  0.00966114 -0.00807084  0.00173537  0.00000004  0.28089268
                               -0.00000159  0.00001021  0.00000056 -0.00000480 -0.00000982 -0.00000495  0.00000281 -0.00000676

  5  1     5    1  |1 1>+       0.00223551 -0.00663147 -0.00188357  0.00147251  0.00422615  0.00423581 -0.00000072  0.06854283
                                0.00113185 -0.00358487 -0.00021609  0.00504780  0.00859544  0.00637972 -0.00000146  0.24998706

  6  1     6    1  |1 1>+       0.02809816 -0.00436861 -0.01228095  0.00181366 -0.00468658 -0.01201565 -0.00000571  0.00000203
                               -0.01165643  0.01717330  0.00756876  0.00456373  0.00355119  0.00400731 -0.00000994  0.00000748

  7  1     7    1  |1 1>+      -0.01187930 -0.00004142  0.00452403 -0.00069962  0.00085732 -0.00236876 -0.00003354 -0.22421034
                               -0.03094742 -0.00072123  0.00537746  0.00407173  0.00583137 -0.00882814  0.00002323  0.06917752

  8  1     8    1  |1 1>+      -0.00325185  0.00963410  0.00273442 -0.00213561 -0.00613682 -0.00615313 -0.00000195  0.04711077
                               -0.00164973  0.00520156  0.00032242 -0.00730925 -0.01250945 -0.00926242  0.00000075  0.17186665

  9  1     9    1  |1 1>+      -0.00090696 -0.00958428  0.01237275  0.03071568 -0.02570342  0.00549862  0.00000184  0.21781427
                                0.00000255  0.00000288  0.00000202 -0.00000055 -0.00000194 -0.00000740  0.00000180 -0.00000550

 10  1    10    1  |1 1>+       0.00546352 -0.00394905  0.02461973 -0.02032370 -0.00842652  0.01185313  0.00818731 -0.00000795
                               -0.00297774  0.02650634 -0.01693215  0.01528806  0.00147616  0.00579603  0.01231658 -0.00000802

 11  1    11    1  |1 1>+       0.00180659 -0.00017123  0.01440738 -0.00223635  0.00270933 -0.00755781 -0.00003680 -0.17388326
                                0.00470855 -0.00230466  0.01710579  0.01295906  0.01855437 -0.02814994  0.00002621  0.05364823

 12  1    12    1  |1 1>+       0.00000018  0.00000920  0.00000373 -0.00000056 -0.00000917 -0.00000623 -0.00000113 -0.03630892
                               -0.00000239  0.00000263  0.00000491  0.00000748 -0.00002745 -0.00000844  0.00000225 -0.13242600

 13  1     1    1  |1 0>        0.03764067 -0.47733526 -0.04215612 -0.17532576 -0.07517114 -0.10911536  0.20388902 -0.00003273
                                0.03715892 -0.10503744 -0.08523987 -0.08549199 -0.13721940 -0.15538707 -0.13551107  0.00001241

 14  1     2    1  |1 0>        0.00000147 -0.00000313 -0.00000138  0.00000042  0.00000293  0.00000206  0.00000062  0.00000124
                                0.05664207  0.11266697 -0.14547330 -0.36116984  0.30233369 -0.06462359  0.00000015 -0.02319099

 15  1     3    1  |1 0>        0.00950209  0.11824634  0.00731713 -0.16623918 -0.28413433 -0.21051998 -0.00000090 -0.02168617
                               -0.01874029 -0.21891827 -0.06217742  0.04851311  0.13951160  0.13982793 -0.00000084  0.00596116

 16  1     4    1  |1 0>        0.03519124  0.00390461 -0.01178448  0.00492480 -0.00108601  0.00073231  0.00000109 -0.00000531
                                0.06791584 -0.00032085 -0.01775921  0.01047919  0.00161749 -0.01158126  0.00000417 -0.00000003

 17  1     5    1  |1 0>       -0.06168478 -0.00144335  0.01073306  0.00810705  0.01161909 -0.01762618 -0.00000171 -0.00628501
                                0.02367266  0.00011740 -0.00904041  0.00140964 -0.00169796  0.00473896 -0.00000477 -0.02034915

 18  1     6    1  |1 0>       -0.00000142 -0.00000167 -0.00000327  0.00000091  0.00000144  0.00000222  0.00000393 -0.00000226
                                0.00596266 -0.00301114  0.00388515  0.00964950 -0.00806875  0.00172916 -0.00000087 -0.28089026

 19  1     7    1  |1 0>        0.00100497 -0.00316083 -0.00018512  0.00444224  0.00758961  0.00562096 -0.00000278 -0.26272435
                               -0.00197196  0.00584572  0.00165865 -0.00129518 -0.00372535 -0.00373504 -0.00000290  0.07202281

 20  1     8    1  |1 0>       -0.00486063 -0.00011446  0.00085344  0.00064036  0.00091986 -0.00138677  0.00002490  0.07963344
                                0.00186765  0.00000481 -0.00071247  0.00010925 -0.00013618  0.00037186  0.00003798  0.25809483

 21  1     9    1  |1 0>       -0.00060514  0.04058526  0.00357926  0.01490623  0.00639043  0.00927831 -0.01231577  0.00000670
                               -0.00059613  0.00893306  0.00724596  0.00726814  0.01166703  0.01321149  0.00818855 -0.00001178

 22  1    10    1  |1 0>       -0.00000005  0.00000735  0.00000106 -0.00000169 -0.00000479 -0.00000486  0.00000208 -0.00001361
                               -0.00090661 -0.00957400  0.01236771  0.03069778 -0.02571238  0.00548910 -0.00000045 -0.21782063

 23  1    11    1  |1 0>        0.00015439  0.01004932  0.00063242 -0.01412512 -0.02415985 -0.01789141 -0.00000566  0.20372762
                               -0.00030133 -0.01861283 -0.00528905  0.00412305  0.01185803  0.01188606 -0.00000464 -0.05586453

 24  1    12    1  |1 0>        0.00000046 -0.00000302 -0.00000550  0.00000022 -0.00000403 -0.00000850  0.00003519  0.03487307
                               -0.00000248  0.00002028 -0.00000042  0.00000770  0.00000222  0.00000682  0.00004751  0.11304378

 25  1     1    1  |1 1>-      -0.00949349 -0.11824558 -0.00731378  0.16624213  0.28412973  0.21051842  0.00000137 -0.02172715
                                0.01873569  0.21891054  0.06217587 -0.04851326 -0.13951068 -0.13982643  0.00000143  0.00595337

 26  1     2    1  |1 1>-       0.29386905 -0.02711654  0.20114411  0.15232552  0.21810350 -0.33104800  0.00000354  0.00571643
                               -0.11279882  0.00214058 -0.16942003  0.02635750 -0.03182820  0.08891008  0.00000468  0.01852806

 27  1     3    1  |1 1>-      -0.14832249 -0.16559659 -0.24132763  0.00447597 -0.05781154 -0.04093233 -0.20388597  0.00001088
                               -0.30396494 -0.05858737 -0.37480184  0.15352656 -0.03811051 -0.29474482  0.13550952 -0.00000328

 28  1     4    1  |1 1>-       0.00099947 -0.00316520 -0.00018805  0.00445619  0.00758278  0.00562983 -0.00000239  0.26272366
                               -0.00197140  0.00585205  0.00166409 -0.00130196 -0.00373378 -0.00373958  0.00000227 -0.07203296

 29  1     5    1  |1 1>-       0.00000011 -0.00001002 -0.00000078  0.00000439  0.00000552  0.00000558 -0.00000274  0.00000453
                                0.00513300 -0.00259639  0.00334745  0.00831844 -0.00694613  0.00149542  0.00000013  0.29277261

 30  1     6    1  |1 1>-      -0.03094771 -0.00072708  0.00536515  0.00405876  0.00581355 -0.00884247 -0.00002472 -0.06917830
                                0.01187755  0.00007750 -0.00452134  0.00071094 -0.00084604  0.00237834 -0.00003547 -0.22421146

 31  1     7    1  |1 1>-       0.02354701  0.02107422 -0.00419324  0.00948211  0.00247495  0.00473624 -0.00000952  0.00000016
                                0.03983586  0.00404466 -0.00545377  0.00866593  0.00631308  0.00043536  0.00000693  0.00000385

 32  1     8    1  |1 1>-       0.00000040  0.00000227 -0.00000068 -0.00000181  0.00000065 -0.00000148  0.00000111  0.00000078
                                0.01076597 -0.00543166  0.00701281  0.01741094 -0.01457473  0.00311488 -0.00000010 -0.13959173

 33  1     9    1  |1 1>-       0.00015185  0.01006135  0.00061818 -0.01414014 -0.02415558 -0.01790265  0.00000408 -0.20372372
                               -0.00030174 -0.01861380 -0.00529041  0.00412489  0.01186442  0.01188704 -0.00000106  0.05585181

 34  1    10    1  |1 1>-      -0.00470711  0.00230934 -0.01709745 -0.01294876 -0.01854115  0.02815413  0.00002670  0.05364525
                                0.00180704 -0.00019501  0.01440194 -0.00224577  0.00270298 -0.00756234  0.00003813  0.17388538

 35  1    11    1  |1 1>-      -0.00237746 -0.01407710 -0.02052192  0.00038457 -0.00491224 -0.00347732 -0.01231485  0.00001285
                               -0.00487140 -0.00498223 -0.03187249  0.01306052 -0.00323155 -0.02506232  0.00818486 -0.00001464

 36  1    12    1  |1 1>-       0.00000013  0.00000919  0.00000349 -0.00000093 -0.00000828 -0.00000545 -0.00000102  0.00000095
                               -0.00000028 -0.00000094  0.00000855  0.00001238 -0.00002824 -0.00000627  0.00000018  0.14158754

 37  1     1    1  |0 0>        0.16561765  0.00288903 -0.22913359  0.03564369 -0.04304506  0.12024658  0.00000022 -0.00000261
                                0.43149691  0.03667437 -0.27203910 -0.20602258 -0.29497988  0.44773673 -0.00000008 -0.00000055

 38  1     2    1  |0 0>        0.08315496 -0.15238079  0.19675165  0.48847330 -0.40889762  0.08739938 -0.00000018 -0.00001084
                               -0.00000087 -0.00000507 -0.00000229  0.00000145  0.00000530  0.00000372  0.00000032  0.00000075

 39  1     3    1  |0 0>        0.02751266 -0.29608073 -0.08409312  0.06561158  0.18868572  0.18911249 -0.00000077  0.00000040
                                0.01394669 -0.15992529 -0.00989811  0.22483450  0.38428501  0.28472181  0.00000157 -0.00001056

 40  1     4    1  |0 0>       -0.39566578  0.06513032  0.44340819 -0.18712417  0.03921845  0.34467199  0.00000000 -0.00000175
                                0.19403358 -0.17585489 -0.28607868  0.01333784 -0.06556320 -0.04387415 -0.00000107 -0.00000198

 41  1     5    1  |0 0>       -0.26452227 -0.10469907  0.12328298 -0.21325764 -0.16122886 -0.02247334  0.00000198  0.00000223
                                0.15770369  0.53984646 -0.09658136  0.23983843  0.06482063  0.12144266  0.00000204  0.00000567

 42  1     6    1  |0 0>        0.00000132  0.00000111 -0.00000017 -0.00000099 -0.00000204 -0.00000245  0.50110019 -0.00001342
                               -0.00000084 -0.00000090 -0.00000074  0.00000064  0.00000004  0.00000112  0.75395195 -0.00003973


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.01635644  0.02482589 -0.00000584  0.00109781  0.00029239  0.00126347  0.01262760 -0.03490417
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000919  0.00000532 -0.02125959 -0.00001000  0.00000117 -0.00000221 -0.00968586  0.00063406
                                0.00002466  0.00000425  0.01327768  0.00000773 -0.00000764 -0.00000528 -0.03454468  0.00526023

  3  1     3    1  |1 1>+       0.03032817  0.00263895  0.00000239 -0.00022804  0.00024319  0.00013632 -0.03465509 -0.01644216
                               -0.01079322 -0.00176541  0.00001361  0.00028479 -0.00161420  0.00012522  0.01008675 -0.00681066

  4  1     4    1  |1 1>+      -0.19779740  0.30023445  0.00005949 -0.19164542 -0.05049403 -0.21418392 -0.08060646  0.22284333
                               -0.00000964 -0.00003557 -0.00002522 -0.00064658 -0.00011636  0.00014723  0.00000130  0.00003776

  5  1     5    1  |1 1>+      -0.04612680 -0.09453591  0.00001780  0.00081480  0.03935073 -0.01067801 -0.10558833 -0.08630538
                               -0.11676819 -0.31077968  0.00004625  0.20090161  0.02439795 -0.18574090 -0.05686954  0.25868933

  6  1     6    1  |1 1>+      -0.00000310  0.00000234 -0.00005924 -0.00004060  0.00018581 -0.00005316  0.01768503  0.14608572
                               -0.00000882 -0.00000815  0.00007211 -0.00004337  0.00002563  0.00001013 -0.27560516 -0.10139503

  7  1     7    1  |1 1>+      -0.36686165 -0.03191434  0.00011646 -0.03837947  0.04188559  0.02446431 -0.22133975 -0.10494711
                                0.13054924  0.02130748  0.00008866  0.04835188 -0.28019872  0.02268105  0.06440054 -0.04349161

  8  1     8    1  |1 1>+      -0.03171060 -0.06500056  0.00000658  0.00048191  0.02701994 -0.00752693  0.15367291  0.12547315
                               -0.08027537 -0.21365830 -0.00000123  0.13827706  0.01689682 -0.12752543  0.08273582 -0.37637684

  9  1     9    1  |1 1>+      -0.15338970  0.23283313 -0.00006313  0.28985840  0.07636276  0.32391561  0.07275948 -0.20112433
                               -0.00000609 -0.00002637  0.00004946  0.00098063  0.00019598 -0.00023938  0.00001793 -0.00006064

 10  1    10    1  |1 1>+      -0.00000254 -0.00000197  0.48859611 -0.00004692  0.00014113  0.00009756 -0.05584671  0.00365063
                               -0.00002899 -0.00000213 -0.30532189  0.00000189  0.00011541 -0.00000350 -0.19913069  0.03027983

 11  1    11    1  |1 1>+      -0.28450346 -0.02476086 -0.00014414  0.05801036 -0.06335564 -0.03700915  0.19978732  0.09470899
                                0.10124421  0.01652604 -0.00007853 -0.07310498  0.42372502 -0.03431013 -0.05816455  0.03925857

 12  1    12    1  |1 1>+       0.02443678  0.05009680  0.00002630  0.00161903  0.08090436 -0.02216097  0.00007956 -0.00005146
                                0.06184886  0.16466538  0.00004975  0.41343222  0.05029793 -0.38195355  0.00000208 -0.00010914

 13  1     1    1  |1 0>       -0.00005368 -0.00000386 -0.01328887  0.00000522  0.00000051 -0.00000397  0.00430646  0.01056872
                                0.00001701  0.00000359 -0.02125866  0.00000149  0.00001335 -0.00000920  0.00622880  0.01112371

 14  1     2    1  |1 0>       -0.00000305 -0.00001131 -0.00000093  0.00000796  0.00000515 -0.00000301  0.00000211 -0.00000008
                                0.01633854 -0.02482373 -0.00000482 -0.00110501 -0.00029227 -0.00125389  0.01262482 -0.03490113

 15  1     3    1  |1 0>        0.01012866  0.02700019  0.00000439  0.00121803  0.00015138 -0.00114295  0.00785628 -0.03575796
                               -0.00400255 -0.00820548 -0.00000315  0.00000249 -0.00023712  0.00007407 -0.01459905 -0.01192093

 16  1     4    1  |1 0>        0.00000637  0.00001337  0.00003288 -0.00003817  0.00005688  0.00003392  0.46870847  0.00037103
                                0.00000884  0.00000271 -0.00002083 -0.00008563 -0.00000467  0.00000704 -0.08394581  0.07913594

 17  1     5    1  |1 0>       -0.01185405 -0.00193456  0.00001770 -0.00433660  0.02545158 -0.00209421  0.12834419 -0.08670518
                               -0.03328332 -0.00289803  0.00004266 -0.00339550  0.00381602  0.00226824  0.44134886  0.20931030

 18  1     6    1  |1 0>       -0.00001117 -0.00002960 -0.00002517 -0.00071965 -0.00014717  0.00017772 -0.00003717 -0.00000582
                                0.19780035 -0.30023307 -0.00001724  0.19186580  0.05052358  0.21412887 -0.08063131  0.22290659

 19  1     7    1  |1 0>        0.12271074  0.32661381 -0.00001877 -0.21128761 -0.02575194  0.19505720 -0.05021270  0.22840560
                               -0.04847389 -0.09935589  0.00001165  0.00078510  0.04132729 -0.01139645  0.09326860  0.07612177

 20  1     8    1  |1 0>        0.15028120  0.02452911  0.00009201  0.05563725 -0.32256076  0.02612953  0.01014451 -0.00684154
                                0.42229584  0.03673556 -0.00013771  0.04413862 -0.04822428 -0.02818624  0.03478650  0.01645487

 21  1     9    1  |1 0>        0.00002413 -0.00000436  0.30523055  0.00008246 -0.00020973 -0.00003144  0.02482973  0.06091107
                               -0.00001387  0.00000561  0.48856826 -0.00001616  0.00033946  0.00003129  0.03587385  0.06407790

 22  1    10    1  |1 0>       -0.00000403 -0.00003746  0.00004020  0.00105191  0.00022034 -0.00027655  0.00005113 -0.00001366
                                0.15338589 -0.23283202  0.00001976 -0.29010869 -0.07640310 -0.32386986  0.07278615 -0.20122075

 23  1    11    1  |1 0>       -0.09515368 -0.25328346 -0.00002623 -0.31951019 -0.03890903  0.29505466 -0.04530743  0.20619978
                                0.03759376  0.07705824  0.00001910  0.00121948  0.06249513 -0.01720097  0.08420020  0.06868506

 24  1    12    1  |1 0>        0.06581992  0.01074567 -0.00013694 -0.09458340  0.54846398 -0.04443809 -0.00007182  0.00002504
                                0.18496944  0.01610116  0.00023737 -0.07504000  0.08201288  0.04793088  0.00002321  0.00006512

 25  1     1    1  |1 1>-       0.01014738  0.02700765  0.00000115  0.00121742  0.00014029 -0.00116316 -0.00785922  0.03575820
                               -0.00401114 -0.00821567  0.00000047 -0.00001019 -0.00024277  0.00005628  0.01460192  0.01192599

 26  1     2    1  |1 1>-       0.01078838  0.00176005 -0.00000597 -0.00027360  0.00161186 -0.00013528  0.01008156 -0.00681107
                                0.03032319  0.00264093  0.00000764 -0.00021061  0.00023931  0.00015008  0.03466179  0.01644344

 27  1     3    1  |1 1>-       0.00002348  0.00000141  0.01327910 -0.00000166 -0.00000315  0.00000297  0.03884855  0.00530939
                               -0.00000486 -0.00000267  0.02124675 -0.00000940 -0.00000787  0.00000851 -0.00346124  0.01176263

 28  1     4    1  |1 1>-      -0.12271594 -0.32661142  0.00004177  0.21114400  0.02564071 -0.19518429 -0.05018696  0.22830297
                                0.04847559  0.09935662 -0.00002411 -0.00085258 -0.04134416  0.01124024  0.09319062  0.07618014

 29  1     5    1  |1 1>-       0.00001250  0.00003508  0.00002726  0.00067943  0.00012020 -0.00016708  0.00000129 -0.00004401
                               -0.20616295  0.31293161  0.00005176 -0.19976621 -0.05263006 -0.22322906 -0.06937843  0.19181167

 30  1     6    1  |1 1>-      -0.13055118 -0.02130868 -0.00007627 -0.04830400  0.28021706 -0.02271770  0.06434652 -0.04347696
                               -0.36685413 -0.03191245  0.00012994 -0.03830262  0.04189333  0.02450610  0.22136611  0.10502121

 31  1     7    1  |1 1>-       0.00000107  0.00000370  0.00010788 -0.00008597  0.00008993  0.00003080  0.19309288 -0.10102668
                                0.00000693 -0.00000122  0.00003879 -0.00003887 -0.00018465  0.00005751 -0.10161884 -0.06694697

 32  1     8    1  |1 1>-      -0.00000717 -0.00001318 -0.00000830 -0.00040043 -0.00008801  0.00011511 -0.00004011 -0.00003304
                                0.09830268 -0.14920844  0.00002101  0.09549205  0.02512986  0.10637215 -0.14554851  0.40235642

 33  1     9    1  |1 1>-       0.09515021  0.25327833  0.00006018  0.31933538  0.03880365 -0.29517489 -0.04530400  0.20604844
                               -0.03759583 -0.07705554 -0.00002192 -0.00126939 -0.06252004  0.01705395  0.08410038  0.06878031

 34  1    10    1  |1 1>-       0.10124138  0.01652555 -0.00005465 -0.07305318  0.42374055 -0.03434771  0.05805388 -0.03923429
                                0.28451081  0.02475535  0.00017159 -0.05794334  0.06334918  0.03704466  0.19982475  0.09481717

 35  1    11    1  |1 1>-       0.00002036 -0.00000468  0.30529936  0.00003239 -0.00017249 -0.00001101 -0.22394728 -0.03062275
                               -0.00000649 -0.00000817  0.48860660  0.00001975  0.00014156  0.00008399  0.01991867 -0.06779121

 36  1    12    1  |1 1>-       0.00000693  0.00002064 -0.00004933 -0.00132518 -0.00026062  0.00032693 -0.00003290  0.00005346
                               -0.09970631  0.15137251 -0.00005493  0.37533180  0.09886435  0.41920859 -0.00001799  0.00006468

 37  1     1    1  |0 0>       -0.00000361  0.00000039 -0.00000273 -0.00000922 -0.00000324 -0.00000409 -0.05238634 -0.02484178
                                0.00000045  0.00000131  0.00000141  0.00000499  0.00000322 -0.00000299  0.01523204 -0.01029100

 38  1     2    1  |0 0>        0.00000439 -0.00000054 -0.00000401 -0.00003032 -0.00000439  0.00000699  0.01907776 -0.05274166
                               -0.00000105 -0.00000267 -0.00000001 -0.00000887 -0.00000340  0.00000389 -0.00000507 -0.00000693

 39  1     3    1  |0 0>        0.00000275  0.00000160 -0.00000206 -0.00000776 -0.00000230 -0.00001972  0.02206168  0.01802048
                                0.00000559  0.00000139 -0.00000434  0.00001903  0.00001346  0.00001641  0.01188125 -0.05403983

 40  1     4    1  |0 0>       -0.00000159 -0.00000043 -0.00000488 -0.00000828  0.00001466 -0.00000460 -0.00492917  0.01510793
                               -0.00000655 -0.00000374  0.00000203 -0.00000059 -0.00000312 -0.00000194 -0.05159014 -0.00654568

 41  1     5    1  |0 0>        0.00000378 -0.00000026  0.00000674 -0.00000384 -0.00002555  0.00000717 -0.01186517 -0.00843484
                                0.00000854 -0.00000070 -0.00001468  0.00001000 -0.00001128 -0.00000329 -0.02111998  0.01217971

 42  1     6    1  |0 0>       -0.00002162 -0.00000837 -0.04118945  0.00000167 -0.00004105 -0.00000063  0.00000060  0.00000516
                               -0.00007102 -0.00000767  0.02573442  0.00000507 -0.00001863 -0.00000269  0.00000207 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00583063 -0.04056654  0.01073060  0.03695728  0.03017888  0.01930337 -0.00494004  0.00433829
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.03454724  0.00087761  0.03555587 -0.00000336 -0.00000518  0.00000441 -0.00516019 -0.00794547
                                0.00149882 -0.01060061  0.01849684  0.00000022 -0.00000763  0.00000941  0.00312830  0.00102077

  3  1     3    1  |1 1>+       0.00528875 -0.00115605 -0.01420136 -0.00393364 -0.02108998  0.04050600 -0.00246188 -0.00007185
                               -0.00452669  0.01792785  0.03129599 -0.00327420  0.01519047 -0.01747996 -0.00667594 -0.00259702

  4  1     4    1  |1 1>+       0.03721626  0.25901251 -0.06852594  0.05476332  0.04438420  0.02836179 -0.07577276  0.06775523
                               -0.00000450 -0.00006199 -0.00001544  0.00016331  0.00017025  0.00003829  0.00384889  0.00227170

  5  1     5    1  |1 1>+      -0.11029112  0.03211401 -0.09477447  0.00937092 -0.01366696  0.00344039  0.03580296 -0.09052545
                               -0.00965453 -0.23347142  0.02140771  0.04911280 -0.04360589 -0.02511866  0.05350843 -0.07866013

  6  1     6    1  |1 1>+      -0.50926323 -0.00378484  0.16334024 -0.00001885  0.00027568 -0.00031204  0.11117613 -0.13785894
                               -0.24504684  0.09791010  0.23149163 -0.00004743  0.00022364 -0.00030010 -0.12958660 -0.07209578

  7  1     7    1  |1 1>+       0.03373783 -0.00739934 -0.09064131  0.00580552  0.03119626 -0.05989919  0.03596364  0.00073066
                               -0.02897467  0.11445824  0.19974312  0.00487882 -0.02244446  0.02580386  0.09880269  0.03533151

  8  1     8    1  |1 1>+       0.16039211 -0.04674370  0.13781726  0.00626335 -0.00940676  0.00229793 -0.04630792  0.13005379
                                0.01407023  0.33946371 -0.03112721  0.03347835 -0.03047516 -0.01758278 -0.07482934  0.11203869

  9  1     9    1  |1 1>+      -0.03358274 -0.23386156  0.06187811 -0.30427724 -0.24964492 -0.15956838 -0.25186264  0.22141030
                                0.00001563  0.00008252  0.00003727  0.00014994  0.00033324  0.00003781 -0.00043739  0.00055468

 10  1    10    1  |1 1>+       0.19897998  0.00499861  0.20481106 -0.00029809  0.00006774 -0.00011462 -0.26624847 -0.41038201
                                0.00854746 -0.06105442  0.10654142 -0.00001082  0.00022072 -0.00052402  0.16132918  0.05241724

 11  1    11    1  |1 1>+      -0.03046707  0.00668925  0.08182066 -0.03251488 -0.17363581  0.33378301  0.12717464  0.00308689
                                0.02621787 -0.10333024 -0.18027595 -0.02708537  0.12532195 -0.14409402  0.34365827  0.13759574

 12  1    12    1  |1 1>+      -0.00004223 -0.00002081 -0.00002081 -0.10202961  0.14763148 -0.03554825 -0.00022705  0.00053741
                                0.00002160 -0.00010713  0.00000222 -0.53087714  0.47443200  0.27437277 -0.00065306  0.00071538

 13  1     1    1  |1 0>        0.01993348 -0.01296435 -0.00888273 -0.00000276  0.00000182 -0.00000183 -0.00279181 -0.00186573
                               -0.05714618 -0.00073218 -0.00497823  0.00000046 -0.00000590  0.00000102 -0.00116959  0.00847043

 14  1     2    1  |1 0>        0.00000689  0.00000257  0.00000448 -0.00000976 -0.00000760 -0.00000480  0.00001509 -0.00001861
                               -0.00583180 -0.04055520  0.01072957 -0.03695386 -0.03017151 -0.01929568 -0.00483580  0.00425198

 15  1     3    1  |1 0>        0.00134303  0.03226813 -0.00296110 -0.03482989  0.03110699  0.01798582  0.00301762 -0.00448445
                               -0.01524105  0.00443742 -0.01309720  0.00668861 -0.00968267  0.00233024 -0.00183256  0.00518875

 16  1     4    1  |1 0>        0.10819402  0.05255500 -0.29281533  0.00006002  0.00006016 -0.00003664  0.14224776  0.06028316
                                0.07613844  0.00646516  0.42203562  0.00018098  0.00013672  0.00008807  0.17945417  0.11408127

 17  1     5    1  |1 0>       -0.05759349  0.22817600  0.39827330 -0.00050925  0.00208416 -0.00234519  0.20681433  0.08386003
                               -0.06722826  0.01472069  0.18065233  0.00054293  0.00274760 -0.00556545 -0.08028331 -0.00427133

 18  1     6    1  |1 0>       -0.00005543 -0.00004018 -0.00007028  0.00002203  0.00003137  0.00009644 -0.00270042  0.00445915
                                0.03722439  0.25882228 -0.06846792 -0.05480978 -0.04505513 -0.02870322 -0.07758964  0.07176437

 19  1     7    1  |1 0>       -0.00854031 -0.20591812  0.01888072 -0.05161266  0.04644346  0.02674445  0.04949440 -0.07217514
                                0.09729993 -0.02836621  0.08360413  0.01006458 -0.01431843  0.00342118 -0.02800531  0.08189159

 20  1     8    1  |1 0>       -0.00465334  0.01800894  0.03137939  0.00551655 -0.02583145  0.02981152  0.01591357  0.01041270
                               -0.00533143  0.00117364  0.01427510 -0.00662442 -0.03597836  0.06925898 -0.00120357  0.00304625

 21  1     9    1  |1 0>        0.11497863 -0.07476873 -0.05119777 -0.00013751  0.00041567 -0.00084329 -0.14408431 -0.09632442
                               -0.32942247 -0.00424534 -0.02869958  0.00010569 -0.00053654  0.00036916 -0.06030170  0.43708932

 22  1    10    1  |1 0>        0.00006330  0.00005421  0.00008028 -0.00006564 -0.00026945 -0.00002051  0.00031406 -0.00043814
                               -0.03361280 -0.23356486  0.06177708  0.30466754  0.24777833  0.15856427 -0.25269954  0.22206547

 23  1    11    1  |1 0>       -0.00771422 -0.18582006  0.01704088 -0.28710275  0.25550203  0.14793220 -0.15829881  0.23450787
                                0.08781378 -0.02560488  0.07546700  0.05521873 -0.07975844  0.01920411  0.09517022 -0.26982796

 24  1    12    1  |1 0>        0.00015568 -0.00004731  0.00002831  0.04996713 -0.23166475  0.26653750  0.00022234 -0.00083335
                                0.00002807 -0.00001550 -0.00004898 -0.06001201 -0.32153057  0.61762459  0.00004463 -0.00011192

 25  1     1    1  |1 1>-      -0.00133938 -0.03227984  0.00296257 -0.03482472  0.03111782  0.01799916 -0.00310458  0.00458320
                                0.01524571 -0.00444145  0.01310064  0.00669433 -0.00968629  0.00233207  0.00185601 -0.00525582

 26  1     2    1  |1 1>-      -0.00452124  0.01792604  0.03130208  0.00327877 -0.01519571  0.01748264 -0.00664733 -0.00271580
                               -0.00528367  0.00114979  0.01420017 -0.00393949 -0.02108500  0.04050347  0.00246322  0.00005224

 27  1     3    1  |1 1>-       0.01844806 -0.00237093 -0.02737918 -0.00000514 -0.00000698  0.00001592 -0.00591560 -0.00287735
                               -0.02262808  0.00013991  0.03057735 -0.00000827  0.00000190 -0.00000271 -0.00632637  0.00051558

 28  1     4    1  |1 1>-      -0.00852223 -0.20606548  0.01888959  0.05141219 -0.04551795 -0.02655483  0.04773666 -0.07082759
                                0.09735241 -0.02834239  0.08365094 -0.00990434  0.01425489 -0.00330414 -0.02429582  0.08098712

 29  1     5    1  |1 1>-       0.00000298  0.00006264  0.00002580  0.00015028  0.00007620  0.00008523  0.00243577  0.00462061
                                0.03203381  0.22296586 -0.05899105  0.05681716  0.04614962  0.02964929 -0.06524306  0.05818707

 30  1     6    1  |1 1>-      -0.02880870  0.11442711  0.19977964 -0.00487876  0.02254328 -0.02585676  0.09828189  0.03995977
                               -0.03369710  0.00738212  0.09057727  0.00591970  0.03110027 -0.05957051 -0.03007394  0.00319784

 31  1     7    1  |1 1>-      -0.13686234  0.15046153 -0.06133458 -0.00007726  0.00014419 -0.00046257  0.00133607 -0.01364645
                                0.58540041  0.01025077  0.25870961  0.00007942 -0.00021166  0.00002342  0.05750287  0.25116915

 32  1     8    1  |1 1>-      -0.00005688  0.00000118 -0.00006338 -0.00010258 -0.00026474 -0.00010019  0.00284727 -0.00390809
                                0.06719704  0.46739390 -0.12364671 -0.02687787 -0.02259149 -0.01446532 -0.13269746  0.11360843

 33  1     9    1  |1 1>-      -0.00769074 -0.18605396  0.01706347  0.28676877 -0.25736513 -0.14867873 -0.15760565  0.23376499
                                0.08789786 -0.02557367  0.07551149 -0.05507358  0.07983456 -0.01922940  0.09493532 -0.26926442

 34  1    10    1  |1 1>-      -0.02593877  0.10326449  0.18033095 -0.02692569  0.12511964 -0.14405953 -0.34389629 -0.13672327
                               -0.03040888  0.00665034  0.08172556  0.03235223  0.17394297 -0.33389297  0.12713209  0.00320871

 35  1    11    1  |1 1>-      -0.10620365  0.01361755  0.15774998  0.00013343 -0.00015867  0.00026916  0.30543200  0.14873749
                                0.13025529 -0.00082431 -0.17613184  0.00018665  0.00045076 -0.00023376  0.32654333 -0.02671160

 36  1    12    1  |1 1>-      -0.00004941 -0.00010218 -0.00008310  0.00006044  0.00005648  0.00001493 -0.00011070  0.00011812
                                0.00002675 -0.00015167  0.00005577  0.56332432  0.46013841  0.29428192 -0.00079096  0.00063129

 37  1     1    1  |0 0>        0.00797691 -0.00174920 -0.02143803 -0.00001166  0.00002030 -0.00000830  0.01681229  0.00041515
                               -0.00683706  0.02708035  0.04726411 -0.00001109  0.00001423 -0.00000309  0.04546017  0.01813628

 38  1     2    1  |0 0>       -0.00880713 -0.06126759  0.01620849 -0.00002496  0.00012091  0.00006464  0.03336118 -0.02932140
                               -0.00000608  0.00000426 -0.00000651 -0.00001537 -0.00004015 -0.00000430  0.00005055 -0.00006585

 39  1     3    1  |0 0>        0.02303070 -0.00671103  0.01978897 -0.00001032 -0.00000491  0.00000065 -0.01256978  0.03564309
                                0.00201679  0.04874247 -0.00446776 -0.00001945 -0.00012087 -0.00004749 -0.02088829  0.03096082

 40  1     4    1  |0 0>       -0.02723214  0.00022360  0.04099076  0.00002288  0.00005011 -0.00002624  0.03783393 -0.00116789
                               -0.02356987  0.00249558  0.03603776 -0.00001454  0.00001797 -0.00002754 -0.03499565 -0.01692536

 41  1     5    1  |0 0>        0.07022102  0.00120539  0.02924034  0.00002550 -0.00004138  0.00003196  0.01234724  0.05610403
                                0.01699854 -0.01789660  0.00604331  0.00001074 -0.00004061  0.00008898  0.00004046  0.00347621

 42  1     6    1  |0 0>       -0.00000482  0.00000074  0.00000063 -0.00000138  0.00000424 -0.00000293  0.00000117 -0.00000257
                                0.00000447 -0.00000116  0.00000016  0.00000082  0.00000576 -0.00000924 -0.00000077 -0.00000273


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00759959 -0.00223724  0.00652683  0.00007670  0.00008525 -0.00006131  0.00011854  0.00003477
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00565504 -0.00385568 -0.00649733  0.00003731  0.00005313  0.00000316 -0.00006545  0.00003386
                               -0.00000469 -0.00250126  0.00084879  0.00002236 -0.00009536 -0.00003557 -0.00003051 -0.00010979

  3  1     3    1  |1 1>+       0.00148177  0.00358931 -0.00231707 -0.00004307  0.00007243  0.00003774 -0.00000407  0.00002206
                               -0.00661409  0.00144702  0.00487400  0.00007462  0.00001327  0.00001562 -0.00009508  0.00000022

  4  1     4    1  |1 1>+       0.11579211 -0.03086880  0.09986404 -0.21381266  0.15997565  0.13654228  0.01124434 -0.00920726
                                0.00525858  0.00122106 -0.00003862  0.23454587 -0.32088233  0.08451511 -0.18405980  0.23632452

  5  1     5    1  |1 1>+       0.03512969  0.06495504  0.06358753  0.38758284  0.29036820  0.00646595 -0.07835914  0.06313537
                                0.05431397  0.09869820  0.05847870  0.03939709  0.07522851  0.06091484 -0.00008168 -0.00168751

  6  1     6    1  |1 1>+      -0.03135420 -0.24481228  0.13139498 -0.23722379 -0.25031004 -0.02293053  0.16578401  0.13704232
                               -0.06413883 -0.03146637  0.01173707  0.04391955  0.08047787  0.17986527 -0.02766585  0.04618174

  7  1     7    1  |1 1>+      -0.02236017 -0.05287803  0.03589422  0.00770249 -0.19743698 -0.32182165 -0.07782324 -0.26598047
                                0.10213159 -0.02417382 -0.07531414  0.04625838  0.09150505  0.03138328  0.05253972 -0.34384783

  8  1     8    1  |1 1>+      -0.05238032 -0.09506443 -0.08996949 -0.01838767  0.08788881 -0.10501854 -0.25642861  0.03855746
                               -0.08410111 -0.14160641 -0.09137287  0.11234430  0.15525041 -0.19349647  0.33692215  0.28716161

  9  1     9    1  |1 1>+       0.39121087 -0.11314573  0.33737400  0.00437169  0.00420782 -0.00369047  0.00482582  0.00186567
                               -0.00150336 -0.00124688 -0.00178585  0.00008083 -0.00029103  0.00053324 -0.00147127  0.00014461

 10  1    10    1  |1 1>+       0.29166342 -0.19917040 -0.33486222  0.00211108  0.00301557  0.00033022 -0.00355491  0.00131114
                               -0.00030084 -0.12905916  0.04397221  0.00107643 -0.00472649 -0.00185875 -0.00131739 -0.00532608

 11  1    11    1  |1 1>+      -0.07725182 -0.18648725  0.12006710  0.00196056 -0.00442849 -0.00159426  0.00101308 -0.00038399
                                0.34023086 -0.07132329 -0.25195046 -0.00402497  0.00075141 -0.00087028  0.00391413  0.00008757

 12  1    12    1  |1 1>+      -0.00005427 -0.00018921 -0.00038010  0.00013055  0.00008032  0.00000244  0.00015554 -0.00008262
                                0.00046772 -0.00032746  0.00055390 -0.00001217 -0.00016940  0.00005833 -0.00003607 -0.00017370

 13  1     1    1  |1 0>       -0.00204551 -0.00213801  0.00079869  0.00000964 -0.00009861 -0.00003296 -0.00003947 -0.00004373
                               -0.00176936  0.00992903 -0.00103807  0.00012615 -0.00006238  0.00004052  0.00006725 -0.00008950

 14  1     2    1  |1 0>        0.00005247  0.00004620  0.00006130 -0.00000749  0.00001208 -0.00002442  0.00003837 -0.00000086
                                0.00756813 -0.00215617  0.00654738  0.00009245  0.00008565 -0.00007681  0.00008807  0.00004992

 15  1     3    1  |1 0>        0.00321485  0.00565755  0.00349590 -0.00003045  0.00000672  0.00012549  0.00003487 -0.00005941
                               -0.00219848 -0.00382187 -0.00357479 -0.00002652  0.00000616 -0.00001873 -0.00000238 -0.00005581

 16  1     4    1  |1 0>        0.02951937 -0.04809659  0.01411486  0.04429391  0.08082101  0.17933262 -0.02725931  0.04314420
                               -0.14706358 -0.03396595  0.21449688  0.22988426  0.25019816  0.02090629 -0.16559343 -0.13440096

 17  1     5    1  |1 0>        0.20166103 -0.04314668 -0.14936171  0.15094139 -0.22475993  0.06575355 -0.00227753  0.10850984
                                0.04476737  0.11038957 -0.07145016  0.05283932 -0.19379076 -0.05241966  0.04441456 -0.07693003

 18  1     6    1  |1 0>       -0.00014662  0.00051896 -0.00022522 -0.14587325  0.10240436  0.01550899 -0.35370109  0.22683543
                                0.11672727 -0.03645245  0.10077762 -0.21010768  0.09790418  0.45767148  0.07433244 -0.08325094

 19  1     7    1  |1 0>        0.04425194  0.08901706  0.04811642  0.12474289  0.17261872 -0.22293119  0.38933234  0.32859708
                               -0.03769827 -0.06073359 -0.05595730  0.05553062 -0.07429817  0.12045011  0.28799330 -0.04140764

 20  1     8    1  |1 0>        0.01365546  0.00193102 -0.01023255 -0.29571915  0.18787438 -0.14477156 -0.07151612  0.36780784
                                0.00561519  0.01204123 -0.00442112 -0.06784970 -0.01401583 -0.41352282 -0.18480130 -0.29400304

 21  1     9    1  |1 0>       -0.10552814 -0.11035898  0.04129896  0.00064500 -0.00510597 -0.00126359 -0.00178056 -0.00190293
                               -0.09119921  0.51239255 -0.05376137  0.00614149 -0.00288460  0.00193854  0.00333950 -0.00427734

 22  1    10    1  |1 0>        0.00109860  0.00089229  0.00131207 -0.00001899  0.00017120 -0.00034815  0.00118929 -0.00015537
                                0.39151106 -0.11373327  0.33725299  0.00426700  0.00420200 -0.00357351  0.00508263  0.00176604

 23  1    11    1  |1 0>       -0.16370245 -0.29343752 -0.17779718  0.00112385 -0.00095925 -0.00596378 -0.00170198  0.00225506
                                0.11372754  0.19794504  0.18599263  0.00081383 -0.00064561  0.00114473 -0.00003917  0.00316349

 24  1    12    1  |1 0>        0.00020725 -0.00079076  0.00018692  0.00000831 -0.00020815  0.00002151  0.00016354 -0.00009195
                               -0.00020212 -0.00028282  0.00014005 -0.00008617 -0.00009811  0.00002511  0.00014838  0.00017056

 25  1     1    1  |1 1>-      -0.00314287 -0.00570199 -0.00341069  0.00002503 -0.00003170 -0.00011888 -0.00004246  0.00003107
                                0.00220725  0.00384425  0.00362425  0.00000524 -0.00001424  0.00002014 -0.00002130  0.00007076

 26  1     2    1  |1 1>-      -0.00658576  0.00133419  0.00489970  0.00008348 -0.00002001  0.00001957 -0.00007164 -0.00001346
                               -0.00150846 -0.00363129  0.00233771  0.00003236 -0.00008700 -0.00003031  0.00002928  0.00000753

 27  1     3    1  |1 1>-      -0.00203992  0.00036256 -0.00005112 -0.00001056 -0.00000311  0.00000604 -0.00001272  0.00006547
                                0.00388904  0.00606100 -0.00753471  0.00015919 -0.00000818  0.00004259  0.00000323 -0.00005230

 28  1     4    1  |1 1>-       0.04745124  0.08782602  0.05207076  0.01377508 -0.00045675 -0.15433300  0.16902482  0.14241015
                               -0.03856198 -0.06117548 -0.05442462  0.41234384  0.25951340  0.05790218  0.04574028  0.04385963

 29  1     5    1  |1 1>-       0.00556818  0.00184504  0.00031519  0.15117699 -0.26182061  0.09292288 -0.38342692  0.36403848
                                0.10067382 -0.03346745  0.08671296  0.09575063 -0.10241500  0.12180157  0.03285256 -0.03731800

 30  1     6    1  |1 1>-       0.09948329 -0.01779748 -0.07358969 -0.30785724  0.32823731 -0.14124090 -0.02963308  0.06973078
                                0.02482391  0.05681145 -0.03454633 -0.09056994  0.19892650 -0.14944755 -0.13898794 -0.06552928

 31  1     7    1  |1 1>-      -0.02978604 -0.06675788  0.02502309 -0.04333905 -0.08501637 -0.18098082  0.02608746 -0.04786797
                               -0.11252877  0.21122055  0.08354528 -0.23177147 -0.25288424 -0.02121035  0.16875627  0.13323918

 32  1     8    1  |1 1>-       0.00163229  0.00056585  0.00147917  0.13859382 -0.10941412 -0.00651341  0.27809578 -0.16846511
                                0.20909458 -0.05860513  0.18010759  0.19342196 -0.08988103 -0.39080156 -0.05819837  0.07079092

 33  1     9    1  |1 1>-      -0.16419429 -0.29312247 -0.17839705  0.00114180 -0.00076483 -0.00603316 -0.00165329  0.00244608
                                0.11366816  0.19774882  0.18558493  0.00096573 -0.00055244  0.00114661  0.00013739  0.00307309

 34  1    10    1  |1 1>-      -0.34045584  0.07214467  0.25175796  0.00400384 -0.00052016  0.00084337 -0.00409831  0.00001878
                               -0.07703189 -0.18617409  0.11991948  0.00206458 -0.00432082 -0.00162610  0.00085270 -0.00057267

 35  1    11    1  |1 1>-       0.10523112 -0.01869811  0.00268103  0.00042766  0.00038441 -0.00059605  0.00046438 -0.00341771
                               -0.20045731 -0.31323052  0.38862789 -0.00825369 -0.00011523 -0.00226261  0.00021574  0.00296933

 36  1    12    1  |1 1>-      -0.00039005 -0.00033974 -0.00044055  0.00005941 -0.00009925  0.00016249 -0.00025576 -0.00001656
                                0.00028333 -0.00056987 -0.00009213 -0.00009702 -0.00000824  0.00009883  0.00022540 -0.00008912

 37  1     1    1  |0 0>       -0.01020140 -0.02463957  0.01586798  0.00026580 -0.00057636 -0.00021312  0.00012290 -0.00006263
                                0.04500755 -0.00948616 -0.03330585 -0.00053054  0.00008214 -0.00011311  0.00053077  0.00000573

 38  1     2    1  |0 0>       -0.05175273  0.01500039 -0.04460472 -0.00057078 -0.00055594  0.00047911 -0.00065564 -0.00024141
                                0.00017312  0.00014227  0.00020492 -0.00000740  0.00003034 -0.00005909  0.00017361 -0.00001902

 39  1     3    1  |0 0>       -0.01503507 -0.02616246 -0.02456745 -0.00011695  0.00007870 -0.00015125 -0.00000405 -0.00041234
                               -0.02168110 -0.03878128 -0.02355204  0.00015054 -0.00011455 -0.00079349 -0.00022348  0.00031010

 40  1     4    1  |0 0>       -0.02379846 -0.03426216  0.04510797 -0.00093482 -0.00002462 -0.00025587  0.00003823  0.00032598
                               -0.01180837  0.00267326 -0.00049597 -0.00005309 -0.00002100  0.00007367 -0.00004627  0.00040672

 41  1     5    1  |0 0>       -0.02452651  0.04822845  0.01707592  0.00029862 -0.00038983  0.00011521  0.00045438 -0.00038226
                                0.00739964  0.01574814 -0.00562387 -0.00011197  0.00065057  0.00020446  0.00020751  0.00046514

 42  1     6    1  |0 0>        0.00000076 -0.00000331  0.00000008 -0.00000119 -0.00000014 -0.00000048  0.00000040  0.00000086
                               -0.00000016  0.00000025  0.00000052 -0.00000072  0.00000010 -0.00000100  0.00000111  0.00000032


   Total
 Nr Sym  State Sym Spin / Nr.       41          42

  1  1     1    1  |1 1>+       0.00001465 -0.00005359
                               -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00004810 -0.00002612
                                0.00004727 -0.00001197

  3  1     3    1  |1 1>+       0.00004000  0.00002749
                               -0.00000593 -0.00003152

  4  1     4    1  |1 1>+       0.22724783 -0.06342194
                                0.23597707  0.27720100

  5  1     5    1  |1 1>+       0.02448835  0.28117108
                                0.40337671 -0.12910358

  6  1     6    1  |1 1>+       0.07124477  0.15363840
                                0.17842336 -0.25480513

  7  1     7    1  |1 1>+       0.28906172 -0.03567263
                                0.21665728  0.22506759

  8  1     8    1  |1 1>+       0.10106963 -0.05019557
                                0.18520446 -0.12932118

  9  1     9    1  |1 1>+       0.00066940 -0.00286389
                               -0.00063733  0.00009667

 10  1    10    1  |1 1>+      -0.00230522 -0.00140698
                                0.00202847 -0.00026638

 11  1    11    1  |1 1>+      -0.00152666 -0.00142080
                                0.00044248  0.00262869

 12  1    12    1  |1 1>+       0.00003035  0.00006667
                                0.00005607 -0.00001461

 13  1     1    1  |1 0>        0.00002665  0.00004740
                               -0.00000336 -0.00003864

 14  1     2    1  |1 0>        0.00002431 -0.00000513
                                0.00001616 -0.00005924

 15  1     3    1  |1 0>        0.00000599 -0.00000753
                                0.00002773  0.00001562

 16  1     4    1  |1 0>        0.17903172 -0.25718247
                               -0.06908420 -0.15080460

 17  1     5    1  |1 0>       -0.20619574 -0.29705412
                                0.24247331 -0.04525694

 18  1     6    1  |1 0>       -0.10461286 -0.12932840
                                0.03852218  0.13477545

 19  1     7    1  |1 0>        0.17652824 -0.13746749
                               -0.11282075  0.08418027

 20  1     8    1  |1 0>       -0.03064894  0.09141570
                                0.09128026  0.01329112

 21  1     9    1  |1 0>        0.00134685  0.00241210
                               -0.00014485 -0.00178103

 22  1    10    1  |1 0>        0.00043853 -0.00002808
                                0.00064983 -0.00282396

 23  1    11    1  |1 0>        0.00011218  0.00033992
                               -0.00149275 -0.00104493

 24  1    12    1  |1 0>        0.00002579 -0.00018921
                                0.00001087  0.00006764

 25  1     1    1  |1 1>-       0.00000185  0.00000427
                               -0.00003180 -0.00002789

 26  1     2    1  |1 1>-      -0.00000219 -0.00005870
                               -0.00003775 -0.00001848

 27  1     3    1  |1 1>-      -0.00002121  0.00005800
                               -0.00005003 -0.00006326

 28  1     4    1  |1 1>-      -0.32847360  0.06997747
                               -0.02339334  0.31891244

 29  1     5    1  |1 1>-       0.17613486  0.20306348
                               -0.20446859  0.13849789

 30  1     6    1  |1 1>-       0.20008174  0.35731281
                               -0.20600158  0.05506617

 31  1     7    1  |1 1>-      -0.17722343  0.25693833
                                0.07112063  0.15205764

 32  1     8    1  |1 1>-       0.10519935  0.12829816
                               -0.04906878 -0.10836030

 33  1     9    1  |1 1>-       0.00004977  0.00035104
                               -0.00146065 -0.00097149

 34  1    10    1  |1 1>-      -0.00047274 -0.00242755
                               -0.00154482 -0.00149329

 35  1    11    1  |1 1>-       0.00068550 -0.00266576
                                0.00243707  0.00319415

 36  1    12    1  |1 1>-      -0.00017609  0.00005617
                               -0.00002061  0.00003930

 37  1     1    1  |0 0>       -0.00020545 -0.00019110
                                0.00005876  0.00033223

 38  1     2    1  |0 0>       -0.00008846  0.00037586
                                0.00007069 -0.00000918

 39  1     3    1  |0 0>        0.00019477  0.00013356
                                0.00000934  0.00004636

 40  1     4    1  |0 0>        0.00028397  0.00036423
                               -0.00008770  0.00030241

 41  1     5    1  |0 0>        0.00013322 -0.00003755
                               -0.00022159 -0.00015032

 42  1     6    1  |0 0>        0.00000077  0.00000025
                                0.00000027  0.00000075



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   21.66%    4.16%   23.77%    7.62%    2.76%    5.69%    7.29%
  2  1     2    1  |1 1>+        27.28%    0.00%    0.00%    0.00%    4.13%    7.69%    4.22%    0.43%
  3  1     3    1  |1 1>+         0.00%   15.50%   31.20%    2.89%    4.28%    9.29%    0.11%    0.08%
  4  1     4    1  |1 1>+         0.00%    0.04%    0.01%    0.04%    0.08%    0.03%    0.06%    0.08%
  5  1     5    1  |1 1>+         0.00%    0.02%    0.02%    0.04%    0.11%    0.04%    0.00%    0.18%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.12%    0.64%    0.16%
  7  1     7    1  |1 1>+         0.00%    0.03%    0.05%    0.01%    0.05%    0.10%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.01%    0.01%    0.02%    0.24%    0.09%    0.01%    0.37%
  9  1     9    1  |1 1>+         0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.13%    0.14%    0.23%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         27.28%    0.00%    0.00%    0.00%    2.86%    0.23%   23.29%    4.92%
 14  1     2    1  |1 0>          0.00%   21.66%    4.16%   23.77%    7.62%    2.76%    5.69%    7.29%
 15  1     3    1  |1 0>          0.00%   12.43%   14.24%   22.92%    7.91%    3.12%    0.25%   12.36%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.08%    0.37%    0.01%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.41%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.04%    0.01%    0.04%    0.08%    0.03%    0.06%    0.08%
 19  1     7    1  |1 0>          0.00%    0.02%    0.02%    0.04%    0.09%    0.03%    0.00%    0.14%
 20  1     8    1  |1 0>          0.00%    0.04%    0.07%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 22  1    10    1  |1 0>          0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.16%    0.32%    0.03%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%   12.43%   14.24%   22.93%    7.91%    3.12%    0.25%   12.36%
 26  1     2    1  |1 1>-         0.00%   15.50%   31.20%    2.89%    4.28%    9.29%    0.11%    0.08%
 27  1     3    1  |1 1>-        27.28%    0.00%    0.00%    0.00%    0.74%    9.10%    7.74%    2.56%
 28  1     4    1  |1 1>-         0.00%    0.02%    0.02%    0.04%    0.09%    0.03%    0.00%    0.14%
 29  1     5    1  |1 1>-         0.00%    0.04%    0.01%    0.04%    0.06%    0.02%    0.05%    0.06%
 30  1     6    1  |1 1>-         0.00%    0.03%    0.05%    0.01%    0.05%    0.10%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.15%    0.07%    0.52%    0.09%
 32  1     8    1  |1 1>-         0.00%    0.01%    0.00%    0.01%    0.28%    0.10%    0.21%    0.26%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.22%    0.04%    0.24%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    9.24%   20.04%    0.24%    0.17%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   16.43%    5.95%   12.27%   15.71%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   17.05%    6.72%    0.55%   26.64%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.28%   15.17%   11.32%    3.86%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.06%    3.17%   26.67%    4.67%
 42  1     6    1  |0 0>         17.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.32%    1.27%    2.12%   13.04%    9.14%    0.42%    0.00%    0.05%
  2  1     2    1  |1 1>+        15.09%    9.93%   12.35%    8.95%    1.01%    2.41%    5.99%    0.00%
  3  1     3    1  |1 1>+         9.91%    0.07%    6.92%    2.39%    4.86%   11.75%    0.00%    0.04%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    7.89%
  5  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.01%    0.01%    0.00%    6.72%
  6  1     6    1  |1 1>+         0.09%    0.03%    0.02%    0.00%    0.00%    0.02%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.11%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    5.51%
  8  1     8    1  |1 1>+         0.00%    0.01%    0.00%    0.01%    0.02%    0.01%    0.00%    3.18%
  9  1     9    1  |1 1>+         0.00%    0.01%    0.02%    0.09%    0.07%    0.00%    0.00%    4.74%
 10  1    10    1  |1 1>+         0.00%    0.07%    0.09%    0.06%    0.01%    0.02%    0.02%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.05%    0.02%    0.04%    0.08%    0.00%    3.31%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.89%
 13  1     1    1  |1 0>          0.28%   23.89%    0.90%    3.80%    2.45%    3.61%    5.99%    0.00%
 14  1     2    1  |1 0>          0.32%    1.27%    2.12%   13.04%    9.14%    0.42%    0.00%    0.05%
 15  1     3    1  |1 0>          0.04%    6.19%    0.39%    3.00%   10.02%    6.39%    0.00%    0.05%
 16  1     4    1  |1 0>          0.59%    0.00%    0.05%    0.01%    0.00%    0.01%    0.00%    0.00%
 17  1     5    1  |1 0>          0.44%    0.00%    0.02%    0.01%    0.01%    0.03%    0.00%    0.05%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    7.89%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    7.42%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.30%
 21  1     9    1  |1 0>          0.00%    0.17%    0.01%    0.03%    0.02%    0.03%    0.02%    0.00%
 22  1    10    1  |1 0>          0.00%    0.01%    0.02%    0.09%    0.07%    0.00%    0.00%    4.74%
 23  1    11    1  |1 0>          0.00%    0.04%    0.00%    0.02%    0.07%    0.05%    0.00%    4.46%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.40%
 25  1     1    1  |1 1>-         0.04%    6.19%    0.39%    3.00%   10.02%    6.39%    0.00%    0.05%
 26  1     2    1  |1 1>-         9.91%    0.07%    6.92%    2.39%    4.86%   11.75%    0.00%    0.04%
 27  1     3    1  |1 1>-        11.44%    3.09%   19.87%    2.36%    0.48%    8.85%    5.99%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    7.42%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    8.57%
 30  1     6    1  |1 1>-         0.11%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    5.51%
 31  1     7    1  |1 1>-         0.21%    0.05%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.03%    0.02%    0.00%    0.00%    1.95%
 33  1     9    1  |1 1>-         0.00%    0.04%    0.00%    0.02%    0.07%    0.05%    0.00%    4.46%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.05%    0.02%    0.04%    0.08%    0.00%    3.31%
 35  1    11    1  |1 1>-         0.00%    0.02%    0.14%    0.02%    0.00%    0.06%    0.02%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.00%
 37  1     1    1  |0 0>         21.36%    0.14%   12.65%    4.37%    8.89%   21.49%    0.00%    0.00%
 38  1     2    1  |0 0>          0.69%    2.32%    3.87%   23.86%   16.72%    0.76%    0.00%    0.00%
 39  1     3    1  |0 0>          0.10%   11.32%    0.72%    5.49%   18.33%   11.68%    0.00%    0.00%
 40  1     4    1  |0 0>         19.42%    3.52%   27.85%    3.52%    0.58%   12.07%    0.00%    0.00%
 41  1     5    1  |0 0>          9.48%   30.24%    2.45%   10.30%    3.02%    1.53%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.95%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.03%    0.06%    0.00%    0.00%    0.00%    0.00%    0.02%    0.12%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.13%    0.00%
  3  1     3    1  |1 1>+         0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.03%
  4  1     4    1  |1 1>+         3.91%    9.01%    0.00%    3.67%    0.25%    4.59%    0.65%    4.97%
  5  1     5    1  |1 1>+         1.58%   10.55%    0.00%    4.04%    0.21%    3.46%    1.44%    7.44%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.63%    3.16%
  7  1     7    1  |1 1>+        15.16%    0.15%    0.00%    0.38%    8.03%    0.11%    5.31%    1.29%
  8  1     8    1  |1 1>+         0.74%    4.99%    0.00%    1.91%    0.10%    1.63%    3.05%   15.74%
  9  1     9    1  |1 1>+         2.35%    5.42%    0.00%    8.40%    0.58%   10.49%    0.53%    4.05%
 10  1    10    1  |1 1>+         0.00%    0.00%   33.19%    0.00%    0.00%    0.00%    4.28%    0.09%
 11  1    11    1  |1 1>+         9.12%    0.09%    0.00%    0.87%   18.36%    0.25%    4.33%    1.05%
 12  1    12    1  |1 1>+         0.44%    2.96%    0.00%   17.09%    0.91%   14.64%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.01%    0.02%
 14  1     2    1  |1 0>          0.03%    0.06%    0.00%    0.00%    0.00%    0.00%    0.02%    0.12%
 15  1     3    1  |1 0>          0.01%    0.08%    0.00%    0.00%    0.00%    0.00%    0.03%    0.14%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.67%    0.63%
 17  1     5    1  |1 0>          0.12%    0.00%    0.00%    0.00%    0.07%    0.00%   21.13%    5.13%
 18  1     6    1  |1 0>          3.91%    9.01%    0.00%    3.68%    0.26%    4.59%    0.65%    4.97%
 19  1     7    1  |1 0>          1.74%   11.65%    0.00%    4.46%    0.24%    3.82%    1.12%    5.80%
 20  1     8    1  |1 0>         20.09%    0.20%    0.00%    0.50%   10.64%    0.15%    0.13%    0.03%
 21  1     9    1  |1 0>          0.00%    0.00%   33.19%    0.00%    0.00%    0.00%    0.19%    0.78%
 22  1    10    1  |1 0>          2.35%    5.42%    0.00%    8.42%    0.58%   10.49%    0.53%    4.05%
 23  1    11    1  |1 0>          1.05%    7.01%    0.00%   10.21%    0.54%    8.74%    0.91%    4.72%
 24  1    12    1  |1 0>          3.85%    0.04%    0.00%    1.46%   30.75%    0.43%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.01%    0.08%    0.00%    0.00%    0.00%    0.00%    0.03%    0.14%
 26  1     2    1  |1 1>-         0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.03%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.15%    0.02%
 28  1     4    1  |1 1>-         1.74%   11.65%    0.00%    4.46%    0.24%    3.82%    1.12%    5.79%
 29  1     5    1  |1 1>-         4.25%    9.79%    0.00%    3.99%    0.28%    4.98%    0.48%    3.68%
 30  1     6    1  |1 1>-        15.16%    0.15%    0.00%    0.38%    8.03%    0.11%    5.31%    1.29%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.76%    1.47%
 32  1     8    1  |1 1>-         0.97%    2.23%    0.00%    0.91%    0.06%    1.13%    2.12%   16.19%
 33  1     9    1  |1 1>-         1.05%    7.01%    0.00%   10.20%    0.54%    8.74%    0.91%    4.72%
 34  1    10    1  |1 1>-         9.12%    0.09%    0.00%    0.87%   18.36%    0.26%    4.33%    1.05%
 35  1    11    1  |1 1>-         0.00%    0.00%   33.19%    0.00%    0.00%    0.00%    5.05%    0.55%
 36  1    12    1  |1 1>-         0.99%    2.29%    0.00%   14.09%    0.98%   17.57%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.30%    0.07%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.28%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.32%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.03%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.02%
 42  1     6    1  |0 0>          0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.16%    0.01%    0.14%    0.09%    0.04%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.12%    0.01%    0.16%    0.00%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.03%    0.12%    0.00%    0.07%    0.19%    0.01%    0.00%
  4  1     4    1  |1 1>+         0.14%    6.71%    0.47%    0.30%    0.20%    0.08%    0.58%    0.46%
  5  1     5    1  |1 1>+         1.23%    5.55%    0.94%    0.25%    0.21%    0.06%    0.41%    1.44%
  6  1     6    1  |1 1>+        31.94%    0.96%    8.03%    0.00%    0.00%    0.00%    2.92%    2.42%
  7  1     7    1  |1 1>+         0.20%    1.32%    4.81%    0.01%    0.15%    0.43%    1.11%    0.12%
  8  1     8    1  |1 1>+         2.59%   11.74%    2.00%    0.12%    0.10%    0.03%    0.77%    2.95%
  9  1     9    1  |1 1>+         0.11%    5.47%    0.38%    9.26%    6.23%    2.55%    6.34%    4.90%
 10  1    10    1  |1 1>+         3.97%    0.38%    5.33%    0.00%    0.00%    0.00%    9.69%   17.12%
 11  1    11    1  |1 1>+         0.16%    1.07%    3.92%    0.18%    4.59%   13.22%   13.43%    1.89%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   29.22%   24.69%    7.65%    0.00%    0.00%
 13  1     1    1  |1 0>          0.37%    0.02%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%
 14  1     2    1  |1 0>          0.00%    0.16%    0.01%    0.14%    0.09%    0.04%    0.00%    0.00%
 15  1     3    1  |1 0>          0.02%    0.11%    0.02%    0.13%    0.11%    0.03%    0.00%    0.00%
 16  1     4    1  |1 0>          1.75%    0.28%   26.39%    0.00%    0.00%    0.00%    5.24%    1.66%
 17  1     5    1  |1 0>          0.78%    5.23%   19.13%    0.00%    0.00%    0.00%    4.92%    0.71%
 18  1     6    1  |1 0>          0.14%    6.70%    0.47%    0.30%    0.20%    0.08%    0.60%    0.52%
 19  1     7    1  |1 0>          0.95%    4.32%    0.73%    0.28%    0.24%    0.07%    0.32%    1.19%
 20  1     8    1  |1 0>          0.01%    0.03%    0.12%    0.01%    0.20%    0.57%    0.03%    0.01%
 21  1     9    1  |1 0>         12.17%    0.56%    0.34%    0.00%    0.00%    0.00%    2.44%   20.03%
 22  1    10    1  |1 0>          0.11%    5.46%    0.38%    9.28%    6.14%    2.51%    6.39%    4.93%
 23  1    11    1  |1 0>          0.78%    3.52%    0.60%    8.55%    7.16%    2.23%    3.41%   12.78%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.61%   15.71%   45.25%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.02%    0.11%    0.02%    0.13%    0.11%    0.03%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.03%    0.12%    0.00%    0.07%    0.19%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.09%    0.00%    0.17%    0.00%    0.00%    0.00%    0.01%    0.00%
 28  1     4    1  |1 1>-         0.96%    4.33%    0.74%    0.27%    0.23%    0.07%    0.29%    1.16%
 29  1     5    1  |1 1>-         0.10%    4.97%    0.35%    0.32%    0.21%    0.09%    0.43%    0.34%
 30  1     6    1  |1 1>-         0.20%    1.31%    4.81%    0.01%    0.15%    0.42%    1.06%    0.16%
 31  1     7    1  |1 1>-        36.14%    2.27%    7.07%    0.00%    0.00%    0.00%    0.33%    6.33%
 32  1     8    1  |1 1>-         0.45%   21.85%    1.53%    0.07%    0.05%    0.02%    1.76%    1.29%
 33  1     9    1  |1 1>-         0.78%    3.53%    0.60%    8.53%    7.26%    2.25%    3.39%   12.71%
 34  1    10    1  |1 1>-         0.16%    1.07%    3.92%    0.18%    4.59%   13.22%   13.44%    1.87%
 35  1    11    1  |1 1>-         2.82%    0.02%    5.59%    0.00%    0.00%    0.00%   19.99%    2.28%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%   31.73%   21.17%    8.66%    0.00%    0.00%
 37  1     1    1  |0 0>          0.01%    0.07%    0.27%    0.00%    0.00%    0.00%    0.23%    0.03%
 38  1     2    1  |0 0>          0.01%    0.38%    0.03%    0.00%    0.00%    0.00%    0.11%    0.09%
 39  1     3    1  |0 0>          0.05%    0.24%    0.04%    0.00%    0.00%    0.00%    0.06%    0.22%
 40  1     4    1  |0 0>          0.13%    0.00%    0.30%    0.00%    0.00%    0.00%    0.27%    0.03%
 41  1     5    1  |0 0>          0.52%    0.03%    0.09%    0.00%    0.00%    0.00%    0.02%    0.32%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         1.34%    0.10%    1.00%   10.07%   12.86%    2.58%    3.40%    5.59%
  5  1     5    1  |1 1>+         0.42%    1.40%    0.75%   15.18%    9.00%    0.38%    0.61%    0.40%
  6  1     6    1  |1 1>+         0.51%    6.09%    1.74%    5.82%    6.91%    3.29%    2.82%    2.09%
  7  1     7    1  |1 1>+         1.09%    0.34%    0.70%    0.22%    4.74%   10.46%    0.88%   18.90%
  8  1     8    1  |1 1>+         0.98%    2.91%    1.64%    1.30%    3.18%    4.85%   17.93%    8.39%
  9  1     9    1  |1 1>+        15.30%    1.28%   11.38%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         8.51%    5.63%   11.41%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        12.17%    3.99%    7.79%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          2.25%    0.35%    4.62%    5.48%    6.91%    3.26%    2.82%    1.99%
 17  1     5    1  |1 0>          4.27%    1.40%    2.74%    2.56%    8.81%    0.71%    0.20%    1.77%
 18  1     6    1  |1 0>          1.36%    0.13%    1.02%    6.54%    2.01%   20.97%   13.06%    5.84%
 19  1     7    1  |1 0>          0.34%    1.16%    0.54%    1.86%    3.53%    6.42%   23.45%   10.97%
 20  1     8    1  |1 0>          0.02%    0.01%    0.01%    9.21%    3.55%   19.20%    3.93%   22.17%
 21  1     9    1  |1 0>          1.95%   27.47%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         15.33%    1.29%   11.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          3.97%   12.53%    6.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.37%    1.15%    0.57%   17.02%    6.73%    2.72%    3.07%    2.22%
 29  1     5    1  |1 1>-         1.02%    0.11%    0.75%    3.20%    7.90%    2.35%   14.81%   13.39%
 30  1     6    1  |1 1>-         1.05%    0.35%    0.66%   10.30%   14.73%    4.23%    2.02%    0.92%
 31  1     7    1  |1 1>-         1.35%    4.91%    0.76%    5.56%    7.12%    3.32%    2.92%    2.00%
 32  1     8    1  |1 1>-         4.37%    0.34%    3.24%    5.66%    2.01%   15.28%    8.07%    3.34%
 33  1     9    1  |1 1>-         3.99%   12.50%    6.63%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-        12.18%    3.99%    7.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         5.13%    9.85%   15.10%    0.01%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.21%    0.07%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.27%    0.02%    0.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.07%    0.22%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.07%    0.12%    0.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.07%    0.26%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+        10.73%    8.09%
  5  1     5    1  |1 1>+        16.33%    9.57%
  6  1     6    1  |1 1>+         3.69%    8.85%
  7  1     7    1  |1 1>+        13.05%    5.19%
  8  1     8    1  |1 1>+         4.45%    1.92%
  9  1     9    1  |1 1>+         0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%
 16  1     4    1  |1 0>          3.68%    8.89%
 17  1     5    1  |1 0>         10.13%    9.03%
 18  1     6    1  |1 0>          1.24%    3.49%
 19  1     7    1  |1 0>          4.39%    2.60%
 20  1     8    1  |1 0>          0.93%    0.85%
 21  1     9    1  |1 0>          0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%
 28  1     4    1  |1 1>-        10.84%   10.66%
 29  1     5    1  |1 1>-         7.28%    6.04%
 30  1     6    1  |1 1>-         8.25%   13.07%
 31  1     7    1  |1 1>-         3.65%    8.91%
 32  1     8    1  |1 1>-         1.35%    2.82%
 33  1     9    1  |1 1>-         0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%


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

              2       7     2735.78       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     81794.07  61959.98    122.85   4258.97  15419.45     22.51      0.52      9.44
 REAL TIME  *     83061.94 SEC
 DISK USED  *         2.93 GB (local),       52.84 GB (total)
 SF USED    *        21.85 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy= -20885.229535517679

              CI              CI           MULTI         RHF-SCF
 -20885.28512227 -20885.16865628 -20884.25671715 -20884.37350176
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
