
 Working directory              : /wrk/irikura/molpro.5ioh7NM4xc/
 Global scratch directory       : /wrk/irikura/molpro.5ioh7NM4xc/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.5ioh7NM4xc/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Pb SO-CI
                                                                                 ! valence terms only
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
                                                                                 !basis=cc-pVTZ-DK3
 basis=aug-cc-pwCVTZ-DK3
 
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
     closed,20,19
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Jul-24          TIME: 16:40:03  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   7000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry PB     S augccpwCVTZ-DK3      selected for orbital group  1
 Library entry PB     P augccpwCVTZ-DK3      selected for orbital group  1
 Library entry PB     D augccpwCVTZ-DK3      selected for orbital group  1
 Library entry PB     F augccpwCVTZ-DK3      selected for orbital group  1
 Library entry PB     G augccpwCVTZ-DK3      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         398
 NUMBER OF SYMMETRY AOS:          330
 NUMBER OF CONTRACTIONS:          125   (   60Ag  +   65Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     35.652 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 4.456 MB, node maximum: 6.816 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2248074.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2248074      RECORD LENGTH: 524288

 Memory used in sort:       2.81 MW

 SORT1 READ    32049457. AND WROTE      464873. INTEGRALS IN      2 RECORDS. CPU TIME:     0.18 SEC, REAL TIME:     0.20 SEC
 SORT2 READ     3150965. AND WROTE    15753000. INTEGRALS IN    133 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC

 Node minimum:     2246373.  Node maximum:     2255271. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.309E-04 0.110E-02 0.232E-02 0.232E-02 0.232E-02 0.232E-02 0.232E-02 0.132E-01
         2 0.152E-03 0.152E-03 0.152E-03 0.982E-02 0.982E-02 0.982E-02 0.433E-01 0.433E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.49      8.29
 REAL TIME  *         9.41 SEC
 DISK USED  *        30.31 MB (local),      284.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:  21  22
 Initial beta  occupancy:  19  21

 NELEC=   83   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20875.49640434  -20875.49640434     0.00D+00     0.12D+01     0     0       0.02      0.04    start
   2   -20881.88085188      -6.38444753     0.47D-01     0.12D+01     1     0       0.01      0.05    diag2
   3   -20883.46845603      -1.58760416     0.49D-01     0.12D+00     2     0       0.02      0.07    diag2
   4   -20883.97382172      -0.50536569     0.13D-01     0.80D-01     3     0       0.01      0.08    diag2
   5   -20884.08034129      -0.10651957     0.34D-02     0.74D-01     4     0       0.02      0.10    diag2
   6   -20884.09338654      -0.01304525     0.20D-02     0.11D-01     5     0       0.02      0.12    diag2
   7   -20884.09724705      -0.00386051     0.51D-03     0.49D-02     6     0       0.01      0.13    diag2
   8   -20884.09745412      -0.00020707     0.14D-03     0.17D-02     7     0       0.02      0.15    fixocc
   9   -20884.09750836      -0.00005424     0.61D-04     0.46D-03     8     0       0.01      0.16    diag2
  10   -20884.09751644      -0.00000809     0.14D-04     0.19D-03     9     0       0.02      0.18    diag2/orth
  11   -20884.09751712      -0.00000067     0.46D-05     0.12D-03     9     0       0.01      0.19    diag2
  12   -20884.09751713      -0.00000002     0.85D-06     0.16D-04     9     0       0.02      0.21    diag2
  13   -20884.09751714      -0.00000000     0.29D-06     0.25D-05     9     0       0.01      0.22    diag2
  14   -20884.09751714      -0.00000000     0.16D-06     0.93D-06     0     0       0.02      0.24    diag

 Final alpha occupancy:  21  22
 Final beta  occupancy:  21  19

 !RHF STATE 1.2 Energy               -20884.0975171362    
  RHF One-electron energy            -28596.8310066718    
  RHF Two-electron energy            7712.733489535582
  RHF Kinetic energy                  32807.0289749631    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.636573873638

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.14751     1  1  s    0.99820
    2.1     2.00000  -587.42402     1  2  s    1.01823
    3.1     2.00000  -143.50971     1  3  s    0.91498
    4.1     2.00000   -94.26600     1  1  d2+  0.98598
    5.1     2.00000   -94.26600     1  1  d2-  0.99999
    6.1     2.00000   -94.26600     1  1  d1-  0.99997
    7.1     2.00000   -94.26600     1  1  d1+  0.99999
    8.1     2.00000   -94.26600     1  1  d0   0.98597
    9.1     2.00000   -33.76370     1  4  s    1.19822
   10.1     2.00000   -16.18143     1  2  d2+  0.98586
   11.1     2.00000   -16.18143     1  2  d2-  0.99993
   12.1     2.00000   -16.18143     1  2  d1-  0.99991
   13.1     2.00000   -16.18143     1  2  d1+  0.99992
   14.1     2.00000   -16.18143     1  2  d0   0.98585
   15.1     2.00000    -5.91937     1  5  s    0.87221
   16.1     2.00000    -0.85043     1  3  d2+  0.98655
   17.1     2.00000    -0.85043     1  3  d2-  1.00026
   18.1     2.00000    -0.85043     1  3  d1-  1.00024
   19.1     2.00000    -0.85043     1  3  d1+  1.00026
   20.1     2.00000    -0.85043     1  3  d0   0.98654
   21.1     2.00000    -0.35248     1  6  s    0.91357
    1.2     2.00000  -506.09781     1  1  py   0.99998
    2.2     2.00000  -506.09781     1  1  px   0.99999
    3.2     2.00000  -506.09781     1  1  pz   0.99998
    4.2     2.00000  -119.73096     1  2  py   1.00023
    5.2     2.00000  -119.73096     1  2  px   1.00024
    6.2     2.00000  -119.73096     1  2  pz   1.00023
    7.2     2.00000   -25.80652     1  3  py   0.99764
    8.2     2.00000   -25.80652     1  3  px   0.99765
    9.2     2.00000   -25.80652     1  3  pz   0.99764
   10.2     2.00000    -5.60634     1  1  f3-  0.99361
   11.2     2.00000    -5.60634     1  1  f3+  0.99628
   12.2     2.00000    -5.60634     1  1  f0   0.32995    1  1  f2+  0.94390
   13.2     2.00000    -5.60634     1  1  f2-  0.99993
   14.2     2.00000    -5.60634     1  1  f1-  0.99356
   15.2     2.00000    -5.60634     1  1  f1+  0.99627
   16.2     2.00000    -5.60634     1  1  f0   0.94390    1  1  f2+ -0.33000
   17.2     2.00000    -3.61606     1  4  py   1.00186
   18.2     2.00000    -3.61606     1  4  px   1.00186
   19.2     2.00000    -3.61606     1  4  pz   1.00186
   20.2     1.00000    -0.05164     1  5  pz   0.78637
   21.2     1.00000    -0.05163     1  5  px   0.78633
   22.2     1.00000    -0.05162     1  5  py   0.78629


 HOMO     22.2    -0.051624 =      -1.4048eV
 LUMO     23.2     0.165571 =       4.5054eV
 LUMO-HOMO         0.217195 =       5.9102eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.65       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         9.06      0.58      8.29
 REAL TIME  *        10.01 SEC
 DISK USED  *        31.78 MB (local),      295.07 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING LSOP           =    "LS"
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  39 (   20   19)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.494D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.110D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.680D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.150D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.492D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.110D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.680D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.147D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.501D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.666D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 5   3 6 4 2 1 5 3 6 4 2   1 1 5 3 6 4 2 1 2 4   6 3 5 2 4 6 3 5 1 5
                                        3 6 4 21013151412 8  11 9 7 1 5 3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.366D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.486D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.366D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.485D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.365D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.485D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.108D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.846D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.135D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.879D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.366D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.486D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.486D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.366D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 9   710 8 5 4 6 2 1 3 3   1 2 3 1 2 3 1 2 9 7  10 8 5 4 6 3 1 2 9 7
                                       10 8 5 4 6 9 710 8 5   4 6 2 1 3 9 710 8 5   4 6 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  1842  ( 77 closed/active, 1597 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    1950
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   20    0 -20884.03145129  -20884.05088519   -0.01943390    0.11548000 0.00062305 0.00000000  0.39E+00      2.14
   2    7   12    0 -20884.04456949  -20884.04858843   -0.00401894    0.24392055 0.00001384 0.00000000  0.39E-01      4.33
   3    7   12    0 -20884.04861373  -20884.04861423   -0.00000050    0.00163257 0.00000001 0.00000000  0.90E-03      6.42
   4    4    8    0 -20884.04861423  -20884.04861423    0.00000000    0.00000026 0.00000000 0.00000000  0.26E-06      8.13

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.95E-08)
                       Final energy: -20884.04861423
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -20884.0699091940    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080395
 One electron energy                        -28578.27333982
 Two electron energy                          7694.20343063
 Virial ratio                                    1.63657261
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -20884.0699091940    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080395
 One electron energy                        -28578.27333985
 Two electron energy                          7694.20343066
 Virial ratio                                    1.63657261
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -20884.0699091940    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080397
 One electron energy                        -28578.27333992
 Two electron energy                          7694.20343073
 Virial ratio                                    1.63657261
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -20884.0358372443    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080395
 One electron energy                        -28578.27333982
 Two electron energy                          7694.23750258
 Virial ratio                                    1.63657157
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -20884.0358372443    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080394
 One electron energy                        -28578.27333981
 Two electron energy                          7694.23750256
 Virial ratio                                    1.63657157
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -20884.0358372443    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080395
 One electron energy                        -28578.27333985
 Two electron energy                          7694.23750261
 Virial ratio                                    1.63657157
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -20884.0358372442    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080397
 One electron energy                        -28578.27333992
 Two electron energy                          7694.23750268
 Virial ratio                                    1.63657157
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -20884.0358372441    
 Nuclear energy                                  0.00000000
 Kinetic energy                              32807.05080397
 One electron energy                        -28578.27333992
 Two electron energy                          7694.23750268
 Virial ratio                                    1.63657157
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000039594
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999962601
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999998215
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999999993221
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.431700963232
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000006758
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000001057
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.568303210248
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999961718
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000037846
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999554
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000008809
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.493560225159
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999992612
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999907
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.506433981168
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999998688
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999554
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000002231
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.999999997970
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.074738811609
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000630
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999036
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.925262808585
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 5 3 6 1 4   2 3 5 6 1 4 2 5 3 6   1 1 4 2 3 5 6 1 4 2   3 5 6 4 2 5 3 6 1 2
                                        4 5 3 6 9 7 8121514  101311 1 2 5 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 4   610 8 9 7 5 1 3 2 2   3 1 1 3 2 3 1 2 4 6   810 7 9 5 4 6 810 9
                                        7 5 3 1 2 4 610 8 9   7 5 3 1 2 4 610 8 9   7 5 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3253.37476     1  1  s    0.99820
    2.1     2.00000  -587.65110     1  2  s    1.01823
    3.1     2.00000  -143.73676     1  3  s    0.91496
    4.1     2.00000   -94.49296     1  1  d1+  1.00000
    5.1     2.00000   -94.49296     1  1  d0   1.00000
    6.1     2.00000   -94.49296     1  1  d2+  1.00000
    7.1     2.00000   -94.49296     1  1  d2-  1.00000
    8.1     2.00000   -94.49296     1  1  d1-  1.00000
    9.1     2.00000   -33.99081     1  4  s    1.19835
   10.1     2.00000   -16.40845     1  2  d1+  0.99993
   11.1     2.00000   -16.40845     1  2  d0   0.99993
   12.1     2.00000   -16.40845     1  2  d2-  0.99993
   13.1     2.00000   -16.40845     1  2  d2+  0.99993
   14.1     2.00000   -16.40845     1  2  d1-  0.99993
   15.1     2.00000    -6.14668     1  5  s    0.87153
   16.1     2.00000    -1.07795     1  3  d1+  1.00008
   17.1     2.00000    -1.07795     1  3  d0   1.00008
   18.1     2.00000    -1.07795     1  3  d2+  1.00008
   19.1     2.00000    -1.07795     1  3  d2-  1.00008
   20.1     2.00000    -1.07795     1  3  d1-  1.00008
   21.1     1.98529    -0.56309     1  6  s    1.01075
    1.2     2.00000  -506.32480     1  1  px   0.99999
    2.2     2.00000  -506.32480     1  1  pz   0.99999
    3.2     2.00000  -506.32480     1  1  py   0.99999
    4.2     2.00000  -119.95788     1  2  px   1.00024
    5.2     2.00000  -119.95788     1  2  pz   1.00024
    6.2     2.00000  -119.95788     1  2  py   1.00024
    7.2     2.00000   -26.03343     1  3  px   0.99769
    8.2     2.00000   -26.03343     1  3  pz   0.99769
    9.2     2.00000   -26.03343     1  3  py   0.99769
   10.2     2.00000    -5.83334     1  1  f1+  0.99995
   11.2     2.00000    -5.83334     1  1  f0   0.99995
   12.2     2.00000    -5.83334     1  1  f2+  0.99995
   13.2     2.00000    -5.83334     1  1  f2-  0.99995
   14.2     2.00000    -5.83334     1  1  f3-  0.99995
   15.2     2.00000    -5.83334     1  1  f3+  0.99995
   16.2     2.00000    -5.83334     1  1  f1-  0.99995
   17.2     2.00000    -3.84326     1  4  px   1.00431
   18.2     2.00000    -3.84326     1  4  pz   1.00431
   19.2     2.00000    -3.84326     1  4  py   1.00431
   20.2     0.67157    -0.06337     1  5  py   0.96666
   21.2     0.67157    -0.06337     1  5  pz   0.96666
   22.2     0.67157    -0.06337     1  5  px   0.96666
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.00003609     -0.00002105      0.99631694
 2 0aa          0.00019494      0.99631693      0.00002104
 2 aa0          0.99631692     -0.00019494     -0.00003609
 0 a2a         -0.00000311      0.00000181     -0.08574699
 0 aa2         -0.08574699      0.00001678      0.00000311
 0 2aa         -0.00001678     -0.08574699     -0.00000181
 
 Energy:   -20884.06990919 -20884.06990919 -20884.06990919
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.00003787      0.80585364     -0.00001445     -0.00000350     -0.11119749
 2 002          0.00001549     -0.30662697      0.00000973     -0.00005147      0.75348846
 2 0ab         -0.00002951      0.00001206      0.70450247      0.00001262     -0.00000419
 2 0ba          0.00002951     -0.00001206     -0.70450247     -0.00001262      0.00000419
 2 ab0          0.70450247      0.00003296      0.00002951     -0.00000327     -0.00000107
 2 ba0         -0.70450247     -0.00003296     -0.00002951      0.00000327      0.00000107
 2 a0b          0.00000328      0.00001028     -0.00001262      0.70450247      0.00005230
 2 b0a         -0.00000328     -0.00001028      0.00001262     -0.70450247     -0.00005230
 2 200          0.00002238     -0.49922667      0.00000473      0.00005496     -0.64229098
 0 202         -0.00000326      0.06935496     -0.00000124     -0.00000030     -0.00957010
 0 220          0.00000133     -0.02638953      0.00000084     -0.00000443      0.06484821
 0 ba2          0.06063228      0.00000284      0.00000254     -0.00000028     -0.00000009
 0 ab2         -0.06063228     -0.00000284     -0.00000254      0.00000028      0.00000009
 0 2ba         -0.00000254      0.00000104      0.06063228      0.00000109     -0.00000036
 0 2ab          0.00000254     -0.00000104     -0.06063228     -0.00000109      0.00000036
 0 a2b         -0.00000028     -0.00000088      0.00000109     -0.06063228     -0.00000450
 0 b2a          0.00000028      0.00000088     -0.00000109      0.06063228      0.00000450
 0 022          0.00000193     -0.04296543      0.00000041      0.00000473     -0.05527811
 
 Energy:   -20884.03583724 -20884.03583724 -20884.03583724 -20884.03583724 -20884.03583724
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      115.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.02       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.16      7.09      0.58      8.29
 REAL TIME  *        19.51 SEC
 DISK USED  *       116.18 MB (local),      885.91 MB (total)
 SF USED    *       200.11 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20884.06991   2.0
    -20884.06991   2.0
    -20884.06991   2.0
    -20884.03584   6.0
    -20884.03584   6.0
    -20884.03584   6.0
    -20884.03584   6.0
    -20884.03584   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 82
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:     1565 conf     3135 CSFs
 N-1 el internal:     2088 conf     8736 CSFs
 N-2 el internal:     1034 conf     7798 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.30 sec, npass=  1  Memory used:   1.95 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.06990919
     2    -20884.06990919
     3    -20884.06990919

 Number of blocks in overlap matrix:  1005   Smallest eigenvalue:  0.74D-02
 Number of N-2 electron functions:    1170
 Number of N-1 electron functions:    8736

 Number of internal configurations:                 1566
 Number of singly external configurations:        358248
 Number of doubly external configurations:       1968900
 Total number of contracted configurations:      2328714
 Total number of uncontracted configurations:   13413927

 Diagonal Coupling coefficients finished.               Storage:   2138824 words, CPU-Time:      1.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1007462 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.06990919     0.00000000    -0.89090379  0.41D-01  0.12D+00     1.93
    1     2     2     1.00000000     0.00000000-20884.06990919     0.00000000    -0.89070506  0.41D-01  0.12D+00     1.93
    1     3     3     1.00000000     0.00000000-20884.06990919    -0.00000000    -0.89082767  0.41D-01  0.12D+00     1.93
    2     1     1     1.09200502    -0.68554099-20884.75545019    -0.68554099    -0.01802649  0.26D-02  0.14D-02    32.57
    2     2     2     1.09209920    -0.68546966-20884.75537885    -0.68546966    -0.01810344  0.26D-02  0.14D-02    32.57
    2     3     3     1.09214763    -0.68542873-20884.75533793    -0.68542873    -0.01814908  0.26D-02  0.14D-02    32.57
    3     1     1     1.08436171    -0.70250255-20884.77241175    -0.01696156    -0.00032295  0.40D-04  0.34D-04    66.90
    3     2     2     1.08435794    -0.70250050-20884.77240970    -0.01703085    -0.00032492  0.41D-04  0.34D-04    66.90
    3     3     3     1.08435583    -0.70249866-20884.77240786    -0.01706993    -0.00032682  0.41D-04  0.34D-04    66.90
    4     1     1     1.08473396    -0.70282426-20884.77273345    -0.00032170    -0.00001230  0.26D-05  0.11D-05   104.81
    4     2     2     1.08473352    -0.70282422-20884.77273342    -0.00032372    -0.00001233  0.26D-05  0.11D-05   104.81
    4     3     3     1.08473254    -0.70282415-20884.77273335    -0.00032549    -0.00001239  0.26D-05  0.11D-05   104.81
    5     1     1     1.08481106    -0.70283722-20884.77274642    -0.00001297    -0.00000045  0.69D-07  0.53D-07   142.75
    5     2     2     1.08481075    -0.70283722-20884.77274642    -0.00001300    -0.00000045  0.69D-07  0.53D-07   142.75
    5     3     3     1.08481052    -0.70283722-20884.77274642    -0.00001307    -0.00000045  0.69D-07  0.54D-07   142.75
    6     1     1     1.08482075    -0.70283769-20884.77274688    -0.00000046    -0.00000002  0.17D-08  0.38D-08   180.36
    6     2     2     1.08482069    -0.70283769-20884.77274688    -0.00000046    -0.00000002  0.17D-08  0.38D-08   180.36
    6     3     3     1.08482064    -0.70283769-20884.77274688    -0.00000046    -0.00000002  0.17D-08  0.38D-08   180.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   8.3%
 P   0.3%  54.1%  12.7%

 Initialization:   1.0%
 Other:           22.8%

 Total CPU:      180.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222//0           0.0000000   0.0000000   0.9570498
 22222222222222222/0/          -0.0000000   0.9570498  -0.0000000
 222222222222222220//           0.9570498  -0.0000000   0.0000000
 22222202222222222//2          -0.0000000  -0.0000000  -0.0725162
 22222202222222222/2/          -0.0000000  -0.0725161   0.0000000
 222222022222222222//          -0.0725161  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.959743   -0.000000
 2           0.000000    0.000000    0.959743
 3           0.959743   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959743    0.000000    0.000000
 2           0.000000    0.959743    0.000000
 3           0.000000    0.000000    0.959743


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95974296 (fixed)   0.95979315 (relaxed)   0.95974296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076508   -0.00139921   -0.60164271
 Singles      0.01550184   -0.05020157   -0.05628257
 Pairs        0.06938381    0.00000000   -0.04491241
 Total        1.08565072   -0.05160077   -0.70283769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06990919
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.90725482
 One electron energy               -28575.13151288
 Two electron energy                 7690.35876600
 Virial quotient                       -0.63661622
 Correlation energy                    -0.70283769
 !MRCI STATE 1.1 Energy              -20884.7727468817    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.83294544 (Davidson, fixed reference)
 Cluster corrected energies        -20884.83286564 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.83294544 (Davidson, rotated reference)

 Cluster corrected energies        -20884.83400714 (Pople, fixed reference)
 Cluster corrected energies        -20884.83391939 (Pople, relaxed reference)
 Cluster corrected energies        -20884.83400714 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95974299 (fixed)   0.95979318 (relaxed)   0.95974299 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076508   -0.00139921   -0.00178413
 Singles      0.01550174   -0.05020148   -0.05628251
 Pairs        0.06938384   -0.65123699   -0.64477105
 Total        1.08565066   -0.70283768   -0.70283769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06990919
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.90726551
 One electron energy               -28575.13153210
 Two electron energy                 7690.35878522
 Virial quotient                       -0.63661622
 Correlation energy                    -0.70283769
 !MRCI STATE 2.1 Energy              -20884.7727468816    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.83294539 (Davidson, fixed reference)
 Cluster corrected energies        -20884.83286560 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.83294539 (Davidson, rotated reference)

 Cluster corrected energies        -20884.83400709 (Pople, fixed reference)
 Cluster corrected energies        -20884.83391934 (Pople, relaxed reference)
 Cluster corrected energies        -20884.83400709 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95974302 (fixed)   0.95979320 (relaxed)   0.95974302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076507   -0.00139921   -0.60164288
 Singles      0.01550169   -0.05020145   -0.05628247
 Pairs        0.06938384    0.00000000   -0.04491234
 Total        1.08565061   -0.05160066   -0.70283769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.06990919
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.90725488
 One electron energy               -28575.13151712
 Two electron energy                 7690.35877024
 Virial quotient                       -0.63661622
 Correlation energy                    -0.70283769
 !MRCI STATE 3.1 Energy              -20884.7727468816    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.83294536 (Davidson, fixed reference)
 Cluster corrected energies        -20884.83286556 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.83294536 (Davidson, rotated reference)

 Cluster corrected energies        -20884.83400705 (Pople, fixed reference)
 Cluster corrected energies        -20884.83391930 (Pople, relaxed reference)
 Cluster corrected energies        -20884.83400705 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      115.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       55.49       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       202.46    186.29      7.09      0.58      8.29
 REAL TIME  *       212.65 SEC
 DISK USED  *       170.65 MB (local),        1.24 GB (total)
 SF USED    *       644.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20884.83294544  AU                              
 SETTING HLSDIAG(2)     =    -20884.83294539  AU                              
 SETTING HLSDIAG(3)     =    -20884.83294536  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 82
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:     1635 conf     2420 CSFs
 N-1 el internal:     2496 conf     6180 CSFs
 N-2 el internal:     1898 conf     6048 CSFs

 Number of electrons in valence space:                     36
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  16 (   6  10 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20884.03583724
     2    -20884.03583724
     3    -20884.03583724
     4    -20884.03583724
     5    -20884.03583724

 Number of blocks in overlap matrix:  1581   Smallest eigenvalue:  0.23D-01
 Number of N-2 electron functions:    1711
 Number of N-1 electron functions:    6180

 Number of internal configurations:                 1248
 Number of singly external configurations:        253456
 Number of doubly external configurations:       2880022
 Total number of contracted configurations:      3134726
 Total number of uncontracted configurations:   10410784

 Diagonal Coupling coefficients finished.               Storage:   2627726 words, CPU-Time:      2.88 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1178475 words, CPU-time:      0.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20884.03583724     0.00000000    -0.90088065  0.47D-01  0.12D+00     3.62
    1     2     2     1.00000000     0.00000000-20884.03583724     0.00000000    -0.90020974  0.46D-01  0.12D+00     3.62
    1     3     3     1.00000000     0.00000000-20884.03583724     0.00000000    -0.90088195  0.47D-01  0.12D+00     3.62
    1     4     4     1.00000000     0.00000000-20884.03583724     0.00000000    -0.90007557  0.46D-01  0.12D+00     3.62
    1     5     5     1.00000000     0.00000000-20884.03583724     0.00000000    -0.89938138  0.46D-01  0.12D+00     3.62
    2     1     1     1.09708441    -0.69019508-20884.72603232    -0.69019508    -0.01898883  0.29D-02  0.16D-02    66.23
    2     2     2     1.09718072    -0.69005922-20884.72589647    -0.69005922    -0.01917433  0.29D-02  0.17D-02    66.23
    2     3     3     1.09734991    -0.68997753-20884.72581478    -0.68997753    -0.01925562  0.30D-02  0.16D-02    66.23
    2     4     4     1.09751364    -0.68981768-20884.72565493    -0.68981768    -0.01945987  0.30D-02  0.17D-02    66.23
    2     5     5     1.09761661    -0.68975441-20884.72559166    -0.68975441    -0.01952232  0.30D-02  0.17D-02    66.23
    3     1     1     1.08794397    -0.70804967-20884.74388692    -0.01785460    -0.00035981  0.51D-04  0.40D-04   129.35
    3     2     2     1.08794323    -0.70804616-20884.74388340    -0.01798693    -0.00036424  0.50D-04  0.41D-04   129.35
    3     3     3     1.08796172    -0.70804138-20884.74387862    -0.01806385    -0.00036995  0.53D-04  0.41D-04   129.35
    3     4     4     1.08796364    -0.70803894-20884.74387618    -0.01822126    -0.00037305  0.52D-04  0.42D-04   129.35
    3     5     5     1.08796845    -0.70803771-20884.74387495    -0.01828330    -0.00037349  0.53D-04  0.41D-04   129.35
    4     1     1     1.08811196    -0.70841646-20884.74425370    -0.00036678    -0.00001410  0.31D-05  0.13D-05   189.83
    4     2     2     1.08811101    -0.70841622-20884.74425346    -0.00037006    -0.00001441  0.31D-05  0.13D-05   189.83
    4     3     3     1.08811060    -0.70841619-20884.74425344    -0.00037481    -0.00001446  0.32D-05  0.13D-05   189.83
    4     4     4     1.08811053    -0.70841613-20884.74425337    -0.00037719    -0.00001443  0.31D-05  0.13D-05   189.83
    4     5     5     1.08810921    -0.70841606-20884.74425331    -0.00037835    -0.00001457  0.31D-05  0.14D-05   189.83
    5     1     1     1.08810514    -0.70843176-20884.74426901    -0.00001530    -0.00000050  0.87D-07  0.49D-07   249.96
    5     2     2     1.08810542    -0.70843176-20884.74426900    -0.00001554    -0.00000050  0.89D-07  0.50D-07   249.96
    5     3     3     1.08810468    -0.70843175-20884.74426899    -0.00001556    -0.00000051  0.97D-07  0.49D-07   249.96
    5     4     4     1.08810475    -0.70843175-20884.74426899    -0.00001562    -0.00000051  0.98D-07  0.49D-07   249.96
    5     5     5     1.08810579    -0.70843175-20884.74426899    -0.00001568    -0.00000052  0.99D-07  0.49D-07   249.96
    6     1     1     1.08810413    -0.70843227-20884.74426951    -0.00000051    -0.00000002  0.22D-08  0.21D-08   309.89
    6     2     2     1.08810375    -0.70843227-20884.74426951    -0.00000051    -0.00000002  0.22D-08  0.23D-08   309.89
    6     3     3     1.08810435    -0.70843227-20884.74426951    -0.00000052    -0.00000002  0.23D-08  0.21D-08   309.89
    6     4     4     1.08810384    -0.70843227-20884.74426951    -0.00000052    -0.00000002  0.22D-08  0.23D-08   309.89
    6     5     5     1.08810392    -0.70843227-20884.74426951    -0.00000052    -0.00000002  0.23D-08  0.23D-08   309.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   5.6%
 P   0.3%  40.5%  17.4%

 Initialization:   1.0%
 Other:           34.5%

 Total CPU:      309.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222222222/\0           0.0000000   0.9554678   0.0000000  -0.0000000  -0.0000000
 22222222222222222/0\           0.0000000   0.0000000   0.0000000  -0.0000000   0.9554677
 222222222222222220/\          -0.0000000   0.0000000   0.0000000   0.9554677   0.0000000
 22222222222222222002          -0.1135734  -0.0000000   0.7718249  -0.0000000  -0.0000000
 22222222222222222020           0.7252064  -0.0000000  -0.2875547   0.0000000  -0.0000000
 22222222222222222200          -0.6116332  -0.0000000  -0.4842695  -0.0000000   0.0000000
 222222022222222222/\           0.0000000  -0.0000000  -0.0000000  -0.0723204  -0.0000000
 22222202222222222/2\          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0723199
 22222202222222222/\2           0.0000000  -0.0723198  -0.0000000   0.0000000   0.0000000
 22222202222222222220          -0.0085968  -0.0000000   0.0584196  -0.0000000   0.0000000
 22222202222222222202           0.0548910   0.0000000  -0.0217651   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.930462   -0.000000    0.000000    0.228673
 2           0.958150    0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.228673    0.000000    0.000000    0.930462
 4          -0.000000    0.000000    0.958150   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.958150   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958150    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.958150    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.958150   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.958150    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.958150


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93046213 (fixed)   0.95820071 (relaxed)   0.95814982 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106597   -0.00200890   -0.45910015
 Singles      0.01744458   -0.05320946   -0.06020036
 Pairs        0.07075346   -0.15589671   -0.18913175
 Total        1.08926401   -0.21111507   -0.70843227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03583724
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.91393270
 One electron energy               -28575.01477141
 Two electron energy                 7690.27050190
 Virial quotient                       -0.63661522
 Correlation energy                    -0.70843227
 !MRCI STATE 1.1 Energy              -20884.7442695125    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.80750702 (Davidson, fixed reference)
 Cluster corrected energies        -20884.80742505 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.80750702 (Davidson, rotated reference)

 Cluster corrected energies        -20884.80910915 (Pople, fixed reference)
 Cluster corrected energies        -20884.80901796 (Pople, relaxed reference)
 Cluster corrected energies        -20884.80910915 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95814999 (fixed)   0.95820088 (relaxed)   0.95814999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106596   -0.00200890   -0.60222146
 Singles      0.01744438   -0.05320950   -0.06020051
 Pairs        0.07075328    0.00000000   -0.04601030
 Total        1.08926362   -0.05521840   -0.70843227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03583724
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.91417869
 One electron energy               -28575.01525471
 Two electron energy                 7690.27098520
 Virial quotient                       -0.63661522
 Correlation energy                    -0.70843227
 !MRCI STATE 2.1 Energy              -20884.7442695121    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.80750674 (Davidson, fixed reference)
 Cluster corrected energies        -20884.80742478 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.80750674 (Davidson, rotated reference)

 Cluster corrected energies        -20884.80910884 (Pople, fixed reference)
 Cluster corrected energies        -20884.80901766 (Pople, relaxed reference)
 Cluster corrected energies        -20884.80910884 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93046205 (fixed)   0.95820062 (relaxed)   0.95814973 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106596   -0.00200890   -0.01986660
 Singles      0.01744460   -0.05320935   -0.06020033
 Pairs        0.07075366   -0.63433810   -0.62836534
 Total        1.08926423   -0.68955636   -0.70843227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03583724
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.91402656
 One electron energy               -28575.01492806
 Two electron energy                 7690.27065855
 Virial quotient                       -0.63661522
 Correlation energy                    -0.70843227
 !MRCI STATE 3.1 Energy              -20884.7442695120    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.80750717 (Davidson, fixed reference)
 Cluster corrected energies        -20884.80742521 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.80750717 (Davidson, rotated reference)

 Cluster corrected energies        -20884.80910931 (Pople, fixed reference)
 Cluster corrected energies        -20884.80901813 (Pople, relaxed reference)
 Cluster corrected energies        -20884.80910931 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95814996 (fixed)   0.95820084 (relaxed)   0.95814996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106595   -0.00200890   -0.60222147
 Singles      0.01744432   -0.05320943   -0.06020043
 Pairs        0.07075344    0.00000000   -0.04601037
 Total        1.08926370   -0.05521833   -0.70843227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03583724
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.91418623
 One electron energy               -28575.01527618
 Two electron energy                 7690.27100667
 Virial quotient                       -0.63661522
 Correlation energy                    -0.70843227
 !MRCI STATE 4.1 Energy              -20884.7442695118    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.80750680 (Davidson, fixed reference)
 Cluster corrected energies        -20884.80742485 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.80750680 (Davidson, rotated reference)

 Cluster corrected energies        -20884.80910890 (Pople, fixed reference)
 Cluster corrected energies        -20884.80901774 (Pople, relaxed reference)
 Cluster corrected energies        -20884.80910890 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95814992 (fixed)   0.95820080 (relaxed)   0.95814992 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106596   -0.00200890   -0.60222162
 Singles      0.01744433   -0.05320922   -0.06020042
 Pairs        0.07075351    0.00000000   -0.04601023
 Total        1.08926379   -0.05521812   -0.70843227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20884.03583724
 Nuclear energy                         0.00000000
 Kinetic energy                     32805.91422329
 One electron energy               -28575.01531131
 Two electron energy                 7690.27104179
 Virial quotient                       -0.63661522
 Correlation energy                    -0.70843227
 !MRCI STATE 5.1 Energy              -20884.7442695117    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20884.80750686 (Davidson, fixed reference)
 Cluster corrected energies        -20884.80742491 (Davidson, relaxed reference)
 Cluster corrected energies        -20884.80750686 (Davidson, rotated reference)

 Cluster corrected energies        -20884.80910897 (Pople, fixed reference)
 Cluster corrected energies        -20884.80901780 (Pople, relaxed reference)
 Cluster corrected energies        -20884.80910897 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      115.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      176.66       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       530.19    327.72    186.29      7.09      0.58      8.29
 REAL TIME  *       555.50 SEC
 DISK USED  *       291.82 MB (local),        2.07 GB (total)
 SF USED    *         1.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =    -20884.80750702  AU                              
 SETTING HLSDIAG(5)     =    -20884.80750674  AU                              
 SETTING HLSDIAG(6)     =    -20884.80750717  AU                              
 SETTING HLSDIAG(7)     =    -20884.80750680  AU                              
 SETTING HLSDIAG(8)     =    -20884.80750686  AU                              


         HLSDIAG
    -20884.83295
    -20884.83295
    -20884.83295
    -20884.80751
    -20884.80751
    -20884.80751
    -20884.80751
    -20884.80751
                                                  

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

 Time for Seward_LS:     103.03 sec

       18281814. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4689 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    103.03 sec, REAL time:    104.01 sec


 SORTLS1 read    19169207. and wrote    19169207. SO integrals in    84 records. CPU time:      0.18 sec, REAL time:      0.29 sec
 SORTLS2 read    19169207. and wrote    93027900. SO integrals in    21 records. CPU time:      0.17 sec, REAL time:      0.26 sec

 FILE SIZES: FILE 1:   428.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   428.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      408.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      176.66       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       634.63    104.43    327.72    186.29      7.09      0.58      8.29
 REAL TIME  *       661.17 SEC
 DISK USED  *       291.91 MB (local),        3.03 GB (total)
 SF USED    *         1.34 GB
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

 Original energies: -20884.772747 -20884.772747 -20884.772747
 Replaced energies: -20884.832945 -20884.832945 -20884.832945

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies: -20884.744270 -20884.744270 -20884.744270 -20884.744270 -20884.744270
 Replaced energies: -20884.807507 -20884.807507 -20884.807507 -20884.807507 -20884.807507



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20884.83294544

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    3650.09
                            0.00       0.00    5720.41       0.00    4044.94      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00      -0.00    4044.94       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00   -4044.94      -0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02       0.00   -4044.94       0.00       0.00       0.00       0.00      -0.00
                        -5720.41       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     677.81

    4   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00    4044.94      -0.00       0.00       0.00       0.00       0.00    4044.94      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00   -4044.94       0.00       0.01       0.00      -0.00      -0.00    4044.94       0.00
                        -4044.94       0.00      -0.00      -0.00       0.00       0.00   -4044.94      -0.00      -0.00   -6120.44

    6   3.1  1.0  0.0      -0.00    4044.94       0.00       0.00       0.00       0.02       0.00   -4044.94       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    3650.09
                           -0.00      -0.00      -0.00      -0.00    4044.94      -0.00      -0.00      -0.00   -5720.41       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00   -4044.94       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00   -4044.94       0.00      -0.00       0.00      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    4044.94       0.00       0.00       0.00       0.02      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    5720.41      -0.00      -0.00    -677.81

   10   1.1  0.0  0.0    3650.09      -0.00      -0.00       0.00       0.00       0.00    3650.09      -0.00      -0.00    5583.09
                            0.00       0.00    -677.81      -0.00    6120.44       0.00      -0.00      -0.00     677.81       0.00

   11   2.1  0.0  0.0      -0.00    4031.76      -0.00       0.00       0.00       0.00      -0.00    4031.76      -0.00       0.00
                            0.00      -0.00       0.00   -5701.83       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   12   3.1  0.0  0.0    2889.99       0.00      -0.00       0.00       0.00       0.00    2889.99       0.00      -0.00       0.00
                            0.00       0.00    4606.03      -0.00   -2426.86      -0.00      -0.00      -0.00   -4606.03      -0.00

   13   4.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00   -4031.76      -0.00       0.00       0.00   -5701.81       0.00    4031.76       0.00      -0.00

   14   5.1  0.0  0.0      -0.00      -0.00   -4031.77       0.00       0.00       0.00      -0.00      -0.00   -4031.77       0.00
                         4031.77      -0.00      -0.00       0.00      -0.00      -0.00   -4031.77       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00    2889.99       0.00      -0.00
                           -0.00      -0.00       0.00   -4031.77

    2   2.1  1.0  1.0    4031.76       0.00      -0.00      -0.00
                            0.00      -0.00    4031.76       0.00

    3   3.1  1.0  1.0      -0.00      -0.00       0.00   -4031.77
                           -0.00   -4606.03       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                         5701.83       0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00    2426.86      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00    5701.81       0.00

    7   1.1  1.0 -1.0      -0.00    2889.99       0.00      -0.00
                            0.00       0.00      -0.00    4031.77

    8   2.1  1.0 -1.0    4031.76       0.00      -0.00      -0.00
                           -0.00       0.00   -4031.76      -0.00

    9   3.1  1.0 -1.0      -0.00      -0.00       0.00   -4031.77
                            0.00    4606.03      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5583.15       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5583.05       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5583.14       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5583.12
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by -20884.83294544 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    5720.410      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.010       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -5720.410       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.018       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -5720.414       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000    5720.410      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.010       0.000       0.000       0.000
                            -5720.410       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.018      -0.000    5720.415
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000    5720.414       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    5720.415       0.000       0.010
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -5720.415       0.000       0.000       0.000
                            -5720.414       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>            5162.005      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    6120.439       0.000       0.000       0.000

    2    1  |0 0>              -0.000    5701.772      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -5701.825       0.000      -0.000       0.000      -0.000

    3    1  |0 0>            4087.058       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -2426.858      -0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -5701.811      -0.000   -5701.775

    5    1  |0 0>              -0.000      -0.000   -5701.782       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    5701.788      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000    5162.005      -0.000    4087.058       0.000      -0.000
                             5720.414       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000    5701.772       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000   -5701.782
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    5701.825       0.000      -0.000      -0.000

    2    1  |1 0>           -5720.415       0.000       0.000       0.000       0.000       0.000
                                0.000   -6120.439      -0.000    2426.858      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    5701.811       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000   -5701.788

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    5701.775       0.000

    3    1  |1 1>-              0.018       0.000       0.000       0.000       0.000       0.000
                                0.000     958.566      -0.000   -6513.909       0.000       0.000

    1    1  |0 0>               0.000    5583.087       0.000       0.000       0.000       0.000
                             -958.566       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5583.148       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5583.054       0.000       0.000
                             6513.909      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5583.135       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5583.121
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-20884.88507364    -0.05212820   -11440.82      0.00000000        0.00      0.0000
    2-20884.85900952    -0.02606409    -5720.41      0.02606411     5720.41      0.7092
    3-20884.85900952    -0.02606408    -5720.40      0.02606412     5720.41      0.7092
    4-20884.85900950    -0.02606407    -5720.40      0.02606413     5720.42      0.7092
    5-20884.84393688    -0.01099145    -2412.34      0.04113675     9028.47      1.1194
    6-20884.84393686    -0.01099143    -2412.34      0.04113677     9028.48      1.1194
    7-20884.84393564    -0.01099021    -2412.07      0.04113799     9028.75      1.1194
    8-20884.84393560    -0.01099017    -2412.06      0.04113803     9028.75      1.1194
    9-20884.84393560    -0.01099016    -2412.06      0.04113804     9028.76      1.1194
   10-20884.77045254     0.06249290    13715.61      0.11462110    25156.42      3.1190
   11-20884.77045244     0.06249300    13715.63      0.11462120    25156.44      3.1190
   12-20884.77045241     0.06249303    13715.63      0.11462123    25156.45      3.1190
   13-20884.77045155     0.06249388    13715.82      0.11462208    25156.64      3.1190
   14-20884.77045144     0.06249400    13715.85      0.11462220    25156.66      3.1190

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57735239  0.00000000  0.00000000  0.00000000 -0.52263530 -0.23946526 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000105 -0.70710281 -0.00000023  0.00000001  0.00000000 -0.49787412  0.00000017
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000050  0.00000000

   3    1  |1 1>+          0.00000000 -0.70710524 -0.00000105  0.00000069  0.00000000 -0.00000000  0.00000007 -0.00000025
                           0.00000000  0.00007167  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000050 -0.00000000
                          -0.00000000 -0.00000105  0.70711076  0.00000023  0.00000001  0.00000000 -0.49786115  0.00000017

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.57734818  0.00000000 -0.00000000  0.00000000  0.46870607 -0.33288607  0.00000001  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000069 -0.00000023  0.70710853  0.00000000 -0.00000000 -0.00000017 -0.49786399

   1    1  |1 1>-         -0.00000000  0.00007167  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70710831  0.00000105 -0.00000069  0.00000000 -0.00000000  0.00000007 -0.00000025

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000069  0.00000023 -0.70710504  0.00000000 -0.00000000 -0.00000017 -0.49787044

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57735024  0.00000000 -0.00000000  0.00000000  0.05394000  0.57234990  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000587 -0.00000000 -0.00000000 -0.00000000  0.68974745 -0.16883688  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000735 -0.00000000 -0.00000001 -0.00000000  0.71010959 -0.00000024
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000000

   3    1  |0 0>          -0.00000048 -0.00000000 -0.00000000  0.00000000  0.16883688  0.68974847  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000398 -0.00000000  0.00000000  0.00000024  0.71011018
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000196  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000035
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000002  0.43695676  0.38110594
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000007 -0.00000004 -0.00000013  0.50212247 -0.00000002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000648 -0.00000000  0.00000000

   3    1  |1 1>+          0.49786495 -0.50212381 -0.00000008 -0.00000004  0.00000000 -0.00000001
                           0.00204566  0.00038437 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000648  0.00000000 -0.00000000
                           0.00000007 -0.00000004 -0.00000013  0.50212414 -0.00000002 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000  0.11156907 -0.56896652

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000025 -0.00000008  0.50212447  0.00000013  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00204564 -0.00038437  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.49786082 -0.50212359 -0.00000008 -0.00000004  0.00000000 -0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000025 -0.00000008  0.50212298  0.00000013  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000000 -0.00000002 -0.54852518  0.18786406

   1    1  |0 0>          -0.00000000 -0.00000001  0.00000000  0.00000001  0.12872963  0.69222196
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000010 -0.00000006 -0.00000018  0.70409116 -0.00000003 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000909 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000001 -0.00000000  0.00000003  0.69222102 -0.12872921
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000035 -0.00000011  0.70409057  0.00000018  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.71010436  0.70409019  0.00000011  0.00000006 -0.00000000  0.00000001
                           0.00291772 -0.00053897  0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1 -20884.88507364     -0.05212820   -11440.82      0.00000000        0.00      0.0000
     2   1 -20884.85900952     -0.02606409    -5720.41      0.02606411     5720.41      0.7092
     3   1 -20884.85900952     -0.02606408    -5720.40      0.02606412     5720.41      0.7092
     4   1 -20884.85900950     -0.02606407    -5720.40      0.02606413     5720.42      0.7092
     5   1 -20884.84393688     -0.01099145    -2412.34      0.04113675     9028.47      1.1194
     6   1 -20884.84393686     -0.01099143    -2412.34      0.04113677     9028.48      1.1194
     7   1 -20884.84393564     -0.01099021    -2412.07      0.04113799     9028.75      1.1194
     8   1 -20884.84393560     -0.01099017    -2412.06      0.04113803     9028.75      1.1194
     9   1 -20884.84393560     -0.01099016    -2412.06      0.04113804     9028.76      1.1194
    10   1 -20884.77045254      0.06249290    13715.61      0.11462110    25156.42      3.1190
    11   1 -20884.77045244      0.06249300    13715.63      0.11462120    25156.44      3.1190
    12   1 -20884.77045241      0.06249303    13715.63      0.11462123    25156.45      3.1190
    13   1 -20884.77045155      0.06249388    13715.82      0.11462208    25156.64      3.1190
    14   1 -20884.77045144      0.06249400    13715.85      0.11462220    25156.66      3.1190

 E0 = -20884.83294544 is the energy of the lowest zeroth-order state
 E1 = -20884.88507364 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57735239  0.00000000  0.00000000  0.00000000 -0.52263530 -0.23946526 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000105 -0.70710281 -0.00000023  0.00000001  0.00000000 -0.49787412  0.00000017
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000050  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.70710524 -0.00000105  0.00000069  0.00000000 -0.00000000  0.00000007 -0.00000025
                                0.00000000  0.00007167  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000050 -0.00000000
                               -0.00000000 -0.00000105  0.70711076  0.00000023  0.00000001  0.00000000 -0.49786115  0.00000017

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.57734818  0.00000000 -0.00000000  0.00000000  0.46870607 -0.33288607  0.00000001  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000069 -0.00000023  0.70710853  0.00000000 -0.00000000 -0.00000017 -0.49786399

  7  1     1    1  |1 1>-      -0.00000000  0.00007167  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70710831  0.00000105 -0.00000069  0.00000000 -0.00000000  0.00000007 -0.00000025

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000069  0.00000023 -0.70710504  0.00000000 -0.00000000 -0.00000017 -0.49787044

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57735024  0.00000000 -0.00000000  0.00000000  0.05394000  0.57234990  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000587 -0.00000000 -0.00000000 -0.00000000  0.68974745 -0.16883688  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000735 -0.00000000 -0.00000001 -0.00000000  0.71010959 -0.00000024
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000000

 12  1     3    1  |0 0>       -0.00000048 -0.00000000 -0.00000000  0.00000000  0.16883688  0.68974847  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000398 -0.00000000  0.00000000  0.00000024  0.71011018
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000196  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000035
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000002  0.43695676  0.38110594
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000007 -0.00000004 -0.00000013  0.50212247 -0.00000002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000648 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.49786495 -0.50212381 -0.00000008 -0.00000004  0.00000000 -0.00000001
                                0.00204566  0.00038437 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000648  0.00000000 -0.00000000
                                0.00000007 -0.00000004 -0.00000013  0.50212414 -0.00000002 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000  0.11156907 -0.56896652

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000025 -0.00000008  0.50212447  0.00000013  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00204564 -0.00038437  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.49786082 -0.50212359 -0.00000008 -0.00000004  0.00000000 -0.00000001

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000025 -0.00000008  0.50212298  0.00000013  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000000 -0.00000002 -0.54852518  0.18786406

 10  1     1    1  |0 0>       -0.00000000 -0.00000001  0.00000000  0.00000001  0.12872963  0.69222196
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000010 -0.00000006 -0.00000018  0.70409116 -0.00000003 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000909 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000001 -0.00000000  0.00000003  0.69222102 -0.12872921
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000035 -0.00000011  0.70409057  0.00000018  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.71010436  0.70409019  0.00000011  0.00000006 -0.00000000  0.00000001
                                0.00291772 -0.00053897  0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   27.31%    5.73%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.79%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.79%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%   21.97%   11.08%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.79%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   24.79%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.29%   32.76%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   47.58%    2.85%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.43%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.85%   47.58%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.43%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   19.09%   14.52%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   25.21%    0.00%    0.00%
  3  1     3    1  |1 1>+        24.79%   25.21%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   25.21%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.24%   32.37%
  6  1     3    1  |1 0>          0.00%    0.00%   25.21%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        24.79%   25.21%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   25.21%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   30.09%    3.53%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.66%   47.92%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   49.57%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   47.92%    1.66%
 13  1     4    1  |0 0>          0.00%    0.00%   49.57%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>         50.43%   49.57%    0.00%    0.00%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      408.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      176.66       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1111.82    477.19    104.43    327.72    186.29      7.09      0.58      8.29
 REAL TIME  *      1152.78 SEC
 DISK USED  *       291.91 MB (local),        3.03 GB (total)
 SF USED    *         1.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy= -20884.770451436892

              CI              CI           MULTI         RHF-SCF
 -20884.74426951 -20884.77274688 -20884.03583724 -20884.09751714
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
