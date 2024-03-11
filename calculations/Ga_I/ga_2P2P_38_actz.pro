
 Working directory              : /wrk/irikura/molpro.RWDYB956zV/
 Global scratch directory       : /wrk/irikura/molpro.RWDYB956zV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.RWDYB956zV/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ga SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ga};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=30,sym=1,spin=0}
 
 {multi
     closed,8,6
     occ,10,12
     wf,nelec=31,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Mar-24          TIME: 11:14:44  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  GA     31.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   31
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     16.253 MB (compressed) written to integral file ( 15.1%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107427. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1292626. AND WROTE     6503791. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.460E-03 0.307E-02 0.356E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01
         2 0.776E-05 0.776E-05 0.776E-05 0.134E-01 0.134E-01 0.134E-01 0.108E+00 0.108E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.05      0.85
 REAL TIME  *         2.15 SEC
 DISK USED  *        29.42 MB (local),      408.88 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial occupancy:   9   6

 NELEC=   30   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1941.97525469   -1941.97525469     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2    -1941.98162498      -0.00637029     0.21D-02     0.17D-01     1     0       0.00      0.01    diag
   3    -1941.98223825      -0.00061327     0.18D-02     0.30D-02     2     0       0.01      0.02    diag
   4    -1941.98237219      -0.00013394     0.38D-03     0.19D-02     3     0       0.01      0.03    diag
   5    -1941.98237921      -0.00000702     0.14D-03     0.40D-03     4     0       0.00      0.03    diag
   6    -1941.98237927      -0.00000005     0.85D-05     0.33D-04     5     0       0.00      0.03    diag
   7    -1941.98237927      -0.00000000     0.75D-06     0.55D-05     6     0       0.01      0.04    diag
   8    -1941.98237927      -0.00000000     0.45D-07     0.90D-06     7     0       0.00      0.04    fixocc
   9    -1941.98237927      -0.00000000     0.23D-08     0.49D-07     0     0       0.01      0.05    diag

 Final occupancy:   9   6

 !RHF STATE 1.1 Energy              -1941.982379266492
  RHF One-electron energy           -2699.736527245119
  RHF Two-electron energy             757.754147978628
  RHF Kinetic energy                 2055.623564537049
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.944716928123

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.99844     1  1  s    0.99988
    2.1     2.00000   -49.58668     1  2  s    1.00104
    3.1     2.00000    -6.88211     1  3  s    0.99885
    4.1     2.00000    -1.46778     1  1  d0   0.99991
    5.1     2.00000    -1.46778     1  1  d2-  0.94365    1  1  d1+  0.32820
    6.1     2.00000    -1.46778     1  1  d2- -0.32455    1  1  d1+  0.90805
    7.1     2.00000    -1.46778     1  1  d2+  0.85472    1  1  d1-  0.46253
    8.1     2.00000    -1.46778     1  1  d2+ -0.49871    1  1  d1-  0.85631
    9.1     2.00000    -0.69950     1  4  s    1.19415
    1.2     2.00000   -43.04408     1  1  py   1.00002
    2.2     2.00000   -43.04408     1  1  px   1.00002
    3.2     2.00000   -43.04408     1  1  pz   1.00002
    4.2     2.00000    -4.82541     1  2  py   0.99960
    5.2     2.00000    -4.82541     1  2  px   0.99960
    6.2     2.00000    -4.82541     1  2  pz   0.99960


 HOMO      9.1    -0.699498 =     -19.0343eV
 LUMO      7.2    -0.193518 =      -5.2659eV
 LUMO-HOMO         0.505980 =      13.7684eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.14      0.09      0.85
 REAL TIME  *         3.46 SEC
 DISK USED  *        29.94 MB (local),      415.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.628D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.433D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 5 6 1 1   2 5 3 6 4 1 5 3 4 6   2 1 2 6 4 3 5 1 3 5   6 4 2 7141512 8 911
                                       1013 1 2 5 3 4 6
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.361D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.710D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.627D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.224D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.224D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.827D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.724D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.718D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.883D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.883D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 2   1 3 3 2 110 8 5 4 7   9 6 810 6 9 7 5 4 3   2 1 4 5 6 810 9 7 3
                                        2 1 4 5 9 710 8 6 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    1632
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0  -1942.12828403   -1942.13484051   -0.00655649    0.05232775 0.00020846 0.00000000  0.80E+00      0.41
   2    8    7    0  -1942.13475552   -1942.13475942   -0.00000390    0.00175951 0.00000005 0.00000000  0.25E-01      0.91
   3    5    5    0  -1942.13475942   -1942.13475942   -0.00000000    0.00000086 0.00000001 0.00000000  0.34E-04      1.26

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.30E-07)
                       Final energy:  -1942.13475942
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -1942.201165064047
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.91547173
 One electron energy                         -2709.18126551
 Two electron energy                           766.98010045
 Virial ratio                                    1.94468921
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -1942.201165064024
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.91547173
 One electron energy                         -2709.18126549
 Two electron energy                           766.98010042
 Virial ratio                                    1.94468921
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -1942.201165064023
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.91547173
 One electron energy                         -2709.18126553
 Two electron energy                           766.98010047
 Virial ratio                                    1.94468921
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                     -1942.068353773633
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.67826048
 One electron energy                         -2703.99482311
 Two electron energy                           761.92646934
 Virial ratio                                    1.94473361
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                     -1942.068353773218
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.67826050
 One electron energy                         -2703.99482321
 Two electron energy                           761.92646943
 Virial ratio                                    1.94473361
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                     -1942.068353772804
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.67826051
 One electron energy                         -2703.99482330
 Two electron energy                           761.92646953
 Virial ratio                                    1.94473361
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999130
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000140931805
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999856390492
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999956
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999996
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000000053
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999345718
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999859068204
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000144263850
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000000592
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999449
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999953
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000655152
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999991
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999345658
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999999452
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.000000000554
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999994
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   1 6 2 5 3 4 6 5 3 2   4 1 6 2 3 5 4 1 6 3   5 2 4111415 712 810
                                       13 9 1 6 2 5 3 4
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 2 3 1 510 8 7 9   6 4 510 8 6 9 7 4 3   2 1 5 9 7 810 6 4 3
                                        2 1 5 9 710 8 6 4 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.76994     1  1  s    0.99988
    2.1     2.00000   -49.35965     1  2  s    1.00109
    3.1     2.00000    -6.65508     1  3  s    0.99863
    4.1     2.00000    -1.24163     1  1  d1-  1.00023
    5.1     2.00000    -1.24163     1  1  d2-  1.00023
    6.1     2.00000    -1.24163     1  1  d2+  1.00023
    7.1     2.00000    -1.24163     1  1  d0   1.00023
    8.1     2.00000    -1.24163     1  1  d1+  1.00023
    9.1     1.91943    -0.48329     1  4  s    1.04034
   10.1     0.00609     0.25423     1  3  s   -1.06978    1  4  s    4.42029    1  5  s    2.58089    1  6  s    2.38820
                                    1  8  s   -0.31606
    1.2     2.00000   -42.81750     1  1  py   1.00001
    2.2     2.00000   -42.81750     1  1  pz   1.00001
    3.2     2.00000   -42.81750     1  1  px   1.00001
    4.2     2.00000    -4.59984     1  2  py   0.99801
    5.2     2.00000    -4.59984     1  2  pz   0.99801
    6.2     2.00000    -4.59984     1  2  px   0.99801
    7.2     0.19171    -0.00537     1  3  px   2.21943    1  4  px  -0.45202    1  5  px  -0.81310
    8.2     0.19171    -0.00537     1  3  pz   2.21943    1  4  pz  -0.45202    1  5  pz  -0.81310
    9.2     0.19171    -0.00537     1  3  py   2.21944    1  4  py  -0.45202    1  5  py  -0.81310
   10.2     0.16645     0.03454     1  3  px  -0.61775    1  8  px   1.22813
   11.2     0.16645     0.03454     1  3  pz  -0.61774    1  8  pz   1.22813
   12.2     0.16645     0.03454     1  3  py  -0.61773    1  8  py   1.22813
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000      0.93828350      0.00001867     -0.00075923      0.00000668     -0.28520085      0.00000055
 20 a00000     -0.00002768      0.93821907     -0.01113882     -0.00000189     -0.00000055     -0.28519631
 20 00a000      0.00075896      0.01113880      0.93821599     -0.28520538     -0.00000668      0.00000189
 20 000a00     -0.00000842      0.28526610     -0.00338676      0.00000620      0.00000181      0.93380405
 20 0000a0      0.28529067      0.00000568     -0.00023085     -0.00002186      0.93380266     -0.00000181
 20 00000a      0.00023077      0.00338688      0.28527512      0.93380128      0.00002186     -0.00000620
 00 2a0000     -0.12306195     -0.00000245      0.00009958     -0.00000093      0.03969335     -0.00000008
 00 0a2000     -0.12306195     -0.00000245      0.00009958     -0.00000093      0.03969334     -0.00000008
 00 a20000      0.00000363     -0.12305348      0.00146093      0.00000026      0.00000008      0.03969280
 00 a02000      0.00000363     -0.12305348      0.00146093      0.00000026      0.00000008      0.03969280
 00 20a000     -0.00009954     -0.00146093     -0.12305311      0.03969390      0.00000093     -0.00000026
 00 02a000     -0.00009954     -0.00146093     -0.12305311      0.03969389      0.00000093     -0.00000026
 00 002a00      0.00000101     -0.03427215      0.00040689     -0.00000075     -0.00000022     -0.11250406
 00 020a00      0.00000101     -0.03427214      0.00040689     -0.00000075     -0.00000022     -0.11250403
 00 0020a0     -0.03427515     -0.00000068      0.00002773      0.00000263     -0.11250386      0.00000022
 00 2000a0     -0.03427513     -0.00000068      0.00002773      0.00000263     -0.11250381      0.00000022
 00 02000a     -0.00002772     -0.00040690     -0.03427332     -0.11250364     -0.00000263      0.00000075
 00 20000a     -0.00002772     -0.00040690     -0.03427331     -0.11250362     -0.00000263      0.00000075
 00 00200a     -0.00002740     -0.00040219     -0.03387662     -0.11037758     -0.00000258      0.00000073
 00 0200a0     -0.03387900     -0.00000067      0.00002741      0.00000258     -0.11037756      0.00000021
 00 200a00      0.00000100     -0.03387662      0.00040219     -0.00000073     -0.00000021     -0.11037755
 
 Energy:    -1942.20116506  -1942.20116506  -1942.20116506  -1942.06835377  -1942.06835377  -1942.06835377
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.44      1.30      0.09      0.85
 REAL TIME  *         5.18 SEC
 DISK USED  *        44.65 MB (local),      591.63 MB (total)
 SF USED    *        37.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -1942.201165   2.0
    -1942.201165   2.0
    -1942.201165   2.0
    -1942.068354   2.0
    -1942.068354   2.0
    -1942.068354   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 31
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1942.20116506
     2     -1942.20116506
     3     -1942.20116506
     4     -1942.06835377
     5     -1942.06835377
     6     -1942.06835377

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.48D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3021580
 Number of doubly external configurations:       2024966
 Total number of contracted configurations:      5099818
 Total number of uncontracted configurations:   39479590

 Diagonal Coupling coefficients finished.               Storage:  22139508 words, CPU-Time:     26.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1105157 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1942.20116506     0.00000000    -0.86896407  0.37D-01  0.70D-01    40.05
    1     2     2     1.00000000     0.00000000 -1942.20116506     0.00000000    -0.86901382  0.37D-01  0.70D-01    40.05
    1     3     3     1.00000000     0.00000000 -1942.20116506     0.00000000    -0.86887007  0.37D-01  0.70D-01    40.05
    1     4     4     1.00000000     0.00000000 -1942.06835377     0.00000000    -0.84875962  0.22D-01  0.66D-01    40.05
    1     5     5     1.00000000     0.00000000 -1942.06835377     0.00000000    -0.84871446  0.22D-01  0.66D-01    40.05
    1     6     6     1.00000000     0.00000000 -1942.06835377     0.00000000    -0.84872605  0.22D-01  0.66D-01    40.05
    2     1     1     1.06427955    -0.67686817 -1942.87803323    -0.67686817    -0.02360463  0.29D-02  0.14D-02   266.99
    2     2     2     1.06428263    -0.67683474 -1942.87799981    -0.67683474    -0.02364320  0.30D-02  0.14D-02   266.99
    2     3     3     1.06434307    -0.67683283 -1942.87799790    -0.67683283    -0.02363718  0.30D-02  0.14D-02   266.99
    2     4     4     1.05375995    -0.66653937 -1942.73489314    -0.66653937    -0.02277962  0.24D-02  0.13D-02   266.99
    2     5     5     1.05377543    -0.66653128 -1942.73488505    -0.66653128    -0.02278745  0.24D-02  0.13D-02   266.99
    2     6     6     1.05378741    -0.66653016 -1942.73488394    -0.66653016    -0.02278683  0.24D-02  0.13D-02   266.99
    3     1     1     1.05947211    -0.69748027 -1942.89864533    -0.02061210    -0.00075461  0.12D-03  0.52D-04   489.81
    3     2     2     1.05948241    -0.69748010 -1942.89864516    -0.02064536    -0.00075487  0.12D-03  0.53D-04   489.81
    3     3     3     1.05948202    -0.69747931 -1942.89864437    -0.02064648    -0.00075580  0.12D-03  0.53D-04   489.81
    3     4     4     1.05188545    -0.68604226 -1942.75439604    -0.01950290    -0.00070049  0.76D-04  0.46D-04   489.81
    3     5     5     1.05188573    -0.68604208 -1942.75439586    -0.01951081    -0.00070069  0.76D-04  0.46D-04   489.81
    3     6     6     1.05188766    -0.68604185 -1942.75439562    -0.01951168    -0.00070096  0.76D-04  0.46D-04   489.81
    4     1     1     1.05877080    -0.69817401 -1942.89933908    -0.00069374    -0.00004059  0.84D-05  0.24D-05   714.00
    4     2     2     1.05877002    -0.69817401 -1942.89933907    -0.00069391    -0.00004061  0.84D-05  0.24D-05   714.00
    4     3     3     1.05876879    -0.69817397 -1942.89933903    -0.00069466    -0.00004063  0.84D-05  0.24D-05   714.00
    4     4     4     1.05204825    -0.68667918 -1942.75503295    -0.00063691    -0.00003435  0.64D-05  0.16D-05   714.00
    4     5     5     1.05204800    -0.68667917 -1942.75503294    -0.00063708    -0.00003436  0.64D-05  0.17D-05   714.00
    4     6     6     1.05204755    -0.68667916 -1942.75503294    -0.00063731    -0.00003436  0.64D-05  0.17D-05   714.00
    5     1     1     1.05886496    -0.69821357 -1942.89937863    -0.00003956    -0.00000191  0.26D-06  0.14D-06   936.49
    5     2     2     1.05886486    -0.69821357 -1942.89937863    -0.00003956    -0.00000191  0.26D-06  0.14D-06   936.49
    5     3     3     1.05886529    -0.69821357 -1942.89937863    -0.00003960    -0.00000191  0.26D-06  0.14D-06   936.49
    5     4     4     1.05222404    -0.68671273 -1942.75506650    -0.00003355    -0.00000152  0.21D-06  0.92D-07   936.49
    5     5     5     1.05222422    -0.68671273 -1942.75506650    -0.00003356    -0.00000152  0.21D-06  0.92D-07   936.49
    5     6     6     1.05222421    -0.68671273 -1942.75506650    -0.00003357    -0.00000152  0.21D-06  0.92D-07   936.49
    6     1     1     1.05888023    -0.69821553 -1942.89938059    -0.00000196    -0.00000010  0.13D-07  0.88D-08  1158.81
    6     2     2     1.05888022    -0.69821553 -1942.89938059    -0.00000196    -0.00000010  0.13D-07  0.88D-08  1158.81
    6     3     3     1.05888021    -0.69821553 -1942.89938059    -0.00000196    -0.00000010  0.13D-07  0.87D-08  1158.81
    6     4     4     1.05225568    -0.68671432 -1942.75506809    -0.00000159    -0.00000008  0.96D-08  0.67D-08  1158.81
    6     5     5     1.05225568    -0.68671432 -1942.75506809    -0.00000159    -0.00000008  0.96D-08  0.67D-08  1158.81
    6     6     6     1.05225567    -0.68671432 -1942.75506809    -0.00000159    -0.00000008  0.96D-08  0.67D-08  1158.81
    7     1     1     1.05887973    -0.69821562 -1942.89938069    -0.00000010    -0.00000001  0.15D-08  0.40D-09  1380.60
    7     2     2     1.05887973    -0.69821562 -1942.89938069    -0.00000010    -0.00000001  0.15D-08  0.40D-09  1380.60
    7     3     3     1.05887975    -0.69821562 -1942.89938069    -0.00000010    -0.00000001  0.15D-08  0.40D-09  1380.60
    7     4     4     1.05225858    -0.68671439 -1942.75506817    -0.00000008    -0.00000001  0.13D-08  0.27D-09  1380.60
    7     5     5     1.05225858    -0.68671439 -1942.75506817    -0.00000008    -0.00000001  0.13D-08  0.27D-09  1380.60
    7     6     6     1.05225858    -0.68671439 -1942.75506817    -0.00000008    -0.00000001  0.13D-08  0.27D-09  1380.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   1.2%  51.5%
 P   0.5%  27.6%  11.7%

 Initialization:   1.9%
 Other:            2.6%

 Total CPU:     1380.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202220/0000           0.9251720  -0.0000011   0.0018007  -0.0060102  -0.2390273  -0.0027464
 22222220222/00000          -0.0000089   0.9251606   0.0051527  -0.0102749   0.0030030  -0.2388744
 2222222022200/000          -0.0018007  -0.0051527   0.9251565  -0.2388265   0.0058863   0.0103468
 222222202220000/0           0.2399651  -0.0000003   0.0004671   0.0231827   0.9219744   0.0105935
 22222220222000/00          -0.0000023   0.2399573   0.0013364   0.0396330  -0.0115835   0.9214030
 2222222022200000/          -0.0004671  -0.0013365   0.2399658   0.9211819  -0.0227042  -0.0399090
 222222002222/0000          -0.1118995   0.0000001  -0.0002178   0.0007809   0.0310583   0.0003569
 222222002220/2000          -0.1118995   0.0000001  -0.0002178   0.0007809   0.0310583   0.0003569
 22222200222/02000           0.0000011  -0.1118981  -0.0006232   0.0013351  -0.0003902   0.0310385
 22222200222/20000           0.0000011  -0.1118981  -0.0006232   0.0013351  -0.0003902   0.0310385
 2222220022220/000           0.0002178   0.0006232  -0.1118977   0.0310322  -0.0007648  -0.0013444
 2222220022202/000           0.0002178   0.0006232  -0.1118976   0.0310322  -0.0007648  -0.0013444
 222222002220020/0          -0.0266165   0.0000000  -0.0000518  -0.0025805  -0.1026281  -0.0011792
 222222002222000/0          -0.0266165   0.0000000  -0.0000518  -0.0025805  -0.1026280  -0.0011792
 22222200222002/00           0.0000003  -0.0266156  -0.0001482  -0.0044117   0.0012894  -0.1025645
 22222200222020/00           0.0000003  -0.0266156  -0.0001482  -0.0044117   0.0012894  -0.1025645
 2222220022202000/           0.0000518   0.0001482  -0.0266166  -0.1025398   0.0025273   0.0044424
 2222220022220000/           0.0000518   0.0001482  -0.0266166  -0.1025398   0.0025273   0.0044424
 222222002220200/0          -0.0261262   0.0000000  -0.0000509  -0.0025247  -0.1004089  -0.0011537
 22222200222200/00           0.0000003  -0.0261258  -0.0001455  -0.0043163   0.0012615  -0.1003465
 2222220022200200/           0.0000508   0.0001455  -0.0261259  -0.1003226   0.0024726   0.0043463
 222222/\2220000/0           0.0230636  -0.0000000   0.0000449   0.0019031   0.0756855   0.0008696
 222222/\222000/00          -0.0000002   0.0230635   0.0001285   0.0032535  -0.0009509   0.0756384
 222222/\22200000/          -0.0000449  -0.0001285   0.0230631   0.0756207  -0.0018638  -0.0032762

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970075   -0.000009   -0.001888    0.000077   -0.039530    0.000000
 2          -0.000001    0.970062   -0.005403    0.000220    0.000000   -0.039530
 3           0.001888    0.005403    0.970060   -0.039530   -0.000077   -0.000220
 4           0.001056    0.001805    0.041953    0.971624    0.024452    0.041803
 5           0.041989   -0.000528   -0.001034   -0.023947    0.972459   -0.012218
 6           0.000482    0.041963   -0.001818   -0.042094    0.011174    0.971855

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970881   -0.000000    0.000000    0.000027    0.001178    0.000014
 2          -0.000000    0.970881    0.000000    0.000044   -0.000015    0.001177
 3           0.000000    0.000000    0.970881    0.001177   -0.000027   -0.000044
 4           0.000027    0.000044    0.001177    0.973736   -0.000000    0.000000
 5           0.001178   -0.000015   -0.000027   -0.000000    0.973736    0.000000
 6           0.000014    0.001177   -0.000044    0.000000    0.000000    0.973736


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97007475 (fixed)   0.97120386 (relaxed)   0.97088097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00189311   -0.00265988   -0.60436498
 Singles      0.01585466   -0.05837581   -0.06546157
 Pairs        0.04313654   -0.00000029   -0.02838908
 Total        1.06088430   -0.06103598   -0.69821562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20093158
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.04532093
 One electron energy                -2707.54107650
 Two electron energy                  764.64169581
 Virial quotient                       -0.94496914
 Correlation energy                    -0.69844911
 !MRCI STATE 1.2 Energy             -1942.899380688833

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94190528 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94141267 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94190528 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93959758 (Pople, fixed reference)
 Cluster corrected energies         -1942.93910849 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93959758 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97006154 (fixed)   0.97120386 (relaxed)   0.97088097 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00189311   -0.00265988   -0.63253430
 Singles      0.01585464   -0.05837580   -0.06546156
 Pairs        0.04313655    0.02988409   -0.00021977
 Total        1.06088430   -0.03115159   -0.69821562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20093158
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.04532027
 One electron energy                -2707.54107557
 Two electron energy                  764.64169488
 Virial quotient                       -0.94496914
 Correlation energy                    -0.69844911
 !MRCI STATE 2.2 Energy             -1942.899380688708

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94190527 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94141266 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94190527 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93959758 (Pople, fixed reference)
 Cluster corrected energies         -1942.93910849 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93959758 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97005970 (fixed)   0.97120385 (relaxed)   0.97088096 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00189311   -0.00265988   -0.60452213
 Singles      0.01585466   -0.05837581   -0.06546157
 Pairs        0.04313655    0.00016644   -0.02823192
 Total        1.06088432   -0.06086925   -0.69821562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20093158
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.04531960
 One electron energy                -2707.54107583
 Two electron energy                  764.64169514
 Virial quotient                       -0.94496914
 Correlation energy                    -0.69844911
 !MRCI STATE 3.2 Energy             -1942.899380686881

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94190528 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94141267 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94190528 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93959759 (Pople, fixed reference)
 Cluster corrected energies         -1942.93910850 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93959759 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97162402 (fixed)   0.97408855 (relaxed)   0.97373594 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229400   -0.00328630   -0.57649843
 Singles      0.01125963   -0.05322005   -0.05779334
 Pairs        0.04111883   -0.02705265   -0.05242262
 Total        1.05467246   -0.08355900   -0.68671439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06858726
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88134832
 One electron energy                -2702.30638437
 Two electron energy                  759.55131620
 Virial quotient                       -0.94497431
 Correlation energy                    -0.68648091
 !MRCI STATE 4.2 Energy             -1942.755068166328

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79259976 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79207568 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79259976 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79038119 (Pople, fixed reference)
 Cluster corrected energies         -1942.78986616 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79038119 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.97245869 (fixed)   0.97408855 (relaxed)   0.97373594 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229400   -0.00328630   -0.60964550
 Singles      0.01125963   -0.05322005   -0.05779334
 Pairs        0.04111883    0.00790665   -0.01927555
 Total        1.05467246   -0.04859970   -0.68671439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06858726
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88134870
 One electron energy                -2702.30638469
 Two electron energy                  759.55131652
 Virial quotient                       -0.94497431
 Correlation energy                    -0.68648091
 !MRCI STATE 5.2 Energy             -1942.755068165317

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79259976 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79207568 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79259976 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79038119 (Pople, fixed reference)
 Cluster corrected energies         -1942.78986616 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79038119 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97185487 (fixed)   0.97408855 (relaxed)   0.97373594 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229400   -0.00328630   -0.00582169
 Singles      0.01125962   -0.05322005   -0.05779334
 Pairs        0.04111883   -0.62892969   -0.62309936
 Total        1.05467245   -0.68543604   -0.68671439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06858726
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88134851
 One electron energy                -2702.30638452
 Two electron energy                  759.55131636
 Virial quotient                       -0.94497431
 Correlation energy                    -0.68648091
 !MRCI STATE 6.2 Energy             -1942.755068165071

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79259976 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79207568 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79259976 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79038119 (Pople, fixed reference)
 Cluster corrected energies         -1942.78986616 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79038119 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      241.85       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1535.03   1532.58      1.30      0.09      0.85
 REAL TIME  *      1566.04 SEC
 DISK USED  *       285.74 MB (local),        3.40 GB (total)
 SF USED    *         2.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1942.94190528  AU                              
 SETTING HLSDIAG(2)     =     -1942.94190527  AU                              
 SETTING HLSDIAG(3)     =     -1942.94190528  AU                              
 SETTING HLSDIAG(4)     =     -1942.79259976  AU                              
 SETTING HLSDIAG(5)     =     -1942.79259976  AU                              
 SETTING HLSDIAG(6)     =     -1942.79259976  AU                              


         HLSDIAG
    -1942.941905
    -1942.941905
    -1942.941905
    -1942.792600
    -1942.792600
    -1942.792600
                                                  


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

 Time for Seward_LS:       4.49 sec

        6950436. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.50 sec, REAL time:      4.59 sec


 SORTLS1 read     7821185. and wrote     7821185. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec
 SORTLS2 read     7821185. and wrote    38256242. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   171.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -1942.899381  -1942.899381  -1942.899381  -1942.755068  -1942.755068  -1942.755068
 Replaced energies:  -1942.941905  -1942.941905  -1942.941905  -1942.792600  -1942.792600  -1942.792600



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1942.94190528

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -302.60      -1.69       6.04
                           -0.00      -0.59      -0.00       0.01      -0.00       0.27      -0.00      -1.69     302.60    -140.34

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     302.60      -0.00       0.59      -3.53
                            0.59       0.00    -302.61     140.36      -3.47      -5.30       1.69       0.00       0.00      -0.02

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       1.69      -0.59       0.00      -0.01
                            0.00     302.61       0.00      -5.26       1.75    -140.39    -302.60      -0.00      -0.00       3.26

    4   4.2  0.5  0.5       0.00       0.00       0.00   32768.77       0.00       0.00      -6.04       3.53       0.01      -0.00
                           -0.01    -140.36       5.26       0.00      -0.75      65.04     140.34       0.02      -3.26       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32768.77       0.00       1.76     140.45       0.79      -2.82
                            0.00       3.47      -1.75       0.75       0.00      -1.64      -3.19       0.78    -140.45      65.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32768.77    -140.36       1.61      -0.26       1.60
                           -0.27       5.30     140.39     -65.04       1.64       0.00      -6.08       0.01      -1.63       0.82

    7   1.2  0.5 -0.5      -0.00     302.60       1.69      -6.04       1.76    -140.36       0.00       0.00       0.00       0.00
                            0.00      -1.69     302.60    -140.34       3.19       6.08       0.00       0.59       0.00      -0.01

    8   2.2  0.5 -0.5    -302.60      -0.00      -0.59       3.53     140.45       1.61       0.00       0.00       0.00       0.00
                            1.69      -0.00       0.00      -0.02      -0.78      -0.01      -0.59      -0.00     302.61    -140.36

    9   3.2  0.5 -0.5      -1.69       0.59       0.00       0.01       0.79      -0.26       0.00       0.00       0.00       0.00
                         -302.60      -0.00       0.00       3.26     140.45       1.63      -0.00    -302.61      -0.00       5.26

   10   4.2  0.5 -0.5       6.04      -3.53      -0.01      -0.00      -2.82       1.60       0.00       0.00       0.00   32768.77
                          140.34       0.02      -3.26      -0.00     -65.00      -0.82       0.01     140.36      -5.26      -0.00

   11   5.2  0.5 -0.5      -1.76    -140.45      -0.79       2.82       0.00      64.98       0.00       0.00       0.00       0.00
                           -3.19       0.78    -140.45      65.00       0.00      -2.80      -0.00      -3.47       1.75      -0.75

   12   6.2  0.5 -0.5     140.36      -1.61       0.26      -1.60     -64.98       0.00       0.00       0.00       0.00       0.00
                           -6.08       0.01      -1.63       0.82       2.80      -0.00       0.27      -5.30    -140.39      65.04


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -1.76     140.36
                            3.19       6.08

    2   2.2  0.5  0.5    -140.45      -1.61
                           -0.78      -0.01

    3   3.2  0.5  0.5      -0.79       0.26
                          140.45       1.63

    4   4.2  0.5  0.5       2.82      -1.60
                          -65.00      -0.82

    5   5.2  0.5  0.5       0.00     -64.98
                           -0.00      -2.80

    6   6.2  0.5  0.5      64.98       0.00
                            2.80       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -0.27

    8   2.2  0.5 -0.5       0.00       0.00
                            3.47       5.30

    9   3.2  0.5 -0.5       0.00       0.00
                           -1.75     140.39

   10   4.2  0.5 -0.5       0.00       0.00
                            0.75     -65.04

   11   5.2  0.5 -0.5   32768.77       0.00
                           -0.00       1.64

   12   6.2  0.5 -0.5       0.00   32768.77
                           -1.64      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1942.94467365    -0.00276837     -607.59      0.00000000        0.00      0.0000
     2 -1942.94467365    -0.00276837     -607.59      0.00000000        0.00      0.0000
     3 -1942.94052927     0.00137601      302.00      0.00414438      909.59      0.1128
     4 -1942.94052927     0.00137601      302.00      0.00414438      909.59      0.1128
     5 -1942.94052926     0.00137602      302.00      0.00414439      909.59      0.1128
     6 -1942.94052926     0.00137602      302.00      0.00414439      909.59      0.1128
     7 -1942.79318183     0.14872345    32641.02      0.15149182    33248.61      4.1223
     8 -1942.79318183     0.14872345    32641.02      0.15149182    33248.61      4.1223
     9 -1942.79230055     0.14960473    32834.44      0.15237310    33442.03      4.1463
    10 -1942.79230055     0.14960473    32834.44      0.15237310    33442.03      4.1463
    11 -1942.79230055     0.14960473    32834.44      0.15237310    33442.03      4.1463
    12 -1942.79230055     0.14960473    32834.44      0.15237310    33442.03      4.1463


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.058818214   0.574325495  -0.542209654  -0.013156747  -0.607588744   0.057670662  -0.002809251   0.003990032
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.539617543  -0.055263680  -0.006445606   0.242375320   0.073717930   0.771348621   0.000153740   0.000108243
                        -0.196737561   0.019018869  -0.001570948   0.086308289  -0.001431133   0.001092020   0.003992534   0.002799397

    3    3.2  0.5  0.5  -0.196624074   0.020136799   0.006487199  -0.268264542   0.000004451  -0.000162343   0.003987065   0.002807162
                        -0.539620338   0.055263251  -0.018840134   0.753136847   0.016047442   0.163760627  -0.000153737  -0.000108249

    4    4.2  0.5  0.5   0.001478171  -0.000265141  -0.000027358  -0.001119666  -0.000048927   0.000129696   0.464228857   0.343222609
                         0.004618823  -0.000472663  -0.000081545   0.003263576   0.000069011   0.000706774  -0.000501367  -0.000405276

    5    5.2  0.5  0.5  -0.000478115  -0.004854691  -0.002341284  -0.000043461  -0.002627238   0.000207625  -0.343205525   0.464193264
                        -0.000124377   0.000012619   0.000001935  -0.000078600  -0.000001499  -0.000016142  -0.005454472  -0.003823222

    6    6.2  0.5  0.5  -0.004625863   0.000417041  -0.000055944   0.001088994   0.000287801   0.003331743  -0.003442787   0.005738376
                         0.001489728  -0.000143027  -0.000003713   0.000249896  -0.000008788  -0.000021940   0.472675900   0.331422511

    7    1.2  0.5 -0.5  -0.538515760   0.055150843   0.012418078  -0.511767989   0.057670136   0.607583191  -0.000175944  -0.000123876
                         0.199626026  -0.020444237   0.004346415  -0.179122398  -0.000246571  -0.002597751  -0.003986151  -0.002806518

    8    2.2  0.5 -0.5   0.058428582   0.574354598  -0.257279959  -0.006602698   0.771336902  -0.073723375  -0.002801447   0.003995430
                        -0.001375715  -0.003091329   0.001392396  -0.000646598  -0.004389917  -0.001115938   0.000015304  -0.000022464

    9    3.2  0.5 -0.5   0.000327340   0.003198710   0.004399640  -0.000100974  -0.000862501   0.000064160  -0.000015641   0.000022226
                         0.058816753   0.574317773   0.799475839   0.019925466  -0.163758437   0.016047315  -0.002809205   0.003989966

   10    4.2  0.5 -0.5   0.000084319  -0.000219420  -0.000021339  -0.000052761   0.000126673   0.000049221  -0.014729804   0.019969678
                        -0.000535350  -0.004844622   0.003450236   0.000067929  -0.000707322   0.000068801  -0.342906630   0.463799412

   11    5.2  0.5 -0.5   0.004556383  -0.000405073   0.000066987  -0.002209197   0.000207692   0.002627207  -0.016649485  -0.020583100
                        -0.001675578   0.000282807  -0.000059829  -0.000775284   0.000015254  -0.000012732  -0.463910334  -0.342631172

   12    6.2  0.5 -0.5  -0.000440752  -0.004855241  -0.001110409  -0.000054030   0.003331807  -0.000287836  -0.331353177   0.472064319
                         0.000010847   0.000211031  -0.000123890  -0.000014977   0.000007695  -0.000007557   0.008881556  -0.024282474


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.002390859  -0.001396224  -0.001544313   0.001544313
                         0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000082098  -0.000083399   0.001222449   0.001274148
                         0.000229637   0.000456351  -0.002158574  -0.002093664

    3    3.2  0.5  0.5  -0.001623266  -0.002840837   0.000781661   0.000726333
                         0.000016532   0.000084909   0.000514219   0.000565396

    4    4.2  0.5  0.5   0.363354178   0.665338846  -0.183102024  -0.187336237
                        -0.005812960  -0.023592950  -0.100248516  -0.112648601

    5    5.2  0.5  0.5  -0.562169495   0.307971412   0.365075162  -0.349954241
                         0.000747560   0.001759704  -0.003501373  -0.003045204

    6    6.2  0.5  0.5  -0.001568493  -0.001754100  -0.271869003  -0.292579809
                        -0.052984123  -0.104839852   0.503888646   0.489317756

    7    1.2  0.5 -0.5  -0.000106157  -0.000181780   0.000700915   0.000700915
                        -0.001392182  -0.002383939  -0.001376088  -0.001376088

    8    2.2  0.5 -0.5   0.000448689  -0.000222730   0.002443895  -0.002478269
                        -0.000117855   0.000099320  -0.000185104   0.000109576

    9    3.2  0.5 -0.5  -0.000131330   0.000106935  -0.000174147   0.000103433
                        -0.002839070   0.001619824  -0.000903828   0.000929901

   10    4.2  0.5 -0.5   0.027062005  -0.021830207   0.015351551  -0.006223997
                         0.665206795  -0.362744408   0.218057050  -0.208656094

   11    5.2  0.5 -0.5   0.025170115   0.041997157  -0.156119813  -0.168816169
                         0.306946204   0.560599120   0.313215310   0.323717776

   12    6.2  0.5 -0.5  -0.104669800   0.052950062  -0.568808488   0.572392166
                         0.006222102  -0.002464515   0.038622596  -0.013554576


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.346%  32.985%  29.399%   0.017%  36.916%   0.333%   0.001%   0.002%   0.001%   0.000%
    2    2.2  0.5  0.5  32.989%   0.342%   0.004%   6.619%   0.544%  59.498%   0.002%   0.001%   0.000%   0.000%
    3    3.2  0.5  0.5  32.985%   0.346%   0.040%  63.918%   0.026%   2.682%   0.002%   0.001%   0.000%   0.001%
    4    4.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%  21.551%  11.780%  13.206%  44.323%
    5    5.2  0.5  0.5   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%  11.782%  21.549%  31.604%   9.485%
    6    6.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%  22.343%  10.987%   0.281%   1.099%
    7    1.2  0.5 -0.5  32.985%   0.346%   0.017%  29.399%   0.333%  36.916%   0.002%   0.001%   0.000%   0.001%
    8    2.2  0.5 -0.5   0.342%  32.989%   6.619%   0.004%  59.498%   0.544%   0.001%   0.002%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.346%  32.985%  63.918%   0.040%   2.682%   0.026%   0.001%   0.002%   0.001%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%  11.780%  21.551%  44.323%  13.206%
   11    5.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.001%  21.549%  11.782%   9.485%  31.604%
   12    6.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%  10.987%  22.343%   1.099%   0.281%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.001%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5   4.358%   4.778%
    5    5.2  0.5  0.5  13.329%  12.248%
    6    6.2  0.5  0.5  32.782%  32.503%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.001%   0.001%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   4.778%   4.358%
   11    5.2  0.5 -0.5  12.248%  13.329%
   12    6.2  0.5 -0.5  32.503%  32.782%


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
              1      24      163.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      241.85       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6520.37   4985.32   1532.58      1.30      0.09      0.85
 REAL TIME  *      6606.66 SEC
 DISK USED  *       285.80 MB (local),        3.78 GB (total)
 SF USED    *         2.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -1942.792300550180

              CI           MULTI         RHF-SCF
  -1942.75506817  -1942.06835377  -1941.98237927
 **********************************************************************************************************************************
 Molpro calculation terminated
