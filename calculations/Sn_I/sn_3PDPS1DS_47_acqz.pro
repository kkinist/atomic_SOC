
 Working directory              : /wrk/irikura/molpro.Qx73xhqdQz/
 Global scratch directory       : /wrk/irikura/molpro.Qx73xhqdQz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Qx73xhqdQz/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sn SO-CI
                                                                                 ! trying to get minimal problem demonstration
 memory,1300,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVQZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical dication (1S) orbitals
 {rhf;wf,nelec=48,sym=1,spin=0}
 
 NTRIP=12
 NSING=6
 
                                                                                 ! (4/7) active space (s + 2*p)
 {multi
     occ,15,15
     wf,nelec=50,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
     wf,nelec=50,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,8,6
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
                                                                                 !lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 14-May-24          TIME: 16:08:44  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1300 MW
 Total memory per node:  15600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1300.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SN     S augccpwCVQZ-DK3      selected for orbital group  1
 Library entry SN     P augccpwCVQZ-DK3      selected for orbital group  1
 Library entry SN     D augccpwCVQZ-DK3      selected for orbital group  1
 Library entry SN     F augccpwCVQZ-DK3      selected for orbital group  1
 Library entry SN     G augccpwCVQZ-DK3      selected for orbital group  1
 Library entry SN     H augccpwCVQZ-DK3      selected for orbital group  1


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

   1  SN     50.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   50
 NUMBER OF PRIMITIVE AOS:         352
 NUMBER OF SYMMETRY AOS:          282
 NUMBER OF CONTRACTIONS:          179   (   93Ag  +   86Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     120.324 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 4.194 MB, node maximum: 16.515 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5457495.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5457495      RECORD LENGTH: 524288

 Memory used in sort:       6.01 MW

 SORT1 READ   115128829. AND WROTE      975714. INTEGRALS IN      3 RECORDS. CPU TIME:     0.52 SEC, REAL TIME:     0.54 SEC
 SORT2 READ    12041557. AND WROTE    65610150. INTEGRALS IN    588 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC

 Node minimum:     5456145.  Node maximum:     5472639. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 9101112131415
                                       161718192021

 Eigenvalues of metric

         1 0.117E-04 0.699E-04 0.620E-03 0.620E-03 0.620E-03 0.620E-03 0.620E-03 0.253E-02
         2 0.403E-04 0.403E-04 0.403E-04 0.275E-03 0.275E-03 0.275E-03 0.104E-01 0.104E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.02      3.81
 REAL TIME  *         4.88 SEC
 DISK USED  *        30.45 MB (local),      598.54 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  14  10

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -6013.58193247   -6013.58193247     0.00D+00     0.66D+01     0     0       0.03      0.06    start
   2    -6047.03422448     -33.45229201     0.89D+00     0.65D+01     1     0       0.03      0.09    diag
   3    -6163.37547861    -116.34125413     0.62D+00     0.49D+01     2     0       0.02      0.11    diag
   4    -6172.58538214      -9.20990353     0.17D+00     0.54D+01     3     0       0.03      0.14    diag
   5    -6172.98989649      -0.40451435     0.31D-01     0.28D-01     4     0       0.03      0.17    diag
   6    -6172.99274347      -0.00284698     0.13D-02     0.25D-01     5     0       0.03      0.20    diag
   7    -6172.99289340      -0.00014992     0.24D-03     0.26D-02     6     0       0.02      0.22    diag
   8    -6172.99289533      -0.00000193     0.37D-04     0.32D-03     7     0       0.03      0.25    fixocc
   9    -6172.99289534      -0.00000002     0.43D-05     0.35D-04     8     0       0.03      0.28    diag
  10    -6172.99289534      -0.00000000     0.57D-06     0.72D-05     9     0       0.03      0.31    diag/orth
  11    -6172.99289534      -0.00000000     0.29D-07     0.25D-06     9     0       0.03      0.34    diag
  12    -6172.99289534       0.00000000     0.90D-09     0.36D-07     0     0       0.02      0.36    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.992895344290
  RHF One-electron energy           -8458.989574014166
  RHF Two-electron energy            2285.996678669875
  RHF Kinetic energy                 7113.655396400656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.867766647576

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1079.06395     1  1  s    0.96931    1  6  s    0.30792
    2.1     2.00000  -166.86542     1  2  s    1.09647
    3.1     2.00000   -34.18928     1  3  s    0.93674
    4.1     2.00000   -19.53164     1  1  d0  -0.40795    1  1  d2+  0.90958
    5.1     2.00000   -19.53164     1  1  d2-  0.99636
    6.1     2.00000   -19.53164     1  1  d1+  0.99910
    7.1     2.00000   -19.53164     1  1  d1-  0.99909
    8.1     2.00000   -19.53164     1  1  d0   0.91283    1  1  d2+  0.40670
    9.1     2.00000    -6.52363     1  4  s    1.03001
   10.1     2.00000    -1.94641     1  2  d0  -0.53459    1  2  d2+  0.84816
   11.1     2.00000    -1.94641     1  2  d1+  1.00400
   12.1     2.00000    -1.94641     1  2  d2-  1.00171
   13.1     2.00000    -1.94641     1  2  d1-  1.00400
   14.1     2.00000    -1.94641     1  2  d0   0.85073    1  2  d2+  0.53297
   15.1     2.00000    -1.05759     1  3  s   -0.72573    1  4  s   -1.39199    1  6  s   -0.30520    1  7  s    0.57647
                                    1  8  s    0.46791    1  9  s    0.68233    1 10  s    0.64092
    1.2     2.00000  -149.69158     1  1  px   0.99785
    2.2     2.00000  -149.69158     1  1  py   0.99784
    3.2     2.00000  -149.69158     1  1  pz   0.99862
    4.2     2.00000   -28.42256     1  2  px   1.00785
    5.2     2.00000   -28.42256     1  2  py   1.00785
    6.2     2.00000   -28.42256     1  2  pz   1.00855
    7.2     2.00000    -4.68851     1  3  pz   1.01164
    8.2     2.00000    -4.68851     1  3  px   1.01091
    9.2     2.00000    -4.68851     1  3  py   1.01091


 HOMO     15.1    -1.057594 =     -28.7786eV
 LUMO     10.2    -0.495105 =     -13.4725eV
 LUMO-HOMO         0.562489 =      15.3061eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.66       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.56      0.54      3.81
 REAL TIME  *         6.10 SEC
 DISK USED  *        31.95 MB (local),      616.47 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     149 (   78   71)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.348D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.794D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.398D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.415D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.381D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.731D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.380D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.403D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 4 6 2 1 5   4 3 6 2 1 1 5 3 4 6   2 1 5 3 4 2 6 5 3 4   2 6 11013141512 8 9
                                       11 71013141512 8 911   7 2 3 5 4 6 11013 9  1215 814 711 2 3 5 4   6 1 2 3 5 4 6 9 713
                                       151014 81112 1 3 5 4   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.385D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.414D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.390D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.359D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.372D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.162D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.373D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.366D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.369D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.307D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.377D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.375D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.375D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.377D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.336D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 3   2 1 1 2 3 1 2 3 7 9  10 8 4 5 6 7 910 4 8   5 6 1 2 3 7 910 8 4
                                        5 6 1 2 3 7 910 8 4   6 52018171511191621  141312 7 910 8 4 6 5   1 2 310 7 9 8 6 4 5
                                        1 2 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  2303  ( 68 closed/active, 1731 closed/virtual, 0 active/active, 504 active/virtual )
 Total number of variables:    5489
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.63125943   -6173.64980731   -0.01854787    0.18165713 0.00009713 0.00000000  0.53E+00      2.07
   2    7   12    0  -6173.65038091   -6173.65043782   -0.00005691    0.00782005 0.00000323 0.00000000  0.36E-01      4.30
   3   14   18    0  -6173.65043794   -6173.65043794   -0.00000000    0.00002590 0.00000000 0.00000000  0.12E-03      6.62
   4    4    4    0  -6173.65043794   -6173.65043794   -0.00000000    0.00000001 0.00000000 0.00000000  0.87E-08      8.08

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.70E-08)
                       Final energy:  -6173.65043794
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.752555827964
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.90013090
 One electron energy                         -8492.15588844
 Two electron energy                          2318.40333261
 Virial ratio                                    1.86772160
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.752555827577
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.90013092
 One electron energy                         -8492.15588851
 Two electron energy                          2318.40333268
 Virial ratio                                    1.86772160
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.752555827501
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.90013093
 One electron energy                         -8492.15588852
 Two electron energy                          2318.40333270
 Virial ratio                                    1.86772160
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -6173.577576418390
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72218120
 One electron energy                         -8480.59872114
 Two electron energy                          2307.02114472
 Virial ratio                                    1.86784069
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -6173.577576418361
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72218120
 One electron energy                         -8480.59872113
 Two electron energy                          2307.02114471
 Virial ratio                                    1.86784069
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -6173.577576418351
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72218120
 One electron energy                         -8480.59872112
 Two electron energy                          2307.02114471
 Virial ratio                                    1.86784069
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -6173.577576418233
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72218119
 One electron energy                         -8480.59872108
 Two electron energy                          2307.02114466
 Virial ratio                                    1.86784069
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -6173.577576418225
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72218119
 One electron energy                         -8480.59872108
 Two electron energy                          2307.02114466
 Virial ratio                                    1.86784069
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -6173.571897020915
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.92455199
 One electron energy                         -8481.75444404
 Two electron energy                          2308.18254702
 Virial ratio                                    1.86781521
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -6173.571897020913
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.92455200
 One electron energy                         -8481.75444410
 Two electron energy                          2308.18254708
 Virial ratio                                    1.86781521
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -6173.571897020905
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.92455200
 One electron energy                         -8481.75444411
 Two electron energy                          2308.18254709
 Virial ratio                                    1.86781521
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -6173.570727853383
 Nuclear energy                                  0.00000000
 Kinetic energy                               7113.72101488
 One electron energy                         -8480.59386034
 Two electron energy                          2307.02313248
 Virial ratio                                    1.86783987
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.717580640768
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.79302923
 One electron energy                         -8491.47639605
 Two electron energy                          2317.75881541
 Virial ratio                                    1.86772975
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.717580640753
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.79302923
 One electron energy                         -8491.47639605
 Two electron energy                          2317.75881541
 Virial ratio                                    1.86772975
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.717580640334
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.79302925
 One electron energy                         -8491.47639611
 Two electron energy                          2317.75881547
 Virial ratio                                    1.86772975
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.717580640253
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.79302925
 One electron energy                         -8491.47639612
 Two electron energy                          2317.75881548
 Virial ratio                                    1.86772975
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.717580640115
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.79302926
 One electron energy                         -8491.47639614
 Two electron energy                          2317.75881550
 Virial ratio                                    1.86772975
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.688011294487
 Nuclear energy                                  0.00000000
 Kinetic energy                               7114.62157410
 One electron energy                         -8490.50931157
 Two electron energy                          2316.82130028
 Virial ratio                                    1.86774651
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999880
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000465
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999663
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.869415983518
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000054876
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999991334
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000017924
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.130596202254
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999996307929
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000005394926
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999996230
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000003059
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.265871154392
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999998980
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000005397
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.734133462869
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000275
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999879
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999833
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.005456502646
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999969907
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999998988
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999992307
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.994542520294
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000003938559
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999994609117
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999709320
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999998942
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.978210327317
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999975
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999997346
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.021788944691
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999845
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999656
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000505
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.125127513836
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999975217
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000009677
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999989769
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.874861277452
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999753513
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999995957
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000294449
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.999999998000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.755918518291
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000001046
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999997257
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.244077592441
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
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 3   5 4 6 2 1 1 3 5 4 6   2 1 3 5 4 6 2 3 5 4   2 613101514 812 9 7
                                       11 11013141512 8 9 7  11 3 5 2 4 6 1101315  14 812 9 711 3 5 2 4   6 1 3 5 2 4 6101315
                                       1412 8 9 711 1 3 5 4   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 3 2 1 1 2 3 9 7  10 8 4 5 6 1 2 3 9 7  10 8 4 5 6 9 710 8 4
                                        6 5 1 2 3 9 710 8 4   6 51820151716141113  211912 9 710 8 4 6 5   1 2 3 9 710 8 4 6 5
                                        1 2 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.50294     1  1  s    0.96931    1  6  s    0.30793
    2.1     2.00000  -166.30787     1  2  s    1.09651
    3.1     2.00000   -33.63318     1  3  s    0.93644
    4.1     2.00000   -18.97587     1  1  d2-  0.99991
    5.1     2.00000   -18.97587     1  1  d2+  0.99991
    6.1     2.00000   -18.97587     1  1  d1+  0.99991
    7.1     2.00000   -18.97587     1  1  d1-  0.99991
    8.1     2.00000   -18.97587     1  1  d0   0.99991
    9.1     2.00000    -5.96940     1  4  s    1.02428
   10.1     2.00000    -1.39464     1  2  d2-  1.00092
   11.1     2.00000    -1.39464     1  2  d2+  1.00092
   12.1     2.00000    -1.39464     1  2  d1+  1.00092
   13.1     2.00000    -1.39464     1  2  d1-  1.00092
   14.1     2.00000    -1.39464     1  2  d0   1.00092
   15.1     1.95586    -0.56991     1  3  s   -0.55188    1  4  s   -1.10931    1  7  s    0.42627    1  8  s    0.30948
                                    1  9  s    0.49691    1 10  s    0.66752
    1.2     2.00000  -149.13432     1  1  px   0.99864
    2.2     2.00000  -149.13432     1  1  py   0.99864
    3.2     2.00000  -149.13432     1  1  pz   0.99864
    4.2     2.00000   -27.86764     1  2  px   1.00883
    5.2     2.00000   -27.86764     1  2  py   1.00883
    6.2     2.00000   -27.86764     1  2  pz   1.00883
    7.2     2.00000    -4.13644     1  3  px   1.00292
    8.2     2.00000    -4.13644     1  3  py   1.00292
    9.2     2.00000    -4.13644     1  3  pz   1.00292
   10.2     0.51194    -0.10750     1  8  pz   0.39818    1  9  pz   0.54569
   11.2     0.51194    -0.10750     1  8  py   0.39818    1  9  py   0.54569
   12.2     0.51194    -0.10750     1  8  px   0.39818    1  9  px   0.54569
   13.2     0.16944     0.03740     1  9  pz  -0.26168    1 11  pz   1.10593
   14.2     0.16944     0.03740     1  9  py  -0.26168    1 11  py   1.10593
   15.2     0.16944     0.03740     1  9  px  -0.26168    1 11  px   1.10593
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000       0.00001085      0.99188957      0.00001840     -0.00000000      0.00000000      0.00000001     -0.00000000
 2 0aa000      -0.00001236     -0.00001840      0.99188957     -0.00000000     -0.00000005      0.00000000     -0.00000000
 2 a0a000       0.99188957     -0.00001086      0.00001236     -0.00000000      0.00000000     -0.00000000     -0.00000004
 2 0a00a0      -0.00000000     -0.00000000      0.00000000      0.80573294     -0.00012330      0.00005349     -0.00001858
 2 a00a00       0.00000000     -0.00000000      0.00000000     -0.37707688      0.00003502     -0.00004543      0.00008676
 2 0a0a00      -0.00000009     -0.00794349     -0.00000015     -0.00004560      0.00003414      0.69826162     -0.00001390
 2 0a000a      -0.00000010     -0.00000015      0.00794354      0.00010769      0.69826161     -0.00003413      0.00001915
 2 00aa00      -0.00794349      0.00000009     -0.00000010      0.00001322     -0.00001915      0.00001391      0.69826161
 2 a0000a       0.00794354     -0.00000009      0.00000010      0.00001322     -0.00001915      0.00001391      0.69826161
 2 a000a0       0.00000009      0.00794347      0.00000015     -0.00004560      0.00003414      0.69826160     -0.00001390
 2 00a0a0       0.00000010      0.00000015     -0.00794347      0.00010769      0.69826159     -0.00003413      0.00001915
 2 00a00a      -0.00000000      0.00000000      0.00000000     -0.42865603      0.00008828     -0.00000806     -0.00006817
 2 0000aa       0.00000021      0.00000031     -0.01674375     -0.00000000     -0.00000005      0.00000000     -0.00000000
 2 000aa0      -0.00000018     -0.01674375     -0.00000031     -0.00000000      0.00000000      0.00000001     -0.00000000
 2 000a0a      -0.01674375      0.00000018     -0.00000021     -0.00000000      0.00000000     -0.00000000     -0.00000004
 0 aa2000      -0.00000127     -0.11592580     -0.00000215      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2aa000       0.00000144      0.00000215     -0.11592579      0.00000000      0.00000001     -0.00000000      0.00000000
 0 a2a000      -0.11592579      0.00000127     -0.00000144      0.00000000     -0.00000000      0.00000000      0.00000000
 0 2a00a0       0.00000000      0.00000000      0.00000000     -0.08688937      0.00001332     -0.00000575      0.00000193
 0 0a20a0       0.00000000      0.00000000     -0.00000000     -0.08684120      0.00001327     -0.00000578      0.00000208
 0 a20a00      -0.00000000      0.00000000     -0.00000000      0.04007576     -0.00000368      0.00000487     -0.00000938
 0 a02a00      -0.00000000      0.00000000     -0.00000000      0.04122882     -0.00000387      0.00000493     -0.00000933
 0 0a2a00      -0.00000001     -0.00103829     -0.00000002      0.00000494     -0.00000370     -0.07560503      0.00000151
 0 a020a0       0.00000001      0.00103830      0.00000002      0.00000494     -0.00000370     -0.07560503      0.00000151
 0 2a000a      -0.00000001     -0.00000002      0.00103829     -0.00001166     -0.07560503      0.00000370     -0.00000207
 0 02aa00      -0.00103829      0.00000001     -0.00000001     -0.00000143      0.00000207     -0.00000151     -0.07560503
 0 a2000a       0.00103829     -0.00000001      0.00000001     -0.00000143      0.00000207     -0.00000151     -0.07560503
 0 20a0a0       0.00000001      0.00000002     -0.00103830     -0.00001166     -0.07560503      0.00000370     -0.00000207
 0 0a200a       0.00000028      0.00000042     -0.02284831     -0.00001156     -0.07495278      0.00000366     -0.00000206
 0 2a0a00       0.00000025      0.02284831      0.00000042      0.00000489     -0.00000366     -0.07495278      0.00000149
 0 20aa00       0.02284831     -0.00000025      0.00000028     -0.00000142      0.00000206     -0.00000149     -0.07495278
 0 a0200a      -0.02284831      0.00000025     -0.00000028     -0.00000142      0.00000206     -0.00000149     -0.07495278
 0 02a0a0      -0.00000028     -0.00000042      0.02284831     -0.00001156     -0.07495278      0.00000366     -0.00000206
 0 a200a0      -0.00000025     -0.02284831     -0.00000042      0.00000489     -0.00000366     -0.07495278      0.00000149
 0 02a00a       0.00000000     -0.00000000     -0.00000000      0.04566055     -0.00000944      0.00000082      0.00000740
 0 20a00a       0.00000000     -0.00000000     -0.00000000      0.04676543     -0.00000959      0.00000092      0.00000730
 
 Energy:    -6173.75255583  -6173.75255583  -6173.75255583  -6173.57757642  -6173.57757642  -6173.57757642  -6173.57757642

 State:              8               9              10              11              12
 2 aa0000       0.00000000     -0.00003023     -0.01573437     -0.00000102      0.00000000
 2 0aa000      -0.00000000      0.00000781      0.00000100     -0.01573443      0.00000000
 2 a0a000       0.00000000     -0.01573442      0.00003023     -0.00000781     -0.00000000
 2 0a00a0      -0.02977924     -0.00000000     -0.00000000      0.00000000      0.56996300
 2 a00a00       0.71267481     -0.00000000      0.00000000      0.00000000      0.56996302
 2 0a0a00       0.00002039     -0.00133147     -0.69293902     -0.00004486      0.00000000
 2 0a000a       0.00002266     -0.00034403     -0.00004420      0.69294021     -0.00000000
 2 00aa00      -0.00007801     -0.69293895      0.00133149     -0.00034394     -0.00000000
 2 a0000a      -0.00007801      0.69293895     -0.00133149      0.00034394      0.00000000
 2 a000a0       0.00002039      0.00133147      0.69293904      0.00004486      0.00000000
 2 00a0a0       0.00002266      0.00034403      0.00004420     -0.69294024      0.00000000
 2 00a00a      -0.68289557     -0.00000000     -0.00000000      0.00000000      0.56996302
 2 0000aa      -0.00000000      0.00006176      0.00000793     -0.12439197      0.00000000
 2 000aa0       0.00000000     -0.00023902     -0.12439179     -0.00000805     -0.00000000
 2 000a0a       0.00000000     -0.12439172      0.00023902     -0.00006174     -0.00000000
 0 aa2000      -0.00000000      0.00001316      0.00685024      0.00000044     -0.00000000
 0 2aa000       0.00000000     -0.00000340     -0.00000044      0.00685025     -0.00000000
 0 a2a000      -0.00000000      0.00685024     -0.00001316      0.00000340      0.00000000
 0 2a00a0       0.00255866      0.00000000      0.00000000     -0.00000000     -0.06218406
 0 0a20a0       0.00386228      0.00000000      0.00000000     -0.00000000     -0.06218406
 0 a20a00      -0.07713782      0.00000000     -0.00000000     -0.00000000     -0.06218406
 0 a02a00      -0.07652774      0.00000000     -0.00000000     -0.00000000     -0.06218407
 0 0a2a00      -0.00000221      0.00014523      0.07558256      0.00000489     -0.00000000
 0 a020a0      -0.00000221     -0.00014523     -0.07558256     -0.00000489     -0.00000000
 0 2a000a      -0.00000245      0.00003752      0.00000482     -0.07558269      0.00000000
 0 02aa00       0.00000845      0.07558255     -0.00014523      0.00003752      0.00000000
 0 a2000a       0.00000845     -0.07558255      0.00014523     -0.00003752     -0.00000000
 0 20a0a0      -0.00000245     -0.00003752     -0.00000482      0.07558269     -0.00000000
 0 0a200a      -0.00000243      0.00003618      0.00000465     -0.07286466      0.00000000
 0 2a0a00      -0.00000219      0.00014001      0.07286453      0.00000472     -0.00000000
 0 20aa00       0.00000837      0.07286452     -0.00014001      0.00003617      0.00000000
 0 a0200a       0.00000837     -0.07286452      0.00014001     -0.00003617     -0.00000000
 0 02a0a0      -0.00000243     -0.00003618     -0.00000465      0.07286466     -0.00000000
 0 a200a0      -0.00000219     -0.00014001     -0.07286453     -0.00000472     -0.00000000
 0 02a00a       0.07396907      0.00000000      0.00000000     -0.00000000     -0.06218406
 0 20a00a       0.07327554      0.00000000      0.00000000     -0.00000000     -0.06218406
 
 Energy:    -6173.57757642  -6173.57189702  -6173.57189702  -6173.57189702  -6173.57072785
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000      -0.00000860     -0.05957655     -0.00000629      0.00005491      0.80499630      0.55719937
 2 200000       0.00005778      0.72693553      0.00000416     -0.00001220     -0.35090335      0.55719935
 2 ab0000       0.00000126     -0.00000141      0.69905387     -0.00001237      0.00000536      0.00000000
 2 ba0000      -0.00000126      0.00000141     -0.69905387      0.00001237     -0.00000536     -0.00000000
 2 0ab000      -0.00000985     -0.00001170      0.00001237      0.69905387     -0.00004855     -0.00000000
 2 0ba000       0.00000985      0.00001170     -0.00001237     -0.69905387      0.00004855      0.00000000
 2 b0a000      -0.69905387      0.00005389      0.00000126     -0.00000985     -0.00000348      0.00000000
 2 a0b000       0.69905387     -0.00005389     -0.00000126      0.00000985      0.00000348     -0.00000000
 2 002000      -0.00004918     -0.66735897      0.00000214     -0.00004271     -0.45409296      0.55719935
 0 022000       0.00000674      0.08475187      0.00000048     -0.00000142     -0.04091108     -0.12499179
 0 220000      -0.00000573     -0.07780597      0.00000025     -0.00000498     -0.05294174     -0.12499179
 0 202000      -0.00000100     -0.00694591     -0.00000073      0.00000640      0.09385282     -0.12499179
 0 ab2000      -0.00000015      0.00000016     -0.08150121      0.00000144     -0.00000063     -0.00000000
 0 ba2000       0.00000015     -0.00000016      0.08150121     -0.00000144      0.00000063      0.00000000
 0 2ba000      -0.00000115     -0.00000136      0.00000144      0.08150121     -0.00000566     -0.00000000
 0 2ab000       0.00000115      0.00000136     -0.00000144     -0.08150121      0.00000566      0.00000000
 0 b2a000       0.08150121     -0.00000628     -0.00000015      0.00000115      0.00000041     -0.00000000
 0 a2b000      -0.08150121      0.00000628      0.00000015     -0.00000115     -0.00000041      0.00000000
 2 00b00a       0.00000264      0.03579265     -0.00000011      0.00000229      0.02435450     -0.05627350
 2 00a00b      -0.00000264     -0.03579265      0.00000011     -0.00000229     -0.02435450      0.05627350
 2 a00b00       0.00000310      0.03898790      0.00000022     -0.00000065     -0.01882008      0.05627346
 2 b00a00      -0.00000310     -0.03898790     -0.00000022      0.00000065      0.01882008     -0.05627346
 2 0b00a0       0.00000046      0.00319528      0.00000034     -0.00000295     -0.04317454     -0.05627346
 2 0a00b0      -0.00000046     -0.00319528     -0.00000034      0.00000295      0.04317454      0.05627346
 
 Energy:    -6173.71758064  -6173.71758064  -6173.71758064  -6173.71758064  -6173.71758064  -6173.68801129
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      116.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.38       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.45      7.88      0.54      3.81
 REAL TIME  *        15.63 SEC
 DISK USED  *       117.60 MB (local),        1.61 GB (total)
 SF USED    *       208.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.752556   2.0
    -6173.752556   2.0
    -6173.752556   2.0
    -6173.577576   6.0
    -6173.577576   6.0
    -6173.577576   6.0
    -6173.577576   6.0
    -6173.577576   6.0
    -6173.571897   2.0
    -6173.571897   2.0
    -6173.571897   2.0
    -6173.570728   0.0
    -6173.717581   6.0
    -6173.717581   6.0
    -6173.717581   6.0
    -6173.717581   6.0
    -6173.717581   6.0
    -6173.688011   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 50
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.33 sec, npass=  1  Memory used:   2.74 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.75255583
     2     -6173.75255583
     3     -6173.75255583
     4     -6173.57757642
     5     -6173.57757642
     6     -6173.57757642
     7     -6173.57757642
     8     -6173.57757642
     9     -6173.57189702
    10     -6173.57189702
    11     -6173.57189702
    12     -6173.57072785

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3478D-06

 Number of blocks in overlap matrix:  1162   Smallest eigenvalue:  0.23D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       6595437
 Number of doubly external configurations:      14140359
 Total number of contracted configurations:     20774202
 Total number of uncontracted configurations:  264333766

 Diagonal Coupling coefficients finished.               Storage:  25506927 words, CPU-Time:     81.15 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2121418 words, CPU-time:      2.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.75255583     0.00000000    -0.92325067  0.50D-01  0.11D+00    98.03
    1     2     2     1.00000000     0.00000000 -6173.75255583    -0.00000000    -0.92340401  0.50D-01  0.11D+00    98.03
    1     3     3     1.00000000     0.00000000 -6173.75255583     0.00000000    -0.92315517  0.50D-01  0.11D+00    98.03
    1     4     4     1.00000000     0.00000000 -6173.57757642     0.00000000    -0.88548476  0.39D-01  0.96D-01    98.03
    1     5     5     1.00000000     0.00000000 -6173.57757642     0.00000000    -0.88509614  0.39D-01  0.96D-01    98.03
    1     6     6     1.00000000     0.00000000 -6173.57757642     0.00000000    -0.88514868  0.39D-01  0.96D-01    98.03
    1     7     7     1.00000000     0.00000000 -6173.57757642     0.00000000    -0.88508801  0.39D-01  0.96D-01    98.03
    1     8     8     1.00000000     0.00000000 -6173.57757642     0.00000000    -0.88542116  0.39D-01  0.96D-01    98.03
    1     9     9     1.00000000     0.00000000 -6173.57189702     0.00000000    -0.89107354  0.43D-01  0.97D-01    98.03
    1    10    10     1.00000000     0.00000000 -6173.57189702     0.00000000    -0.89113428  0.43D-01  0.97D-01    98.03
    1    11    11     1.00000000     0.00000000 -6173.57189702     0.00000000    -0.89108692  0.43D-01  0.97D-01    98.03
    1    12    12     1.00000000     0.00000000 -6173.57072785     0.00000000    -0.88634807  0.40D-01  0.96D-01    98.03
    2     1     1     1.09868709    -0.73561728 -6174.48817311    -0.73561728    -0.02291247  0.45D-02  0.16D-02  1211.19
    2     2     2     1.09880571    -0.73551781 -6174.48807364    -0.73551781    -0.02301577  0.46D-02  0.16D-02  1211.19
    2     3     3     1.09892301    -0.73540587 -6174.48796170    -0.73540587    -0.02314183  0.46D-02  0.16D-02  1211.19
    2     4     4     1.08972375    -0.72542651 -6174.30300293    -0.72542651    -0.01781874  0.28D-02  0.12D-02  1211.19
    2     5     5     1.08974244    -0.72541114 -6174.30298755    -0.72541114    -0.01783397  0.28D-02  0.12D-02  1211.19
    2     6     6     1.08986187    -0.72540617 -6174.30298258    -0.72540617    -0.01782743  0.28D-02  0.12D-02  1211.19
    2     7     7     1.08977496    -0.72538653 -6174.30296295    -0.72538653    -0.01786159  0.28D-02  0.12D-02  1211.19
    2     8     8     1.08989166    -0.72537986 -6174.30295628    -0.72537986    -0.01785742  0.28D-02  0.12D-02  1211.19
    2     9     9     1.09187462    -0.72582399 -6174.29772101    -0.72582399    -0.01916633  0.36D-02  0.12D-02  1211.19
    2    10    10     1.09188430    -0.72581242 -6174.29770944    -0.72581242    -0.01917945  0.37D-02  0.12D-02  1211.19
    2    11    11     1.09191677    -0.72578907 -6174.29768609    -0.72578907    -0.01920499  0.37D-02  0.12D-02  1211.19
    2    12    12     1.09062393    -0.72536098 -6174.29608884    -0.72536098    -0.01830418  0.31D-02  0.12D-02  1211.19
    3     1     1     1.08438790    -0.75739343 -6174.50994926    -0.02177615    -0.00047927  0.71D-04  0.55D-04  2328.49
    3     2     2     1.08438720    -0.75738683 -6174.50994266    -0.02186902    -0.00048539  0.72D-04  0.56D-04  2328.49
    3     3     3     1.08438073    -0.75738506 -6174.50994089    -0.02197918    -0.00048749  0.72D-04  0.56D-04  2328.49
    3     4     4     1.08077350    -0.74238854 -6174.31996496    -0.01696203    -0.00029644  0.33D-04  0.32D-04  2328.49
    3     5     5     1.08077273    -0.74238749 -6174.31996391    -0.01697636    -0.00029734  0.33D-04  0.32D-04  2328.49
    3     6     6     1.08077241    -0.74238689 -6174.31996330    -0.01698072    -0.00029803  0.33D-04  0.32D-04  2328.49
    3     7     7     1.08079485    -0.74238534 -6174.31996175    -0.01699881    -0.00029985  0.33D-04  0.33D-04  2328.49
    3     8     8     1.08079367    -0.74238416 -6174.31996058    -0.01700430    -0.00030081  0.33D-04  0.33D-04  2328.49
    3     9     9     1.08110394    -0.74405213 -6174.31594915    -0.01822814    -0.00035306  0.50D-04  0.37D-04  2328.49
    3    10    10     1.08110391    -0.74405099 -6174.31594802    -0.01823857    -0.00035407  0.50D-04  0.38D-04  2328.49
    3    11    11     1.08110304    -0.74405059 -6174.31594761    -0.01826152    -0.00035458  0.50D-04  0.38D-04  2328.49
    3    12    12     1.08098120    -0.74281542 -6174.31354328    -0.01745444    -0.00031378  0.36D-04  0.36D-04  2328.49
    4     1     1     1.08402018    -0.75789094 -6174.51044677    -0.00049751    -0.00002191  0.34D-05  0.27D-05  3449.31
    4     2     2     1.08401687    -0.75789061 -6174.51044644    -0.00050378    -0.00002219  0.35D-05  0.27D-05  3449.31
    4     3     3     1.08401663    -0.75789053 -6174.51044636    -0.00050547    -0.00002226  0.35D-05  0.27D-05  3449.31
    4     4     4     1.08096182    -0.74269447 -6174.32027088    -0.00030592    -0.00001305  0.25D-05  0.14D-05  3449.31
    4     5     5     1.08096147    -0.74269437 -6174.32027079    -0.00030688    -0.00001312  0.25D-05  0.14D-05  3449.31
    4     6     6     1.08096059    -0.74269437 -6174.32027079    -0.00030748    -0.00001312  0.25D-05  0.15D-05  3449.31
    4     7     7     1.08095777    -0.74269427 -6174.32027069    -0.00030894    -0.00001336  0.26D-05  0.15D-05  3449.31
    4     8     8     1.08095665    -0.74269416 -6174.32027058    -0.00031000    -0.00001343  0.26D-05  0.15D-05  3449.31
    4     9     9     1.08115864    -0.74441558 -6174.31631260    -0.00036345    -0.00001651  0.33D-05  0.18D-05  3449.31
    4    10    10     1.08115781    -0.74441548 -6174.31631250    -0.00036449    -0.00001659  0.33D-05  0.18D-05  3449.31
    4    11    11     1.08115840    -0.74441547 -6174.31631249    -0.00036488    -0.00001660  0.33D-05  0.18D-05  3449.31
    4    12    12     1.08120412    -0.74313952 -6174.31386738    -0.00032410    -0.00001444  0.25D-05  0.19D-05  3449.31
    5     1     1     1.08409559    -0.75791485 -6174.51047068    -0.00002391    -0.00000089  0.66D-07  0.14D-06  4568.80
    5     2     2     1.08409480    -0.75791484 -6174.51047067    -0.00002422    -0.00000090  0.67D-07  0.14D-06  4568.80
    5     3     3     1.08409483    -0.75791483 -6174.51047066    -0.00002431    -0.00000091  0.67D-07  0.14D-06  4568.80
    5     4     4     1.08105096    -0.74270933 -6174.32028575    -0.00001486    -0.00000065  0.48D-07  0.13D-06  4568.80
    5     5     5     1.08105075    -0.74270932 -6174.32028573    -0.00001494    -0.00000066  0.48D-07  0.13D-06  4568.80
    5     6     6     1.08105112    -0.74270920 -6174.32028562    -0.00001484    -0.00000065  0.49D-07  0.13D-06  4568.80
    5     7     7     1.08105107    -0.74270919 -6174.32028561    -0.00001492    -0.00000065  0.49D-07  0.13D-06  4568.80
    5     8     8     1.08105086    -0.74270919 -6174.32028561    -0.00001503    -0.00000065  0.49D-07  0.13D-06  4568.80
    5     9     9     1.08122906    -0.74443363 -6174.31633065    -0.00001805    -0.00000087  0.95D-07  0.15D-06  4568.80
    5    10    10     1.08122893    -0.74443362 -6174.31633065    -0.00001815    -0.00000087  0.95D-07  0.15D-06  4568.80
    5    11    11     1.08122887    -0.74443362 -6174.31633064    -0.00001815    -0.00000087  0.95D-07  0.15D-06  4568.80
    5    12    12     1.08133118    -0.74315601 -6174.31388387    -0.00001649    -0.00000080  0.50D-07  0.17D-06  4568.80
    6     1     1     1.08409626    -0.75791585 -6174.51047168    -0.00000100    -0.00000005  0.54D-08  0.91D-08  5687.83
    6     2     2     1.08409604    -0.75791585 -6174.51047168    -0.00000101    -0.00000005  0.55D-08  0.93D-08  5687.83
    6     3     3     1.08409605    -0.75791585 -6174.51047168    -0.00000102    -0.00000005  0.56D-08  0.93D-08  5687.83
    6     4     4     1.08106591    -0.74271013 -6174.32028655    -0.00000080    -0.00000006  0.60D-08  0.12D-07  5687.83
    6     5     5     1.08106586    -0.74271012 -6174.32028654    -0.00000081    -0.00000006  0.60D-08  0.13D-07  5687.83
    6     6     6     1.08106626    -0.74270999 -6174.32028641    -0.00000079    -0.00000006  0.61D-08  0.12D-07  5687.83
    6     7     7     1.08106620    -0.74270999 -6174.32028641    -0.00000079    -0.00000006  0.62D-08  0.12D-07  5687.83
    6     8     8     1.08106621    -0.74270999 -6174.32028640    -0.00000080    -0.00000006  0.62D-08  0.12D-07  5687.83
    6     9     9     1.08123657    -0.74443463 -6174.31633165    -0.00000100    -0.00000008  0.89D-08  0.17D-07  5687.83
    6    10    10     1.08123647    -0.74443463 -6174.31633165    -0.00000100    -0.00000008  0.90D-08  0.18D-07  5687.83
    6    11    11     1.08123648    -0.74443463 -6174.31633165    -0.00000100    -0.00000008  0.90D-08  0.18D-07  5687.83
    6    12    12     1.08135301    -0.74315700 -6174.31388486    -0.00000099    -0.00000007  0.82D-08  0.14D-07  5687.83
    7     1     1     1.08410498    -0.75791591 -6174.51047174    -0.00000006    -0.00000000  0.27D-09  0.66D-09  6806.01
    7     2     2     1.08410497    -0.75791591 -6174.51047174    -0.00000006    -0.00000000  0.26D-09  0.65D-09  6806.01
    7     3     3     1.08410501    -0.75791591 -6174.51047174    -0.00000006    -0.00000000  0.27D-09  0.67D-09  6806.01
    7     4     4     1.08107209    -0.74271020 -6174.32028662    -0.00000007    -0.00000001  0.51D-09  0.11D-08  6806.01
    7     5     5     1.08107207    -0.74271019 -6174.32028661    -0.00000007    -0.00000001  0.51D-09  0.11D-08  6806.01
    7     6     6     1.08107187    -0.74271006 -6174.32028648    -0.00000007    -0.00000001  0.50D-09  0.11D-08  6806.01
    7     7     7     1.08107188    -0.74271006 -6174.32028648    -0.00000007    -0.00000001  0.51D-09  0.11D-08  6806.01
    7     8     8     1.08107187    -0.74271006 -6174.32028648    -0.00000007    -0.00000001  0.51D-09  0.11D-08  6806.01
    7     9     9     1.08124338    -0.74443473 -6174.31633175    -0.00000010    -0.00000001  0.68D-09  0.17D-08  6806.01
    7    10    10     1.08124337    -0.74443473 -6174.31633175    -0.00000010    -0.00000001  0.69D-09  0.17D-08  6806.01
    7    11    11     1.08124337    -0.74443473 -6174.31633175    -0.00000010    -0.00000001  0.69D-09  0.17D-08  6806.01
    7    12    12     1.08136033    -0.74315709 -6174.31388494    -0.00000009    -0.00000001  0.58D-09  0.11D-08  6806.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  32.6%
 P   0.2%  31.1%  23.7%

 Initialization:   1.2%
 Other:           10.1%

 Total CPU:     6806.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.9522173   0.0515205  -0.0104032   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0009917  -0.0194332   0.0155150  -0.0000000
 2222222222//0000           0.0165166  -0.1141100   0.9466712   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0109377   0.0136037   0.0177385  -0.0000000
 22222222220//000          -0.0498978   0.9454126   0.1148289  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0223323  -0.0075257  -0.0079988   0.0000000
 2222222222/00/00          -0.0000000  -0.0000000   0.0000000  -0.0125781   0.7768949   0.0064272  -0.0008583   0.0006217
                            0.0000002  -0.0000002   0.0000003   0.5492029
 22222222220/00/0           0.0000000   0.0000000  -0.0000000   0.6791202  -0.3775430  -0.0043211   0.0021119  -0.0008620
                            0.0000001   0.0000002  -0.0000002   0.5492025
 22222222220/000/           0.0010046  -0.0190350  -0.0023120   0.0011414  -0.0055255   0.6721128   0.0274620   0.0174209
                           -0.5984694  -0.2016771  -0.2143549   0.0000003
 222222222200/0/0          -0.0010047   0.0190351   0.0023120   0.0011415  -0.0055255   0.6721128   0.0274620   0.0174210
                            0.5984695   0.2016772   0.2143550  -0.0000002
 222222222200/00/           0.0000000  -0.0000000   0.0000000  -0.6665420  -0.3993525  -0.0021062  -0.0012535   0.0002402
                            0.0000002  -0.0000001   0.0000002   0.5492025
 2222222222/0000/          -0.0191720  -0.0010373   0.0002095   0.0014715  -0.0008754   0.0026021  -0.4048826   0.5374812
                            0.0265770  -0.5207789   0.4157762  -0.0000001
 222222222200//00           0.0191721   0.0010373  -0.0002095   0.0014710  -0.0008749   0.0026022  -0.4048823   0.5374804
                           -0.0265770   0.5207795  -0.4157767   0.0000001
 2222222222/000/0          -0.0003325   0.0022975  -0.0190605  -0.0010728   0.0005201  -0.0324116   0.5367849   0.4045190
                           -0.2931131   0.3645581   0.4753619  -0.0000000
 22222222220/0/00           0.0003325  -0.0022975   0.0190604  -0.0010730   0.0005201  -0.0324115   0.5367844   0.4045185
                            0.2931133  -0.3645584  -0.4753626  -0.0000000
 22222222220000//           0.0005986  -0.0113412  -0.0013775  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                            0.1131670   0.0381359   0.0405332  -0.0000000
 2222220222/2/000          -0.1002522  -0.0054242   0.0010953   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001
                            0.0000829  -0.0016236   0.0012963   0.0000000
 2222220222//2000          -0.0017389   0.0120138  -0.0996683  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000
                           -0.0009138   0.0011366   0.0014820   0.0000000
 22222202222//000           0.0052534  -0.0995358  -0.0120895   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0018658  -0.0006288  -0.0006683  -0.0000000
 2222222222000/0/          -0.0114229  -0.0006180   0.0001248  -0.0000000   0.0000000   0.0000000   0.0000001  -0.0000001
                           -0.0050256   0.0984762  -0.0786208   0.0000000
 2222222222000//0          -0.0001981   0.0013689  -0.0113563  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                            0.0554260  -0.0689358  -0.0898882  -0.0000000
 2222220222/20/00          -0.0000000  -0.0000000   0.0000000   0.0005180  -0.0749474  -0.0006188   0.0000811  -0.0000594
                           -0.0000000   0.0000000  -0.0000000  -0.0537745
 2222220222/02/00          -0.0000000  -0.0000000   0.0000000   0.0019085  -0.0749249  -0.0006211   0.0000845  -0.0000605
                           -0.0000000   0.0000000  -0.0000000  -0.0537745
 22222202222/00/0          -0.0000000   0.0000000  -0.0000000  -0.0658431   0.0358086   0.0004124  -0.0002039   0.0000829
                           -0.0000000  -0.0000000   0.0000000  -0.0537745
 22222202222/000/          -0.0001905   0.0036089   0.0004383  -0.0001107   0.0005358  -0.0651766  -0.0026631  -0.0016894
                            0.0584278   0.0196895   0.0209272  -0.0000000
 222222022220/0/0           0.0001905  -0.0036089  -0.0004383  -0.0001107   0.0005358  -0.0651766  -0.0026631  -0.0016894
                           -0.0584277  -0.0196895  -0.0209272   0.0000000
 22222202220/20/0          -0.0000000   0.0000000  -0.0000000  -0.0651673   0.0370240   0.0004212  -0.0002035   0.0000833
                            0.0000000  -0.0000000   0.0000001  -0.0537745
 222222022220/00/           0.0000000  -0.0000000   0.0000000   0.0646494   0.0379236   0.0001976   0.0001224  -0.0000239
                           -0.0000000   0.0000000  -0.0000000  -0.0537745
 222222022202/0/0          -0.0008712   0.0165065   0.0020049  -0.0001095   0.0005301  -0.0644820  -0.0026347  -0.0016714
                           -0.0568850  -0.0191696  -0.0203746   0.0000000
 22222202220/200/           0.0008712  -0.0165064  -0.0020049  -0.0001095   0.0005301  -0.0644820  -0.0026347  -0.0016714
                            0.0568849   0.0191695   0.0203746  -0.0000000
 222222022202/00/          -0.0000000  -0.0000000   0.0000000   0.0639346   0.0391164   0.0002087   0.0001194  -0.0000224
                           -0.0000000   0.0000000  -0.0000000  -0.0537745
 2222220222/2000/           0.0036349   0.0001967  -0.0000397  -0.0001427   0.0000849  -0.0002523   0.0392625  -0.0521210
                           -0.0025947   0.0508429  -0.0405916   0.0000000
 222222022202//00          -0.0036349  -0.0001967   0.0000397  -0.0001427   0.0000849  -0.0002523   0.0392625  -0.0521209
                            0.0025947  -0.0508430   0.0405917  -0.0000000
 2222220222/020/0           0.0000631  -0.0004356   0.0036137   0.0001040  -0.0000504   0.0031430  -0.0520534  -0.0392273
                            0.0286162  -0.0355913  -0.0464089   0.0000000
 22222202220/2/00          -0.0000630   0.0004356  -0.0036137   0.0001040  -0.0000504   0.0031430  -0.0520534  -0.0392272
                           -0.0286162   0.0355913   0.0464089   0.0000000
 222222022220//00           0.0166253   0.0008995  -0.0001816  -0.0001411   0.0000839  -0.0002497   0.0388442  -0.0515656
                            0.0025262  -0.0495006   0.0395200  -0.0000000
 2222220222/0200/          -0.0166252  -0.0008995   0.0001816  -0.0001411   0.0000840  -0.0002496   0.0388441  -0.0515656
                           -0.0025262   0.0495004  -0.0395198   0.0000000
 22222202222/0/00           0.0002884  -0.0019923   0.0165284   0.0001029  -0.0000499   0.0031095  -0.0514988  -0.0388093
                           -0.0278607   0.0346516   0.0451836  -0.0000000
 2222220222/200/0          -0.0002884   0.0019923  -0.0165284   0.0001029  -0.0000499   0.0031095  -0.0514988  -0.0388093
                            0.0278606  -0.0346515  -0.0451835  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957836    0.016614   -0.050192    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.038888   -0.000675
            -0.002038    0.000000
 2           0.051824   -0.114783    0.950992    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.002104    0.004660
             0.038610   -0.000000
 3          -0.010465    0.952258    0.115506   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000425   -0.038661
             0.004690    0.000000
 4           0.000000    0.000000   -0.000000    0.856521    0.001630   -0.001533    0.002102    0.436198   -0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.436170   -0.007893    0.000743   -0.001250    0.856504    0.000000   -0.000000
            -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.005120    0.960044   -0.046297    0.003717    0.006285    0.000000   -0.000000
            -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.002621    0.039227    0.766742   -0.578333    0.000187    0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.001056    0.024884    0.577813    0.767736    0.000311   -0.000001    0.000000
             0.000000   -0.000000
 9           0.001597   -0.017615   -0.035967   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.038268   -0.422047
             0.861722    0.000000
 10         -0.031298    0.021909   -0.012120    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.749858    0.524919
             0.290390   -0.000000
 11          0.024987    0.028568   -0.012882   -0.000000    0.000000   -0.000001   -0.000000    0.000000   -0.598667    0.684463
             0.308645    0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.961074

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960085   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000043   -0.000412
             0.000356   -0.000000
 2          -0.000000    0.960085    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000456   -0.000222
            -0.000202    0.000000
 3          -0.000000    0.000000    0.960085    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000297    0.000281
             0.000361   -0.000000
 4           0.000000   -0.000000    0.000000    0.961201    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.961201   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961201    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.961201   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961201    0.000000   -0.000000
            -0.000000    0.000000
 9           0.000043   -0.000456   -0.000297   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.961124    0.000000
             0.000000   -0.000000
 10         -0.000412   -0.000222    0.000281    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.961124
            -0.000000    0.000000
 11          0.000356   -0.000202    0.000361   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.961124   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.961074


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95783646 (fixed)   0.96016415 (relaxed)   0.96008465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071316   -0.00134407   -0.64946139
 Singles      0.01560253   -0.05386998   -0.06055280
 Pairs        0.06856242   -0.00000000   -0.04790172
 Total        1.08487812   -0.05521405   -0.75791591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.75225015
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.17484606
 One electron energy                -8491.00580775
 Two electron energy                 2316.49533600
 Virial quotient                       -0.86779462
 Correlation energy                    -0.75822159
 !MRCI STATE 1.1 Energy             -6174.510471741653

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.57482816 (Davidson, fixed reference)
 Cluster corrected energies         -6174.57469194 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.57482816 (Davidson, rotated reference)

 Cluster corrected energies         -6174.57256569 (Pople, fixed reference)
 Cluster corrected energies         -6174.57242492 (Pople, relaxed reference)
 Cluster corrected energies         -6174.57256569 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95099157 (fixed)   0.96016416 (relaxed)   0.96008465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071316   -0.00134407   -0.64946143
 Singles      0.01560249   -0.05386995   -0.06055278
 Pairs        0.06856246    0.00000000   -0.04790171
 Total        1.08487811   -0.05521402   -0.75791591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.75225015
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.17484439
 One electron energy                -8491.00580668
 Two electron energy                 2316.49533494
 Virial quotient                       -0.86779462
 Correlation energy                    -0.75822159
 !MRCI STATE 2.1 Energy             -6174.510471741592

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.57482815 (Davidson, fixed reference)
 Cluster corrected energies         -6174.57469194 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.57482815 (Davidson, rotated reference)

 Cluster corrected energies         -6174.57256568 (Pople, fixed reference)
 Cluster corrected energies         -6174.57242491 (Pople, relaxed reference)
 Cluster corrected energies         -6174.57256568 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95225768 (fixed)   0.96016414 (relaxed)   0.96008464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071316   -0.00134407   -0.64946135
 Singles      0.01560257   -0.05387000   -0.06055282
 Pairs        0.06856242   -0.00000000   -0.04790174
 Total        1.08487815   -0.05521408   -0.75791591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.75225015
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.17484250
 One electron energy                -8491.00580403
 Two electron energy                 2316.49533229
 Virial quotient                       -0.86779462
 Correlation energy                    -0.75822159
 !MRCI STATE 3.1 Energy             -6174.510471741512

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.57482818 (Davidson, fixed reference)
 Cluster corrected energies         -6174.57469197 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.57482818 (Davidson, rotated reference)

 Cluster corrected energies         -6174.57256572 (Pople, fixed reference)
 Cluster corrected energies         -6174.57242494 (Pople, relaxed reference)
 Cluster corrected energies         -6174.57256572 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.85652132 (fixed)   0.96132954 (relaxed)   0.96120088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119119   -0.00222406   -0.63489462
 Singles      0.01671046   -0.05641046   -0.06358123
 Pairs        0.06445820    0.00000000   -0.04423435
 Total        1.08235986   -0.05863451   -0.74271020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57757642
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63521637
 One electron energy                -8480.94874754
 Two electron energy                 2306.62846092
 Virial quotient                       -0.86783371
 Correlation energy                    -0.74271020
 !MRCI STATE 4.1 Energy             -6174.320286617874

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.38145612 (Davidson, fixed reference)
 Cluster corrected energies         -6174.38124097 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.38145612 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37918115 (Pople, fixed reference)
 Cluster corrected energies         -6174.37895975 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37918115 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.85650370 (fixed)   0.96132955 (relaxed)   0.96120089 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119119   -0.00222406   -0.63489487
 Singles      0.01671046   -0.05641047   -0.06358123
 Pairs        0.06445819    0.00000028   -0.04423409
 Total        1.08235984   -0.05863425   -0.74271019
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57757642
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63521490
 One electron energy                -8480.94874489
 Two electron energy                 2306.62845828
 Virial quotient                       -0.86783371
 Correlation energy                    -0.74271019
 !MRCI STATE 5.1 Energy             -6174.320286612256

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.38145610 (Davidson, fixed reference)
 Cluster corrected energies         -6174.38124095 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.38145610 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37918112 (Pople, fixed reference)
 Cluster corrected energies         -6174.37895972 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37918112 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96004397 (fixed)   0.96132964 (relaxed)   0.96120098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119119   -0.00222405   -0.63489495
 Singles      0.01671027   -0.05641014   -0.06358100
 Pairs        0.06445817    0.00000004   -0.04423412
 Total        1.08235964   -0.05863416   -0.74271006
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57757642
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63518801
 One electron energy                -8480.94869998
 Two electron energy                 2306.62841350
 Virial quotient                       -0.86783372
 Correlation energy                    -0.74271006
 !MRCI STATE 6.1 Energy             -6174.320286480773

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.38145581 (Davidson, fixed reference)
 Cluster corrected energies         -6174.38124066 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.38145581 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37918083 (Pople, fixed reference)
 Cluster corrected energies         -6174.37895943 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37918083 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.76674161 (fixed)   0.96132963 (relaxed)   0.96120098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119119   -0.00222405   -0.63489487
 Singles      0.01671029   -0.05641016   -0.06358101
 Pairs        0.06445816   -0.00000002   -0.04423418
 Total        1.08235964   -0.05863423   -0.74271006
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57757642
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63519033
 One electron energy                -8480.94870282
 Two electron energy                 2306.62841635
 Virial quotient                       -0.86783371
 Correlation energy                    -0.74271006
 !MRCI STATE 7.1 Energy             -6174.320286476794

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.38145581 (Davidson, fixed reference)
 Cluster corrected energies         -6174.38124066 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.38145581 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37918083 (Pople, fixed reference)
 Cluster corrected energies         -6174.37895943 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37918083 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.76773599 (fixed)   0.96132964 (relaxed)   0.96120098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119119   -0.00222405   -0.63489492
 Singles      0.01671028   -0.05641016   -0.06358100
 Pairs        0.06445816    0.00000002   -0.04423414
 Total        1.08235964   -0.05863418   -0.74271006
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57757642
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63518983
 One electron energy                -8480.94870216
 Two electron energy                 2306.62841568
 Virial quotient                       -0.86783371
 Correlation energy                    -0.74271006
 !MRCI STATE 8.1 Energy             -6174.320286476483

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.38145581 (Davidson, fixed reference)
 Cluster corrected energies         -6174.38124065 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.38145581 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37918083 (Pople, fixed reference)
 Cluster corrected energies         -6174.37895943 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37918083 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.86172247 (fixed)   0.96126868 (relaxed)   0.96112429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119215   -0.00216043   -0.63648911
 Singles      0.01663207   -0.05630193   -0.06344429
 Pairs        0.06470816   -0.00000021   -0.04450133
 Total        1.08253238   -0.05846258   -0.74443473
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57220270
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.69740361
 One electron energy                -8481.45882837
 Two electron energy                 2307.14249662
 Virial quotient                       -0.86782557
 Correlation energy                    -0.74412905
 !MRCI STATE 9.1 Energy             -6174.316331752852

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.37774649 (Davidson, fixed reference)
 Cluster corrected energies         -6174.37750452 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.37774649 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37547095 (Pople, fixed reference)
 Cluster corrected energies         -6174.37522188 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37547095 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.74985810 (fixed)   0.96126868 (relaxed)   0.96112429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119215   -0.00216043   -0.63648932
 Singles      0.01663207   -0.05630193   -0.06344429
 Pairs        0.06470815    0.00000002   -0.04450111
 Total        1.08253237   -0.05846234   -0.74443473
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57220270
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.69740862
 One electron energy                -8481.45883346
 Two electron energy                 2307.14250171
 Virial quotient                       -0.86782557
 Correlation energy                    -0.74412905
 !MRCI STATE 10.1 Energy            -6174.316331751803

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.37774649 (Davidson, fixed reference)
 Cluster corrected energies         -6174.37750451 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.37774649 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37547094 (Pople, fixed reference)
 Cluster corrected energies         -6174.37522187 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37547094 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.68446328 (fixed)   0.96126868 (relaxed)   0.96112429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119215   -0.00216043   -0.63648916
 Singles      0.01663208   -0.05630194   -0.06344429
 Pairs        0.06470815   -0.00000014   -0.04450127
 Total        1.08253238   -0.05846251   -0.74443473
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57220270
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.69740850
 One electron energy                -8481.45883362
 Two electron energy                 2307.14250187
 Virial quotient                       -0.86782557
 Correlation energy                    -0.74412905
 !MRCI STATE 11.1 Energy            -6174.316331751061

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.37774649 (Davidson, fixed reference)
 Cluster corrected energies         -6174.37750451 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.37774649 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37547094 (Pople, fixed reference)
 Cluster corrected energies         -6174.37522188 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37547094 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96107431 (fixed)   0.96119912 (relaxed)   0.96107431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00118799   -0.00222605   -0.00287159
 Singles      0.01671705   -0.05645722   -0.06361887
 Pairs        0.06473993   -0.68447381   -0.67666662
 Total        1.08264497   -0.74315709   -0.74315709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.57072785
 Nuclear energy                         0.00000000
 Kinetic energy                      7114.63718214
 One electron energy                -8480.94596269
 Two electron energy                 2306.63207775
 Virial quotient                       -0.86783257
 Correlation energy                    -0.74315709
 !MRCI STATE 12.1 Energy            -6174.313884941760

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.37530314 (Davidson, fixed reference)
 Cluster corrected energies         -6174.37509421 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.37530314 (Davidson, rotated reference)

 Cluster corrected energies         -6174.37303305 (Pople, fixed reference)
 Cluster corrected energies         -6174.37281795 (Pople, relaxed reference)
 Cluster corrected energies         -6174.37303305 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      116.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1920.13       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8370.36   8357.91      7.88      0.54      3.81
 REAL TIME  *      8566.53 SEC
 DISK USED  *         1.99 GB (local),       24.09 GB (total)
 SF USED    *        19.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.57482816  AU                              
 SETTING HLSDIAG(2)     =     -6174.57482815  AU                              
 SETTING HLSDIAG(3)     =     -6174.57482818  AU                              
 SETTING HLSDIAG(4)     =     -6174.38145612  AU                              
 SETTING HLSDIAG(5)     =     -6174.38145610  AU                              
 SETTING HLSDIAG(6)     =     -6174.38145581  AU                              
 SETTING HLSDIAG(7)     =     -6174.38145581  AU                              
 SETTING HLSDIAG(8)     =     -6174.38145581  AU                              
 SETTING HLSDIAG(9)     =     -6174.37774649  AU                              
 SETTING HLSDIAG(10)    =     -6174.37774649  AU                              
 SETTING HLSDIAG(11)    =     -6174.37774649  AU                              
 SETTING HLSDIAG(12)    =     -6174.37530314  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 50
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.71758064
     2     -6173.71758064
     3     -6173.71758064
     4     -6173.71758064
     5     -6173.71758064
     6     -6173.68801129

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1006D-06

 Number of blocks in overlap matrix:   599   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    1273
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       3836798
 Number of doubly external configurations:       7068849
 Total number of contracted configurations:     10929797
 Total number of uncontracted configurations:  154475678

 Diagonal Coupling coefficients finished.               Storage:  12989839 words, CPU-Time:     11.93 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1660073 words, CPU-time:      1.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.71758064    -0.00000000    -0.92906012  0.57D-01  0.11D+00    18.64
    1     2     2     1.00000000     0.00000000 -6173.71758064     0.00000000    -0.92828141  0.56D-01  0.11D+00    18.64
    1     3     3     1.00000000     0.00000000 -6173.71758064    -0.00000000    -0.92929704  0.57D-01  0.11D+00    18.64
    1     4     4     1.00000000     0.00000000 -6173.71758064    -0.00000000    -0.92937351  0.57D-01  0.11D+00    18.64
    1     5     5     1.00000000     0.00000000 -6173.71758064    -0.00000000    -0.92880640  0.56D-01  0.11D+00    18.64
    1     6     6     1.00000000     0.00000000 -6173.68801129     0.00000000    -0.90382644  0.28D-01  0.11D+00    18.64
    2     1     1     1.10179099    -0.74042433 -6174.45800497    -0.74042433    -0.02351972  0.48D-02  0.16D-02   179.86
    2     2     2     1.10187664    -0.74041807 -6174.45799871    -0.74041807    -0.02354439  0.48D-02  0.16D-02   179.86
    2     3     3     1.10232782    -0.74004454 -6174.45762518    -0.74004454    -0.02394445  0.50D-02  0.16D-02   179.86
    2     4     4     1.10235411    -0.73996299 -6174.45754363    -0.73996299    -0.02403460  0.50D-02  0.16D-02   179.86
    2     5     5     1.10241663    -0.73992885 -6174.45750949    -0.73992885    -0.02405411  0.51D-02  0.16D-02   179.86
    2     6     6     1.09092200    -0.73808043 -6174.42609172    -0.73808043    -0.01888154  0.35D-02  0.14D-02   179.86
    3     1     1     1.08775383    -0.76251894 -6174.48009959    -0.02209462    -0.00053798  0.85D-04  0.65D-04   340.62
    3     2     2     1.08773727    -0.76251285 -6174.48009349    -0.02209477    -0.00054213  0.86D-04  0.65D-04   340.62
    3     3     3     1.08776913    -0.76250554 -6174.48008618    -0.02246101    -0.00055142  0.88D-04  0.67D-04   340.62
    3     4     4     1.08775203    -0.76250084 -6174.48008148    -0.02253785    -0.00055540  0.88D-04  0.67D-04   340.62
    3     5     5     1.08775435    -0.76249516 -6174.48007580    -0.02256631    -0.00055993  0.89D-04  0.68D-04   340.62
    3     6     6     1.08395984    -0.75617758 -6174.44418888    -0.01809715    -0.00041524  0.46D-04  0.63D-04   340.62
    4     1     1     1.08735883    -0.76308407 -6174.48066471    -0.00056512    -0.00002970  0.45D-05  0.43D-05   501.55
    4     2     2     1.08735761    -0.76308381 -6174.48066445    -0.00057096    -0.00003000  0.45D-05  0.43D-05   501.55
    4     3     3     1.08735441    -0.76308364 -6174.48066428    -0.00057810    -0.00003010  0.45D-05  0.43D-05   501.55
    4     4     4     1.08735352    -0.76308353 -6174.48066417    -0.00058270    -0.00003020  0.46D-05  0.44D-05   501.55
    4     5     5     1.08735381    -0.76308315 -6174.48066379    -0.00058799    -0.00003057  0.46D-05  0.44D-05   501.55
    4     6     6     1.08467522    -0.75662427 -6174.44463556    -0.00044669    -0.00002855  0.29D-05  0.54D-05   501.55
    5     1     1     1.08740193    -0.76311853 -6174.48069917    -0.00003446    -0.00000161  0.81D-07  0.33D-06   662.56
    5     2     2     1.08739995    -0.76311850 -6174.48069914    -0.00003469    -0.00000163  0.87D-07  0.34D-06   662.56
    5     3     3     1.08739886    -0.76311848 -6174.48069912    -0.00003484    -0.00000165  0.85D-07  0.35D-06   662.56
    5     4     4     1.08739997    -0.76311848 -6174.48069912    -0.00003495    -0.00000165  0.86D-07  0.34D-06   662.56
    5     5     5     1.08740043    -0.76311847 -6174.48069911    -0.00003532    -0.00000162  0.81D-07  0.34D-06   662.56
    5     6     6     1.08508914    -0.75665831 -6174.44466960    -0.00003404    -0.00000207  0.11D-06  0.43D-06   662.56
    6     1     1     1.08741001    -0.76312050 -6174.48070114    -0.00000196    -0.00000017  0.18D-07  0.33D-07   823.42
    6     2     2     1.08741024    -0.76312049 -6174.48070113    -0.00000199    -0.00000016  0.17D-07  0.33D-07   823.42
    6     3     3     1.08741056    -0.76312049 -6174.48070113    -0.00000201    -0.00000016  0.16D-07  0.32D-07   823.42
    6     4     4     1.08741013    -0.76312048 -6174.48070112    -0.00000200    -0.00000016  0.17D-07  0.33D-07   823.42
    6     5     5     1.08741023    -0.76312044 -6174.48070109    -0.00000197    -0.00000016  0.17D-07  0.32D-07   823.42
    6     6     6     1.08514393    -0.75666095 -6174.44467224    -0.00000264    -0.00000021  0.24D-07  0.36D-07   823.42
    7     1     1     1.08743212    -0.76312070 -6174.48070134    -0.00000021    -0.00000002  0.16D-08  0.31D-08   983.67
    7     2     2     1.08743208    -0.76312069 -6174.48070133    -0.00000020    -0.00000002  0.16D-08  0.31D-08   983.67
    7     3     3     1.08743208    -0.76312069 -6174.48070133    -0.00000020    -0.00000002  0.16D-08  0.30D-08   983.67
    7     4     4     1.08743211    -0.76312069 -6174.48070133    -0.00000020    -0.00000002  0.16D-08  0.31D-08   983.67
    7     5     5     1.08743206    -0.76312065 -6174.48070129    -0.00000020    -0.00000002  0.16D-08  0.30D-08   983.67
    7     6     6     1.08516378    -0.75666120 -6174.44467249    -0.00000025    -0.00000002  0.24D-08  0.35D-08   983.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   0.9%  14.7%
 P   0.5%  39.4%  24.6%

 Initialization:   1.3%
 Other:           17.0%

 Total CPU:      983.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.0077217   0.0020390  -0.0044137   0.9498756   0.0236474  -0.0000000
 22222222220/\000           0.1148554   0.9432167   0.0037199  -0.0030849   0.0057752  -0.0000000
 2222222222/\0000           0.9432104  -0.1148931   0.0005301  -0.0074670   0.0019514   0.0000000
 2222222222020000          -0.0021622  -0.0040179  -0.1202713  -0.0196075   0.7662025   0.5380167
 2222222222200000           0.0001145  -0.0011274   0.7239036   0.0103089  -0.2789159   0.5380156
 2222222222002000           0.0020477   0.0051453  -0.6036315   0.0092987  -0.4872878   0.5380159
 2222220222022000           0.0000120  -0.0001184   0.0760032   0.0010823  -0.0292832  -0.1092463
 2222220222220000           0.0002150   0.0005402  -0.0633756   0.0009763  -0.0511606  -0.1092463
 2222220222202000          -0.0002270  -0.0004218  -0.0126272  -0.0020586   0.0804442  -0.1092461
 2222220222/2\000          -0.0008107  -0.0002141   0.0004634  -0.0997279  -0.0024828   0.0000000
 22222202222/\000          -0.0120587  -0.0990289  -0.0003906   0.0003239  -0.0006063   0.0000000
 2222220222/\2000          -0.0990280   0.0120627  -0.0000557   0.0007840  -0.0002049  -0.0000000
 222222222200/00\           0.0001249   0.0003139  -0.0368282   0.0005673  -0.0297298   0.0692489
 2222222222/00\00           0.0000070  -0.0000688   0.0441660   0.0006290  -0.0170168   0.0692488
 22222222220/00\0          -0.0001319  -0.0002451  -0.0073378  -0.0011963   0.0467463   0.0692487

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.007788   -0.001178    0.951336    0.115845   -0.002765   -0.000000
 2           0.002057   -0.004095   -0.115883    0.951342   -0.005280    0.000000
 3          -0.004452    0.955177    0.000535    0.003752   -0.078315    0.000000
 4           0.958059    0.002505   -0.007531   -0.003111   -0.024102    0.000000
 5           0.023851    0.078377    0.001968    0.005825    0.954872   -0.000001
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000001    0.959359

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958400    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.958400   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.958400   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.958400    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.958400    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959359


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95133594 (fixed)   0.95859222 (relaxed)   0.95839960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116254   -0.00182598   -0.64831488
 Singles      0.01810654   -0.05818985   -0.06613487
 Pairs        0.06942722    0.00000000   -0.04867095
 Total        1.08869631   -0.06001583   -0.76312070
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.71758064
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.09814937
 One electron energy                -8490.24749282
 Two electron energy                 2315.76679147
 Virial quotient                       -0.86779979
 Correlation energy                    -0.76312070
 !MRCI STATE 1.1 Energy             -6174.480701342375

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.54838733 (Davidson, fixed reference)
 Cluster corrected energies         -6174.54805349 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.54838733 (Davidson, rotated reference)

 Cluster corrected energies         -6174.54699881 (Pople, fixed reference)
 Cluster corrected energies         -6174.54664689 (Pople, relaxed reference)
 Cluster corrected energies         -6174.54699881 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95134227 (fixed)   0.95859224 (relaxed)   0.95839962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116254   -0.00182598   -0.64831493
 Singles      0.01810647   -0.05818981   -0.06613482
 Pairs        0.06942725   -0.00000001   -0.04867094
 Total        1.08869626   -0.06001580   -0.76312069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.71758064
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.09815874
 One electron energy                -8490.24750412
 Two electron energy                 2315.76680279
 Virial quotient                       -0.86779979
 Correlation energy                    -0.76312069
 !MRCI STATE 2.1 Energy             -6174.480701334876

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.54838728 (Davidson, fixed reference)
 Cluster corrected energies         -6174.54805345 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.54838728 (Davidson, rotated reference)

 Cluster corrected energies         -6174.54699876 (Pople, fixed reference)
 Cluster corrected energies         -6174.54664685 (Pople, relaxed reference)
 Cluster corrected energies         -6174.54699876 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95517667 (fixed)   0.95859224 (relaxed)   0.95839963 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116253   -0.00182598   -0.64831481
 Singles      0.01810636   -0.05818971   -0.06613475
 Pairs        0.06942736   -0.00000022   -0.04867113
 Total        1.08869625   -0.06001591   -0.76312069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.71758064
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.09820505
 One electron energy                -8490.24758103
 Two electron energy                 2315.76687970
 Virial quotient                       -0.86779979
 Correlation energy                    -0.76312069
 !MRCI STATE 3.1 Energy             -6174.480701326927

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.54838727 (Davidson, fixed reference)
 Cluster corrected energies         -6174.54805344 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.54838727 (Davidson, rotated reference)

 Cluster corrected energies         -6174.54699874 (Pople, fixed reference)
 Cluster corrected energies         -6174.54664684 (Pople, relaxed reference)
 Cluster corrected energies         -6174.54699874 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95805857 (fixed)   0.95859222 (relaxed)   0.95839961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116254   -0.00182598   -0.64831483
 Singles      0.01810654   -0.05818984   -0.06613486
 Pairs        0.06942721   -0.00000005   -0.04867099
 Total        1.08869629   -0.06001587   -0.76312069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.71758064
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.09815173
 One electron energy                -8490.24749579
 Two electron energy                 2315.76679447
 Virial quotient                       -0.86779979
 Correlation energy                    -0.76312068
 !MRCI STATE 4.1 Energy             -6174.480701325716

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.54838730 (Davidson, fixed reference)
 Cluster corrected energies         -6174.54805346 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.54838730 (Davidson, rotated reference)

 Cluster corrected energies         -6174.54699877 (Pople, fixed reference)
 Cluster corrected energies         -6174.54664686 (Pople, relaxed reference)
 Cluster corrected energies         -6174.54699877 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95487184 (fixed)   0.95859224 (relaxed)   0.95839963 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116254   -0.00182597   -0.64831552
 Singles      0.01810634   -0.05818966   -0.06613466
 Pairs        0.06942737    0.00000053   -0.04867046
 Total        1.08869625   -0.06001510   -0.76312065
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.71758064
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.09821609
 One electron energy                -8490.24759486
 Two electron energy                 2315.76689357
 Virial quotient                       -0.86779978
 Correlation energy                    -0.76312065
 !MRCI STATE 5.1 Energy             -6174.480701285341

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.54838722 (Davidson, fixed reference)
 Cluster corrected energies         -6174.54805338 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.54838722 (Davidson, rotated reference)

 Cluster corrected energies         -6174.54699869 (Pople, fixed reference)
 Cluster corrected energies         -6174.54664678 (Pople, relaxed reference)
 Cluster corrected energies         -6174.54699869 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95935922 (fixed)   0.95963703 (relaxed)   0.95935922 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124924   -0.00162273   -0.00236349
 Singles      0.01038419   -0.04265989   -0.04649116
 Pairs        0.07488598   -0.71237858   -0.70780655
 Total        1.08651941   -0.75666120   -0.75666120
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.68801129
 Nuclear energy                         0.00000000
 Kinetic energy                      7115.02093443
 One electron energy                -8489.50174351
 Two electron energy                 2315.05707102
 Virial quotient                       -0.86780415
 Correlation energy                    -0.75666120
 !MRCI STATE 6.1 Energy             -6174.444672490361

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.51013837 (Davidson, fixed reference)
 Cluster corrected energies         -6174.50966245 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.51013837 (Davidson, rotated reference)

 Cluster corrected energies         -6174.50867499 (Pople, fixed reference)
 Cluster corrected energies         -6174.50817525 (Pople, relaxed reference)
 Cluster corrected energies         -6174.50867499 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      116.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2424.87       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9434.54   1064.17   8357.91      7.88      0.54      3.81
 REAL TIME  *      9665.94 SEC
 DISK USED  *         2.48 GB (local),       30.01 GB (total)
 SF USED    *        19.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -6174.54838733  AU                              
 SETTING HLSDIAG(14)    =     -6174.54838728  AU                              
 SETTING HLSDIAG(15)    =     -6174.54838727  AU                              
 SETTING HLSDIAG(16)    =     -6174.54838730  AU                              
 SETTING HLSDIAG(17)    =     -6174.54838722  AU                              
 SETTING HLSDIAG(18)    =     -6174.51013837  AU                              


         HLSDIAG
    -6174.574828
    -6174.574828
    -6174.574828
    -6174.381456
    -6174.381456
    -6174.381456
    -6174.381456
    -6174.381456
    -6174.377746
    -6174.377746
    -6174.377746
    -6174.375303
    -6174.548387
    -6174.548387
    -6174.548387
    -6174.548387
    -6174.548387
    -6174.510138
                                                  


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

 Time for Seward_LS:      26.74 sec

 CPU time:     26.76 sec, REAL time:     28.74 sec


 SORTLS1 read    78341097. and wrote    78341097. SO integrals in   311 records. CPU time:      0.70 sec, REAL time:      1.15 sec
 SORTLS2 read    78341097. and wrote   389309532. SO integrals in    36 records. CPU time:      0.42 sec, REAL time:      0.62 sec

 FILE SIZES: FILE 1:   121.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   121.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:  -6174.510472  -6174.510472  -6174.510472  -6174.320287  -6174.320287  -6174.320286  -6174.320286  -6174.320286
                     -6174.316332  -6174.316332  -6174.316332  -6174.313885
 Replaced energies:  -6174.574828  -6174.574828  -6174.574828  -6174.381456  -6174.381456  -6174.381456  -6174.381456  -6174.381456
                     -6174.377746  -6174.377746  -6174.377746  -6174.375303

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.480701  -6174.480701  -6174.480701  -6174.480701  -6174.480701  -6174.444672
 Replaced energies:  -6174.548387  -6174.548387  -6174.548387  -6174.548387  -6174.548387  -6174.510138



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.57482818

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     153.50   -1263.79      -0.92      21.69     -16.89     285.94     207.84    -136.01     173.08

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -153.50       0.00     -66.70       6.63    -405.66      -4.11      -9.79      45.06      -5.87     -19.77

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1263.79      66.70       0.00       0.03     -48.81      -1.58     208.64    -283.36     -10.76     238.02

    4   4.1  1.0  1.0       0.00       0.00       0.00   42440.26       0.00       0.00       0.00       0.00       0.00       0.00
                            0.92      -6.63      -0.03      -0.00     -12.89    1562.77      63.23      38.48      10.00       3.53

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42440.27       0.00       0.00       0.00       0.00       0.00
                          -21.69     405.66      48.81      12.89      -0.00      25.26       1.51       1.74    -652.16    -219.95

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42440.33       0.00       0.00       0.00       0.00
                           16.89       4.11       1.58   -1562.77     -25.26       0.00      16.25     -30.70      -5.26     -24.18

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42440.33       0.00       0.00       0.00
                         -285.94       9.79    -208.64     -63.23      -1.51     -16.25      -0.00     781.63     147.25     185.41

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42440.33       0.00       0.00
                         -207.84     -45.06     283.36     -38.48      -1.74      30.70    -781.63       0.00    -236.70     570.45

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43254.43       0.00
                          136.01       5.87      10.76     -10.00     652.16       5.26    -147.25     236.70       0.00     264.69

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43254.43
                         -173.08      19.77    -238.02      -3.53     219.95      24.18    -185.41    -570.45    -264.69       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -216.88     -35.00     193.90      -5.39     234.60     -18.71     583.06    -122.34     249.04    -739.02

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.06    -569.61     -69.18      -0.00      -0.00       0.00      -0.00      -0.00     928.45     312.88

   13   1.1  1.0  0.0       0.00      -9.83     -48.70    -252.50     140.34       6.57     -11.07      -7.45      -8.43       5.11
                           -0.00     894.82     107.86       4.75       0.50     249.98       2.33      16.95     195.59      75.01

   14   2.1  1.0  0.0       9.83      -0.00     900.06     -14.11       8.03     -41.83     196.91     148.58     118.83    -110.65
                         -894.82       0.00      15.61     -30.22     -17.58      12.47     149.97    -198.07      19.25    -165.81

   15   3.1  1.0  0.0      48.70    -900.06       0.00       3.13      -3.55     246.99      34.23      24.58    -183.33     -80.08
                         -107.86     -15.61       0.00     246.34     147.69      -2.07      18.51     -24.26      -1.09     -21.29

   16   4.1  1.0  0.0     252.50      14.11      -3.13      -0.00      -2.81       1.23    -324.28     428.85      17.61    -351.59
                           -4.75      30.22    -246.34       0.00       1.07      28.61    -453.01    -342.57     192.97    -240.84

   17   5.1  1.0  0.0    -140.34      -8.03       3.55       2.81      -0.00       3.96    -578.20     775.14     -11.26     197.22
                           -0.50      17.58    -147.69      -1.07       0.00     -46.42     754.33     574.15     116.83    -147.15

   18   6.1  1.0  0.0      -6.57      41.83    -246.99      -1.23      -3.96       0.00    -446.09    -327.26     176.13    -247.40
                         -249.98     -12.47       2.07     -28.61      46.42       0.00     339.49    -435.93     -18.66     346.06

   19   7.1  1.0  0.0      11.07    -196.91     -34.23     324.28     578.20     446.09      -0.00      -1.70     326.83      96.40
                           -2.33    -149.97     -18.51     453.01    -754.33    -339.49      -0.00     -29.09     240.10      94.77

   20   8.1  1.0  0.0       7.45    -148.58     -24.58    -428.85    -775.14     327.26       1.70      -0.00     245.28      75.10
                          -16.95     198.07      24.26     342.57    -574.15     435.93      29.09      -0.00    -319.73     -98.48

   21   9.1  1.0  0.0       8.43    -118.83     183.33     -17.61      11.26    -176.13    -326.83    -245.28      -0.00    -363.04
                         -195.59     -19.25       1.09    -192.97    -116.83      18.66    -240.10     319.73      -0.00    -415.07

   22  10.1  1.0  0.0      -5.11     110.65      80.08     351.59    -197.22     247.40     -96.40     -75.10     363.04      -0.00
                          -75.01     165.81      21.29     240.84     147.15    -346.06     -94.77      98.48     415.07       0.00

   23  11.1  1.0  0.0      -6.94     146.20      88.59    -279.44     153.06     325.73    -102.10     -77.47     454.73      23.21
                          -63.08    -139.03     -15.66     315.21     185.92     278.86     -74.20     121.40    -318.32    -255.94

   24  12.1  1.0  0.0    -405.67     -21.95       4.43      -0.00       0.00       0.00       0.00      -0.00     -29.15     571.29
                           -7.04      48.61    -403.31      -0.00       0.00      -0.00       0.00      -0.00     321.54    -399.92

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

   37   1.1  0.0  0.0     -40.85     849.58     209.80       1.76       6.55    -291.13      15.82      14.38     152.79      38.31
                          106.06      -1.02      -4.66    -297.83     497.17       2.44     -23.40      28.17      -2.18      15.15

   38   2.1  0.0  0.0      25.83    -208.78     850.44       0.21       1.03      21.32     230.99     177.31      53.02     -93.01
                          868.29      45.92     -16.37      36.92     -60.94      -0.01    -175.25     230.64      -7.26     126.06

   39   3.1  0.0  0.0     156.62       8.55       1.75      -2.58      -1.62      -2.47     347.99    -460.07      -0.80      22.31
                           16.84     -89.96     781.77       0.42      -0.02      19.03    -293.25    -219.57      64.57     -78.78

   40   4.1  0.0  0.0      25.84      -5.10      -3.93     283.64     510.15       6.04      -0.23      -0.70      -1.56       3.59
                           42.77    -866.89    -117.45       1.88      -1.55    -290.93     -21.70     -16.13    -146.19     -48.12

   41   5.1  0.0  0.0    -997.55     -52.83      16.40       6.86      12.82      -0.94      55.87     -71.27       8.09    -144.59
                           17.46     -97.35     628.04      -1.35       1.44     -29.11     360.90     274.23      47.95     -64.63

   42   6.1  0.0  0.0    1427.92      77.26     -15.60      -0.00       0.00       0.00       0.00      -0.00      -8.39     164.32
                           24.77    -171.12    1419.60      -0.00       0.00       0.00      -0.00      -0.00      92.48    -115.03


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00       9.83      48.70     252.50    -140.34      -6.57      11.07       7.45
                          216.88     -30.06       0.00     894.82     107.86       4.75       0.50     249.98       2.33      16.95

    2   2.1  1.0  1.0       0.00       0.00      -9.83      -0.00    -900.06      14.11      -8.03      41.83    -196.91    -148.58
                           35.00     569.61    -894.82      -0.00      15.61     -30.22     -17.58      12.47     149.97    -198.07

    3   3.1  1.0  1.0       0.00       0.00     -48.70     900.06       0.00      -3.13       3.55    -246.99     -34.23     -24.58
                         -193.90      69.18    -107.86     -15.61      -0.00     246.34     147.69      -2.07      18.51     -24.26

    4   4.1  1.0  1.0       0.00       0.00    -252.50     -14.11       3.13      -0.00       2.81      -1.23     324.28    -428.85
                            5.39       0.00      -4.75      30.22    -246.34      -0.00       1.07      28.61    -453.01    -342.57

    5   5.1  1.0  1.0       0.00       0.00     140.34       8.03      -3.55      -2.81      -0.00      -3.96     578.20    -775.14
                         -234.60       0.00      -0.50      17.58    -147.69      -1.07      -0.00     -46.42     754.33     574.15

    6   6.1  1.0  1.0       0.00       0.00       6.57     -41.83     246.99       1.23       3.96       0.00     446.09     327.26
                           18.71      -0.00    -249.98     -12.47       2.07     -28.61      46.42      -0.00     339.49    -435.93

    7   7.1  1.0  1.0       0.00       0.00     -11.07     196.91      34.23    -324.28    -578.20    -446.09      -0.00       1.70
                         -583.06       0.00      -2.33    -149.97     -18.51     453.01    -754.33    -339.49       0.00     -29.09

    8   8.1  1.0  1.0       0.00       0.00      -7.45     148.58      24.58     428.85     775.14    -327.26      -1.70      -0.00
                          122.34       0.00     -16.95     198.07      24.26     342.57    -574.15     435.93      29.09       0.00

    9   9.1  1.0  1.0       0.00       0.00      -8.43     118.83    -183.33      17.61     -11.26     176.13     326.83     245.28
                         -249.04    -928.45    -195.59     -19.25       1.09    -192.97    -116.83      18.66    -240.10     319.73

   10  10.1  1.0  1.0       0.00       0.00       5.11    -110.65     -80.08    -351.59     197.22    -247.40      96.40      75.10
                          739.02    -312.88     -75.01     165.81      21.29     240.84     147.15    -346.06     -94.77      98.48

   11  11.1  1.0  1.0   43254.43       0.00       6.94    -146.20     -88.59     279.44    -153.06    -325.73     102.10      77.47
                            0.00    -332.54     -63.08    -139.03     -15.66     315.21     185.92     278.86     -74.20     121.40

   12  12.1  1.0  1.0       0.00   43790.69     405.67      21.95      -4.43       0.00      -0.00      -0.00      -0.00       0.00
                          332.54      -0.00      -7.04      48.61    -403.31      -0.00       0.00      -0.00       0.00      -0.00

   13   1.1  1.0  0.0       6.94     405.67       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           63.08       7.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -146.20      21.95       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          139.03     -48.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0     -88.59      -4.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.66     403.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0     279.44       0.00       0.00       0.00       0.00   42440.26       0.00       0.00       0.00       0.00
                         -315.21       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0    -153.06      -0.00       0.00       0.00       0.00       0.00   42440.27       0.00       0.00       0.00
                         -185.92      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0    -325.73      -0.00       0.00       0.00       0.00       0.00       0.00   42440.33       0.00       0.00
                         -278.86       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0     102.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   42440.33       0.00
                           74.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      77.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42440.33
                         -121.40       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0    -454.73      29.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          318.32    -321.54      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     -23.21    -571.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          255.94     399.92      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00     456.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     521.47      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0    -456.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -521.47       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00      -9.83     -48.70    -252.50     140.34       6.57     -11.07      -7.45
                           -0.00      -0.00      -0.00     894.82     107.86       4.75       0.50     249.98       2.33      16.95

   26   2.1  1.0 -1.0       0.00       0.00       9.83      -0.00     900.06     -14.11       8.03     -41.83     196.91     148.58
                           -0.00      -0.00    -894.82       0.00      15.61     -30.22     -17.58      12.47     149.97    -198.07

   27   3.1  1.0 -1.0       0.00       0.00      48.70    -900.06       0.00       3.13      -3.55     246.99      34.23      24.58
                           -0.00      -0.00    -107.86     -15.61       0.00     246.34     147.69      -2.07      18.51     -24.26

   28   4.1  1.0 -1.0       0.00       0.00     252.50      14.11      -3.13      -0.00      -2.81       1.23    -324.28     428.85
                           -0.00      -0.00      -4.75      30.22    -246.34       0.00       1.07      28.61    -453.01    -342.57

   29   5.1  1.0 -1.0       0.00       0.00    -140.34      -8.03       3.55       2.81      -0.00       3.96    -578.20     775.14
                           -0.00      -0.00      -0.50      17.58    -147.69      -1.07       0.00     -46.42     754.33     574.15

   30   6.1  1.0 -1.0       0.00       0.00      -6.57      41.83    -246.99      -1.23      -3.96       0.00    -446.09    -327.26
                           -0.00      -0.00    -249.98     -12.47       2.07     -28.61      46.42       0.00     339.49    -435.93

   31   7.1  1.0 -1.0       0.00       0.00      11.07    -196.91     -34.23     324.28     578.20     446.09      -0.00      -1.70
                           -0.00      -0.00      -2.33    -149.97     -18.51     453.01    -754.33    -339.49      -0.00     -29.09

   32   8.1  1.0 -1.0       0.00       0.00       7.45    -148.58     -24.58    -428.85    -775.14     327.26       1.70      -0.00
                           -0.00      -0.00     -16.95     198.07      24.26     342.57    -574.15     435.93      29.09      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       8.43    -118.83     183.33     -17.61      11.26    -176.13    -326.83    -245.28
                           -0.00      -0.00    -195.59     -19.25       1.09    -192.97    -116.83      18.66    -240.10     319.73

   34  10.1  1.0 -1.0       0.00       0.00      -5.11     110.65      80.08     351.59    -197.22     247.40     -96.40     -75.10
                           -0.00      -0.00     -75.01     165.81      21.29     240.84     147.15    -346.06     -94.77      98.48

   35  11.1  1.0 -1.0       0.00       0.00      -6.94     146.20      88.59    -279.44     153.06     325.73    -102.10     -77.47
                           -0.00      -0.00     -63.08    -139.03     -15.66     315.21     185.92     278.86     -74.20     121.40

   36  12.1  1.0 -1.0       0.00       0.00    -405.67     -21.95       4.43      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -7.04      48.61    -403.31      -0.00       0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0      37.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.27       0.00   -1227.80     -67.44      23.44     -98.91      -2.13      -0.67    -249.64     325.37

   38   2.1  0.0  0.0    -121.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -99.41      -0.00     149.73       5.71       0.75    -819.73     -13.17      -4.43      27.05     -39.88

   39   3.1  0.0  0.0     -18.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -103.82       0.00     -70.63    1323.99     155.03      -2.73      -2.49     296.60      13.51       9.03

   40   4.1  0.0  0.0      -2.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -50.09       0.00      30.18    -128.82    1231.63       3.30      -0.13       2.12    -328.02    -251.18

   41   5.1  0.0  0.0     114.50      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -85.59      -0.00      24.90    -513.70     -31.29      -3.69      -6.42     769.89      22.72      14.45

   42   6.1  0.0  0.0    -131.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -149.99      -0.00     105.82   -2004.95    -243.52      -0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       8.43      -5.11      -6.94    -405.67       0.00       0.00       0.00       0.00       0.00       0.00
                          195.59      75.01      63.08       7.04       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -118.83     110.65     146.20     -21.95       0.00       0.00       0.00       0.00       0.00       0.00
                           19.25    -165.81     139.03     -48.61       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     183.33      80.08      88.59       4.43       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.09     -21.29      15.66     403.31       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0     -17.61     351.59    -279.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          192.97    -240.84    -315.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      11.26    -197.22     153.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          116.83    -147.15    -185.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0    -176.13     247.40     325.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.66     346.06    -278.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    -326.83     -96.40    -102.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          240.10      94.77      74.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -245.28     -75.10     -77.47      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -319.73     -98.48    -121.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00     363.04     454.73     -29.15       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -415.07     318.32    -321.54       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0    -363.04      -0.00      23.21     571.29       0.00       0.00       0.00       0.00       0.00       0.00
                          415.07      -0.00     255.94     399.92       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    -454.73     -23.21      -0.00    -456.10       0.00       0.00       0.00       0.00       0.00       0.00
                         -318.32    -255.94      -0.00     521.47       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0      29.15    -571.29     456.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.54    -399.92    -521.47      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       9.83      48.70     252.50    -140.34      -6.57
                            0.00       0.00       0.00       0.00       0.00     894.82     107.86       4.75       0.50     249.98

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -9.83      -0.00    -900.06      14.11      -8.03      41.83
                            0.00       0.00       0.00       0.00    -894.82      -0.00      15.61     -30.22     -17.58      12.47

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -48.70     900.06       0.00      -3.13       3.55    -246.99
                            0.00       0.00       0.00       0.00    -107.86     -15.61      -0.00     246.34     147.69      -2.07

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00    -252.50     -14.11       3.13      -0.00       2.81      -1.23
                            0.00       0.00       0.00       0.00      -4.75      30.22    -246.34      -0.00       1.07      28.61

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00     140.34       8.03      -3.55      -2.81      -0.00      -3.96
                            0.00       0.00       0.00       0.00      -0.50      17.58    -147.69      -1.07      -0.00     -46.42

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       6.57     -41.83     246.99       1.23       3.96       0.00
                            0.00       0.00       0.00       0.00    -249.98     -12.47       2.07     -28.61      46.42      -0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     -11.07     196.91      34.23    -324.28    -578.20    -446.09
                            0.00       0.00       0.00       0.00      -2.33    -149.97     -18.51     453.01    -754.33    -339.49

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -7.45     148.58      24.58     428.85     775.14    -327.26
                            0.00       0.00       0.00       0.00     -16.95     198.07      24.26     342.57    -574.15     435.93

   21   9.1  1.0  0.0   43254.43       0.00       0.00       0.00      -8.43     118.83    -183.33      17.61     -11.26     176.13
                            0.00       0.00       0.00       0.00    -195.59     -19.25       1.09    -192.97    -116.83      18.66

   22  10.1  1.0  0.0       0.00   43254.43       0.00       0.00       5.11    -110.65     -80.08    -351.59     197.22    -247.40
                           -0.00       0.00       0.00       0.00     -75.01     165.81      21.29     240.84     147.15    -346.06

   23  11.1  1.0  0.0       0.00       0.00   43254.43       0.00       6.94    -146.20     -88.59     279.44    -153.06    -325.73
                           -0.00      -0.00       0.00       0.00     -63.08    -139.03     -15.66     315.21     185.92     278.86

   24  12.1  1.0  0.0       0.00       0.00       0.00   43790.69     405.67      21.95      -4.43       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -7.04      48.61    -403.31      -0.00       0.00      -0.00

   25   1.1  1.0 -1.0      -8.43       5.11       6.94     405.67       0.01       0.00       0.00       0.00       0.00       0.00
                          195.59      75.01      63.08       7.04      -0.00    -153.50    1263.79       0.92     -21.69      16.89

   26   2.1  1.0 -1.0     118.83    -110.65    -146.20      21.95       0.00       0.01       0.00       0.00       0.00       0.00
                           19.25    -165.81     139.03     -48.61     153.50      -0.00      66.70      -6.63     405.66       4.11

   27   3.1  1.0 -1.0    -183.33     -80.08     -88.59      -4.43       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.09     -21.29      15.66     403.31   -1263.79     -66.70      -0.00      -0.03      48.81       1.58

   28   4.1  1.0 -1.0      17.61    -351.59     279.44       0.00       0.00       0.00       0.00   42440.26       0.00       0.00
                          192.97    -240.84    -315.21       0.00      -0.92       6.63       0.03       0.00      12.89   -1562.77

   29   5.1  1.0 -1.0     -11.26     197.22    -153.06      -0.00       0.00       0.00       0.00       0.00   42440.27       0.00
                          116.83    -147.15    -185.92      -0.00      21.69    -405.66     -48.81     -12.89       0.00     -25.26

   30   6.1  1.0 -1.0     176.13    -247.40    -325.73      -0.00       0.00       0.00       0.00       0.00       0.00   42440.33
                          -18.66     346.06    -278.86       0.00     -16.89      -4.11      -1.58    1562.77      25.26      -0.00

   31   7.1  1.0 -1.0     326.83      96.40     102.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          240.10      94.77      74.20      -0.00     285.94      -9.79     208.64      63.23       1.51      16.25

   32   8.1  1.0 -1.0     245.28      75.10      77.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -319.73     -98.48    -121.40       0.00     207.84      45.06    -283.36      38.48       1.74     -30.70

   33   9.1  1.0 -1.0      -0.00    -363.04    -454.73      29.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -415.07     318.32    -321.54    -136.01      -5.87     -10.76      10.00    -652.16      -5.26

   34  10.1  1.0 -1.0     363.04      -0.00     -23.21    -571.29       0.00       0.00       0.00       0.00       0.00       0.00
                          415.07       0.00     255.94     399.92     173.08     -19.77     238.02       3.53    -219.95     -24.18

   35  11.1  1.0 -1.0     454.73      23.21      -0.00     456.10       0.00       0.00       0.00       0.00       0.00       0.00
                         -318.32    -255.94       0.00     521.47     216.88      35.00    -193.90       5.39    -234.60      18.71

   36  12.1  1.0 -1.0     -29.15     571.29    -456.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.54    -399.92    -521.47       0.00     -30.06     569.61      69.18       0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00     -40.85     849.58     209.80       1.76       6.55    -291.13
                            9.91    -178.47     140.37       0.00    -106.06       1.02       4.66     297.83    -497.17      -2.44

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      25.83    -208.78     850.44       0.21       1.03      21.32
                           -1.23      21.23     -17.73       0.00    -868.29     -45.92      16.37     -36.92      60.94       0.01

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00     156.62       8.55       1.75      -2.58      -1.62      -2.47
                          220.89      75.07      80.12      -0.00     -16.84      89.96    -781.77      -0.42       0.02     -19.03

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00      25.84      -5.10      -3.93     283.64     510.15       6.04
                          103.67    -122.64    -163.12      -0.00     -42.77     866.89     117.45      -1.88       1.55     290.93

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00    -997.55     -52.83      16.40       6.86      12.82      -0.94
                          -82.76     -32.22     -34.31       0.00     -17.46      97.35    -628.04       1.35      -1.44      29.11

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00    1427.92      77.26     -15.60      -0.00       0.00       0.00
                         -267.05     -89.99     -95.65       0.00     -24.77     171.12   -1419.60       0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -40.85      25.83     156.62      25.84
                            0.00       0.00       0.00       0.00       0.00       0.00    -106.06    -868.29     -16.84     -42.77

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     849.58    -208.78       8.55      -5.10
                            0.00       0.00       0.00       0.00       0.00       0.00       1.02     -45.92      89.96     866.89

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     209.80     850.44       1.75      -3.93
                            0.00       0.00       0.00       0.00       0.00       0.00       4.66      16.37    -781.77     117.45

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.76       0.21      -2.58     283.64
                            0.00       0.00       0.00       0.00       0.00       0.00     297.83     -36.92      -0.42      -1.88

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       6.55       1.03      -1.62     510.15
                            0.00       0.00       0.00       0.00       0.00       0.00    -497.17      60.94       0.02       1.55

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -291.13      21.32      -2.47       6.04
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.44       0.01     -19.03     290.93

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      15.82     230.99     347.99      -0.23
                            0.00       0.00       0.00       0.00       0.00       0.00      23.40     175.25     293.25      21.70

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      14.38     177.31    -460.07      -0.70
                            0.00       0.00       0.00       0.00       0.00       0.00     -28.17    -230.64     219.57      16.13

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     152.79      53.02      -0.80      -1.56
                            0.00       0.00       0.00       0.00       0.00       0.00       2.18       7.26     -64.57     146.19

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      38.31     -93.01      22.31       3.59
                            0.00       0.00       0.00       0.00       0.00       0.00     -15.15    -126.06      78.78      48.12

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      37.38    -121.44     -18.49      -2.98
                            0.00       0.00       0.00       0.00       0.00       0.00      12.27      99.41     103.82      50.09

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0      11.07       7.45       8.43      -5.11      -6.94    -405.67       0.00       0.00       0.00       0.00
                            2.33      16.95     195.59      75.01      63.08       7.04    1227.80    -149.73      70.63     -30.18

   14   2.1  1.0  0.0    -196.91    -148.58    -118.83     110.65     146.20     -21.95       0.00       0.00       0.00       0.00
                          149.97    -198.07      19.25    -165.81     139.03     -48.61      67.44      -5.71   -1323.99     128.82

   15   3.1  1.0  0.0     -34.23     -24.58     183.33      80.08      88.59       4.43       0.00       0.00       0.00       0.00
                           18.51     -24.26      -1.09     -21.29      15.66     403.31     -23.44      -0.75    -155.03   -1231.63

   16   4.1  1.0  0.0     324.28    -428.85     -17.61     351.59    -279.44      -0.00       0.00       0.00       0.00       0.00
                         -453.01    -342.57     192.97    -240.84    -315.21       0.00      98.91     819.73       2.73      -3.30

   17   5.1  1.0  0.0     578.20    -775.14      11.26    -197.22     153.06       0.00       0.00       0.00       0.00       0.00
                          754.33     574.15     116.83    -147.15    -185.92      -0.00       2.13      13.17       2.49       0.13

   18   6.1  1.0  0.0     446.09     327.26    -176.13     247.40     325.73       0.00       0.00       0.00       0.00       0.00
                          339.49    -435.93     -18.66     346.06    -278.86       0.00       0.67       4.43    -296.60      -2.12

   19   7.1  1.0  0.0      -0.00       1.70    -326.83     -96.40    -102.10       0.00       0.00       0.00       0.00       0.00
                            0.00     -29.09     240.10      94.77      74.20      -0.00     249.64     -27.05     -13.51     328.02

   20   8.1  1.0  0.0      -1.70      -0.00    -245.28     -75.10     -77.47      -0.00       0.00       0.00       0.00       0.00
                           29.09       0.00    -319.73     -98.48    -121.40       0.00    -325.37      39.88      -9.03     251.18

   21   9.1  1.0  0.0     326.83     245.28      -0.00     363.04     454.73     -29.15       0.00       0.00       0.00       0.00
                         -240.10     319.73       0.00    -415.07     318.32    -321.54      -9.91       1.23    -220.89    -103.67

   22  10.1  1.0  0.0      96.40      75.10    -363.04      -0.00      23.21     571.29       0.00       0.00       0.00       0.00
                          -94.77      98.48     415.07      -0.00     255.94     399.92     178.47     -21.23     -75.07     122.64

   23  11.1  1.0  0.0     102.10      77.47    -454.73     -23.21      -0.00    -456.10       0.00       0.00       0.00       0.00
                          -74.20     121.40    -318.32    -255.94      -0.00     521.47    -140.37      17.73     -80.12     163.12

   24  12.1  1.0  0.0      -0.00       0.00      29.15    -571.29     456.10       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     321.54    -399.92    -521.47      -0.00      -0.00      -0.00       0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -40.85      25.83     156.62      25.84
                         -285.94    -207.84     136.01    -173.08    -216.88      30.06     106.06     868.29      16.84      42.77

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     849.58    -208.78       8.55      -5.10
                            9.79     -45.06       5.87      19.77     -35.00    -569.61      -1.02      45.92     -89.96    -866.89

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     209.80     850.44       1.75      -3.93
                         -208.64     283.36      10.76    -238.02     193.90     -69.18      -4.66     -16.37     781.77    -117.45

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.76       0.21      -2.58     283.64
                          -63.23     -38.48     -10.00      -3.53      -5.39      -0.00    -297.83      36.92       0.42       1.88

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       6.55       1.03      -1.62     510.15
                           -1.51      -1.74     652.16     219.95     234.60      -0.00     497.17     -60.94      -0.02      -1.55

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -291.13      21.32      -2.47       6.04
                          -16.25      30.70       5.26      24.18     -18.71       0.00       2.44      -0.01      19.03    -290.93

   31   7.1  1.0 -1.0   42440.33       0.00       0.00       0.00       0.00       0.00      15.82     230.99     347.99      -0.23
                            0.00    -781.63    -147.25    -185.41     583.06      -0.00     -23.40    -175.25    -293.25     -21.70

   32   8.1  1.0 -1.0       0.00   42440.33       0.00       0.00       0.00       0.00      14.38     177.31    -460.07      -0.70
                          781.63      -0.00     236.70    -570.45    -122.34      -0.00      28.17     230.64    -219.57     -16.13

   33   9.1  1.0 -1.0       0.00       0.00   43254.43       0.00       0.00       0.00     152.79      53.02      -0.80      -1.56
                          147.25    -236.70      -0.00    -264.69     249.04     928.45      -2.18      -7.26      64.57    -146.19

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43254.43       0.00       0.00      38.31     -93.01      22.31       3.59
                          185.41     570.45     264.69      -0.00    -739.02     312.88      15.15     126.06     -78.78     -48.12

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43254.43       0.00      37.38    -121.44     -18.49      -2.98
                         -583.06     122.34    -249.04     739.02      -0.00     332.54     -12.27     -99.41    -103.82     -50.09

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   43790.69      -0.00       0.00      -0.00       0.00
                            0.00       0.00    -928.45    -312.88    -332.54       0.00       0.00      -0.00       0.00       0.00

   37   1.1  0.0  0.0      15.82      14.38     152.79      38.31      37.38      -0.00    5803.10       0.00       0.00       0.00
                           23.40     -28.17       2.18     -15.15      12.27      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0     230.99     177.31      53.02     -93.01    -121.44       0.00       0.00    5803.11       0.00       0.00
                          175.25    -230.64       7.26    -126.06      99.41       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0     347.99    -460.07      -0.80      22.31     -18.49      -0.00       0.00       0.00    5803.11       0.00
                          293.25     219.57     -64.57      78.78     103.82      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      -0.23      -0.70      -1.56       3.59      -2.98       0.00       0.00       0.00       0.00    5803.10
                           21.70      16.13     146.19      48.12      50.09      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      55.87     -71.27       8.09    -144.59     114.50      -0.00       0.00       0.00       0.00       0.00
                         -360.90    -274.23     -47.95      64.63      85.59       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00      -0.00      -8.39     164.32    -131.19       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -92.48     115.03     149.99       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42

    1   1.1  1.0  1.0    -997.55    1427.92
                          -17.46     -24.77

    2   2.1  1.0  1.0     -52.83      77.26
                           97.35     171.12

    3   3.1  1.0  1.0      16.40     -15.60
                         -628.04   -1419.60

    4   4.1  1.0  1.0       6.86      -0.00
                            1.35       0.00

    5   5.1  1.0  1.0      12.82       0.00
                           -1.44      -0.00

    6   6.1  1.0  1.0      -0.94       0.00
                           29.11      -0.00

    7   7.1  1.0  1.0      55.87       0.00
                         -360.90       0.00

    8   8.1  1.0  1.0     -71.27      -0.00
                         -274.23       0.00

    9   9.1  1.0  1.0       8.09      -8.39
                          -47.95     -92.48

   10  10.1  1.0  1.0    -144.59     164.32
                           64.63     115.03

   11  11.1  1.0  1.0     114.50    -131.19
                           85.59     149.99

   12  12.1  1.0  1.0      -0.00       0.00
                            0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00
                          -24.90    -105.82

   14   2.1  1.0  0.0       0.00       0.00
                          513.70    2004.95

   15   3.1  1.0  0.0       0.00       0.00
                           31.29     243.52

   16   4.1  1.0  0.0       0.00       0.00
                            3.69       0.00

   17   5.1  1.0  0.0       0.00       0.00
                            6.42      -0.00

   18   6.1  1.0  0.0       0.00       0.00
                         -769.89       0.00

   19   7.1  1.0  0.0       0.00       0.00
                          -22.72       0.00

   20   8.1  1.0  0.0       0.00       0.00
                          -14.45       0.00

   21   9.1  1.0  0.0       0.00       0.00
                           82.76     267.05

   22  10.1  1.0  0.0       0.00       0.00
                           32.22      89.99

   23  11.1  1.0  0.0       0.00       0.00
                           34.31      95.65

   24  12.1  1.0  0.0       0.00       0.00
                           -0.00      -0.00

   25   1.1  1.0 -1.0    -997.55    1427.92
                           17.46      24.77

   26   2.1  1.0 -1.0     -52.83      77.26
                          -97.35    -171.12

   27   3.1  1.0 -1.0      16.40     -15.60
                          628.04    1419.60

   28   4.1  1.0 -1.0       6.86      -0.00
                           -1.35      -0.00

   29   5.1  1.0 -1.0      12.82       0.00
                            1.44       0.00

   30   6.1  1.0 -1.0      -0.94       0.00
                          -29.11       0.00

   31   7.1  1.0 -1.0      55.87       0.00
                          360.90      -0.00

   32   8.1  1.0 -1.0     -71.27      -0.00
                          274.23      -0.00

   33   9.1  1.0 -1.0       8.09      -8.39
                           47.95      92.48

   34  10.1  1.0 -1.0    -144.59     164.32
                          -64.63    -115.03

   35  11.1  1.0 -1.0     114.50    -131.19
                          -85.59    -149.99

   36  12.1  1.0 -1.0      -0.00       0.00
                           -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   41   5.1  0.0  0.0    5803.12       0.00
                            0.00       0.00

   42   6.1  0.0  0.0       0.00   14197.77
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 42)

    The diagonal matrixelements are shifted by  -6174.57482818 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42440.262       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42440.266       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42440.330       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42440.330       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42440.331
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000    1265.469     152.537       6.721       0.713     353.530       3.296      23.970

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                            -1265.469       0.000      22.079     -42.740     -24.867      17.632     212.093    -280.110

    3    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                             -152.537     -22.079       0.000     348.370     208.870      -2.925      26.173     -34.310

    4    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -6.721      42.740    -348.370       0.000       1.506      40.459    -640.659    -484.462

    5    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.713      24.867    -208.870      -1.506       0.000     -65.651    1066.790     811.975

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                             -353.530     -17.632       2.925     -40.459      65.651       0.000     480.107    -616.491

    7    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -3.296    -212.093     -26.173     640.659   -1066.790    -480.107       0.000     -41.142

    8    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                              -23.970     280.110      34.310     484.462    -811.975     616.491      41.142       0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -276.613     -27.226       1.544    -272.906    -165.217      26.388    -339.548     452.173

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                             -106.075     234.487      30.115     340.598     208.107    -489.405    -134.025     139.269

   11    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                              -89.212    -196.617     -22.143     445.772     262.930     394.364    -104.938     171.693

   12    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -9.951      68.751    -570.367      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     153.498   -1263.785      -0.924      21.690     -16.891     285.944     207.836

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -153.498       0.000     -66.701       6.630    -405.663      -4.114      -9.794      45.055

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1263.785      66.701       0.000       0.035     -48.812      -1.582     208.643    -283.358

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.924      -6.630      -0.035      -0.000     -12.890    1562.770      63.230      38.482

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -21.690     405.663      48.812      12.890      -0.000      25.259       1.515       1.740

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.891       4.114       1.582   -1562.770     -25.259       0.000      16.247     -30.705

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -285.944       9.794    -208.643     -63.230      -1.515     -16.247      -0.000     781.626

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -207.836     -45.055     283.358     -38.482      -1.740      30.705    -781.626       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              136.007       5.872      10.757      -9.999     652.164       5.260    -147.249     236.704

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -173.077      19.774    -238.016      -3.528     219.954      24.176    -185.411    -570.454

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -216.884     -34.998     193.905      -5.391     234.596     -18.715     583.059    -122.341

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.063    -569.607     -69.184      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>             -57.773    1201.486     296.697       2.489       9.268    -411.724      22.373      20.342
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              36.536    -295.266    1202.703       0.301       1.451      30.150     326.663     250.756
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             221.495      12.086       2.479      -3.651      -2.288      -3.487     492.133    -650.644
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              36.542      -7.217      -5.560     401.132     721.456       8.537      -0.321      -0.984
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>           -1410.750     -74.708      23.194       9.701      18.137      -1.333      79.018    -100.785
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            2019.378     109.260     -22.062      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    1265.469     152.537       6.721

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1265.469       0.000      22.079     -42.740

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -152.537     -22.079       0.000     348.370

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -6.721      42.740    -348.370       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.713      24.867    -208.870      -1.506

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -353.530     -17.632       2.925     -40.459

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -3.296    -212.093     -26.173     640.659

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -23.970     280.110      34.310     484.462

    9    1  |1 1>+          43254.432       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -276.613     -27.226       1.544    -272.906

   10    1  |1 1>+              0.000   43254.433       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -106.075     234.487      30.115     340.598

   11    1  |1 1>+              0.000       0.000   43254.432       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -89.212    -196.617     -22.143     445.772

   12    1  |1 1>+              0.000       0.000       0.000   43790.686       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -9.951      68.751    -570.367      -0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.005       0.000       0.000       0.000
                              276.613     106.075      89.212       9.951       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.007       0.000       0.000
                               27.226    -234.487     196.617     -68.751      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -1.544     -30.115      22.143     570.367      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000   42440.262
                              272.906    -340.598    -445.772       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              165.217    -208.107    -262.930      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -26.388     489.405    -394.364       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              339.548     134.025     104.938      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -452.173    -139.269    -171.693       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -586.997     450.171    -454.729      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              586.997       0.000     361.948     565.567      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -450.171    -361.948       0.000     737.466      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              454.729    -565.567    -737.466       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      13.907      68.870     357.086
                             -136.007     173.077     216.884     -30.063       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -13.907       0.000   -1272.882      19.955
                               -5.872     -19.774      34.998     569.607      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -68.870    1272.882       0.000      -4.430
                              -10.757     238.016    -193.905      69.184      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000    -357.086     -19.955       4.430       0.000
                                9.999       3.528       5.391       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000     198.472      11.362      -5.025      -3.970
                             -652.164    -219.954    -234.596       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       9.296     -59.154     349.299       1.737
                               -5.260     -24.176      18.715      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     -15.652     278.466      48.409    -458.596
                              147.249     185.411    -583.059       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000     -10.535     210.127      34.755     606.480
                             -236.704     570.454     122.341       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000     -11.925     168.049    -259.268      24.898
                                0.000     264.694    -249.039    -928.449       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       7.229    -156.489    -113.256    -497.228
                             -264.694       0.000     739.015    -312.876      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       9.818    -206.751    -125.285     395.181
                              249.039    -739.015       0.000    -332.544       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000     573.708      31.041      -6.268       0.000
                              928.449     312.876     332.544      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>             216.072      54.172      52.860      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1227.805     -67.436      23.436     -98.907

    2    1  |0 0>              74.988    -131.533    -171.740       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     149.734       5.714       0.755    -819.728

    3    1  |0 0>              -1.125      31.550     -26.147      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -70.634    1323.988     155.026      -2.731

    4    1  |0 0>              -2.207       5.079      -4.214       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      30.177    -128.824    1231.626       3.301

    5    1  |0 0>              11.438    -204.486     161.922      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      24.904    -513.699     -31.293      -3.694

    6    1  |0 0>             -11.859     232.381    -185.527       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     105.819   -2004.948    -243.519      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.713     353.530       3.296      23.970     276.613     106.075      89.212       9.951

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -24.867      17.632     212.093    -280.110      27.226    -234.487     196.617     -68.751

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              208.870      -2.925      26.173     -34.310      -1.544     -30.115      22.143     570.367

    4    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                1.506      40.459    -640.659    -484.462     272.906    -340.598    -445.772       0.000

    5    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000     -65.651    1066.790     811.975     165.217    -208.107    -262.930      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               65.651       0.000     480.107    -616.491     -26.388     489.405    -394.364       0.000

    7    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                            -1066.790    -480.107       0.000     -41.142     339.548     134.025     104.938      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                             -811.975     616.491      41.142       0.000    -452.173    -139.269    -171.693       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                             -165.217      26.388    -339.548     452.173       0.000    -586.997     450.171    -454.729

   10    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                              208.107    -489.405    -134.025     139.269     586.997       0.000     361.948     565.567

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                              262.930     394.364    -104.938     171.693    -450.171    -361.948       0.000     737.466

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000     454.729    -565.567    -737.466       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42440.266       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42440.330       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42440.330       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42440.331       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43254.432       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43254.433       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43254.432       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43790.686
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-           -198.472      -9.296      15.652      10.535      11.925      -7.229      -9.818    -573.708
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-            -11.362      59.154    -278.466    -210.127    -168.049     156.489     206.751     -31.041
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              5.025    -349.299     -48.409     -34.755     259.268     113.256     125.285       6.268
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              3.970      -1.737     458.596    -606.480     -24.898     497.228    -395.181      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000      -5.596     817.703   -1096.213      15.918    -278.905     216.453       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              5.596       0.000     630.865     462.811    -249.092     349.880     460.651       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-           -817.703    -630.865       0.000       2.403    -462.214    -136.334    -144.390       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-           1096.213    -462.811      -2.403       0.000    -346.885    -106.209    -109.564      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-            -15.918     249.092     462.214     346.885       0.000     513.418     643.080     -41.231
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-            278.905    -349.880     136.334     106.209    -513.418       0.000      32.819     807.924
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-           -216.453    -460.651     144.390     109.564    -643.080     -32.819       0.000    -645.025
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000      -0.000      -0.000       0.000      41.231    -807.924     645.025       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.132      -0.673    -249.636     325.365       9.909    -178.469     140.369       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.174      -4.426      27.053     -39.884      -1.232      21.232     -17.732       0.001

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.490     296.596      13.505       9.029     220.885      75.073      80.118      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.125       2.121    -328.019    -251.178     103.669    -122.640    -163.125      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.416     769.886      22.717      14.446     -82.761     -32.221     -34.314       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.001      -0.000      -0.000    -267.049     -89.992     -95.649       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     153.498   -1263.785      -0.924      21.690     -16.891     285.944     207.836

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -153.498       0.000     -66.701       6.630    -405.663      -4.114      -9.794      45.055

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1263.785      66.701       0.000       0.035     -48.812      -1.582     208.643    -283.358

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.924      -6.630      -0.035      -0.000     -12.890    1562.770      63.230      38.482

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -21.690     405.663      48.812      12.890      -0.000      25.259       1.515       1.740

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.891       4.114       1.582   -1562.770     -25.259       0.000      16.247     -30.705

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -285.944       9.794    -208.643     -63.230      -1.515     -16.247      -0.000     781.626

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -207.836     -45.055     283.358     -38.482      -1.740      30.705    -781.626       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              136.007       5.872      10.757      -9.999     652.164       5.260    -147.249     236.704

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -173.077      19.774    -238.016      -3.528     219.954      24.176    -185.411    -570.454

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -216.884     -34.998     193.905      -5.391     234.596     -18.715     583.059    -122.341

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.063    -569.607     -69.184      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000     -13.907     -68.870    -357.086     198.472       9.296     -15.652     -10.535
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              13.907       0.000    1272.882     -19.955      11.362     -59.154     278.466     210.127
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>              68.870   -1272.882       0.000       4.430      -5.025     349.299      48.409      34.755
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>             357.086      19.955      -4.430       0.000      -3.970       1.737    -458.596     606.480
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>            -198.472     -11.362       5.025       3.970       0.000       5.596    -817.703    1096.213
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>              -9.296      59.154    -349.299      -1.737      -5.596       0.000    -630.865    -462.811
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>              15.652    -278.466     -48.409     458.596     817.703     630.865       0.000      -2.403
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>              10.535    -210.127     -34.755    -606.480   -1096.213     462.811       2.403       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              11.925    -168.049     259.268     -24.898      15.918    -249.092    -462.214    -346.885
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -7.229     156.489     113.256     497.228    -278.905     349.880    -136.334    -106.209
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              -9.818     206.751     125.285    -395.181     216.453     460.651    -144.390    -109.564
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 0>            -573.708     -31.041       6.268      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42440.262       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42440.266       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42440.330       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42440.330       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42440.331
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
                              149.992      -1.439      -6.594    -421.188     703.099       3.456     -33.091      39.840

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1227.952      64.940     -23.154      52.215     -86.177      -0.012    -247.839     326.169

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.820    -127.221    1105.587       0.597      -0.024      26.912    -414.715    -310.512

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               60.489   -1225.974    -166.105       2.661      -2.190    -411.433     -30.689     -22.815

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.694    -137.677     888.181      -1.908       2.032     -41.175     510.390     387.825

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               35.027    -241.995    2007.620      -0.000       0.000       0.000      -0.001      -0.001

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000     -57.773      36.536     221.495      36.542
                             -136.007     173.077     216.884     -30.063       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000    1201.486    -295.266      12.086      -7.217
                               -5.872     -19.774      34.998     569.607       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000     296.697    1202.703       2.479      -5.560
                              -10.757     238.016    -193.905      69.184       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       2.489       0.301      -3.651     401.132
                                9.999       3.528       5.391       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       9.268       1.451      -2.288     721.456
                             -652.164    -219.954    -234.596       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    -411.724      30.150      -3.487       8.537
                               -5.260     -24.176      18.715      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      22.373     326.663     492.133      -0.321
                              147.249     185.411    -583.059       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      20.342     250.756    -650.644      -0.984
                             -236.704     570.454     122.341       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     216.072      74.988      -1.125      -2.207
                                0.000     264.694    -249.039    -928.449       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      54.172    -131.533      31.550       5.079
                             -264.694       0.000     739.015    -312.876       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      52.860    -171.740     -26.147      -4.214
                              249.039    -739.015       0.000    -332.544       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              928.449     312.876     332.544      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             -11.925       7.229       9.818     573.708       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    1227.805    -149.734      70.634     -30.177

    2    1  |1 0>             168.049    -156.489    -206.751      31.041       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      67.436      -5.714   -1323.988     128.824

    3    1  |1 0>            -259.268    -113.256    -125.285      -6.268       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     -23.436      -0.755    -155.026   -1231.626

    4    1  |1 0>              24.898    -497.228     395.181       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      98.907     819.728       2.731      -3.301

    5    1  |1 0>             -15.918     278.905    -216.453      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       2.132      13.174       2.490       0.125

    6    1  |1 0>             249.092    -349.880    -460.651      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.673       4.426    -296.596      -2.121

    7    1  |1 0>             462.214     136.334     144.390      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     249.636     -27.053     -13.505     328.019

    8    1  |1 0>             346.885     106.209     109.564       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    -325.365      39.884      -9.029     251.178

    9    1  |1 0>               0.000    -513.418    -643.080      41.231       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -9.909       1.232    -220.885    -103.669

   10    1  |1 0>             513.418       0.000     -32.819    -807.924       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     178.469     -21.232     -75.073     122.640

   11    1  |1 0>             643.080      32.819       0.000     645.025       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -140.369      17.732     -80.118     163.125

   12    1  |1 0>             -41.231     807.924    -645.025       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.001       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -149.992   -1227.952     -23.820     -60.489

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.439     -64.940     127.221    1225.974

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.594      23.154   -1105.587     166.105

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     421.188     -52.215      -0.597      -2.661

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -703.099      86.177       0.024       2.190

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.456       0.012     -26.912     411.433

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      33.091     247.839     414.715      30.689

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -39.840    -326.169     310.512      22.815

    9    1  |1 1>-          43254.432       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.079      10.268     -91.317     206.742

   10    1  |1 1>-              0.000   43254.433       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -21.428    -178.274     111.411      68.059

   11    1  |1 1>-              0.000       0.000   43254.432       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      17.353     140.591     146.822      70.839

   12    1  |1 1>-              0.000       0.000       0.000   43790.686       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5803.097       0.000       0.000       0.000
                               -3.079      21.428     -17.353       0.001       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5803.107       0.000       0.000
                              -10.268     178.274    -140.591      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5803.109       0.000
                               91.317    -111.411    -146.822       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5803.103
                             -206.742     -68.059     -70.839       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               67.807     -91.399    -121.048      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              130.793    -162.673    -212.116      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42

    1    1  |1 1>+          -1410.750    2019.378
                                0.000       0.000

    2    1  |1 1>+            -74.708     109.260
                                0.000       0.000

    3    1  |1 1>+             23.194     -22.062
                                0.000       0.000

    4    1  |1 1>+              9.701      -0.000
                                0.000       0.000

    5    1  |1 1>+             18.137       0.000
                                0.000       0.000

    6    1  |1 1>+             -1.333       0.000
                                0.000       0.000

    7    1  |1 1>+             79.018       0.000
                                0.000       0.000

    8    1  |1 1>+           -100.785      -0.000
                                0.000       0.000

    9    1  |1 1>+             11.438     -11.859
                                0.000       0.000

   10    1  |1 1>+           -204.486     232.381
                                0.000       0.000

   11    1  |1 1>+            161.922    -185.527
                                0.000       0.000

   12    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                              -24.904    -105.819

    2    1  |1 0>               0.000       0.000
                              513.699    2004.948

    3    1  |1 0>               0.000       0.000
                               31.293     243.519

    4    1  |1 0>               0.000       0.000
                                3.694       0.000

    5    1  |1 0>               0.000       0.000
                                6.416      -0.000

    6    1  |1 0>               0.000       0.000
                             -769.886       0.001

    7    1  |1 0>               0.000       0.000
                              -22.717       0.000

    8    1  |1 0>               0.000       0.000
                              -14.446       0.000

    9    1  |1 0>               0.000       0.000
                               82.761     267.049

   10    1  |1 0>               0.000       0.000
                               32.221      89.992

   11    1  |1 0>               0.000       0.000
                               34.314      95.649

   12    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                              -24.694     -35.027

    2    1  |1 1>-              0.000       0.000
                              137.677     241.995

    3    1  |1 1>-              0.000       0.000
                             -888.181   -2007.620

    4    1  |1 1>-              0.000       0.000
                                1.908       0.000

    5    1  |1 1>-              0.000       0.000
                               -2.032      -0.000

    6    1  |1 1>-              0.000       0.000
                               41.175      -0.000

    7    1  |1 1>-              0.000       0.000
                             -510.390       0.001

    8    1  |1 1>-              0.000       0.000
                             -387.825       0.001

    9    1  |1 1>-              0.000       0.000
                              -67.807    -130.793

   10    1  |1 1>-              0.000       0.000
                               91.399     162.673

   11    1  |1 1>-              0.000       0.000
                              121.048     212.116

   12    1  |1 1>-              0.000       0.000
                                0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>            5803.121       0.000
                                0.000       0.000

    6    1  |0 0>               0.000   14197.773
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.58970006    -0.01487187    -3264.00      0.00000000        0.00      0.0000
    2 -6174.58073429    -0.00590610    -1296.24      0.00896577     1967.76      0.2440
    3 -6174.58073429    -0.00590610    -1296.24      0.00896577     1967.76      0.2440
    4 -6174.58073428    -0.00590609    -1296.24      0.00896578     1967.76      0.2440
    5 -6174.57184464     0.00298355      654.81      0.01785542     3918.81      0.4859
    6 -6174.57184461     0.00298358      654.82      0.01785545     3918.82      0.4859
    7 -6174.57184450     0.00298368      654.84      0.01785555     3918.84      0.4859
    8 -6174.57184450     0.00298368      654.84      0.01785556     3918.84      0.4859
    9 -6174.57184448     0.00298370      654.85      0.01785557     3918.85      0.4859
   10 -6174.54575083     0.02907735     6381.74      0.04394923     9645.74      1.1959
   11 -6174.54575080     0.02907739     6381.75      0.04394926     9645.75      1.1959
   12 -6174.54575079     0.02907740     6381.75      0.04394927     9645.75      1.1959
   13 -6174.54575064     0.02907754     6381.78      0.04394942     9645.78      1.1959
   14 -6174.54575060     0.02907759     6381.79      0.04394946     9645.79      1.1959
   15 -6174.50695950     0.06786868    14895.45      0.08274055    18159.45      2.2515
   16 -6174.39355451     0.18127368    39784.97      0.19614555    43048.97      5.3374
   17 -6174.39355451     0.18127368    39784.97      0.19614555    43048.97      5.3374
   18 -6174.39355450     0.18127368    39784.98      0.19614556    43048.97      5.3374
   19 -6174.38679561     0.18803258    41268.38      0.20290445    44532.38      5.5213
   20 -6174.38679559     0.18803259    41268.38      0.20290446    44532.38      5.5213
   21 -6174.38679559     0.18803260    41268.38      0.20290447    44532.38      5.5213
   22 -6174.38679542     0.18803277    41268.42      0.20290464    44532.42      5.5213
   23 -6174.38679541     0.18803278    41268.42      0.20290465    44532.42      5.5213
   24 -6174.38517518     0.18965301    41624.02      0.20452488    44888.02      5.5654
   25 -6174.38452123     0.19030695    41767.55      0.20517882    45031.55      5.5832
   26 -6174.38452123     0.19030695    41767.55      0.20517883    45031.55      5.5832
   27 -6174.38452123     0.19030696    41767.55      0.20517883    45031.55      5.5832
   28 -6174.37432631     0.20050187    44005.07      0.21537375    47269.07      5.8606
   29 -6174.37432631     0.20050188    44005.08      0.21537375    47269.07      5.8606
   30 -6174.37432629     0.20050189    44005.08      0.21537377    47269.08      5.8606
   31 -6174.37432623     0.20050196    44005.09      0.21537383    47269.09      5.8606
   32 -6174.37432622     0.20050196    44005.09      0.21537383    47269.09      5.8606
   33 -6174.37432622     0.20050196    44005.09      0.21537383    47269.09      5.8606
   34 -6174.37432613     0.20050205    44005.11      0.21537393    47269.11      5.8606
   35 -6174.37203107     0.20279712    44508.82      0.21766899    47772.82      5.9231
   36 -6174.37203107     0.20279712    44508.82      0.21766899    47772.82      5.9231
   37 -6174.37203106     0.20279712    44508.82      0.21766899    47772.82      5.9231
   38 -6174.37203105     0.20279714    44508.83      0.21766901    47772.83      5.9231
   39 -6174.37203104     0.20279714    44508.83      0.21766902    47772.83      5.9231
   40 -6174.37077910     0.20404909    44783.60      0.21892096    48047.60      5.9571
   41 -6174.37077909     0.20404909    44783.60      0.21892097    48047.60      5.9571
   42 -6174.37077909     0.20404910    44783.60      0.21892097    48047.60      5.9571

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.56508931  0.00562904  0.00022708 -0.03855269  0.38598205  0.66677782  0.00286909 -0.01582328
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.03057459  0.03705022  0.01599576  0.70475112  0.01993557  0.03636763 -0.00590260 -0.00137320
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00617372  0.69872317  0.10000254 -0.03858518 -0.00392130 -0.00752449 -0.53823936 -0.39610071
                          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001

   4    1  |1 1>+         -0.00000000  0.00087170 -0.00597692  0.00009878  0.00010329  0.00012971 -0.00523477  0.00713795
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00049136  0.00332108 -0.00009787  0.00010314  0.00028108 -0.00945279  0.01281156
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00129525  0.00031358  0.00583538  0.00007392 -0.00003669  0.00124579  0.00100793
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000001 -0.00461104 -0.00066654  0.00107355 -0.00948319  0.00548812 -0.00575848 -0.00426434
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000002 -0.00348294 -0.00048184  0.00078002  0.01259921 -0.00729171 -0.00435847 -0.00317630
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00036316  0.00258067  0.00042567  0.00358044  0.00008257  0.00013646  0.00153640  0.00111059
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00711613 -0.00213616 -0.00028113  0.00174425 -0.00155161 -0.00268644 -0.00142537 -0.00098552
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00568133 -0.00284060 -0.00037934  0.00195589  0.00124379  0.00214242 -0.00181402 -0.00140082
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00253808 -0.01763081  0.00026673  0.00000001 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.02961161 -0.12212768 -0.01572693 -0.69514880 -0.02114713  0.03505001 -0.06360003 -0.05783621

   2    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.56105074  0.00553801 -0.08522189 -0.03633510  0.38243161 -0.66152204 -0.05579422  0.06865709

   3    1  |1 0>           0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000001
                           0.06814476 -0.09866534  0.69481981 -0.00291462  0.04123420 -0.09173135  0.39348240 -0.53280116

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00010995 -0.00002537  0.00000677  0.00003779  0.00000773 -0.01453205 -0.01073130

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00673852  0.00095661 -0.00119768 -0.00012942 -0.00007465 -0.00024251 -0.00016713

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00009287 -0.00027837 -0.00002844  0.01576514  0.00907268  0.00045426 -0.00055324

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00007349  0.00486653  0.00347571  0.00069337  0.00049596 -0.00491793  0.00541962

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00132264  0.00337330 -0.00476198  0.00046111  0.00032511 -0.00245906  0.00493739

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00817772 -0.00024770  0.00193716  0.00014490 -0.00176834  0.00311546 -0.00088985  0.00117589

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00275580 -0.00024538 -0.00253735 -0.00337532 -0.00061079  0.00100839  0.00140703 -0.00133155

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00292903  0.00092245 -0.00302120  0.00277112 -0.00065948  0.00106606  0.00123439 -0.00214134

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.01736912  0.00245341 -0.00310701  0.00000000 -0.00000000  0.00000002  0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001
                          -0.00980170  0.69348291  0.06060390 -0.12255490  0.01268719 -0.00033361  0.55351977  0.36447281

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000
                           0.06771808 -0.06261103  0.69884964 -0.01715417 -0.08721117  0.01131832 -0.36437550  0.55525415

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.56179878 -0.01964628  0.08318095  0.00007048  0.76667570  0.00050003 -0.04973811  0.05591910

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00102250 -0.00024573 -0.00583506 -0.00001259 -0.00002514 -0.00098567 -0.00065115

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00060525 -0.00009041 -0.00349956  0.00002059  0.00000674  0.00169087  0.00106037

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00082602 -0.00592081  0.00007511  0.00007002 -0.00072368 -0.00535862  0.00736938

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.00354434  0.00025379 -0.00063545  0.00002054  0.01453595 -0.00445874 -0.00313021

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00463898 -0.00081171  0.00083826  0.00000826  0.01095812  0.00577776  0.00432185

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00400521 -0.00073975  0.00391665 -0.00002878 -0.00177058 -0.00005019  0.00193149 -0.00239536

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00498147  0.00318731  0.00180529 -0.00062444  0.00216575 -0.00002113 -0.00151770 -0.00243239

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00649553 -0.00290051  0.00103056  0.00046115  0.00282251 -0.00002101  0.00238245  0.00035506

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00303823  0.00070273  0.01753949 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.00000003  0.00000002  0.00000042 -0.00046727 -0.00070518  0.06725275  0.04438665
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   2    1  |0 0>          -0.00000000  0.00000005 -0.00000000 -0.00000011 -0.00241668 -0.00056269  0.25436274  0.18690929
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001

   3    1  |0 0>          -0.00000051 -0.00000001  0.00000009  0.00000001  0.25325691 -0.20487389 -0.00060141  0.00329606
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000001 -0.00000005  0.00000038 -0.00000001 -0.00644484 -0.01275117  0.19182644 -0.26287433
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

   5    1  |0 0>           0.00000018 -0.00000001  0.00000002 -0.00000001  0.20478520  0.25295599  0.00993604 -0.01004229
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.19711380  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000015  0.00000002 -0.00000003
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.03583917 -0.01123512  0.00272589  0.00581754  0.06076421 -0.25885621  0.11376105  0.00035337
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.66735121  0.22375102 -0.00138763 -0.05450111  0.00332303 -0.01386591  0.00615513 -0.00685210
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00518002  0.05472606 -0.00068002  0.22401761 -0.00060474  0.00325630 -0.00124286 -0.00158997
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00005537 -0.00004347 -0.00837258  0.00000226  0.00005252 -0.00007344  0.00000000  0.10228557
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000222 -0.00017820 -0.01505851 -0.00001551  0.00000664 -0.00015282 -0.00000000 -0.06044796
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00896818  0.00859291 -0.00016981 -0.00060902  0.00006675  0.00002198 -0.00000000  0.49530118
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00131541 -0.00046160  0.00001037 -0.00685988 -0.01009507 -0.00238131 -0.00000000 -0.02185780
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00091448 -0.00039903 -0.00000151 -0.00517727  0.01339796  0.00313631  0.00000001 -0.01924176
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00286898 -0.00679120  0.00005447 -0.00237538  0.00007379 -0.00033349  0.00032999 -0.23201682
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00127442 -0.00170187 -0.00005748  0.00415657 -0.00148323  0.00632586 -0.00646627 -0.05985414
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00141020 -0.00168391  0.00005744  0.00537920  0.00118538 -0.00503909  0.00516250 -0.06013928
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02539069
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.66183109  0.22861731 -0.00552696 -0.02731942  0.01338942 -0.00387385 -0.00596127  0.00701676

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.03622248  0.01253314  0.02628170 -0.00152065 -0.25279892  0.07653253  0.11294817  0.00020795

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00398975 -0.00413140 -0.22904827  0.00002636 -0.03026624  0.00701520  0.01371857  0.00133695

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00235330 -0.00202500  0.00004785 -0.01710983  0.00000435 -0.00000238 -0.00000000 -0.00191204

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002627 -0.00004415 -0.00000477 -0.00027573 -0.00004093 -0.00013603  0.00000000  0.06183429

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000929  0.00002033  0.00026271 -0.00000391  0.00497079  0.01648064 -0.00000003  0.00343425

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00539658 -0.00520206 -0.00684246  0.00056315  0.00021517  0.00060150 -0.00000000  0.21703453

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00723988  0.00679729 -0.00523065 -0.00080910  0.00013992  0.00038199 -0.00000000 -0.45488536

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00012515  0.00030842  0.00319726 -0.00002831  0.00713744 -0.00212383 -0.00743095  0.01216082

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00265754 -0.00561089 -0.00388530  0.00066327  0.00241365 -0.00076946 -0.00250414  0.16450623

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00213814  0.00442130 -0.00515103 -0.00053773  0.00256908 -0.00081851 -0.00266156 -0.18872911

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.01341600

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.08566891 -0.02739760 -0.01158025 -0.22865671 -0.00339316 -0.00368383 -0.00197324 -0.00082566

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00135039  0.00012064  0.22846799 -0.01214985  0.02278944  0.02403560  0.01363271  0.00137082

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00019889  0.00073259  0.02917000  0.00287313 -0.19272629 -0.18071533 -0.11309871  0.00017964

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00928942 -0.00879128  0.00004703  0.00106937  0.00001722 -0.00002743 -0.00000000 -0.48925436

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01550099  0.01467538 -0.00003190 -0.00176460 -0.00000655  0.00002256  0.00000000 -0.29391987

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00018261  0.00007990 -0.00859890  0.00000776  0.00058456 -0.00068907  0.00000000  0.09856411

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00066920 -0.00066436 -0.00045687 -0.00515804 -0.00941183  0.01000509 -0.00000003  0.03510891

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00090716  0.00082670 -0.00032431  0.00681950 -0.00709024  0.00755935 -0.00000002 -0.03961087

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002966 -0.00008330 -0.00648031 -0.00029710  0.00267564  0.00243817  0.00363946  0.04586700

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00033615  0.00065558 -0.00216447  0.00558672 -0.00330726 -0.00312326 -0.00452656 -0.00550349

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00028421 -0.00054369 -0.00227374 -0.00445254 -0.00431625 -0.00408834 -0.00590237  0.03250275

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.12488081

   1    1  |0 0>          -0.31563623  0.94502108  0.00096861  0.00214827 -0.00053783 -0.00182391  0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.08048636 -0.00215902  0.00099274  0.94500916 -0.00297931 -0.00418555  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00041819  0.00066869 -0.00330982  0.00328914  0.94236362  0.07070266  0.00000009  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00394361 -0.00099036  0.94491348 -0.00104245  0.00436135 -0.01383839  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00016340  0.00175494  0.01413199  0.00393981 -0.07066052  0.94226298 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000017  0.00000000  0.98023017 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00007930 -0.00016024 -0.00027148  0.00019760 -0.00057406 -0.00932911 -0.00925258 -0.00728956
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00146192  0.00154666  0.00162245 -0.00372754  0.01062910 -0.00050856 -0.00052636 -0.00039440
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00001840 -0.00700693 -0.01127781 -0.00066583  0.00149895  0.00010175  0.00017207  0.00007964
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.50066926 -0.02359592 -0.00484543  0.34832305  0.12349681  0.00117808 -0.00124015 -0.00000047
                           0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.27759099  0.01353271 -0.00741241  0.62795698  0.21806582 -0.00068328  0.00059254 -0.00000015
                          -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.10477222 -0.02475117 -0.00955941 -0.12195604  0.36010557  0.00194566 -0.00253618  0.00000009
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.01356847 -0.40404541  0.30571083  0.00065623  0.00955816 -0.32232073  0.32291156 -0.00000154
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.01153631 -0.30415949  0.22597794  0.00121365  0.00477141  0.42785428 -0.43278309  0.00000221
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.04267874 -0.08815373 -0.10722475 -0.07849592  0.21895400  0.00830036  0.00869144 -0.02300239
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.01912361  0.14436842  0.14081029 -0.02309041  0.07028928 -0.16411971 -0.16379558  0.45073176
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.02122484  0.18646316  0.18540419 -0.02401961  0.07459740  0.13097360  0.12865481 -0.35985210
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.12545150 -0.00609093 -0.00000007  0.00000112  0.00000034 -0.00000013  0.00000009  0.00000021
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00132716 -0.00070282  0.00025769 -0.00359375  0.01079607  0.00017178 -0.00068282  0.00038199

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00092013  0.00000316  0.00011164 -0.00149295  0.00014313 -0.00332661  0.01261511 -0.00723752

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00699897 -0.00033143 -0.00012297  0.01071099  0.00364633 -0.00040376  0.00153057 -0.00087907

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00075851 -0.00934998  0.76028149  0.01326432 -0.01317559  0.00122834 -0.00457913  0.00000027

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01532892  0.58172621  0.01229630  0.00067126 -0.00059543 -0.00603953 -0.00167119 -0.00000012

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02442866  0.00384284  0.00027295 -0.01792142 -0.00419497  0.73459875  0.19369086  0.00000124

   7    1  |1 0>           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.45745977 -0.01104762 -0.00684551  0.36211964 -0.11492048  0.03009691  0.00819085 -0.00000016

   8    1  |1 0>           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.21653167  0.05427506  0.00383722  0.11468735  0.36245751  0.01894389  0.00453337 -0.00000001

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.11047685 -0.00428970  0.00013085  0.10959098  0.02814789 -0.06771438  0.25682978  0.51797119

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.17463056 -0.01256873  0.00681842 -0.19864080  0.14226810 -0.02288992  0.08627545  0.17455016

  11    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.14414411  0.02380220 -0.00101616 -0.11924153 -0.21131731 -0.02420551  0.09225931  0.18552262

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00346968  0.12738893  0.00000026  0.00000004 -0.00000020  0.00000011 -0.00000002  0.00000006

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00056234 -0.00711464  0.01137012  0.00077360 -0.00000761 -0.00022021 -0.00001365  0.00012644

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00696335 -0.00072451  0.00074274 -0.01064445 -0.00376786  0.00151926 -0.00041573 -0.00087354

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00084916  0.00003680 -0.00008669 -0.00129567 -0.00045329 -0.01260585  0.00343285  0.00724707

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.10221267  0.04762731 -0.00992404  0.13043726 -0.36839165 -0.00018851 -0.00058291 -0.00000001

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.05669632  0.03007301  0.01568457 -0.21964439  0.61417576 -0.00006262 -0.00040675  0.00000012

   6    1  |1 1>-         -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.49591230 -0.02585902 -0.00592289  0.35617647  0.13198981 -0.00961843 -0.03541201 -0.00000013

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.02870029  0.30229644  0.23232208  0.01929351  0.00027284  0.15937618  0.58394319 -0.00000113

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00184813 -0.40312268 -0.30088067  0.00325931  0.01018871  0.12011639  0.44312674 -0.00000080

   9    1  |1 1>-         -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.22169860 -0.00076569 -0.00735104 -0.21710587 -0.07628341 -0.12552562  0.03427637 -0.25368815

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.06928905 -0.19928028  0.20071406 -0.06939736 -0.02940177  0.15611012 -0.04377894  0.31552362

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.08356337  0.15235720 -0.15915572 -0.08067570 -0.02451224  0.20356928 -0.05437327  0.41142433

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02587948 -0.01244699 -0.00000003  0.00000010 -0.00000012 -0.00000001 -0.00000005  0.00000003

   1    1  |0 0>          -0.00000001  0.00000000  0.00219423  0.00762766 -0.02101119  0.00007455  0.00003679 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000002  0.02234967 -0.00044288  0.00217354  0.00015496 -0.00014041  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00020638 -0.00009483 -0.00002767 -0.01315489  0.01820362 -0.00000009
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00032409  0.02111359  0.00763309  0.00039145  0.00040815 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00004313  0.00055013  0.00011662 -0.01820002 -0.01314978  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000009  0.01717461
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00000886  0.00000355  0.00003689 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00002510 -0.00005158 -0.00068811  0.00000005 -0.00000002  0.00000000 -0.00000001  0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00068733  0.00006909 -0.00003065  0.00000001 -0.00000000 -0.00000002  0.00000010  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.02115922 -0.20072151  0.01397320  0.18123946  0.68551968  0.00325720  0.00428827 -0.13137207
                          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.01186139  0.11167833 -0.00631702 -0.08822531 -0.29048257 -0.00183005  0.01140761 -0.41217674
                           0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.02606426 -0.01012804 -0.19849879  0.48048619 -0.13689402 -0.02638451  0.06971870  0.34913806
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.15776035 -0.01843327 -0.02024419  0.02334330 -0.00783627  0.33407075 -0.47373108  0.03178913
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   8    1  |1 1>+          0.11904379 -0.01310506 -0.01433751  0.01437047 -0.00600822  0.25084175 -0.35807496  0.02152708
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   9    1  |1 1>+         -0.27208596 -0.00439907 -0.45819877  0.00000093 -0.00000053  0.00000032  0.00000831  0.00001032
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.27558389 -0.04156941 -0.18256505  0.00000022 -0.00000013 -0.00000039 -0.00000876  0.00000380
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.36257409 -0.05178596 -0.19938247  0.00000029 -0.00000021 -0.00000000 -0.00001123  0.00000414
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.05608102  0.54085187 -0.03849456  0.00000135  0.00000515  0.00000002 -0.00000001  0.00000125
                           0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00005857  0.00005482  0.00068590 -0.00000002  0.00000001 -0.00000000  0.00000001  0.00000009

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000541 -0.00007977  0.00004300 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00006999  0.00068060 -0.00005598  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000009

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00371737 -0.00069518  0.00017362 -0.00019026  0.00039271  0.01558602  0.57545811 -0.02078049

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.22941746  0.02517711  0.01731806  0.00870083 -0.00667625  0.77391555 -0.02833716  0.00022898

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00282701 -0.00932434  0.00159840 -0.00604792 -0.01778689  0.00698610  0.00030971 -0.02064801

   7    1  |1 0>          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00668882  0.15112986 -0.13127534  0.30784072  0.22182092 -0.00160932 -0.03853231  0.12283669

   8    1  |1 0>          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.02551000  0.12953930  0.15075557 -0.24151974  0.28561344  0.00610012  0.02938070  0.61729911

   9    1  |1 0>          -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.02235021  0.23124780 -0.03769183 -0.00000032 -0.00000121  0.00000001  0.00000000  0.00000462

  10    1  |1 0>           0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00458995 -0.26336152  0.43480622  0.00000191  0.00000130  0.00000002  0.00000132  0.00000297

  11    1  |1 0>           0.00000001  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.06671955 -0.39784881 -0.30385622 -0.00000074  0.00000299  0.00000003 -0.00000058 -0.00001557

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.54032733 -0.05897502 -0.04142485 -0.00000003 -0.00000004  0.00000401  0.00000017 -0.00000009

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00068813  0.00003880  0.00005503  0.00000000 -0.00000000 -0.00000002 -0.00000011  0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00003350  0.00068422 -0.00004557  0.00000001  0.00000006 -0.00000000 -0.00000000 -0.00000006

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001604  0.00008179 -0.00000645  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01688849  0.01196219  0.19748784  0.66573669 -0.18047204 -0.00754761  0.01883405  0.15066836

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00979033  0.00905897  0.11823237  0.33936784 -0.08068400 -0.00497566 -0.04187523 -0.36352327

   6    1  |1 1>-          0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                          -0.01977838 -0.19870266  0.01470442 -0.12691679 -0.50604098 -0.00073663 -0.00866711  0.36984196

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.12036662  0.00495529  0.01011514 -0.00747254 -0.01801629 -0.28636097 -0.33369420  0.02807845

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.15817033 -0.02247643 -0.01187236  0.00074668 -0.01491257  0.37868639  0.44103706 -0.00731432

   9    1  |1 1>-         -0.00000001 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.07030477  0.47255434 -0.03541229  0.00000027  0.00000197 -0.00000016  0.00000108 -0.00001068

  10    1  |1 1>-         -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.39621710  0.20507690  0.02025933  0.00000019  0.00000078  0.00000054 -0.00001257 -0.00000310

  11    1  |1 1>-         -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.34721156  0.13410697 -0.03737260  0.00000008  0.00000080 -0.00000006  0.00000994 -0.00000417

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.04526569  0.03389482  0.54217129 -0.00000533  0.00000149 -0.00000003  0.00000012  0.00000053

   1    1  |0 0>          -0.00000002  0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000007
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000006  0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000002  0.00000005 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000005  0.00000001  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000000 -0.00000001  0.00007982  0.00003717 -0.00010537 -0.00055612  0.00172768  0.00070288
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000008 -0.00000000  0.00005085 -0.00022041  0.00155679 -0.00005540  0.00010539 -0.01343087
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00102551 -0.00118021 -0.00019862 -0.00002507 -0.00004740 -0.00217952
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.13021431  0.00011076  0.10868104  0.09332605  0.00989601  0.00158380 -0.00590713  0.00241244
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.36621249  0.00000335  0.19602784  0.16705473  0.01929340  0.00428122 -0.01015172 -0.00172827
                           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.39529379 -0.00334818 -0.01907386  0.04037656 -0.14100166  0.00176826 -0.00107557  0.05331687
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.05080215  0.34743578  0.07780637 -0.08802383 -0.03295211  0.16735253  0.05231289  0.00048251
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.03586721 -0.46109741  0.05335985 -0.05850522 -0.02768099 -0.22628461 -0.07414638  0.00009588
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00001099  0.00000002  0.24855005 -0.34679035  0.50140177 -0.00664648 -0.03115067  0.35609549
                          -0.00000000  0.00000000 -0.00000001  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000440 -0.00000101 -0.18675142  0.22804128  0.27452376 -0.17935228  0.57277728  0.10918965
                           0.00000000 -0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000485  0.00000090 -0.29756593  0.28227526  0.32449842  0.14980314 -0.44104023  0.11400268
                           0.00000000 -0.00000000  0.00000001 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000096  0.00000002 -0.00000370 -0.00000302 -0.00000043  0.00000071  0.00000032  0.03565178
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000009 -0.00000000  0.00015186 -0.00038051  0.00152109  0.00003469  0.00008004  0.01360330

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000001  0.00009414  0.00011744  0.00009005 -0.00120943 -0.00134453  0.00066523

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000008  0.00000000 -0.00119471 -0.00100812 -0.00012718 -0.00017059 -0.00010032  0.00043415

   4    1  |1 0>           0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.03968939  0.00030827  0.18982837 -0.21470795 -0.07258724 -0.00560111 -0.00523298 -0.00015276

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00155207 -0.00571940  0.00312302 -0.00351983 -0.00094376  0.00171314 -0.00172124  0.00252724

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02284631  0.57660059  0.00210186  0.00440537 -0.00500961 -0.21904040  0.19826272 -0.00007502

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.60979941  0.02453383  0.09974812  0.05576412  0.09399477 -0.00878896  0.00385886  0.03022889

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.10539994  0.01514788  0.05468388  0.08514519 -0.10805261 -0.00215518  0.00097496 -0.04394498

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000513  0.00000099 -0.24413285 -0.17592725 -0.04783039 -0.46191007 -0.49454948  0.00813482

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001561  0.00000032  0.32084488  0.11686980  0.52217431 -0.15825435 -0.18207170 -0.29474975

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000056  0.00000035  0.30371343  0.40065768 -0.36506552 -0.14936280 -0.20205527  0.25460451

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000012 -0.00000003 -0.00000107  0.00000098  0.00000059 -0.00000026  0.00000020  0.03306015

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00107398  0.00109025  0.00037845 -0.00000421  0.00003959 -0.00057418

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000006  0.00000000  0.00112785  0.00106791  0.00013347  0.00023825 -0.00010624  0.00055248

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00016756  0.00016312 -0.00001526 -0.00176367  0.00037143  0.00007661

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.17511483  0.00002052  0.01632446 -0.03455805  0.14710549 -0.00286996  0.00034294 -0.05278399

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.38493502 -0.00008382 -0.02809433  0.05740985 -0.24548665  0.00466649 -0.00107965 -0.03163922

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.35084908  0.02689586  0.11069640  0.09653234  0.00828370 -0.00069174 -0.01978866  0.00211989

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00996753 -0.45983678  0.07153081 -0.05909973 -0.02168247  0.04813170  0.22854694  0.00127648

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.04134570 -0.34808140 -0.06572971  0.08960159  0.02806445  0.03955219  0.17574908 -0.00162321

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000961 -0.00000016  0.46714598  0.37365741  0.03057452 -0.31823821  0.04617916 -0.01567855

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000415  0.00000012 -0.18260763  0.49040879  0.14530774  0.41857653 -0.08549687  0.00707683

  11    1  |1 1>-          0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000274  0.00000029  0.42059586 -0.17678472 -0.07818246  0.52593034 -0.12997304 -0.01509481

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000032 -0.00000001  0.00000089 -0.00000108  0.00000336 -0.00000014 -0.00000024  0.82689249

   1    1  |0 0>          -0.00000008 -0.00000000  0.00331197 -0.00539302  0.01616360 -0.00038879  0.00008471 -0.00000010
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000001 -0.00000000  0.01087912 -0.01199861 -0.00623999 -0.00037060 -0.00027700 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000004  0.00033747 -0.00041720  0.00012331  0.01549209  0.00782075  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000002 -0.00000000  0.01311417  0.01132252  0.00109556  0.00014595 -0.00026827 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000004 -0.00023306 -0.00022156  0.00024316  0.00782032 -0.01549685 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42

   1    1  |1 1>+         -0.00003464 -0.00026397
                          -0.00000000  0.00000000

   2    1  |1 1>+          0.00061436  0.00216070
                          -0.00000000  0.00000000

   3    1  |1 1>+         -0.00012828 -0.01346062
                          -0.00000000  0.00000000

   4    1  |1 1>+          0.05381261 -0.00080683
                          -0.00000000  0.00000000

   5    1  |1 1>+         -0.02989648  0.00046983
                           0.00000000 -0.00000000

   6    1  |1 1>+         -0.00263242  0.00048266
                           0.00000000 -0.00000000

   7    1  |1 1>+         -0.00055695 -0.04263304
                          -0.00000000  0.00000000

   8    1  |1 1>+         -0.00060249 -0.03211494
                          -0.00000000  0.00000000

   9    1  |1 1>+         -0.01274357  0.15747150
                           0.00000000 -0.00000000

  10    1  |1 1>+         -0.00829567 -0.21755254
                          -0.00000000  0.00000000

  11    1  |1 1>+         -0.00957631 -0.28256025
                          -0.00000000  0.00000000

  12    1  |1 1>+          0.82744034 -0.01365845
                          -0.00000003  0.00000000

   1    1  |1 0>           0.00000000  0.00000000
                          -0.00035857 -0.00053813

   2    1  |1 0>          -0.00000000  0.00000000
                          -0.00166219 -0.00000200

   3    1  |1 0>           0.00000000 -0.00000000
                           0.01352941 -0.00021738

   4    1  |1 0>           0.00000000 -0.00000000
                           0.00007543 -0.00099338

   5    1  |1 0>          -0.00000000  0.00000000
                           0.00086614  0.06157080

   6    1  |1 0>           0.00000000 -0.00000000
                           0.00258524  0.00047500

   7    1  |1 0>          -0.00000000  0.00000000
                          -0.04394225 -0.00062606

   8    1  |1 0>          -0.00000000  0.00000000
                          -0.03019475  0.00225141

   9    1  |1 0>          -0.00000001  0.00000000
                          -0.17185021  0.00221586

  10    1  |1 0>           0.00000001 -0.00000000
                           0.22618715  0.00843037

  11    1  |1 0>           0.00000001 -0.00000000
                           0.26699014 -0.01411850

  12    1  |1 0>          -0.00000000  0.00000000
                           0.01223615  0.82757011

   1    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00091392 -0.01359252

   2    1  |1 1>-          0.00000000 -0.00000000
                           0.01349406 -0.00095899

   3    1  |1 1>-          0.00000000 -0.00000000
                           0.00164250  0.00012155

   4    1  |1 1>-          0.00000000 -0.00000000
                           0.00239724  0.00195630

   5    1  |1 1>-         -0.00000000 -0.00000000
                           0.00094628  0.00131951

   6    1  |1 1>-          0.00000000 -0.00000000
                           0.05326826 -0.00107890

   7    1  |1 1>-          0.00000000  0.00000000
                           0.00265512  0.03205916

   8    1  |1 1>-          0.00000000 -0.00000000
                           0.00074981 -0.04262456

   9    1  |1 1>-         -0.00000001  0.00000000
                          -0.34971640 -0.00975380

  10    1  |1 1>-         -0.00000000  0.00000000
                          -0.11327619  0.30611274

  11    1  |1 1>-         -0.00000000  0.00000000
                          -0.12876746 -0.24077349

  12    1  |1 1>-         -0.00000000  0.00000000
                          -0.03616460 -0.03249833

   1    1  |0 0>           0.00000000  0.00000001
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000003
                           0.00000000  0.00000000

   3    1  |0 0>          -0.00000001  0.00000001
                           0.00000000  0.00000000

   4    1  |0 0>           0.00000011  0.00000000
                          -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000
                           0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.58970006     -0.01487187    -3264.00      0.00000000        0.00      0.0000
     2   1  -6174.58073429     -0.00590610    -1296.24      0.00896577     1967.76      0.2440
     3   1  -6174.58073429     -0.00590610    -1296.24      0.00896577     1967.76      0.2440
     4   1  -6174.58073428     -0.00590609    -1296.24      0.00896578     1967.76      0.2440
     5   1  -6174.57184464      0.00298355      654.81      0.01785542     3918.81      0.4859
     6   1  -6174.57184461      0.00298358      654.82      0.01785545     3918.82      0.4859
     7   1  -6174.57184450      0.00298368      654.84      0.01785555     3918.84      0.4859
     8   1  -6174.57184450      0.00298368      654.84      0.01785556     3918.84      0.4859
     9   1  -6174.57184448      0.00298370      654.85      0.01785557     3918.85      0.4859
    10   1  -6174.54575083      0.02907735     6381.74      0.04394923     9645.74      1.1959
    11   1  -6174.54575080      0.02907739     6381.75      0.04394926     9645.75      1.1959
    12   1  -6174.54575079      0.02907740     6381.75      0.04394927     9645.75      1.1959
    13   1  -6174.54575064      0.02907754     6381.78      0.04394942     9645.78      1.1959
    14   1  -6174.54575060      0.02907759     6381.79      0.04394946     9645.79      1.1959
    15   1  -6174.50695950      0.06786868    14895.45      0.08274055    18159.45      2.2515
    16   1  -6174.39355451      0.18127368    39784.97      0.19614555    43048.97      5.3374
    17   1  -6174.39355451      0.18127368    39784.97      0.19614555    43048.97      5.3374
    18   1  -6174.39355450      0.18127368    39784.98      0.19614556    43048.97      5.3374
    19   1  -6174.38679561      0.18803258    41268.38      0.20290445    44532.38      5.5213
    20   1  -6174.38679559      0.18803259    41268.38      0.20290446    44532.38      5.5213
    21   1  -6174.38679559      0.18803260    41268.38      0.20290447    44532.38      5.5213
    22   1  -6174.38679542      0.18803277    41268.42      0.20290464    44532.42      5.5213
    23   1  -6174.38679541      0.18803278    41268.42      0.20290465    44532.42      5.5213
    24   1  -6174.38517518      0.18965301    41624.02      0.20452488    44888.02      5.5654
    25   1  -6174.38452123      0.19030695    41767.55      0.20517882    45031.55      5.5832
    26   1  -6174.38452123      0.19030695    41767.55      0.20517883    45031.55      5.5832
    27   1  -6174.38452123      0.19030696    41767.55      0.20517883    45031.55      5.5832
    28   1  -6174.37432631      0.20050187    44005.07      0.21537375    47269.07      5.8606
    29   1  -6174.37432631      0.20050188    44005.08      0.21537375    47269.07      5.8606
    30   1  -6174.37432629      0.20050189    44005.08      0.21537377    47269.08      5.8606
    31   1  -6174.37432623      0.20050196    44005.09      0.21537383    47269.09      5.8606
    32   1  -6174.37432622      0.20050196    44005.09      0.21537383    47269.09      5.8606
    33   1  -6174.37432622      0.20050196    44005.09      0.21537383    47269.09      5.8606
    34   1  -6174.37432613      0.20050205    44005.11      0.21537393    47269.11      5.8606
    35   1  -6174.37203107      0.20279712    44508.82      0.21766899    47772.82      5.9231
    36   1  -6174.37203107      0.20279712    44508.82      0.21766899    47772.82      5.9231
    37   1  -6174.37203106      0.20279712    44508.82      0.21766899    47772.82      5.9231
    38   1  -6174.37203105      0.20279714    44508.83      0.21766901    47772.83      5.9231
    39   1  -6174.37203104      0.20279714    44508.83      0.21766902    47772.83      5.9231
    40   1  -6174.37077910      0.20404909    44783.60      0.21892096    48047.60      5.9571
    41   1  -6174.37077909      0.20404909    44783.60      0.21892097    48047.60      5.9571
    42   1  -6174.37077909      0.20404910    44783.60      0.21892097    48047.60      5.9571

 E0 =  -6174.57482818 is the energy of the lowest zeroth-order state
 E1 =  -6174.58970006 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.56508931  0.00562904  0.00022708 -0.03855269  0.38598205  0.66677782  0.00286909 -0.01582328
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.03057459  0.03705022  0.01599576  0.70475112  0.01993557  0.03636763 -0.00590260 -0.00137320
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00617372  0.69872317  0.10000254 -0.03858518 -0.00392130 -0.00752449 -0.53823936 -0.39610071
                               -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001

  4  1     4    1  |1 1>+      -0.00000000  0.00087170 -0.00597692  0.00009878  0.00010329  0.00012971 -0.00523477  0.00713795
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00049136  0.00332108 -0.00009787  0.00010314  0.00028108 -0.00945279  0.01281156
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00129525  0.00031358  0.00583538  0.00007392 -0.00003669  0.00124579  0.00100793
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000001 -0.00461104 -0.00066654  0.00107355 -0.00948319  0.00548812 -0.00575848 -0.00426434
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000002 -0.00348294 -0.00048184  0.00078002  0.01259921 -0.00729171 -0.00435847 -0.00317630
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00036316  0.00258067  0.00042567  0.00358044  0.00008257  0.00013646  0.00153640  0.00111059
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00711613 -0.00213616 -0.00028113  0.00174425 -0.00155161 -0.00268644 -0.00142537 -0.00098552
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00568133 -0.00284060 -0.00037934  0.00195589  0.00124379  0.00214242 -0.00181402 -0.00140082
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00253808 -0.01763081  0.00026673  0.00000001 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.02961161 -0.12212768 -0.01572693 -0.69514880 -0.02114713  0.03505001 -0.06360003 -0.05783621

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.56105074  0.00553801 -0.08522189 -0.03633510  0.38243161 -0.66152204 -0.05579422  0.06865709

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000001
                                0.06814476 -0.09866534  0.69481981 -0.00291462  0.04123420 -0.09173135  0.39348240 -0.53280116

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00010995 -0.00002537  0.00000677  0.00003779  0.00000773 -0.01453205 -0.01073130

 17  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00673852  0.00095661 -0.00119768 -0.00012942 -0.00007465 -0.00024251 -0.00016713

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00009287 -0.00027837 -0.00002844  0.01576514  0.00907268  0.00045426 -0.00055324

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00007349  0.00486653  0.00347571  0.00069337  0.00049596 -0.00491793  0.00541962

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00132264  0.00337330 -0.00476198  0.00046111  0.00032511 -0.00245906  0.00493739

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00817772 -0.00024770  0.00193716  0.00014490 -0.00176834  0.00311546 -0.00088985  0.00117589

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00275580 -0.00024538 -0.00253735 -0.00337532 -0.00061079  0.00100839  0.00140703 -0.00133155

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00292903  0.00092245 -0.00302120  0.00277112 -0.00065948  0.00106606  0.00123439 -0.00214134

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.01736912  0.00245341 -0.00310701  0.00000000 -0.00000000  0.00000002  0.00000001

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000001
                               -0.00980170  0.69348291  0.06060390 -0.12255490  0.01268719 -0.00033361  0.55351977  0.36447281

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000
                                0.06771808 -0.06261103  0.69884964 -0.01715417 -0.08721117  0.01131832 -0.36437550  0.55525415

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.56179878 -0.01964628  0.08318095  0.00007048  0.76667570  0.00050003 -0.04973811  0.05591910

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00102250 -0.00024573 -0.00583506 -0.00001259 -0.00002514 -0.00098567 -0.00065115

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00060525 -0.00009041 -0.00349956  0.00002059  0.00000674  0.00169087  0.00106037

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00082602 -0.00592081  0.00007511  0.00007002 -0.00072368 -0.00535862  0.00736938

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.00354434  0.00025379 -0.00063545  0.00002054  0.01453595 -0.00445874 -0.00313021

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00463898 -0.00081171  0.00083826  0.00000826  0.01095812  0.00577776  0.00432185

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00400521 -0.00073975  0.00391665 -0.00002878 -0.00177058 -0.00005019  0.00193149 -0.00239536

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00498147  0.00318731  0.00180529 -0.00062444  0.00216575 -0.00002113 -0.00151770 -0.00243239

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00649553 -0.00290051  0.00103056  0.00046115  0.00282251 -0.00002101  0.00238245  0.00035506

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00303823  0.00070273  0.01753949 -0.00000000  0.00000000  0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00000000  0.00000003  0.00000002  0.00000042 -0.00046727 -0.00070518  0.06725275  0.04438665
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000005 -0.00000000 -0.00000011 -0.00241668 -0.00056269  0.25436274  0.18690929
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001

 39  1     3    1  |0 0>       -0.00000051 -0.00000001  0.00000009  0.00000001  0.25325691 -0.20487389 -0.00060141  0.00329606
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000001 -0.00000005  0.00000038 -0.00000001 -0.00644484 -0.01275117  0.19182644 -0.26287433
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

 41  1     5    1  |0 0>        0.00000018 -0.00000001  0.00000002 -0.00000001  0.20478520  0.25295599  0.00993604 -0.01004229
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.19711380  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000015  0.00000002 -0.00000003
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.03583917 -0.01123512  0.00272589  0.00581754  0.06076421 -0.25885621  0.11376105  0.00035337
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.66735121  0.22375102 -0.00138763 -0.05450111  0.00332303 -0.01386591  0.00615513 -0.00685210
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00518002  0.05472606 -0.00068002  0.22401761 -0.00060474  0.00325630 -0.00124286 -0.00158997
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00005537 -0.00004347 -0.00837258  0.00000226  0.00005252 -0.00007344  0.00000000  0.10228557
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000222 -0.00017820 -0.01505851 -0.00001551  0.00000664 -0.00015282 -0.00000000 -0.06044796
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00896818  0.00859291 -0.00016981 -0.00060902  0.00006675  0.00002198 -0.00000000  0.49530118
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00131541 -0.00046160  0.00001037 -0.00685988 -0.01009507 -0.00238131 -0.00000000 -0.02185780
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00091448 -0.00039903 -0.00000151 -0.00517727  0.01339796  0.00313631  0.00000001 -0.01924176
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00286898 -0.00679120  0.00005447 -0.00237538  0.00007379 -0.00033349  0.00032999 -0.23201682
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00127442 -0.00170187 -0.00005748  0.00415657 -0.00148323  0.00632586 -0.00646627 -0.05985414
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00141020 -0.00168391  0.00005744  0.00537920  0.00118538 -0.00503909  0.00516250 -0.06013928
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02539069
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.66183109  0.22861731 -0.00552696 -0.02731942  0.01338942 -0.00387385 -0.00596127  0.00701676

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.03622248  0.01253314  0.02628170 -0.00152065 -0.25279892  0.07653253  0.11294817  0.00020795

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00398975 -0.00413140 -0.22904827  0.00002636 -0.03026624  0.00701520  0.01371857  0.00133695

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00235330 -0.00202500  0.00004785 -0.01710983  0.00000435 -0.00000238 -0.00000000 -0.00191204

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002627 -0.00004415 -0.00000477 -0.00027573 -0.00004093 -0.00013603  0.00000000  0.06183429

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000929  0.00002033  0.00026271 -0.00000391  0.00497079  0.01648064 -0.00000003  0.00343425

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00539658 -0.00520206 -0.00684246  0.00056315  0.00021517  0.00060150 -0.00000000  0.21703453

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00723988  0.00679729 -0.00523065 -0.00080910  0.00013992  0.00038199 -0.00000000 -0.45488536

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00012515  0.00030842  0.00319726 -0.00002831  0.00713744 -0.00212383 -0.00743095  0.01216082

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00265754 -0.00561089 -0.00388530  0.00066327  0.00241365 -0.00076946 -0.00250414  0.16450623

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00213814  0.00442130 -0.00515103 -0.00053773  0.00256908 -0.00081851 -0.00266156 -0.18872911

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.01341600

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.08566891 -0.02739760 -0.01158025 -0.22865671 -0.00339316 -0.00368383 -0.00197324 -0.00082566

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00135039  0.00012064  0.22846799 -0.01214985  0.02278944  0.02403560  0.01363271  0.00137082

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00019889  0.00073259  0.02917000  0.00287313 -0.19272629 -0.18071533 -0.11309871  0.00017964

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00928942 -0.00879128  0.00004703  0.00106937  0.00001722 -0.00002743 -0.00000000 -0.48925436

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01550099  0.01467538 -0.00003190 -0.00176460 -0.00000655  0.00002256  0.00000000 -0.29391987

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00018261  0.00007990 -0.00859890  0.00000776  0.00058456 -0.00068907  0.00000000  0.09856411

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00066920 -0.00066436 -0.00045687 -0.00515804 -0.00941183  0.01000509 -0.00000003  0.03510891

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00090716  0.00082670 -0.00032431  0.00681950 -0.00709024  0.00755935 -0.00000002 -0.03961087

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002966 -0.00008330 -0.00648031 -0.00029710  0.00267564  0.00243817  0.00363946  0.04586700

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00033615  0.00065558 -0.00216447  0.00558672 -0.00330726 -0.00312326 -0.00452656 -0.00550349

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00028421 -0.00054369 -0.00227374 -0.00445254 -0.00431625 -0.00408834 -0.00590237  0.03250275

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.12488081

 37  1     1    1  |0 0>       -0.31563623  0.94502108  0.00096861  0.00214827 -0.00053783 -0.00182391  0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.08048636 -0.00215902  0.00099274  0.94500916 -0.00297931 -0.00418555  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00041819  0.00066869 -0.00330982  0.00328914  0.94236362  0.07070266  0.00000009  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00394361 -0.00099036  0.94491348 -0.00104245  0.00436135 -0.01383839  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00016340  0.00175494  0.01413199  0.00393981 -0.07066052  0.94226298 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000017  0.00000000  0.98023017 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00007930 -0.00016024 -0.00027148  0.00019760 -0.00057406 -0.00932911 -0.00925258 -0.00728956
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00146192  0.00154666  0.00162245 -0.00372754  0.01062910 -0.00050856 -0.00052636 -0.00039440
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00001840 -0.00700693 -0.01127781 -0.00066583  0.00149895  0.00010175  0.00017207  0.00007964
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.50066926 -0.02359592 -0.00484543  0.34832305  0.12349681  0.00117808 -0.00124015 -0.00000047
                                0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.27759099  0.01353271 -0.00741241  0.62795698  0.21806582 -0.00068328  0.00059254 -0.00000015
                               -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.10477222 -0.02475117 -0.00955941 -0.12195604  0.36010557  0.00194566 -0.00253618  0.00000009
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.01356847 -0.40404541  0.30571083  0.00065623  0.00955816 -0.32232073  0.32291156 -0.00000154
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.01153631 -0.30415949  0.22597794  0.00121365  0.00477141  0.42785428 -0.43278309  0.00000221
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.04267874 -0.08815373 -0.10722475 -0.07849592  0.21895400  0.00830036  0.00869144 -0.02300239
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.01912361  0.14436842  0.14081029 -0.02309041  0.07028928 -0.16411971 -0.16379558  0.45073176
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.02122484  0.18646316  0.18540419 -0.02401961  0.07459740  0.13097360  0.12865481 -0.35985210
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.12545150 -0.00609093 -0.00000007  0.00000112  0.00000034 -0.00000013  0.00000009  0.00000021
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00132716 -0.00070282  0.00025769 -0.00359375  0.01079607  0.00017178 -0.00068282  0.00038199

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00092013  0.00000316  0.00011164 -0.00149295  0.00014313 -0.00332661  0.01261511 -0.00723752

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00699897 -0.00033143 -0.00012297  0.01071099  0.00364633 -0.00040376  0.00153057 -0.00087907

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00075851 -0.00934998  0.76028149  0.01326432 -0.01317559  0.00122834 -0.00457913  0.00000027

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01532892  0.58172621  0.01229630  0.00067126 -0.00059543 -0.00603953 -0.00167119 -0.00000012

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02442866  0.00384284  0.00027295 -0.01792142 -0.00419497  0.73459875  0.19369086  0.00000124

 19  1     7    1  |1 0>        0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.45745977 -0.01104762 -0.00684551  0.36211964 -0.11492048  0.03009691  0.00819085 -0.00000016

 20  1     8    1  |1 0>        0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.21653167  0.05427506  0.00383722  0.11468735  0.36245751  0.01894389  0.00453337 -0.00000001

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.11047685 -0.00428970  0.00013085  0.10959098  0.02814789 -0.06771438  0.25682978  0.51797119

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.17463056 -0.01256873  0.00681842 -0.19864080  0.14226810 -0.02288992  0.08627545  0.17455016

 23  1    11    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.14414411  0.02380220 -0.00101616 -0.11924153 -0.21131731 -0.02420551  0.09225931  0.18552262

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00346968  0.12738893  0.00000026  0.00000004 -0.00000020  0.00000011 -0.00000002  0.00000006

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00056234 -0.00711464  0.01137012  0.00077360 -0.00000761 -0.00022021 -0.00001365  0.00012644

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00696335 -0.00072451  0.00074274 -0.01064445 -0.00376786  0.00151926 -0.00041573 -0.00087354

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00084916  0.00003680 -0.00008669 -0.00129567 -0.00045329 -0.01260585  0.00343285  0.00724707

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.10221267  0.04762731 -0.00992404  0.13043726 -0.36839165 -0.00018851 -0.00058291 -0.00000001

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.05669632  0.03007301  0.01568457 -0.21964439  0.61417576 -0.00006262 -0.00040675  0.00000012

 30  1     6    1  |1 1>-      -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.49591230 -0.02585902 -0.00592289  0.35617647  0.13198981 -0.00961843 -0.03541201 -0.00000013

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.02870029  0.30229644  0.23232208  0.01929351  0.00027284  0.15937618  0.58394319 -0.00000113

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00184813 -0.40312268 -0.30088067  0.00325931  0.01018871  0.12011639  0.44312674 -0.00000080

 33  1     9    1  |1 1>-      -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.22169860 -0.00076569 -0.00735104 -0.21710587 -0.07628341 -0.12552562  0.03427637 -0.25368815

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.06928905 -0.19928028  0.20071406 -0.06939736 -0.02940177  0.15611012 -0.04377894  0.31552362

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.08356337  0.15235720 -0.15915572 -0.08067570 -0.02451224  0.20356928 -0.05437327  0.41142433

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02587948 -0.01244699 -0.00000003  0.00000010 -0.00000012 -0.00000001 -0.00000005  0.00000003

 37  1     1    1  |0 0>       -0.00000001  0.00000000  0.00219423  0.00762766 -0.02101119  0.00007455  0.00003679 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000000  0.00000002  0.02234967 -0.00044288  0.00217354  0.00015496 -0.00014041  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000000  0.00020638 -0.00009483 -0.00002767 -0.01315489  0.01820362 -0.00000009
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00032409  0.02111359  0.00763309  0.00039145  0.00040815 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00004313  0.00055013  0.00011662 -0.01820002 -0.01314978  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000009  0.01717461
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00000886  0.00000355  0.00003689 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00002510 -0.00005158 -0.00068811  0.00000005 -0.00000002  0.00000000 -0.00000001  0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00068733  0.00006909 -0.00003065  0.00000001 -0.00000000 -0.00000002  0.00000010  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.02115922 -0.20072151  0.01397320  0.18123946  0.68551968  0.00325720  0.00428827 -0.13137207
                               -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.01186139  0.11167833 -0.00631702 -0.08822531 -0.29048257 -0.00183005  0.01140761 -0.41217674
                                0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.02606426 -0.01012804 -0.19849879  0.48048619 -0.13689402 -0.02638451  0.06971870  0.34913806
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.15776035 -0.01843327 -0.02024419  0.02334330 -0.00783627  0.33407075 -0.47373108  0.03178913
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

  8  1     8    1  |1 1>+       0.11904379 -0.01310506 -0.01433751  0.01437047 -0.00600822  0.25084175 -0.35807496  0.02152708
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

  9  1     9    1  |1 1>+      -0.27208596 -0.00439907 -0.45819877  0.00000093 -0.00000053  0.00000032  0.00000831  0.00001032
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.27558389 -0.04156941 -0.18256505  0.00000022 -0.00000013 -0.00000039 -0.00000876  0.00000380
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.36257409 -0.05178596 -0.19938247  0.00000029 -0.00000021 -0.00000000 -0.00001123  0.00000414
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.05608102  0.54085187 -0.03849456  0.00000135  0.00000515  0.00000002 -0.00000001  0.00000125
                                0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00005857  0.00005482  0.00068590 -0.00000002  0.00000001 -0.00000000  0.00000001  0.00000009

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000541 -0.00007977  0.00004300 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00006999  0.00068060 -0.00005598  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000009

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00371737 -0.00069518  0.00017362 -0.00019026  0.00039271  0.01558602  0.57545811 -0.02078049

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.22941746  0.02517711  0.01731806  0.00870083 -0.00667625  0.77391555 -0.02833716  0.00022898

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00282701 -0.00932434  0.00159840 -0.00604792 -0.01778689  0.00698610  0.00030971 -0.02064801

 19  1     7    1  |1 0>       -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00668882  0.15112986 -0.13127534  0.30784072  0.22182092 -0.00160932 -0.03853231  0.12283669

 20  1     8    1  |1 0>       -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.02551000  0.12953930  0.15075557 -0.24151974  0.28561344  0.00610012  0.02938070  0.61729911

 21  1     9    1  |1 0>       -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.02235021  0.23124780 -0.03769183 -0.00000032 -0.00000121  0.00000001  0.00000000  0.00000462

 22  1    10    1  |1 0>        0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00458995 -0.26336152  0.43480622  0.00000191  0.00000130  0.00000002  0.00000132  0.00000297

 23  1    11    1  |1 0>        0.00000001  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.06671955 -0.39784881 -0.30385622 -0.00000074  0.00000299  0.00000003 -0.00000058 -0.00001557

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.54032733 -0.05897502 -0.04142485 -0.00000003 -0.00000004  0.00000401  0.00000017 -0.00000009

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00068813  0.00003880  0.00005503  0.00000000 -0.00000000 -0.00000002 -0.00000011  0.00000001

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00003350  0.00068422 -0.00004557  0.00000001  0.00000006 -0.00000000 -0.00000000 -0.00000006

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001604  0.00008179 -0.00000645  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01688849  0.01196219  0.19748784  0.66573669 -0.18047204 -0.00754761  0.01883405  0.15066836

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00979033  0.00905897  0.11823237  0.33936784 -0.08068400 -0.00497566 -0.04187523 -0.36352327

 30  1     6    1  |1 1>-       0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                               -0.01977838 -0.19870266  0.01470442 -0.12691679 -0.50604098 -0.00073663 -0.00866711  0.36984196

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.12036662  0.00495529  0.01011514 -0.00747254 -0.01801629 -0.28636097 -0.33369420  0.02807845

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.15817033 -0.02247643 -0.01187236  0.00074668 -0.01491257  0.37868639  0.44103706 -0.00731432

 33  1     9    1  |1 1>-      -0.00000001 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.07030477  0.47255434 -0.03541229  0.00000027  0.00000197 -0.00000016  0.00000108 -0.00001068

 34  1    10    1  |1 1>-      -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.39621710  0.20507690  0.02025933  0.00000019  0.00000078  0.00000054 -0.00001257 -0.00000310

 35  1    11    1  |1 1>-      -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.34721156  0.13410697 -0.03737260  0.00000008  0.00000080 -0.00000006  0.00000994 -0.00000417

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.04526569  0.03389482  0.54217129 -0.00000533  0.00000149 -0.00000003  0.00000012  0.00000053

 37  1     1    1  |0 0>       -0.00000002  0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000007
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000006  0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000002  0.00000005 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000005  0.00000001  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000000 -0.00000001  0.00007982  0.00003717 -0.00010537 -0.00055612  0.00172768  0.00070288
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000008 -0.00000000  0.00005085 -0.00022041  0.00155679 -0.00005540  0.00010539 -0.01343087
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00102551 -0.00118021 -0.00019862 -0.00002507 -0.00004740 -0.00217952
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.13021431  0.00011076  0.10868104  0.09332605  0.00989601  0.00158380 -0.00590713  0.00241244
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.36621249  0.00000335  0.19602784  0.16705473  0.01929340  0.00428122 -0.01015172 -0.00172827
                                0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.39529379 -0.00334818 -0.01907386  0.04037656 -0.14100166  0.00176826 -0.00107557  0.05331687
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.05080215  0.34743578  0.07780637 -0.08802383 -0.03295211  0.16735253  0.05231289  0.00048251
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.03586721 -0.46109741  0.05335985 -0.05850522 -0.02768099 -0.22628461 -0.07414638  0.00009588
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00001099  0.00000002  0.24855005 -0.34679035  0.50140177 -0.00664648 -0.03115067  0.35609549
                               -0.00000000  0.00000000 -0.00000001  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000440 -0.00000101 -0.18675142  0.22804128  0.27452376 -0.17935228  0.57277728  0.10918965
                                0.00000000 -0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000485  0.00000090 -0.29756593  0.28227526  0.32449842  0.14980314 -0.44104023  0.11400268
                                0.00000000 -0.00000000  0.00000001 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000096  0.00000002 -0.00000370 -0.00000302 -0.00000043  0.00000071  0.00000032  0.03565178
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000009 -0.00000000  0.00015186 -0.00038051  0.00152109  0.00003469  0.00008004  0.01360330

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000001  0.00009414  0.00011744  0.00009005 -0.00120943 -0.00134453  0.00066523

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000008  0.00000000 -0.00119471 -0.00100812 -0.00012718 -0.00017059 -0.00010032  0.00043415

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.03968939  0.00030827  0.18982837 -0.21470795 -0.07258724 -0.00560111 -0.00523298 -0.00015276

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00155207 -0.00571940  0.00312302 -0.00351983 -0.00094376  0.00171314 -0.00172124  0.00252724

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02284631  0.57660059  0.00210186  0.00440537 -0.00500961 -0.21904040  0.19826272 -0.00007502

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.60979941  0.02453383  0.09974812  0.05576412  0.09399477 -0.00878896  0.00385886  0.03022889

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.10539994  0.01514788  0.05468388  0.08514519 -0.10805261 -0.00215518  0.00097496 -0.04394498

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000513  0.00000099 -0.24413285 -0.17592725 -0.04783039 -0.46191007 -0.49454948  0.00813482

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001561  0.00000032  0.32084488  0.11686980  0.52217431 -0.15825435 -0.18207170 -0.29474975

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000056  0.00000035  0.30371343  0.40065768 -0.36506552 -0.14936280 -0.20205527  0.25460451

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000012 -0.00000003 -0.00000107  0.00000098  0.00000059 -0.00000026  0.00000020  0.03306015

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00107398  0.00109025  0.00037845 -0.00000421  0.00003959 -0.00057418

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000006  0.00000000  0.00112785  0.00106791  0.00013347  0.00023825 -0.00010624  0.00055248

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00016756  0.00016312 -0.00001526 -0.00176367  0.00037143  0.00007661

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.17511483  0.00002052  0.01632446 -0.03455805  0.14710549 -0.00286996  0.00034294 -0.05278399

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.38493502 -0.00008382 -0.02809433  0.05740985 -0.24548665  0.00466649 -0.00107965 -0.03163922

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.35084908  0.02689586  0.11069640  0.09653234  0.00828370 -0.00069174 -0.01978866  0.00211989

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00996753 -0.45983678  0.07153081 -0.05909973 -0.02168247  0.04813170  0.22854694  0.00127648

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.04134570 -0.34808140 -0.06572971  0.08960159  0.02806445  0.03955219  0.17574908 -0.00162321

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000961 -0.00000016  0.46714598  0.37365741  0.03057452 -0.31823821  0.04617916 -0.01567855

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000415  0.00000012 -0.18260763  0.49040879  0.14530774  0.41857653 -0.08549687  0.00707683

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000274  0.00000029  0.42059586 -0.17678472 -0.07818246  0.52593034 -0.12997304 -0.01509481

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000032 -0.00000001  0.00000089 -0.00000108  0.00000336 -0.00000014 -0.00000024  0.82689249

 37  1     1    1  |0 0>       -0.00000008 -0.00000000  0.00331197 -0.00539302  0.01616360 -0.00038879  0.00008471 -0.00000010
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000001 -0.00000000  0.01087912 -0.01199861 -0.00623999 -0.00037060 -0.00027700 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000004  0.00033747 -0.00041720  0.00012331  0.01549209  0.00782075  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000002 -0.00000000  0.01311417  0.01132252  0.00109556  0.00014595 -0.00026827 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000004 -0.00023306 -0.00022156  0.00024316  0.00782032 -0.01549685 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42

  1  1     1    1  |1 1>+      -0.00003464 -0.00026397
                               -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00061436  0.00216070
                               -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00012828 -0.01346062
                               -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.05381261 -0.00080683
                               -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.02989648  0.00046983
                                0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00263242  0.00048266
                                0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00055695 -0.04263304
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00060249 -0.03211494
                               -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.01274357  0.15747150
                                0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00829567 -0.21755254
                               -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00957631 -0.28256025
                               -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.82744034 -0.01365845
                               -0.00000003  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000
                               -0.00035857 -0.00053813

 14  1     2    1  |1 0>       -0.00000000  0.00000000
                               -0.00166219 -0.00000200

 15  1     3    1  |1 0>        0.00000000 -0.00000000
                                0.01352941 -0.00021738

 16  1     4    1  |1 0>        0.00000000 -0.00000000
                                0.00007543 -0.00099338

 17  1     5    1  |1 0>       -0.00000000  0.00000000
                                0.00086614  0.06157080

 18  1     6    1  |1 0>        0.00000000 -0.00000000
                                0.00258524  0.00047500

 19  1     7    1  |1 0>       -0.00000000  0.00000000
                               -0.04394225 -0.00062606

 20  1     8    1  |1 0>       -0.00000000  0.00000000
                               -0.03019475  0.00225141

 21  1     9    1  |1 0>       -0.00000001  0.00000000
                               -0.17185021  0.00221586

 22  1    10    1  |1 0>        0.00000001 -0.00000000
                                0.22618715  0.00843037

 23  1    11    1  |1 0>        0.00000001 -0.00000000
                                0.26699014 -0.01411850

 24  1    12    1  |1 0>       -0.00000000  0.00000000
                                0.01223615  0.82757011

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00091392 -0.01359252

 26  1     2    1  |1 1>-       0.00000000 -0.00000000
                                0.01349406 -0.00095899

 27  1     3    1  |1 1>-       0.00000000 -0.00000000
                                0.00164250  0.00012155

 28  1     4    1  |1 1>-       0.00000000 -0.00000000
                                0.00239724  0.00195630

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000
                                0.00094628  0.00131951

 30  1     6    1  |1 1>-       0.00000000 -0.00000000
                                0.05326826 -0.00107890

 31  1     7    1  |1 1>-       0.00000000  0.00000000
                                0.00265512  0.03205916

 32  1     8    1  |1 1>-       0.00000000 -0.00000000
                                0.00074981 -0.04262456

 33  1     9    1  |1 1>-      -0.00000001  0.00000000
                               -0.34971640 -0.00975380

 34  1    10    1  |1 1>-      -0.00000000  0.00000000
                               -0.11327619  0.30611274

 35  1    11    1  |1 1>-      -0.00000000  0.00000000
                               -0.12876746 -0.24077349

 36  1    12    1  |1 1>-      -0.00000000  0.00000000
                               -0.03616460 -0.03249833

 37  1     1    1  |0 0>        0.00000000  0.00000001
                                0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000000  0.00000003
                                0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000001  0.00000001
                                0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000011  0.00000000
                               -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000
                                0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        31.93%    0.00%    0.00%    0.15%   14.90%   44.46%    0.00%    0.03%
  2  1     2    1  |1 1>+         0.09%    0.14%    0.03%   49.67%    0.04%    0.13%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   48.82%    1.00%    0.15%    0.00%    0.01%   28.97%   15.69%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.09%    1.49%    0.02%   48.32%    0.04%    0.12%    0.40%    0.33%
 14  1     2    1  |1 0>         31.48%    0.00%    0.73%    0.13%   14.63%   43.76%    0.31%    0.47%
 15  1     3    1  |1 0>          0.46%    0.97%   48.28%    0.00%    0.17%    0.84%   15.48%   28.39%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.01%   48.09%    0.37%    1.50%    0.02%    0.00%   30.64%   13.28%
 26  1     2    1  |1 1>-         0.46%    0.39%   48.84%    0.03%    0.76%    0.01%   13.28%   30.83%
 27  1     3    1  |1 1>-        31.56%    0.04%    0.69%    0.00%   58.78%    0.00%    0.25%    0.31%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.20%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.47%    3.49%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.41%    4.20%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    3.68%    6.91%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.19%    6.40%    0.01%    0.01%
 42  1     6    1  |0 0>          3.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.13%    0.01%    0.00%    0.00%    0.37%    6.70%    1.29%    0.00%
  2  1     2    1  |1 1>+        44.54%    5.01%    0.00%    0.30%    0.00%    0.02%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.30%    0.00%    5.02%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    1.05%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.37%
  6  1     6    1  |1 1>+         0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   24.53%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.05%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.04%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.38%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.36%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.36%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 13  1     1    1  |1 0>         43.80%    5.23%    0.00%    0.07%    0.02%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.13%    0.02%    0.07%    0.00%    6.39%    0.59%    1.28%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    5.25%    0.00%    0.09%    0.00%    0.02%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.71%
 20  1     8    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.69%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.71%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.56%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 25  1     1    1  |1 1>-         0.73%    0.08%    0.01%    5.23%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    5.22%    0.01%    0.05%    0.06%    0.02%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.09%    0.00%    3.71%    3.27%    1.28%    0.00%
 28  1     4    1  |1 1>-         0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   23.94%
 29  1     5    1  |1 1>-         0.02%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    8.64%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.97%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.12%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.16%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.11%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.56%
 37  1     1    1  |0 0>          9.96%   89.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.65%    0.00%    0.00%   89.30%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   88.80%    0.50%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%   89.29%    0.00%    0.00%    0.02%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.50%   88.79%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.09%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        25.07%    0.06%    0.00%   12.13%    1.53%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         7.71%    0.02%    0.01%   39.43%    4.76%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         1.10%    0.06%    0.01%    1.49%   12.97%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.02%   16.33%    9.35%    0.00%    0.01%   10.39%   10.43%    0.00%
  8  1     8    1  |1 1>+         0.01%    9.25%    5.11%    0.00%    0.00%   18.31%   18.73%    0.00%
  9  1     9    1  |1 1>+         0.18%    0.78%    1.15%    0.62%    4.79%    0.01%    0.01%    0.05%
 10  1    10    1  |1 1>+         0.04%    2.08%    1.98%    0.05%    0.49%    2.69%    2.68%   20.32%
 11  1    11    1  |1 1>+         0.05%    3.48%    3.44%    0.06%    0.56%    1.72%    1.66%   12.95%
 12  1    12    1  |1 1>+         1.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.01%   57.80%    0.02%    0.02%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.02%   33.84%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.06%    0.00%    0.00%    0.03%    0.00%   53.96%    3.75%    0.00%
 19  1     7    1  |1 0>         20.93%    0.01%    0.00%   13.11%    1.32%    0.09%    0.01%    0.00%
 20  1     8    1  |1 0>          4.69%    0.29%    0.00%    1.32%   13.14%    0.04%    0.00%    0.00%
 21  1     9    1  |1 0>          1.22%    0.00%    0.00%    1.20%    0.08%    0.46%    6.60%   26.83%
 22  1    10    1  |1 0>          3.05%    0.02%    0.00%    3.95%    2.02%    0.05%    0.74%    3.05%
 23  1    11    1  |1 0>          2.08%    0.06%    0.00%    1.42%    4.47%    0.06%    0.85%    3.44%
 24  1    12    1  |1 0>          0.00%    1.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%
 28  1     4    1  |1 1>-         1.04%    0.23%    0.01%    1.70%   13.57%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.32%    0.09%    0.02%    4.82%   37.72%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-        24.59%    0.07%    0.00%   12.69%    1.74%    0.01%    0.13%    0.00%
 31  1     7    1  |1 1>-         0.08%    9.14%    5.40%    0.04%    0.00%    2.54%   34.10%    0.00%
 32  1     8    1  |1 1>-         0.00%   16.25%    9.05%    0.00%    0.01%    1.44%   19.64%    0.00%
 33  1     9    1  |1 1>-         4.92%    0.00%    0.01%    4.71%    0.58%    1.58%    0.12%    6.44%
 34  1    10    1  |1 1>-         0.48%    3.97%    4.03%    0.48%    0.09%    2.44%    0.19%    9.96%
 35  1    11    1  |1 1>-         0.70%    2.32%    2.53%    0.65%    0.06%    4.14%    0.30%   16.93%
 36  1    12    1  |1 1>-         0.07%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.04%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.03%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.04%    0.01%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.02%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.04%    4.03%    0.02%    3.28%   46.99%    0.00%    0.00%    1.73%
  5  1     5    1  |1 1>+         0.01%    1.25%    0.00%    0.78%    8.44%    0.00%    0.01%   16.99%
  6  1     6    1  |1 1>+         0.07%    0.01%    3.94%   23.09%    1.87%    0.07%    0.49%   12.19%
  7  1     7    1  |1 1>+         2.49%    0.03%    0.04%    0.05%    0.01%   11.16%   22.44%    0.10%
  8  1     8    1  |1 1>+         1.42%    0.02%    0.02%    0.02%    0.00%    6.29%   12.82%    0.05%
  9  1     9    1  |1 1>+         7.40%    0.00%   20.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         7.59%    0.17%    3.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        13.15%    0.27%    3.98%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.31%   29.25%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   33.12%    0.04%
 17  1     5    1  |1 0>          5.26%    0.06%    0.03%    0.01%    0.00%   59.89%    0.08%    0.00%
 18  1     6    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.03%    0.00%    0.00%    0.04%
 19  1     7    1  |1 0>          0.00%    2.28%    1.72%    9.48%    4.92%    0.00%    0.15%    1.51%
 20  1     8    1  |1 0>          0.07%    1.68%    2.27%    5.83%    8.16%    0.00%    0.09%   38.11%
 21  1     9    1  |1 0>          0.05%    5.35%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    6.94%   18.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.45%   15.83%    9.23%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>         29.20%    0.35%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.03%    0.01%    3.90%   44.32%    3.26%    0.01%    0.04%    2.27%
 29  1     5    1  |1 1>-         0.01%    0.01%    1.40%   11.52%    0.65%    0.00%    0.18%   13.21%
 30  1     6    1  |1 1>-         0.04%    3.95%    0.02%    1.61%   25.61%    0.00%    0.01%   13.68%
 31  1     7    1  |1 1>-         1.45%    0.00%    0.01%    0.01%    0.03%    8.20%   11.14%    0.08%
 32  1     8    1  |1 1>-         2.50%    0.05%    0.01%    0.00%    0.02%   14.34%   19.45%    0.01%
 33  1     9    1  |1 1>-         0.49%   22.33%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-        15.70%    4.21%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-        12.06%    1.80%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.20%    0.11%   29.39%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         1.70%    0.00%    1.18%    0.87%    0.01%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+        13.41%    0.00%    3.84%    2.79%    0.04%    0.00%    0.01%    0.00%
  6  1     6    1  |1 1>+        15.63%    0.00%    0.04%    0.16%    1.99%    0.00%    0.00%    0.28%
  7  1     7    1  |1 1>+         0.26%   12.07%    0.61%    0.77%    0.11%    2.80%    0.27%    0.00%
  8  1     8    1  |1 1>+         0.13%   21.26%    0.28%    0.34%    0.08%    5.12%    0.55%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    6.18%   12.03%   25.14%    0.00%    0.10%   12.68%
 10  1    10    1  |1 1>+         0.00%    0.00%    3.49%    5.20%    7.54%    3.22%   32.81%    1.19%
 11  1    11    1  |1 1>+         0.00%    0.00%    8.85%    7.97%   10.53%    2.24%   19.45%    1.30%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.16%    0.00%    3.60%    4.61%    0.53%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.05%   33.25%    0.00%    0.00%    0.00%    4.80%    3.93%    0.00%
 19  1     7    1  |1 0>         37.19%    0.06%    0.99%    0.31%    0.88%    0.01%    0.00%    0.09%
 20  1     8    1  |1 0>          1.11%    0.02%    0.30%    0.72%    1.17%    0.00%    0.00%    0.19%
 21  1     9    1  |1 0>          0.00%    0.00%    5.96%    3.10%    0.23%   21.34%   24.46%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%   10.29%    1.37%   27.27%    2.50%    3.32%    8.69%
 23  1    11    1  |1 0>          0.00%    0.00%    9.22%   16.05%   13.33%    2.23%    4.08%    6.48%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.11%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         3.07%    0.00%    0.03%    0.12%    2.16%    0.00%    0.00%    0.28%
 29  1     5    1  |1 1>-        14.82%    0.00%    0.08%    0.33%    6.03%    0.00%    0.00%    0.10%
 30  1     6    1  |1 1>-        12.31%    0.07%    1.23%    0.93%    0.01%    0.00%    0.04%    0.00%
 31  1     7    1  |1 1>-         0.01%   21.14%    0.51%    0.35%    0.05%    0.23%    5.22%    0.00%
 32  1     8    1  |1 1>-         0.17%   12.12%    0.43%    0.80%    0.08%    0.16%    3.09%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   21.82%   13.96%    0.09%   10.13%    0.21%    0.02%
 34  1    10    1  |1 1>-         0.00%    0.00%    3.33%   24.05%    2.11%   17.52%    0.73%    0.01%
 35  1    11    1  |1 1>-         0.00%    0.00%   17.69%    3.13%    0.61%   27.66%    1.69%    0.02%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   68.38%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.02%    0.01%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.02%
  4  1     4    1  |1 1>+         0.29%    0.00%
  5  1     5    1  |1 1>+         0.09%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.18%
  8  1     8    1  |1 1>+         0.00%    0.10%
  9  1     9    1  |1 1>+         0.02%    2.48%
 10  1    10    1  |1 1>+         0.01%    4.73%
 11  1    11    1  |1 1>+         0.01%    7.98%
 12  1    12    1  |1 1>+        68.47%    0.02%
 13  1     1    1  |1 0>          0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%
 15  1     3    1  |1 0>          0.02%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.38%
 18  1     6    1  |1 0>          0.00%    0.00%
 19  1     7    1  |1 0>          0.19%    0.00%
 20  1     8    1  |1 0>          0.09%    0.00%
 21  1     9    1  |1 0>          2.95%    0.00%
 22  1    10    1  |1 0>          5.12%    0.01%
 23  1    11    1  |1 0>          7.13%    0.02%
 24  1    12    1  |1 0>          0.01%   68.49%
 25  1     1    1  |1 1>-         0.00%    0.02%
 26  1     2    1  |1 1>-         0.02%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%
 30  1     6    1  |1 1>-         0.28%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.10%
 32  1     8    1  |1 1>-         0.00%    0.18%
 33  1     9    1  |1 1>-        12.23%    0.01%
 34  1    10    1  |1 1>-         1.28%    9.37%
 35  1    11    1  |1 1>-         1.66%    5.80%
 36  1    12    1  |1 1>-         0.13%    0.11%
 37  1     1    1  |0 0>          0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      116.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2424.87       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    107771.90  98337.36   1064.17   8357.91      7.88      0.54      3.81
 REAL TIME  *    108958.15 SEC
 DISK USED  *         2.48 GB (local),       33.96 GB (total)
 SF USED    *        19.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK3 energy=  -6174.370779087071

              CI              CI           MULTI         RHF-SCF
  -6174.44467249  -6174.31388494  -6173.68801129  -6172.99289534
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
