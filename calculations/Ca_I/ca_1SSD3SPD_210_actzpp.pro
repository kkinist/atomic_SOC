
 Working directory              : /wrk/irikura/molpro.DeuCzBCW02/
 Global scratch directory       : /wrk/irikura/molpro.DeuCzBCW02/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.DeuCzBCW02/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=9
 
                                                                                 ! Active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5301.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5301.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ca SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 13:05:59  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ca   ECP ECP10MDF                 selected for group  1
 Library entry CA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  CA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         134
 NUMBER OF SYMMETRY AOS:          116
 NUMBER OF CONTRACTIONS:           80   (   38Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.263E-03 0.501E-02 0.651E-02 0.217E-01 0.217E-01 0.217E-01 0.217E-01 0.217E-01
         2 0.660E-02 0.660E-02 0.660E-02 0.182E-01 0.182E-01 0.182E-01 0.125E+00 0.125E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     8.651 MB (compressed) written to integral file ( 17.4%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     223617.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     223617      RECORD LENGTH: 524288

 Memory used in sort:       0.78 MW

 SORT1 READ     6063679. AND WROTE       46599. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     12 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.02 SEC

 Node minimum:      223265.  Node maximum:      226254. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.63      0.46
 REAL TIME  *         1.11 SEC
 DISK USED  *        29.00 MB (local),      399.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -36.44720534     -36.44720534     0.00D+00     0.11D+00     0     0       0.02      0.03    start
   2      -36.44720534      -0.00000000     0.21D-05     0.14D-04     1     0       0.00      0.03    diag
   3      -36.44720534      -0.00000000     0.32D-06     0.52D-05     2     0       0.00      0.03    diag
   4      -36.44720534      -0.00000000     0.13D-06     0.37D-05     3     0       0.00      0.03    diag
   5      -36.44720534      -0.00000000     0.16D-07     0.13D-06     4     0       0.01      0.04    diag
   6      -36.44720534      -0.00000000     0.51D-08     0.56D-07     0     0       0.00      0.04    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -36.447205344150
  RHF One-electron energy             -59.880392468082
  RHF Two-electron energy              23.433187123932
  RHF Kinetic energy                   13.530936771969
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.693620253969

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29827     1  1  s    1.00021
    2.1     2.00000    -0.19669     1  2  s    1.00054
    1.2     2.00000    -1.33735     1  1  pz   0.99987
    2.2     2.00000    -1.33735     1  1  py   0.99987
    3.2     2.00000    -1.33735     1  1  px   0.99987


 HOMO      2.1    -0.196694 =      -5.3523eV
 LUMO      4.2     0.011472 =       0.3122eV
 LUMO-HOMO         0.208166 =       5.6645eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        2.67       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.68      0.05      0.46
 REAL TIME  *         1.18 SEC
 DISK USED  *        31.61 MB (local),      431.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      66 (  30  36 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   4 6 3 5 2 4 6 3 5 1   2 6 4 3 5 1 2 4 6 5   3 1 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.339D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.339D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.135D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.135D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   1 2 7 9 610 8 5 4 3   1 210 8 6 4 5 7 9 3   1 2 6 5 4 810 7 9 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  472  ( 16 closed/active, 138 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1094
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    5    -36.28932019     -36.35291080   -0.06359061    0.04988718 0.00003907 0.00000000  0.23E+01      0.47
   2    8   14    0    -36.34956406     -36.35155626   -0.00199220    0.05238021 0.00001220 0.00000000  0.22E+00      0.87
   3    8   14    0    -36.35155891     -36.35155922   -0.00000031    0.00031686 0.00000000 0.00000000  0.54E-02      1.25
   4    3    6    0    -36.35155922     -36.35155922   -0.00000000    0.00000043 0.00000001 0.00000000  0.87E-06      1.44

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.61E-09)
                       Final energy:    -36.35155922
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -36.472022217491
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.45361530
 One electron energy                           -59.74545987
 Two electron energy                            23.27343765
 Virial ratio                                    3.71094582
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -36.360475707256
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.98726021
 One electron energy                           -59.96959596
 Two electron energy                            23.60912025
 Virial ratio                                    3.59954238
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -36.360475707256
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.98726021
 One electron energy                           -59.96959596
 Two electron energy                            23.60912025
 Virial ratio                                    3.59954238
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -36.360475707256
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.98726021
 One electron energy                           -59.96959596
 Two electron energy                            23.60912025
 Virial ratio                                    3.59954238
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -36.360475707243
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.98726021
 One electron energy                           -59.96959596
 Two electron energy                            23.60912025
 Virial ratio                                    3.59954238
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -36.360475707214
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.98726021
 One electron energy                           -59.96959596
 Two electron energy                            23.60912025
 Virial ratio                                    3.59954238
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -36.317122293424
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.35844439
 One electron energy                           -58.50052834
 Two electron energy                            22.18340605
 Virial ratio                                    3.71866403
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -36.360372172196
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.14736339
 One electron energy                           -60.30142615
 Two electron energy                            23.94105398
 Virial ratio                                    3.57011651
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -36.360372172196
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.14736339
 One electron energy                           -60.30142615
 Two electron energy                            23.94105398
 Virial ratio                                    3.57011651
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -36.360372172196
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.14736339
 One electron energy                           -60.30142615
 Two electron energy                            23.94105398
 Virial ratio                                    3.57011651
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -36.360372172196
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.14736339
 One electron energy                           -60.30142615
 Two electron energy                            23.94105398
 Virial ratio                                    3.57011651
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -36.360372172176
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.14736339
 One electron energy                           -60.30142615
 Two electron energy                            23.94105398
 Virial ratio                                    3.57011651
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -36.327444533375
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.31304361
 One electron energy                           -58.35445808
 Two electron energy                            22.02701355
 Virial ratio                                    3.72871070
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -36.301373027542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66331171
 One electron energy                           -59.23372014
 Two electron energy                            22.93234712
 Virial ratio                                    3.65685024
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -36.301373027539
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66331171
 One electron energy                           -59.23372014
 Two electron energy                            22.93234712
 Virial ratio                                    3.65685024
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -36.301373027539
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66331171
 One electron energy                           -59.23372014
 Two electron energy                            22.93234712
 Virial ratio                                    3.65685024
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000306409
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000001173838
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999998519753
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000033040885
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.999966959115
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000763227
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000258731
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999998978042
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>    -0.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000010
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999998826154
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000001173836
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999966959479
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.000033040521
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000003
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000024556347
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999975443649
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000001
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999996501
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000003499
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999693581
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000008
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000306411
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999636
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000364
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999236770
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999975184923
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000024556350
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000001021957
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>    -0.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000003499
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999996501
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29484     1  1  s    0.97715
    2.1     0.78482    -0.10011     1  2  s    1.14859
    3.1     0.12685     0.02699     1  2  s   -0.64320    1  8  s    1.49682
    4.1     0.11899     0.09057     1  1  d2+  0.84801
    5.1     0.11899     0.09057     1  1  d0   0.84801
    6.1     0.11899     0.09057     1  1  d2-  0.84801
    7.1     0.11899     0.09057     1  1  d1+  0.84801
    8.1     0.11899     0.09057     1  1  d1-  0.84801
    1.2     2.00000    -1.34062     1  1  pz   0.99352
    2.2     2.00000    -1.34062     1  1  px   0.99352
    3.2     2.00000    -1.34062     1  1  py   0.99352
    4.2     0.16446     0.02966     1  2  pz   1.04733
    5.2     0.16446     0.02966     1  2  py   1.04733
    6.2     0.16446     0.02966     1  2  px   1.04733
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.362D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.945D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.176D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.390D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.390D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.237D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.209D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.363D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.125D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.876D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.363D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.363D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.348D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.348D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.351D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.218D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.218D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.664D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 2 3 4 6 2 3   5 6 4 1 2 5 6 4 3 1   2 5 3 4 6 1 2 4 6 5   3 1 4 6 3 5 2 1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.279D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.199D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.261D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.261D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.105D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.297D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.214D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.361D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.419D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.140D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.140D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.495D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.495D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.910D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.931D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.198D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.448D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.185D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.185D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.130D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.609D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.609D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   1 2 7 9 610 8 4 5 3   1 210 8 6 5 4 7 9 3   2 1 6 5 410 8 7 9 3
                                        2 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95564959     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.01626292
 ab00000 000     -0.00811025     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.69697078
 ba00000 000      0.00811025      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.69697078
 a0b0000 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.61311782     -0.00000403      0.00000000
 b0a0000 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.61311782      0.00000403     -0.00000000
 a00b000 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000403      0.61311782      0.00000000
 b00a000 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000403     -0.61311782     -0.00000000
 a000b00 000     -0.00000000      0.61311770     -0.00016740      0.00034517     -0.00000000     -0.00000000     -0.00000000
 b000a00 000      0.00000000     -0.61311770      0.00016740     -0.00034517      0.00000000      0.00000000      0.00000000
 a0000b0 000     -0.00000000      0.00000028      0.55185783      0.26714490     -0.00000000     -0.00000000     -0.00000000
 b0000a0 000      0.00000000     -0.00000028     -0.55185783     -0.26714490      0.00000000      0.00000000      0.00000000
 a00000b 000      0.00000000     -0.00038362     -0.26714484      0.55185772      0.00000000      0.00000000      0.00000000
 b00000a 000     -0.00000000      0.00038362      0.26714484     -0.55185772     -0.00000000     -0.00000000     -0.00000000
 0000000 200     -0.16648869     -0.00000000     -0.00000000     -0.00000000     -0.00000265     -0.40324078      0.00699859
 0000000 020     -0.16648869      0.00000000      0.00000000     -0.00000000      0.34921808      0.20161809      0.00699859
 0000000 0ab      0.00000000     -0.34921669      0.00009535     -0.00019660      0.00000000      0.00000000      0.00000000
 0000000 0ba     -0.00000000      0.34921669     -0.00009535      0.00019660     -0.00000000     -0.00000000     -0.00000000
 0000000 002     -0.16648869     -0.00000000     -0.00000000      0.00000000     -0.34921543      0.20162268      0.00699859
 0000000 b0a     -0.00000000      0.00000016      0.31432458      0.15215913     -0.00000000     -0.00000000      0.00000000
 0000000 a0b      0.00000000     -0.00000016     -0.31432458     -0.15215913      0.00000000      0.00000000     -0.00000000
 0000000 ba0      0.00000000     -0.00021850     -0.15215910      0.31432452      0.00000000      0.00000000      0.00000000
 0000000 ab0     -0.00000000      0.00021850      0.15215910     -0.31432452     -0.00000000     -0.00000000     -0.00000000
 0200000 000     -0.01433475     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.15887551
 
 Energy:        -36.47202222    -36.36047571    -36.36047571    -36.36047571    -36.36047571    -36.36047571    -36.31712229
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      1.00000000     -0.00000000
 a00a000 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.99992643      0.00000000     -0.00000000
 a0a0000 000      0.99992643      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a000a00 000     -0.00000000      0.99992625     -0.00060284     -0.00001002     -0.00000000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000     -0.00000003     -0.01666869      0.99978749     -0.00000000      0.00000000      0.00000000
 a00000a 000     -0.00000000      0.00060293      0.99978731      0.01666868     -0.00000000      0.00000000     -0.00000000
 0000000 0aa     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.93884479
 0000000 aa0      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00001231
 0000000 a0a     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00005001
 00a0a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.30798760
 000a00a 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000350
 000a0a0 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00001421
 00000aa 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.15399380
 00a000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000202
 0000aa0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000202
 00a00a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000820
 0000a0a 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000820
 
 Energy:        -36.36037217    -36.36037217    -36.36037217    -36.36037217    -36.36037217    -36.32744453    -36.30137303

 State:                8               9
 aa00000 000      0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000
 a0a0000 000      0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000      0.00000000
 a00000a 000      0.00000000      0.00000000
 0000000 0aa      0.00000167     -0.00005147
 0000000 aa0      0.90388439      0.25381599
 0000000 a0a     -0.25381599      0.90388439
 00a0a00 000      0.00000055     -0.00001689
 000a00a 000     -0.25679286     -0.07210893
 000a0a0 000      0.07210893     -0.25679286
 00000aa 000      0.00000027     -0.00000844
 00a000a 000     -0.14825943     -0.04163211
 0000aa0 000      0.14825943      0.04163211
 00a00a0 000     -0.04163211      0.14825943
 0000a0a 000     -0.04163211      0.14825943
 
 Energy:        -36.30137303    -36.30137303
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        5.16       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.00      1.31      0.05      0.46
 REAL TIME  *         2.86 SEC
 DISK USED  *        37.97 MB (local),      507.39 MB (total)
 SF USED    *        12.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -36.47202222  -0.0
    -36.36047571   6.0
    -36.36047571   6.0
    -36.36047571   6.0
    -36.36047571   6.0
    -36.36047571   6.0
    -36.31712229  -0.0
    -36.36037217   6.0
    -36.36037217   6.0
    -36.36037217   6.0
    -36.36037217   6.0
    -36.36037217   6.0
    -36.32744453  -0.0
    -36.30137303   2.0
    -36.30137303   2.0
    -36.30137303   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.47202222
     2       -36.36047571
     3       -36.36047571
     4       -36.36047571
     5       -36.36047571
     6       -36.36047571
     7       -36.31712229

 Number of blocks in overlap matrix:   177   Smallest eigenvalue:  0.80D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        211374
 Number of doubly external configurations:        211251
 Total number of contracted configurations:       430476
 Total number of uncontracted configurations:    1475772

 Diagonal Coupling coefficients finished.               Storage: 3046178 words, CPU-Time:      0.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  228031 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.47202222     0.00000000    -0.25189522  0.33D-01  0.36D-01     0.70
    1     2     2     1.00000000     0.00000000   -36.36047571    -0.00000000    -0.26043701  0.35D-01  0.40D-01     0.70
    1     3     3     1.00000000     0.00000000   -36.36047571    -0.00000000    -0.26054307  0.35D-01  0.40D-01     0.70
    1     4     4     1.00000000     0.00000000   -36.36047571     0.00000000    -0.26063424  0.35D-01  0.40D-01     0.70
    1     5     5     1.00000000     0.00000000   -36.36047571    -0.00000000    -0.26004477  0.34D-01  0.40D-01     0.70
    1     6     6     1.00000000     0.00000000   -36.36047571     0.00000000    -0.26013245  0.34D-01  0.40D-01     0.70
    1     7     7     1.00000000     0.00000000   -36.31712229     0.00000000    -0.25043652  0.48D-01  0.34D-01     0.70
    2     1     1     1.06004086    -0.25503540   -36.72705762    -0.25503540    -0.00430650  0.13D-02  0.44D-03     4.03
    2     2     2     1.06329759    -0.25502265   -36.61549836    -0.25502265    -0.00440446  0.15D-02  0.49D-03     4.03
    2     3     3     1.06326234    -0.25501727   -36.61549297    -0.25501727    -0.00440719  0.15D-02  0.49D-03     4.03
    2     4     4     1.06336962    -0.25499773   -36.61547344    -0.25499773    -0.00443046  0.15D-02  0.49D-03     4.03
    2     5     5     1.06339737    -0.25498715   -36.61546286    -0.25498715    -0.00444022  0.15D-02  0.49D-03     4.03
    2     6     6     1.06341513    -0.25498489   -36.61546060    -0.25498489    -0.00444379  0.15D-02  0.49D-03     4.03
    2     7     7     1.07240655    -0.25435486   -36.57147715    -0.25435486    -0.00561981  0.28D-02  0.67D-03     4.03
    3     1     1     1.06118248    -0.25950053   -36.73152274    -0.00446513    -0.00017832  0.36D-04  0.22D-04     7.29
    3     2     2     1.06406810    -0.25958687   -36.62006258    -0.00456422    -0.00021916  0.52D-04  0.32D-04     7.29
    3     3     3     1.06407076    -0.25958643   -36.62006214    -0.00456916    -0.00021963  0.52D-04  0.32D-04     7.29
    3     4     4     1.06407615    -0.25958605   -36.62006175    -0.00458831    -0.00021993  0.52D-04  0.32D-04     7.29
    3     5     5     1.06407058    -0.25958580   -36.62006151    -0.00459865    -0.00022016  0.52D-04  0.32D-04     7.29
    3     6     6     1.06407151    -0.25958575   -36.62006146    -0.00460086    -0.00022014  0.53D-04  0.32D-04     7.29
    3     7     7     1.06855076    -0.25978126   -36.57690355    -0.00542640    -0.00027442  0.73D-04  0.39D-04     7.29
    4     1     1     1.06181825    -0.25969927   -36.73172149    -0.00019874    -0.00000928  0.35D-05  0.97D-06    10.44
    4     2     2     1.06508404    -0.25984180   -36.62031751    -0.00025493    -0.00002063  0.17D-04  0.14D-05    10.44
    4     3     3     1.06508400    -0.25984179   -36.62031749    -0.00025536    -0.00002062  0.17D-04  0.14D-05    10.44
    4     4     4     1.06508402    -0.25984149   -36.62031719    -0.00025544    -0.00002085  0.17D-04  0.15D-05    10.44
    4     5     5     1.06508397    -0.25984146   -36.62031717    -0.00025566    -0.00002088  0.17D-04  0.15D-05    10.44
    4     6     6     1.06508478    -0.25984144   -36.62031714    -0.00025568    -0.00002089  0.17D-04  0.15D-05    10.44
    4     7     7     1.06942782    -0.26008038   -36.57720267    -0.00029912    -0.00001464  0.56D-05  0.18D-05    10.44
    5     1     1     1.06204699    -0.25970985   -36.73173206    -0.00001058    -0.00000044  0.19D-06  0.46D-07    13.59
    5     2     2     1.06560461    -0.25986988   -36.62034559    -0.00002808    -0.00000268  0.13D-05  0.25D-06    13.59
    5     3     3     1.06560323    -0.25986987   -36.62034558    -0.00002809    -0.00000269  0.13D-05  0.25D-06    13.59
    5     4     4     1.06560252    -0.25986982   -36.62034552    -0.00002833    -0.00000273  0.14D-05  0.25D-06    13.59
    5     5     5     1.06560248    -0.25986981   -36.62034552    -0.00002835    -0.00000274  0.14D-05  0.25D-06    13.59
    5     6     6     1.06560262    -0.25986981   -36.62034552    -0.00002837    -0.00000274  0.14D-05  0.25D-06    13.59
    5     7     7     1.06956758    -0.26009738   -36.57721967    -0.00001700    -0.00000088  0.63D-06  0.11D-06    13.59
    6     1     1     1.06207033    -0.25971034   -36.73173255    -0.00000049    -0.00000003  0.10D-07  0.37D-08    16.58
    6     2     2     1.06567011    -0.25987347   -36.62034917    -0.00000359    -0.00000033  0.13D-06  0.32D-07    16.58
    6     3     3     1.06567007    -0.25987346   -36.62034917    -0.00000359    -0.00000033  0.13D-06  0.33D-07    16.58
    6     4     4     1.06567005    -0.25987345   -36.62034916    -0.00000364    -0.00000034  0.13D-06  0.34D-07    16.58
    6     5     5     1.06566965    -0.25987345   -36.62034916    -0.00000364    -0.00000034  0.13D-06  0.34D-07    16.58
    6     6     6     1.06566977    -0.25987345   -36.62034916    -0.00000364    -0.00000034  0.13D-06  0.34D-07    16.58
    6     7     7     1.06954624    -0.26009840   -36.57722070    -0.00000102    -0.00000009  0.45D-07  0.18D-07    16.58
    7     1     1     1.06208089    -0.25971037   -36.73173259    -0.00000003    -0.00000000  0.12D-08  0.22D-09    19.57
    7     2     2     1.06569405    -0.25987384   -36.62034955    -0.00000037    -0.00000003  0.27D-07  0.28D-08    19.57
    7     3     3     1.06569401    -0.25987384   -36.62034954    -0.00000037    -0.00000003  0.27D-07  0.28D-08    19.57
    7     4     4     1.06569352    -0.25987384   -36.62034954    -0.00000038    -0.00000003  0.28D-07  0.29D-08    19.57
    7     5     5     1.06569351    -0.25987384   -36.62034954    -0.00000038    -0.00000003  0.28D-07  0.29D-08    19.57
    7     6     6     1.06569346    -0.25987384   -36.62034954    -0.00000038    -0.00000003  0.28D-07  0.29D-08    19.57
    7     7     7     1.06955425    -0.26009852   -36.57722081    -0.00000012    -0.00000001  0.99D-08  0.17D-08    19.57
    8     1     1     1.06208212    -0.25971037   -36.73173259    -0.00000000    -0.00000000  0.27D-09  0.75D-10    22.29
    8     2     2     1.06570543    -0.25987387   -36.62034958    -0.00000004    -0.00000000  0.27D-08  0.48D-09    22.29
    8     3     3     1.06570541    -0.25987387   -36.62034958    -0.00000004    -0.00000001  0.28D-08  0.47D-09    22.29
    8     4     4     1.06570527    -0.25987387   -36.62034958    -0.00000004    -0.00000001  0.29D-08  0.48D-09    22.29
    8     5     5     1.06570527    -0.25987387   -36.62034958    -0.00000004    -0.00000001  0.29D-08  0.49D-09    22.29
    8     6     6     1.06570525    -0.25987387   -36.62034958    -0.00000004    -0.00000001  0.29D-08  0.49D-09    22.29
    8     7     7     1.06955137    -0.26009853   -36.57722083    -0.00000002    -0.00000000  0.30D-09  0.11D-09    22.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.5%
 S   8.2%  29.3%
 P   1.3%  21.1%  11.4%

 Initialization:   1.7%
 Other:           13.5%

 Total CPU:       22.3 seconds
 =====================================



 gnormi=  0.94154678  gnorms=  0.02679627  gnormp=  0.03165695  gnorm=  1.00000000
 ecorri= -0.24452947  ecorrs= -0.00695999  ecorrp= -0.00822092  ecorr= -0.25971037

 gnormi=  0.93834560  gnorms=  0.02719969  gnormp=  0.03445471  gnorm=  1.00000000
 ecorri= -0.24385151  ecorrs= -0.00706863  ecorrp= -0.00895374  ecorr= -0.25987387

 gnormi=  0.93834562  gnorms=  0.02719965  gnormp=  0.03445473  gnorm=  1.00000000
 ecorri= -0.24385151  ecorrs= -0.00706865  ecorrp= -0.00895371  ecorr= -0.25987387

 gnormi=  0.93834574  gnorms=  0.02719953  gnormp=  0.03445473  gnorm=  1.00000000
 ecorri= -0.24385154  ecorrs= -0.00706861  ecorrp= -0.00895372  ecorr= -0.25987387

 gnormi=  0.93834574  gnorms=  0.02719954  gnormp=  0.03445472  gnorm=  1.00000000
 ecorri= -0.24385154  ecorrs= -0.00706859  ecorrp= -0.00895374  ecorr= -0.25987387

 gnormi=  0.93834575  gnorms=  0.02719955  gnormp=  0.03445470  gnorm=  1.00000000
 ecorri= -0.24385155  ecorrs= -0.00706857  ecorrp= -0.00895375  ecorr= -0.25987387

 gnormi=  0.93497145  gnorms=  0.03377707  gnormp=  0.03125148  gnorm=  1.00000000
 ecorri= -0.24318470  ecorrs= -0.00878606  ecorrp= -0.00812777  ecorr= -0.26009853

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0491959   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9459147
 22000000222000           0.9304011  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0494713
 2/000\00222000           0.0000000  -0.0000000   0.0000000   0.8598687   0.0000000   0.0000000  -0.0000000
 2/00000\222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8598687  -0.0000000
 2/0000\0222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.8598687   0.0000000  -0.0000000
 2/00\000222000          -0.0000000   0.8393883   0.1865522   0.0000000  -0.0000000   0.0000000   0.0000000
 2/0\0000222000           0.0000000  -0.1865522   0.8393882  -0.0000000   0.0000000   0.0000000  -0.0000000
 20000000222/\0          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.4366666   0.0000000
 20000000222/0\          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.4366666   0.0000000   0.0000000
 200000002220/\          -0.0000000   0.0000000   0.0000000  -0.4366666   0.0000000   0.0000000   0.0000000
 20000000222200          -0.1454648  -0.3480444  -0.0773521   0.0000000   0.0000000   0.0000000  -0.0102282
 20000000222020          -0.1454648   0.1070333   0.3400914   0.0000000   0.0000000   0.0000000  -0.0102282
 20000000222002          -0.1454647   0.2410111  -0.2627393  -0.0000000   0.0000000   0.0000000  -0.0102282
 20200000222000          -0.0111240   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1707157

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20\00000222000  20.1     0.0117413   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0535125

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965777    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.037683
 2          -0.000000   -0.000000    0.000000    0.000000   -0.206779    0.942510   -0.000000
 3          -0.000000   -0.000000   -0.000000   -0.000000    0.942511    0.206779   -0.000000
 4          -0.000000    0.964927   -0.000000    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.964927   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.964927    0.000000    0.000000    0.000000
 7           0.041350   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.962521

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966510   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.001898
 2          -0.000000    0.964927   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.964927    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.964927   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.964927   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.964927    0.000000
 7           0.001898    0.000000    0.000000    0.000000    0.000000    0.000000    0.963407


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96577671 (fixed)   0.96692845 (relaxed)   0.96650973 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00792783   -0.01861454   -0.17428669
 Singles      0.02868547   -0.08483096   -0.08620406
 Pairs        0.03388883    0.00963591    0.00078038
 Total        1.07050213   -0.09380958   -0.25971037
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.47176245
 Nuclear energy                         0.00000000
 Kinetic energy                        13.85941503
 One electron energy                  -59.78522978
 Two electron energy                   23.05349719
 Virial quotient                       -2.65030901
 Correlation energy                    -0.25997014
 !MRCI STATE 1.1 Energy               -36.731732590445

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.75006104 (Davidson, fixed reference)
 Cluster corrected energies           -36.74982006 (Davidson, relaxed reference)
 Cluster corrected energies           -36.75006104 (Davidson, rotated reference)

 Cluster corrected energies           -36.74702975 (Pople, fixed reference)
 Cluster corrected energies           -36.74682022 (Pople, relaxed reference)
 Cluster corrected energies           -36.74702975 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94251050 (fixed)   0.96609313 (relaxed)   0.96492671 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00779956   -0.01462989   -0.16779531
 Singles      0.02921295   -0.08168568   -0.08312482
 Pairs        0.03700496   -0.00000000   -0.00895375
 Total        1.07401747   -0.09631558   -0.25987387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36047571
 Nuclear energy                         0.00000000
 Kinetic energy                        14.34172159
 One electron energy                  -59.94350509
 Two electron energy                   23.32315551
 Virial quotient                       -2.55341378
 Correlation energy                    -0.25987387
 !MRCI STATE 2.1 Energy               -36.620349581500

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63958479 (Davidson, fixed reference)
 Cluster corrected energies           -36.63891123 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63958479 (Davidson, rotated reference)

 Cluster corrected energies           -36.63643747 (Pople, fixed reference)
 Cluster corrected energies           -36.63584996 (Pople, relaxed reference)
 Cluster corrected energies           -36.63643747 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94251051 (fixed)   0.96609314 (relaxed)   0.96492672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00779955   -0.01462989   -0.16779535
 Singles      0.02921290   -0.08168565   -0.08312482
 Pairs        0.03700498   -0.00000000   -0.00895371
 Total        1.07401744   -0.09631554   -0.25987387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36047571
 Nuclear energy                         0.00000000
 Kinetic energy                        14.34172094
 One electron energy                  -59.94350380
 Two electron energy                   23.32315421
 Virial quotient                       -2.55341390
 Correlation energy                    -0.25987387
 !MRCI STATE 3.1 Energy               -36.620349581480

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63958478 (Davidson, fixed reference)
 Cluster corrected energies           -36.63891122 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63958478 (Davidson, rotated reference)

 Cluster corrected energies           -36.63643747 (Pople, fixed reference)
 Cluster corrected energies           -36.63584996 (Pople, relaxed reference)
 Cluster corrected energies           -36.63643747 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96492680 (fixed)   0.96609321 (relaxed)   0.96492680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00779953   -0.01462989   -0.16779534
 Singles      0.02921276   -0.08168567   -0.08312481
 Pairs        0.03700497   -0.00000000   -0.00895372
 Total        1.07401726   -0.09631556   -0.25987387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36047571
 Nuclear energy                         0.00000000
 Kinetic energy                        14.34171797
 One electron energy                  -59.94349840
 Two electron energy                   23.32314882
 Virial quotient                       -2.55341443
 Correlation energy                    -0.25987387
 !MRCI STATE 4.1 Energy               -36.620349581260

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63958473 (Davidson, fixed reference)
 Cluster corrected energies           -36.63891118 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63958473 (Davidson, rotated reference)

 Cluster corrected energies           -36.63643743 (Pople, fixed reference)
 Cluster corrected energies           -36.63584992 (Pople, relaxed reference)
 Cluster corrected energies           -36.63643743 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96492680 (fixed)   0.96609320 (relaxed)   0.96492680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00779953   -0.01462989   -0.16779533
 Singles      0.02921278   -0.08168569   -0.08312481
 Pairs        0.03700496   -0.00000000   -0.00895374
 Total        1.07401726   -0.09631558   -0.25987387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36047571
 Nuclear energy                         0.00000000
 Kinetic energy                        14.34171796
 One electron energy                  -59.94349834
 Two electron energy                   23.32314876
 Virial quotient                       -2.55341443
 Correlation energy                    -0.25987387
 !MRCI STATE 5.1 Energy               -36.620349581247

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63958473 (Davidson, fixed reference)
 Cluster corrected energies           -36.63891118 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63958473 (Davidson, rotated reference)

 Cluster corrected energies           -36.63643743 (Pople, fixed reference)
 Cluster corrected energies           -36.63584993 (Pople, relaxed reference)
 Cluster corrected energies           -36.63643743 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96492681 (fixed)   0.96609321 (relaxed)   0.96492681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00779953   -0.01462989   -0.16779531
 Singles      0.02921279   -0.08168571   -0.08312481
 Pairs        0.03700494   -0.00000000   -0.00895375
 Total        1.07401725   -0.09631561   -0.25987387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36047571
 Nuclear energy                         0.00000000
 Kinetic energy                        14.34171792
 One electron energy                  -59.94349829
 Two electron energy                   23.32314871
 Virial quotient                       -2.55341444
 Correlation energy                    -0.25987387
 !MRCI STATE 6.1 Energy               -36.620349581239

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63958473 (Davidson, fixed reference)
 Cluster corrected energies           -36.63891118 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63958473 (Davidson, rotated reference)

 Cluster corrected energies           -36.63643742 (Pople, fixed reference)
 Cluster corrected energies           -36.63584992 (Pople, relaxed reference)
 Cluster corrected energies           -36.63643742 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96252074 (fixed)   0.96374292 (relaxed)   0.96340665 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00734694   -0.01798392   -0.01870068
 Singles      0.03639173   -0.08775008   -0.09023150
 Pairs        0.03367063   -0.15411110   -0.15116635
 Total        1.07740931   -0.25984509   -0.26009853
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.31738206
 Nuclear energy                         0.00000000
 Kinetic energy                        13.78158297
 One electron energy                  -58.49176270
 Two electron energy                   21.91454188
 Virial quotient                       -2.65406528
 Correlation energy                    -0.25983877
 !MRCI STATE 7.1 Energy               -36.577220827906

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.59733477 (Davidson, fixed reference)
 Cluster corrected energies           -36.59713944 (Davidson, relaxed reference)
 Cluster corrected energies           -36.59733477 (Davidson, rotated reference)

 Cluster corrected energies           -36.59407799 (Pople, fixed reference)
 Cluster corrected energies           -36.59390675 (Pople, relaxed reference)
 Cluster corrected energies           -36.59407799 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       29.57       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        27.18     25.17      1.31      0.05      0.46
 REAL TIME  *        29.96 SEC
 DISK USED  *        62.38 MB (local),      800.28 MB (total)
 SF USED    *       261.86 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -36.75006104  AU                              
 SETTING HLSDIAG(2)     =       -36.63958479  AU                              
 SETTING HLSDIAG(3)     =       -36.63958478  AU                              
 SETTING HLSDIAG(4)     =       -36.63958473  AU                              
 SETTING HLSDIAG(5)     =       -36.63958473  AU                              
 SETTING HLSDIAG(6)     =       -36.63958473  AU                              
 SETTING HLSDIAG(7)     =       -36.59733477  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.36037217
     2       -36.36037217
     3       -36.36037217
     4       -36.36037217
     5       -36.36037217
     6       -36.32744453
     7       -36.30137303
     8       -36.30137303
     9       -36.30137303

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        315636
 Number of doubly external configurations:        246369
 Total number of contracted configurations:       573843
 Total number of uncontracted configurations:    2175747

 Diagonal Coupling coefficients finished.               Storage: 4337576 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  238180 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.36037217     0.00000000    -0.27026778  0.39D-01  0.41D-01     1.12
    1     2     2     1.00000000     0.00000000   -36.36037217     0.00000000    -0.27028180  0.39D-01  0.41D-01     1.12
    1     3     3     1.00000000     0.00000000   -36.36037217    -0.00000000    -0.27027595  0.39D-01  0.41D-01     1.12
    1     4     4     1.00000000     0.00000000   -36.36037217    -0.00000000    -0.27027956  0.39D-01  0.41D-01     1.12
    1     5     5     1.00000000     0.00000000   -36.36037217    -0.00000000    -0.27025603  0.39D-01  0.41D-01     1.12
    1     6     6     1.00000000     0.00000000   -36.32744453     0.00000000    -0.24570458  0.41D-01  0.33D-01     1.12
    1     7     7     1.00000000     0.00000000   -36.30137303    -0.00000000    -0.24884513  0.35D-01  0.35D-01     1.12
    1     8     8     1.00000000     0.00000000   -36.30137303    -0.00000000    -0.24888118  0.35D-01  0.35D-01     1.12
    1     9     9     1.00000000     0.00000000   -36.30137303     0.00000000    -0.24888819  0.35D-01  0.35D-01     1.12
    2     1     1     1.06585159    -0.25995283   -36.62032500    -0.25995283    -0.00471787  0.15D-02  0.46D-03     7.27
    2     2     2     1.06584809    -0.25994606   -36.62031823    -0.25994606    -0.00472447  0.15D-02  0.46D-03     7.27
    2     3     3     1.06586543    -0.25994240   -36.62031457    -0.25994240    -0.00472555  0.15D-02  0.46D-03     7.27
    2     4     4     1.06584804    -0.25993912   -36.62031130    -0.25993912    -0.00472896  0.15D-02  0.46D-03     7.27
    2     5     5     1.06586303    -0.25993883   -36.62031100    -0.25993883    -0.00472795  0.15D-02  0.46D-03     7.27
    2     6     6     1.06789716    -0.25388986   -36.58133439    -0.25388986    -0.00361495  0.98D-03  0.35D-03     7.27
    2     7     7     1.06077014    -0.24896859   -36.55034161    -0.24896859    -0.00486184  0.19D-02  0.51D-03     7.27
    2     8     8     1.06082675    -0.24894551   -36.55031854    -0.24894551    -0.00489111  0.19D-02  0.52D-03     7.27
    2     9     9     1.06082672    -0.24894395   -36.55031698    -0.24894395    -0.00489262  0.19D-02  0.52D-03     7.27
    3     1     1     1.06692218    -0.26496538   -36.62533755    -0.00501256    -0.00019617  0.59D-04  0.23D-04    13.42
    3     2     2     1.06692354    -0.26496521   -36.62533738    -0.00501915    -0.00019612  0.59D-04  0.23D-04    13.42
    3     3     3     1.06691806    -0.26496498   -36.62533715    -0.00502258    -0.00019660  0.59D-04  0.23D-04    13.42
    3     4     4     1.06691704    -0.26496478   -36.62533695    -0.00502565    -0.00019658  0.60D-04  0.23D-04    13.42
    3     5     5     1.06691481    -0.26496448   -36.62533665    -0.00502565    -0.00019674  0.60D-04  0.23D-04    13.42
    3     6     6     1.06874999    -0.25785333   -36.58529786    -0.00396347    -0.00013340  0.31D-04  0.15D-04    13.42
    3     7     7     1.05868611    -0.25377343   -36.55514646    -0.00480484    -0.00022424  0.51D-04  0.33D-04    13.42
    3     8     8     1.05868787    -0.25376981   -36.55514284    -0.00482430    -0.00022694  0.52D-04  0.33D-04    13.42
    3     9     9     1.05868764    -0.25376975   -36.55514278    -0.00482580    -0.00022701  0.52D-04  0.33D-04    13.42
    4     1     1     1.06819160    -0.26521020   -36.62558238    -0.00024482    -0.00001999  0.18D-04  0.12D-05    19.34
    4     2     2     1.06819129    -0.26521007   -36.62558224    -0.00024486    -0.00002003  0.18D-04  0.12D-05    19.34
    4     3     3     1.06819129    -0.26521003   -36.62558220    -0.00024505    -0.00002006  0.18D-04  0.12D-05    19.34
    4     4     4     1.06819135    -0.26520988   -36.62558205    -0.00024510    -0.00001992  0.18D-04  0.12D-05    19.34
    4     5     5     1.06819078    -0.26520965   -36.62558182    -0.00024517    -0.00001996  0.18D-04  0.12D-05    19.34
    4     6     6     1.06968462    -0.25800719   -36.58545172    -0.00015386    -0.00000694  0.36D-05  0.62D-06    19.34
    4     7     7     1.05919458    -0.25401542   -36.55538845    -0.00024199    -0.00001144  0.37D-05  0.16D-05    19.34
    4     8     8     1.05919466    -0.25401432   -36.55538735    -0.00024451    -0.00001160  0.37D-05  0.16D-05    19.34
    4     9     9     1.05919459    -0.25401432   -36.55538735    -0.00024457    -0.00001161  0.37D-05  0.16D-05    19.34
    5     1     1     1.06896667    -0.26523831   -36.62561049    -0.00002811    -0.00000236  0.90D-06  0.26D-06    25.27
    5     2     2     1.06896666    -0.26523823   -36.62561041    -0.00002817    -0.00000236  0.90D-06  0.26D-06    25.27
    5     3     3     1.06896655    -0.26523823   -36.62561040    -0.00002820    -0.00000236  0.90D-06  0.26D-06    25.27
    5     4     4     1.06896620    -0.26523789   -36.62561006    -0.00002802    -0.00000235  0.90D-06  0.26D-06    25.27
    5     5     5     1.06896603    -0.26523772   -36.62560989    -0.00002807    -0.00000235  0.90D-06  0.26D-06    25.27
    5     6     6     1.06990172    -0.25801487   -36.58545941    -0.00000769    -0.00000033  0.13D-06  0.34D-07    25.27
    5     7     7     1.05923430    -0.25402824   -36.55540127    -0.00001282    -0.00000051  0.24D-06  0.62D-07    25.27
    5     8     8     1.05923422    -0.25402731   -36.55540034    -0.00001299    -0.00000052  0.25D-06  0.63D-07    25.27
    5     9     9     1.05923423    -0.25402731   -36.55540034    -0.00001299    -0.00000052  0.25D-06  0.63D-07    25.27
    6     1     1     1.06903579    -0.26524139   -36.62561357    -0.00000308    -0.00000021  0.10D-06  0.15D-07    30.94
    6     2     2     1.06903559    -0.26524131   -36.62561348    -0.00000308    -0.00000021  0.10D-06  0.15D-07    30.94
    6     3     3     1.06903553    -0.26524131   -36.62561348    -0.00000308    -0.00000021  0.10D-06  0.15D-07    30.94
    6     4     4     1.06903532    -0.26524096   -36.62561314    -0.00000307    -0.00000021  0.10D-06  0.15D-07    30.94
    6     5     5     1.06903496    -0.26524080   -36.62561297    -0.00000307    -0.00000021  0.10D-06  0.15D-07    30.94
    6     6     6     1.06992504    -0.25801526   -36.58545979    -0.00000038    -0.00000003  0.28D-07  0.20D-08    30.94
    6     7     7     1.05922397    -0.25402879   -36.55540182    -0.00000055    -0.00000003  0.83D-08  0.40D-08    30.94
    6     8     8     1.05922362    -0.25402787   -36.55540090    -0.00000056    -0.00000003  0.84D-08  0.40D-08    30.94
    6     9     9     1.05922363    -0.25402787   -36.55540090    -0.00000056    -0.00000003  0.84D-08  0.40D-08    30.94
    7     1     1     1.06907284    -0.26524163   -36.62561380    -0.00000024    -0.00000002  0.15D-07  0.12D-08    36.62
    7     2     2     1.06907273    -0.26524155   -36.62561372    -0.00000024    -0.00000002  0.15D-07  0.12D-08    36.62
    7     3     3     1.06907272    -0.26524155   -36.62561372    -0.00000024    -0.00000002  0.15D-07  0.12D-08    36.62
    7     4     4     1.06907218    -0.26524120   -36.62561338    -0.00000024    -0.00000002  0.15D-07  0.12D-08    36.62
    7     5     5     1.06907184    -0.26524103   -36.62561321    -0.00000024    -0.00000002  0.15D-07  0.12D-08    36.62
    7     6     6     1.06994152    -0.25801530   -36.58545983    -0.00000005    -0.00000000  0.21D-08  0.23D-09    36.62
    7     7     7     1.05922439    -0.25402882   -36.55540185    -0.00000003    -0.00000000  0.17D-08  0.20D-09    36.62
    7     8     8     1.05922407    -0.25402790   -36.55540093    -0.00000003    -0.00000000  0.18D-08  0.20D-09    36.62
    7     9     9     1.05922407    -0.25402790   -36.55540093    -0.00000003    -0.00000000  0.18D-08  0.20D-09    36.62
    8     1     1     1.06908788    -0.26524165   -36.62561383    -0.00000002    -0.00000000  0.13D-08  0.26D-09    40.62
    8     2     2     1.06908777    -0.26524157   -36.62561375    -0.00000002    -0.00000000  0.13D-08  0.26D-09    40.62
    8     3     3     1.06908776    -0.26524157   -36.62561375    -0.00000002    -0.00000000  0.13D-08  0.26D-09    40.62
    8     4     4     1.06908721    -0.26524122   -36.62561340    -0.00000002    -0.00000000  0.13D-08  0.26D-09    40.62
    8     5     5     1.06908692    -0.26524106   -36.62561323    -0.00000002    -0.00000000  0.13D-08  0.26D-09    40.62
    8     6     6     1.06994152    -0.25801530   -36.58545983    -0.00000000    -0.00000000  0.21D-08  0.23D-09    40.62
    8     7     7     1.05922439    -0.25402882   -36.55540185    -0.00000000    -0.00000000  0.17D-08  0.20D-09    40.62
    8     8     8     1.05922406    -0.25402790   -36.55540093    -0.00000000    -0.00000000  0.18D-08  0.20D-09    40.62
    8     9     9     1.05922407    -0.25402790   -36.55540093    -0.00000000    -0.00000000  0.18D-08  0.20D-09    40.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.2%
 S   7.8%  33.6%
 P   1.0%  21.6%   9.8%

 Initialization:   1.5%
 Other:           11.5%

 Total CPU:       40.6 seconds
 =====================================



 gnormi=  0.93537680  gnorms=  0.02985955  gnormp=  0.03476365  gnorm=  1.00000000
 ecorri= -0.24810089  ecorrs= -0.00791944  ecorrp= -0.00922132  ecorr= -0.26524165

 gnormi=  0.93537690  gnorms=  0.02985944  gnormp=  0.03476367  gnorm=  1.00000000
 ecorri= -0.24810084  ecorrs= -0.00791941  ecorrp= -0.00922132  ecorr= -0.26524157

 gnormi=  0.93537690  gnorms=  0.02985944  gnormp=  0.03476366  gnorm=  1.00000000
 ecorri= -0.24810084  ecorrs= -0.00791941  ecorrp= -0.00922133  ecorr= -0.26524157

 gnormi=  0.93537739  gnorms=  0.02985879  gnormp=  0.03476382  gnorm=  1.00000000
 ecorri= -0.24810064  ecorrs= -0.00791924  ecorrp= -0.00922134  ecorr= -0.26524122

 gnormi=  0.93537764  gnorms=  0.02985851  gnormp=  0.03476385  gnorm=  1.00000000
 ecorri= -0.24810055  ecorrs= -0.00791916  ecorrp= -0.00922134  ecorr= -0.26524106

 gnormi=  0.93463052  gnorms=  0.03482527  gnormp=  0.03054421  gnorm=  1.00000000
 ecorri= -0.24114897  ecorrs= -0.00898720  ecorrp= -0.00787912  ecorr= -0.25801530

 gnormi=  0.94408702  gnorms=  0.02391180  gnormp=  0.03200119  gnorm=  1.00000000
 ecorri= -0.23982531  ecorrs= -0.00607433  ecorrp= -0.00812918  ecorr= -0.25402882

 gnormi=  0.94408731  gnorms=  0.02391148  gnormp=  0.03200120  gnorm=  1.00000000
 ecorri= -0.23982452  ecorrs= -0.00607421  ecorrp= -0.00812917  ecorr= -0.25402790

 gnormi=  0.94408731  gnorms=  0.02391149  gnormp=  0.03200120  gnorm=  1.00000000
 ecorri= -0.23982452  ecorrs= -0.00607421  ecorrp= -0.00812917  ecorr= -0.25402790

 Wavefunction saved on  5301.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00/000222000           0.0000000   0.0000000  -0.0000000  -0.0000002   0.9641451   0.0000041   0.0000000  -0.0000000
                          0.0000000
 2/0/0000222000          -0.0000000   0.0000000   0.0000000   0.9641450   0.0000002  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/00000/222000           0.0000000  -0.0000000   0.9641447  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000019
                         -0.0000000
 2/0000/0222000          -0.0000000   0.9641447   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000019
 2/000/00222000           0.9641446   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000000
 2//00000222000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000037   0.9635942  -0.0000000   0.0000000
                          0.0000000
 200000002220//           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9050305  -0.0000000
                          0.0000000
 20000000222/0/          -0.0000000   0.0000015   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.9050304
 20000000222//0          -0.0000000  -0.0000000   0.0000015   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9050304
                         -0.0000000
 200/0/00222000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.3089067  -0.0000000
                          0.0000000
 2000/00/222000           0.0000000  -0.0000000  -0.0000045   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2675218
                          0.0000000
 2000/0/0222000           0.0000000  -0.0000045  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.2675218
 20000//0222000           0.0000000   0.0000000   0.0000002  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1544545
                          0.0000000
 20000/0/222000          -0.0000000   0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.1544545
 200/00/0222000          -0.0000000  -0.0000060   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.1544542
 200/000/222000           0.0000000  -0.0000000   0.0000060   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1544542
                         -0.0000000
 200000//222000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.1544534  -0.0000000
                         -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/00000222000  20.1    -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001  -0.0642839   0.0000000  -0.0000000
                         -0.0000000
 20/00000222000  14.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0502267  -0.0000000   0.0000000
                          0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.964079    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.000000   -0.000000    0.964079    0.000000    0.000000   -0.000000    0.000002    0.000000
 3           0.000000   -0.000000    0.964079    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000002
 4           0.964080    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.964080   -0.000004   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000004    0.963594    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.968607   -0.000000    0.000000
 8          -0.000000    0.000000   -0.000002   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.968608
 9          -0.000000    0.000000   -0.000000   -0.000002    0.000000    0.000000    0.000000    0.968608   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964079    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.964079    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.964079    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.964080    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.964080    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.963594    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.968607    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.968608   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.968608


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96407932 (fixed)   0.96414475 (relaxed)   0.96407932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00637783   -0.01578486   -0.17030275
 Singles      0.03212608   -0.08370351   -0.08571758
 Pairs        0.03740243    0.00000000   -0.00922132
 Total        1.07590635   -0.09948837   -0.26524165
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36037217
 Nuclear energy                         0.00000000
 Kinetic energy                        14.46069206
 One electron energy                  -60.24383897
 Two electron energy                   23.61822514
 Virial quotient                       -2.53277047
 Correlation energy                    -0.26524165
 !MRCI STATE 1.1 Energy               -36.625613826292

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.64574735 (Davidson, fixed reference)
 Cluster corrected energies           -36.64570862 (Davidson, relaxed reference)
 Cluster corrected energies           -36.64574735 (Davidson, rotated reference)

 Cluster corrected energies           -36.64129140 (Pople, fixed reference)
 Cluster corrected energies           -36.64126012 (Pople, relaxed reference)
 Cluster corrected energies           -36.64129140 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96407938 (fixed)   0.96414482 (relaxed)   0.96407938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00637780   -0.01578482   -0.17030274
 Singles      0.03212595   -0.08370346   -0.08571751
 Pairs        0.03740244   -0.00000000   -0.00922132
 Total        1.07590620   -0.09948828   -0.26524157
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36037217
 Nuclear energy                         0.00000000
 Kinetic energy                        14.46069228
 One electron energy                  -60.24383948
 Two electron energy                   23.61822574
 Virial quotient                       -2.53277043
 Correlation energy                    -0.26524157
 !MRCI STATE 2.1 Energy               -36.625613745931

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.64574723 (Davidson, fixed reference)
 Cluster corrected energies           -36.64570849 (Davidson, relaxed reference)
 Cluster corrected energies           -36.64574723 (Davidson, rotated reference)

 Cluster corrected energies           -36.64129128 (Pople, fixed reference)
 Cluster corrected energies           -36.64126001 (Pople, relaxed reference)
 Cluster corrected energies           -36.64129128 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96407939 (fixed)   0.96414482 (relaxed)   0.96407939 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00637780   -0.01578482   -0.17030249
 Singles      0.03212595   -0.08370347   -0.08571752
 Pairs        0.03740244   -0.00000026   -0.00922156
 Total        1.07590619   -0.09948855   -0.26524157
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36037217
 Nuclear energy                         0.00000000
 Kinetic energy                        14.46069215
 One electron energy                  -60.24383934
 Two electron energy                   23.61822559
 Virial quotient                       -2.53277045
 Correlation energy                    -0.26524157
 !MRCI STATE 3.1 Energy               -36.625613745926

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.64574722 (Davidson, fixed reference)
 Cluster corrected energies           -36.64570849 (Davidson, relaxed reference)
 Cluster corrected energies           -36.64574722 (Davidson, rotated reference)

 Cluster corrected energies           -36.64129128 (Pople, fixed reference)
 Cluster corrected energies           -36.64126001 (Pople, relaxed reference)
 Cluster corrected energies           -36.64129128 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96407967 (fixed)   0.96414511 (relaxed)   0.96407967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00637772   -0.01578483   -0.17030311
 Singles      0.03212524   -0.08370280   -0.08571678
 Pairs        0.03740259   -0.00000000   -0.00922134
 Total        1.07590555   -0.09948763   -0.26524122
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36037217
 Nuclear energy                         0.00000000
 Kinetic energy                        14.46069243
 One electron energy                  -60.24384042
 Two electron energy                   23.61822703
 Virial quotient                       -2.53277038
 Correlation energy                    -0.26524122
 !MRCI STATE 4.1 Energy               -36.625613397007

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.64574668 (Davidson, fixed reference)
 Cluster corrected energies           -36.64570794 (Davidson, relaxed reference)
 Cluster corrected energies           -36.64574668 (Davidson, rotated reference)

 Cluster corrected energies           -36.64129077 (Pople, fixed reference)
 Cluster corrected energies           -36.64125950 (Pople, relaxed reference)
 Cluster corrected energies           -36.64129077 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96407980 (fixed)   0.96414524 (relaxed)   0.96407980 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00637772   -0.01578481   -0.17030316
 Singles      0.03212493   -0.08370262   -0.08571655
 Pairs        0.03740261   -0.00000000   -0.00922134
 Total        1.07590527   -0.09948744   -0.26524106
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36037217
 Nuclear energy                         0.00000000
 Kinetic energy                        14.46069198
 One electron energy                  -60.24384010
 Two electron energy                   23.61822687
 Virial quotient                       -2.53277044
 Correlation energy                    -0.26524106
 !MRCI STATE 5.1 Energy               -36.625613229022

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.64574642 (Davidson, fixed reference)
 Cluster corrected energies           -36.64570769 (Davidson, relaxed reference)
 Cluster corrected energies           -36.64574642 (Davidson, rotated reference)

 Cluster corrected energies           -36.64129053 (Pople, fixed reference)
 Cluster corrected energies           -36.64125926 (Pople, relaxed reference)
 Cluster corrected energies           -36.64129053 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96359418 (fixed)   0.96359418 (relaxed)   0.96359418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00658772   -0.01787270   -0.16027934
 Singles      0.03750647   -0.08709579   -0.08985684
 Pairs        0.03289581    0.00000000   -0.00787912
 Total        1.07698999   -0.10496849   -0.25801530
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.32744453
 Nuclear energy                         0.00000000
 Kinetic energy                        13.76349180
 One electron energy                  -58.43611921
 Two electron energy                   21.85065937
 Virial quotient                       -2.65815248
 Correlation energy                    -0.25801530
 !MRCI STATE 6.1 Energy               -36.585459834080

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.60532443 (Davidson, fixed reference)
 Cluster corrected energies           -36.60532443 (Davidson, relaxed reference)
 Cluster corrected energies           -36.60532443 (Davidson, rotated reference)

 Cluster corrected energies           -36.60093617 (Pople, fixed reference)
 Cluster corrected energies           -36.60093617 (Pople, relaxed reference)
 Cluster corrected energies           -36.60093617 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96860746 (fixed)   0.96868952 (relaxed)   0.96860746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00627436   -0.01640839   -0.16322158
 Singles      0.02548687   -0.08164965   -0.08267806
 Pairs        0.03410912   -0.00000000   -0.00812918
 Total        1.06587035   -0.09805803   -0.25402882
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30137303
 Nuclear energy                         0.00000000
 Kinetic energy                        14.02497151
 One electron energy                  -59.11168392
 Two electron energy                   22.55628207
 Virial quotient                       -2.60645106
 Correlation energy                    -0.25402882
 !MRCI STATE 7.1 Energy               -36.555401849854

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.57213482 (Davidson, fixed reference)
 Cluster corrected energies           -36.57208895 (Davidson, relaxed reference)
 Cluster corrected energies           -36.57213482 (Davidson, rotated reference)

 Cluster corrected energies           -36.56836771 (Pople, fixed reference)
 Cluster corrected energies           -36.56833102 (Pople, relaxed reference)
 Cluster corrected energies           -36.56836771 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96860792 (fixed)   0.96869000 (relaxed)   0.96860792 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00627372   -0.01640769   -0.01688893
 Singles      0.02548652   -0.08164949   -0.08267787
 Pairs        0.03410910   -0.15597072   -0.15446110
 Total        1.06586934   -0.25402790   -0.25402790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30137303
 Nuclear energy                         0.00000000
 Kinetic energy                        14.02495953
 One electron energy                  -59.11167060
 Two electron energy                   22.55626967
 Virial quotient                       -2.60645322
 Correlation energy                    -0.25402790
 !MRCI STATE 8.1 Energy               -36.555400928055

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.57213358 (Davidson, fixed reference)
 Cluster corrected energies           -36.57208770 (Davidson, relaxed reference)
 Cluster corrected energies           -36.57213358 (Davidson, rotated reference)

 Cluster corrected energies           -36.56836654 (Pople, fixed reference)
 Cluster corrected energies           -36.56832984 (Pople, relaxed reference)
 Cluster corrected energies           -36.56836654 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96860792 (fixed)   0.96868999 (relaxed)   0.96860792 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00627372   -0.01640769   -0.16322086
 Singles      0.02548652   -0.08164949   -0.08267787
 Pairs        0.03410910    0.00000000   -0.00812917
 Total        1.06586934   -0.09805718   -0.25402790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30137303
 Nuclear energy                         0.00000000
 Kinetic energy                        14.02495952
 One electron energy                  -59.11167061
 Two electron energy                   22.55626968
 Virial quotient                       -2.60645322
 Correlation energy                    -0.25402790
 !MRCI STATE 9.1 Energy               -36.555400928053

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.57213358 (Davidson, fixed reference)
 Cluster corrected energies           -36.57208770 (Davidson, relaxed reference)
 Cluster corrected energies           -36.57213358 (Davidson, rotated reference)

 Cluster corrected energies           -36.56836654 (Pople, fixed reference)
 Cluster corrected energies           -36.56832984 (Pople, relaxed reference)
 Cluster corrected energies           -36.56836654 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       81.93       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        76.19     49.00     25.17      1.31      0.05      0.46
 REAL TIME  *        82.04 SEC
 DISK USED  *       114.74 MB (local),        1.40 GB (total)
 SF USED    *       442.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -36.64574735  AU                              
 SETTING HLSDIAG(9)     =       -36.64574723  AU                              
 SETTING HLSDIAG(10)    =       -36.64574722  AU                              
 SETTING HLSDIAG(11)    =       -36.64574668  AU                              
 SETTING HLSDIAG(12)    =       -36.64574642  AU                              
 SETTING HLSDIAG(13)    =       -36.60532443  AU                              
 SETTING HLSDIAG(14)    =       -36.57213482  AU                              
 SETTING HLSDIAG(15)    =       -36.57213358  AU                              
 SETTING HLSDIAG(16)    =       -36.57213358  AU                              


        HLSDIAG
    -36.75006104
    -36.63958479
    -36.63958478
    -36.63958473
    -36.63958473
    -36.63958473
    -36.59733477
    -36.64574735
    -36.64574723
    -36.64574722
    -36.64574668
    -36.64574642
    -36.60532443
    -36.57213482
    -36.57213358
    -36.57213358
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies: -36.731733 -36.620350 -36.620350 -36.620350 -36.620350 -36.620350 -36.577221
 Replaced energies: -36.750061 -36.639585 -36.639585 -36.639585 -36.639585 -36.639585 -36.597335

 Wavefunction restored from record  5301.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies: -36.625614 -36.625614 -36.625614 -36.625613 -36.625613 -36.585460 -36.555402 -36.555401 -36.555401
 Replaced energies: -36.645747 -36.645747 -36.645747 -36.645747 -36.645746 -36.605324 -36.572135 -36.572134 -36.572134



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -36.75006104

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   24246.73       0.00       0.00       0.00       0.00       0.00      -0.00       5.12      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       3.95

    3   3.1  0.0  0.0       0.00       0.00   24246.74       0.00       0.00       0.00       0.00       0.00      -1.61      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.63

    4   4.1  0.0  0.0       0.00       0.00       0.00   24246.75       0.00       0.00       0.00      -0.00       0.00      -2.68
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -2.68      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   24246.75       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       2.68      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   24246.75       0.00       2.68       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   33519.54      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       2.68      -0.00   22894.21       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -2.68       0.00       0.00       0.00       0.00      -0.00

    9   2.1  1.0  1.0      -0.00       5.12      -1.61       0.00      -0.00       0.00       0.00       0.00   22894.24       0.00
                            0.00      -0.00       0.00       2.68       0.00       0.00      -0.00      -0.00      -0.00      -3.53

   10   3.1  1.0  1.0      -0.00      -0.00      -0.00      -2.68       0.00       0.00       0.00       0.00       0.00   22894.24
                            0.00      -3.95      -3.63       0.00      -0.00      -0.00      -0.00       0.00       3.53      -0.00

   11   4.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       2.68       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       2.68      -0.00      -7.06       0.00      -0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -4.65      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       4.65      -0.00      -0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00      -9.87       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -9.87       0.00       0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0      -0.00      -0.00       0.00      -9.87       0.00       0.00       0.00       0.00       0.00       0.00
                           10.18       7.70      -8.40      -0.00       0.00      -0.00      -1.49       0.00      -0.94       0.00

   16   9.1  1.0  1.0     -10.18      -3.42     -10.87      -0.00       0.00       0.00       1.49       0.00       0.00       0.00
                            0.00      -0.00      -0.00       9.87      -0.00      -0.00      -0.00       0.00       0.00       0.94

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -2.50
                           -0.00       1.65      -7.41       0.00      -0.00      -0.00      -0.00       0.00      -2.50       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       3.79      -0.00       2.50      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.50      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -3.79      -0.00      -0.00      -0.00      -0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.50       0.00
                            0.00      -0.00       0.00       7.58       0.00      -0.00      -0.00      -0.00       0.00       2.50

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.32       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       4.32

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.66
                          -14.40      15.73       3.50       0.00       0.00       0.00       2.10       0.00      -0.66      -0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.66       0.00       0.00
                            0.00      -0.00       0.00      -0.00      13.95      -0.00      -0.00      -0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     -13.95       0.00       0.66      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00       2.68      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       2.68      -0.00      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00       5.12      -1.61       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -2.68      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      -0.00      -0.00      -2.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.95       3.63      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       2.68       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -2.68       0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -4.65      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -4.65       0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00      -9.87       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       9.87      -0.00      -0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0      -0.00      -0.00       0.00      -9.87       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.18      -7.70       8.40       0.00      -0.00       0.00       1.49      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0     -10.18      -3.42     -10.87      -0.00       0.00       0.00       1.49       0.00       0.00       0.00
                           -0.00       0.00       0.00      -9.87       0.00       0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00     -10.18       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -10.18      -0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      -3.42       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -7.70       0.00      -1.65       0.00      -0.00       0.00

    3   3.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00     -10.87       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       8.40       0.00       7.41       0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -9.87      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -9.87      -0.00       0.00       0.00      -7.58

    5   5.1  0.0  0.0       2.68      -4.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       9.87      -0.00       0.00       0.00      -0.00       3.79      -0.00

    6   6.1  0.0  0.0       0.00      -0.00      -0.00      -9.87       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.68      -4.65       0.00      -0.00       0.00       0.00       0.00      -3.79       0.00       0.00

    7   7.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       1.49       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       1.49       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.50       0.00
                            7.06       0.00       0.00       0.00      -0.00      -0.00      -0.00      -2.50       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.50
                           -0.00       0.00      -0.00       0.00       0.94      -0.00       2.50       0.00       0.00      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.50       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.94      -0.00      -0.00       0.00      -2.50

   11   4.1  1.0  1.0   22894.36       0.00       0.00       0.00       0.00       0.00      -0.00       2.50      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       2.50       0.00

   12   5.1  1.0  1.0       0.00   22894.41       0.00       0.00       0.00       0.00       0.00      -4.32      -0.00       0.00
                           -0.00      -0.00       0.00       1.08      -0.00      -0.00      -0.00      -0.00       4.32      -0.00

   13   6.1  1.0  1.0       0.00       0.00   31766.01       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       2.06       0.00      -0.00      -0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   39050.29       0.00       0.00      -0.00       0.00      -0.66      -0.00
                            0.00      -1.08      -2.06       0.00       0.00       0.00       0.00      -0.66      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   39050.56       0.00      -0.66      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      24.48      -0.00      -0.00       0.00      -0.66

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   39050.56       0.00       0.00      -0.00      -0.66
                           -0.00       0.00       0.00      -0.00     -24.48       0.00       0.66      -0.00      -0.00       0.00

   17   1.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.66       0.00   22894.21       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.66       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       2.50      -4.32      -0.00       0.00      -0.00       0.00       0.00   22894.24       0.00       0.00
                           -0.00       0.00      -0.00       0.66       0.00       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      -0.00      -0.00      -0.00      -0.66      -0.00      -0.00       0.00       0.00   22894.24       0.00
                           -2.50      -4.32      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.66       0.00       0.00       0.00   22894.36
                           -0.00       0.00       0.00      -0.00       0.66      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.38      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       1.45       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       1.45      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00      -0.00      -0.00       0.00      17.31      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     -17.31      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00       0.00      -0.00     -17.31      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.66       0.38      -1.45       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.66       0.38      -1.45       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      17.31      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -2.50      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.50       0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       2.50
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.50      -0.00       0.00      -0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.50      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.50

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.50       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.50      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.32       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.32      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.66       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.66      -0.00       0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.66       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.66

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.66
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.66      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      14.40      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       5.12      -0.00      -0.00      -0.00
                           -0.00      -0.00     -15.73       0.00      -0.00       0.00      -0.00      -3.95       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.61      -0.00      -0.00       0.00
                           -0.00      -0.00      -3.50      -0.00      -0.00       0.00       0.00      -3.63       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -2.68       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       2.68       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.68      -4.65
                            0.00       0.00      -0.00     -13.95      -0.00      -2.68       0.00      -0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       2.68       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      13.95       0.00       0.00      -0.00       2.68       4.65

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -2.10       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0      -0.00       0.00       0.00       0.66      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.66       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       4.32       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.32      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.66       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.66      -0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.38       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.38      -0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -1.45       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.45      -0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00     -17.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -17.31       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00      17.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.38      -1.45       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.38       1.45      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      17.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.50       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -2.50       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.50       4.32
                            0.00       0.00       0.00       0.00       0.00       2.50       0.00       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.50       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -2.50      -4.32

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       2.50      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.50       0.00       0.00

   21   5.1  1.0  0.0   22894.41       0.00       0.00       0.00       0.00       0.00      -4.32      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       4.32      -0.00       0.00

   22   6.1  1.0  0.0       0.00   31766.01       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00   39050.29       0.00       0.00      -0.00       0.00      -0.66      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.66      -0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   39050.56       0.00      -0.66      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.66       0.38

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   39050.56       0.00       0.00      -0.00      -0.66      -0.38
                           -0.00      -0.00      -0.00      -0.00       0.00       0.66      -0.00      -0.00       0.00       0.00

   26   1.1  1.0 -1.0       0.00      -0.00      -0.00      -0.66       0.00   22894.21       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.66      -0.00      -0.00       0.00      -7.06      -0.00

   27   2.1  1.0 -1.0      -4.32      -0.00       0.00      -0.00       0.00       0.00   22894.24       0.00       0.00       0.00
                            0.00      -0.00       0.66       0.00       0.00       0.00       0.00       3.53       0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      -0.00      -0.66      -0.00      -0.00       0.00       0.00   22894.24       0.00       0.00
                           -4.32      -0.00       0.00      -0.00       0.00      -0.00      -3.53       0.00      -0.00      -0.00

   29   4.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.66       0.00       0.00       0.00   22894.36       0.00
                            0.00       0.00      -0.00       0.66      -0.00       7.06      -0.00       0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.38       0.00       0.00       0.00       0.00   22894.41
                           -0.00       0.00      -0.00      -0.38      -0.00       0.00       0.00       0.00       0.00       0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       1.45       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.45      -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   7.1  1.0 -1.0      -0.00      -0.00       0.00      17.31      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -17.31       0.00       0.00      -0.00      -0.00       1.08

   33   8.1  1.0 -1.0       0.00      -0.00     -17.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.38      -1.45       0.00       0.00       0.00      -0.00       0.94      -0.00       0.00      -0.00

   34   9.1  1.0 -1.0       0.38      -1.45       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      17.31      -0.00       0.00      -0.00      -0.00      -0.94       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0       0.00      -0.00      -0.00     -10.18
                           -0.00       0.00      10.18       0.00

    2   2.1  0.0  0.0      -0.00       0.00      -0.00      -3.42
                           -0.00       0.00       7.70      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00     -10.87
                           -0.00      -0.00      -8.40      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00      -9.87      -0.00
                           -0.00       0.00      -0.00       9.87

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -9.87       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -9.87       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00       1.49
                            0.00       0.00      -1.49      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.66      -0.00
                            0.00      -0.00       0.00      -0.66

   18   2.1  1.0  0.0       0.00      -0.00       0.00      -0.00
                           -0.00       0.66       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.66       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   20   4.1  1.0  0.0      -0.00       0.00       0.00       0.66
                            0.00      -0.00       0.66      -0.00

   21   5.1  1.0  0.0       0.00      -0.00       0.00       0.38
                            0.00      -0.00      -0.38      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00      -1.45
                           -0.00      -0.00       1.45      -0.00

   23   7.1  1.0  0.0       0.00       0.00     -17.31       0.00
                            0.00      -0.00      -0.00     -17.31

   24   8.1  1.0  0.0       0.00      17.31      -0.00       0.00
                           -1.45       0.00      -0.00       0.00

   25   9.1  1.0  0.0       1.45      -0.00      -0.00      -0.00
                            0.00      17.31      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.94       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.94

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -1.08       0.00       0.00

   31   6.1  1.0 -1.0   31766.01       0.00       0.00       0.00
                           -0.00      -2.06      -0.00       0.00

   32   7.1  1.0 -1.0       0.00   39050.29       0.00       0.00
                            2.06      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   39050.56       0.00
                            0.00       0.00      -0.00     -24.48

   34   9.1  1.0 -1.0       0.00       0.00       0.00   39050.56
                           -0.00       0.00      24.48      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -36.75006104 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   24246.735       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   24246.736       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   24246.746       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   24246.746       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   24246.747       0.000       3.793
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   33519.542      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       3.793      -0.000   22894.208
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       7.237      -2.278       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000      -3.794       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       3.793       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000      -6.569      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000     -13.954       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000       0.000     -13.954       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -14.398      -4.838     -15.373      -0.000       0.000       0.000       2.105       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       1.646      -7.406       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       3.793      -0.000       3.531

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -3.793      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       7.585       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.399      15.734       3.497       0.000       0.000       0.000       2.105       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      13.954      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000     -13.954       0.000       0.938

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -3.793       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       3.794       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -5.591      -5.129       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       3.793      -0.000      -7.061

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       6.569      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     -13.954       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.398      10.894     -11.876      -0.000       0.000      -0.000      -2.105       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      13.954      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000     -14.398
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               7.237      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -4.838
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -2.278      -0.000      -0.000       0.000       0.000       0.000       0.000     -15.373
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -3.794       0.000       0.000      -0.000      -0.000     -13.954      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000       3.793      -6.569       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      -0.000      -0.000     -13.954       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       2.105
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          22894.236       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   22894.236       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   22894.356       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   22894.412       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   31766.014       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   39050.292       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   39050.564       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   39050.564
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -3.531       0.000       0.000       0.000       0.000      -0.000       0.000      -0.938

    2    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.937       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -3.531      -6.115      -0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       3.531       0.000       0.000       0.000      -0.000       0.937      -0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       6.115      -0.000       0.000       0.000      -0.000      -0.543      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       2.057      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.937      -0.000       0.000       0.000       0.000       0.000      -0.000     -24.476

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.937       0.543      -2.057       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      24.476      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       7.061       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.531      -0.000       0.000      -0.000       0.000       0.937      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.531      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.937

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       1.079      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       2.058       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -1.079      -2.058       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.937       0.000      -0.000       0.000      -0.000      -0.000       0.000      24.478

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.937      -0.000       0.000       0.000      -0.000     -24.478       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      14.399      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.646       0.000      -0.000       0.000      -0.000      -0.000     -15.734       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.406       0.000       0.000      -0.000      -0.000      -0.000      -3.497      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -7.585      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       3.793      -0.000       0.000       0.000      -0.000     -13.954

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.793       0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -2.105       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -3.531       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                3.531       0.000       0.000      -0.000       0.000      -0.000       0.937       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -3.531      -6.115      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       3.531       0.000       0.000       0.000      -0.000       0.937

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       6.115      -0.000       0.000       0.000      -0.000      -0.543

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       2.057

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.937      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.937       0.543      -2.057       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.938      -0.000      -0.000       0.000       0.000       0.000      24.476      -0.000

    1    1  |1 0>           22894.208       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   22894.236       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   22894.236       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   22894.356       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   22894.412       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31766.014       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   39050.292       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   39050.564
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000       3.531       0.000      -0.000       0.000       0.000       0.938
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000      -0.000      -3.531       6.115       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             -3.531       0.000       0.000       0.000       0.000       0.000       0.937       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-             -0.000       3.531      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000      -6.115      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000      -0.937      -0.000       0.000       0.000       0.000     -24.476
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -0.938      -0.000      -0.000      -0.000      -0.000       0.000      24.476       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000      -0.000      -0.937      -0.543       2.057      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       5.591      -0.000       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       5.129      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -3.794      -0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.793      -0.000       0.000      -0.000      -0.000      -0.000      13.954

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               13.954      -0.000      -0.000       0.000      -3.793      -6.569       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.938       0.000       0.000      -0.000       7.061       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -3.531      -0.000       0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       3.531      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -7.061       0.000      -0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       1.079

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       2.058

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -24.476      -0.000      -0.000       0.000       0.000      -1.079      -2.058       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.937       0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.937      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000      -3.531      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       3.531      -6.115      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       3.531      -0.000       0.000      -0.000      -0.000      -0.000      -0.937
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000      -3.531       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       6.115       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.937       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.938       0.000       0.000       0.000       0.000      -0.000     -24.476
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>           39050.564      -0.000      -0.000       0.000       0.937       0.543      -2.057       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-             -0.000   22894.208       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000   22894.236       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   22894.236       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.937       0.000       0.000       0.000   22894.356       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.543       0.000       0.000       0.000       0.000   22894.412       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -2.057       0.000       0.000       0.000       0.000       0.000   31766.014       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   39050.292
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                              -14.398      -0.000

    2    1  |0 0>               0.000       0.000
                              -10.894       0.000

    3    1  |0 0>               0.000       0.000
                               11.876       0.000

    4    1  |0 0>               0.000       0.000
                                0.000     -13.954

    5    1  |0 0>               0.000       0.000
                               -0.000       0.000

    6    1  |0 0>               0.000       0.000
                                0.000       0.000

    7    1  |0 0>               0.000       0.000
                                2.105       0.000

    1    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    2    1  |1 1>+              0.000       0.000
                                0.937      -0.000

    3    1  |1 1>+              0.000       0.000
                               -0.000      -0.937

    4    1  |1 1>+              0.000       0.000
                                0.000       0.000

    5    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    6    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>+              0.000       0.000
                                0.000       0.000

    8    1  |1 1>+              0.000       0.000
                                0.000      24.478

    9    1  |1 1>+              0.000       0.000
                              -24.478       0.000

    1    1  |1 0>              -0.938       0.000
                               -0.000       0.000

    2    1  |1 0>              -0.000       0.000
                               -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000
                                0.000       0.000

    4    1  |1 0>              -0.000      -0.937
                               -0.000       0.000

    5    1  |1 0>              -0.000      -0.543
                               -0.000       0.000

    6    1  |1 0>               0.000       2.057
                               -0.000       0.000

    7    1  |1 0>              24.476      -0.000
                                0.000       0.000

    8    1  |1 0>               0.000      -0.000
                                0.000      -0.000

    9    1  |1 0>               0.000       0.000
                               -0.000       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          39050.564       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   39050.564
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -36.75006111    -0.00000007       -0.02      0.00000000        0.00      0.0000
    2   -36.64579528     0.10426576    22883.69      0.10426583    22883.70      2.8372
    3   -36.64579528     0.10426576    22883.69      0.10426583    22883.71      2.8372
    4   -36.64579517     0.10426587    22883.71      0.10426595    22883.73      2.8372
    5   -36.64576369     0.10429735    22890.62      0.10429742    22890.64      2.8381
    6   -36.64576360     0.10429743    22890.64      0.10429751    22890.66      2.8381
    7   -36.64576324     0.10429780    22890.72      0.10429787    22890.74      2.8381
    8   -36.64576313     0.10429791    22890.74      0.10429798    22890.76      2.8381
    9   -36.64576313     0.10429791    22890.74      0.10429798    22890.76      2.8381
   10   -36.64571509     0.10434595    22901.29      0.10434602    22901.31      2.8394
   11   -36.64571488     0.10434615    22901.33      0.10434623    22901.35      2.8394
   12   -36.64571488     0.10434616    22901.33      0.10434623    22901.35      2.8394
   13   -36.64571487     0.10434617    22901.34      0.10434625    22901.35      2.8394
   14   -36.64571467     0.10434637    22901.38      0.10434644    22901.40      2.8394
   15   -36.64571467     0.10434637    22901.38      0.10434644    22901.40      2.8394
   16   -36.64571457     0.10434647    22901.40      0.10434654    22901.42      2.8394
   17   -36.63958462     0.11047642    24246.77      0.11047649    24246.79      3.0062
   18   -36.63958461     0.11047643    24246.77      0.11047650    24246.79      3.0062
   19   -36.63958456     0.11047648    24246.78      0.11047655    24246.80      3.0062
   20   -36.63958456     0.11047648    24246.78      0.11047655    24246.80      3.0062
   21   -36.63958456     0.11047648    24246.78      0.11047655    24246.80      3.0062
   22   -36.60532443     0.14473660    31766.01      0.14473668    31766.03      3.9385
   23   -36.60532443     0.14473660    31766.01      0.14473668    31766.03      3.9385
   24   -36.60532443     0.14473660    31766.01      0.14473668    31766.03      3.9385
   25   -36.59733478     0.15272626    33519.54      0.15272633    33519.56      4.1559
   26   -36.57235696     0.17770408    39001.54      0.17770415    39001.55      4.8356
   27   -36.57224572     0.17781532    39025.95      0.17781540    39025.97      4.8386
   28   -36.57224572     0.17781532    39025.95      0.17781540    39025.97      4.8386
   29   -36.57224510     0.17781594    39026.09      0.17781601    39026.10      4.8386
   30   -36.57202276     0.17803828    39074.88      0.17803835    39074.90      4.8447
   31   -36.57202255     0.17803849    39074.93      0.17803856    39074.95      4.8447
   32   -36.57202255     0.17803849    39074.93      0.17803856    39074.95      4.8447
   33   -36.57202193     0.17803911    39075.07      0.17803918    39075.08      4.8447
   34   -36.57202193     0.17803911    39075.07      0.17803918    39075.08      4.8447

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999980 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00152009  0.00668291  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00668308  0.00152005 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000 -0.00685251 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00001837  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00001830 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00685290
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.55064167  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.41084384
                          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.41102779 -0.70506923 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.54989898 -0.00000000  0.00000000 -0.41129487 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000015 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000002 -0.54603554  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

   5    1  |1 1>+          0.00000000  0.00000001 -0.31275810  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00005275  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007684
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00005306 -0.00000000  0.00000000 -0.00007679 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00036916  0.00000000  0.00000000  0.00000000  0.00007662  0.00004473 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.81717610  0.00405640 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.54847578 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.41460773

   3    1  |1 0>          -0.00000000  0.00000001  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                          -0.00000000  0.00000002 -0.54846630  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000030 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000504  0.00000000 -0.00000000  0.81340720  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.62865391 -0.00000000 -0.00000000  0.00001082 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00036919 -0.00000000  0.00000000 -0.00000000  0.00000044 -0.00008874 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00005316  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00005316 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007675

   1    1  |1 1>-         -0.00000000 -0.00000001 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000002  0.55064714 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000015 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.54991397  0.00000000 -0.00000000  0.41128857  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.40402028  0.70909375 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54603022  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40518048

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.31276040 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70362602

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00005275  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00036916 -0.00000000 -0.00000000  0.00000000  0.00007706 -0.00004397 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00005306  0.00000000 -0.00000000  0.00007679  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000188  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000883  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003564  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00685290  0.00000000 -0.00000000 -0.00004520  0.00000000 -0.00000000 -0.00002889  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00004527 -0.00000000  0.00000000  0.00002888 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.71073363 -0.00000001  0.00000000 -0.15116534  0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.57784273  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.57461034  0.00000000  0.00000000  0.44526707
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000057 -0.00000000  0.00000000  0.00000007

   4    1  |1 1>+         -0.40517358 -0.00000000  0.00000001  0.55614193  0.00000000 -0.00000001 -0.47788897 -0.00000000
                           0.00000046 -0.00000000  0.00000002 -0.00000080 -0.00000000  0.00000000 -0.00000002 -0.00000000

   5    1  |1 1>+          0.70363484 -0.00000000 -0.00000000 -0.28494447  0.00000000 -0.00000002 -0.57084459  0.00000000
                          -0.00000079 -0.00000000 -0.00000001  0.00000041  0.00000000  0.00000000 -0.00000003 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000035 -0.00000000  0.00000000  0.00000041 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039 -0.00000000  0.00000000  0.00000035
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.57634663 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000002  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.32351938 -0.00000000  0.00000000  0.65007856 -0.00000002 -0.00000000

   3    1  |1 0>           0.00000047 -0.00000000 -0.00000001  0.00000046  0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.41460669  0.00000000  0.00000000  0.32258714 -0.00000000  0.00000002  0.65055032 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000058 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.58166732 -0.00000000  0.00000000  0.00074346

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00100368  0.00000000  0.00000000  0.77768455

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00007675  0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000022 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000059 -0.00000000  0.00000000  0.00000022 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000046 -0.00000000 -0.00000002  0.00000102  0.00000000 -0.00000000  0.00000001  0.00000000
                           0.41083659 -0.00000000  0.00000001  0.71095030  0.00000000 -0.00000000 -0.15014281 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000058  0.00000000 -0.00000000 -0.00000007
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.57574741  0.00000000 -0.00000000  0.44378309

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.57786014  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.55545355  0.00000001 -0.00000000  0.47868914 -0.00000001 -0.00000000

   5    1  |1 1>-          0.00000004 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.28576959  0.00000000 -0.00000000 -0.57044159  0.00000002  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00007684  0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000040 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000038 -0.00000000  0.00000000  0.00000035

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.99997507 -0.00105877  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00105877  0.99997507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000007  0.99997564  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000002  0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.99997563 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000024 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99997563 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279786  0.00000002  0.00000002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00533625 -0.00168602  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00279800 -0.00000000 -0.00000000  0.00000000 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00279810 -0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00484578  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.59168053  0.80617243  0.00002031
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007  0.00000008  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00094051 -0.00022849 -0.00016770  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00094047  0.00000000 -0.00000000  0.00000000 -0.00028332
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00032719  0.00103576 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00120826 -0.00546385  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279793 -0.00000003 -0.00000002  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00279793  0.00000000 -0.00000000  0.00000002 -0.00000003 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00559486  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001337 -0.00001538  0.99999992

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00106073 -0.00023457 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00094051  0.00000000 -0.00000000 -0.00016764  0.00022841  0.00000001

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00094051  0.00022841  0.00016764 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00279786  0.00000000 -0.00000000 -0.00000002  0.00000002  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00279801  0.00000000 -0.00000000  0.00000000 -0.00000002

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00412776 -0.00377886  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279809  0.00000002  0.00000002 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00484578 -0.00000001 -0.00000001  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000034 -0.00000038 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.80617243  0.59168053 -0.00000168

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00094051 -0.00000000  0.00000000 -0.00016770  0.00022849  0.00000001

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00073341  0.00080122 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00094047 -0.00000000 -0.00000000  0.00000000 -0.00028332

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000049 -0.00063942  0.00000000  0.00000000  0.00000000  0.00000109 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000233  0.00000000  0.00000000 -0.00000000  0.00129944  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000052 -0.00000000 -0.00000000  0.00000000  0.00028893  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000369 -0.00000000 -0.00000000  0.00000000  0.00133079
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000369  0.00000000  0.00000000  0.00000000 -0.00133079  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.99999978  0.00066496 -0.00000000 -0.00000000 -0.00000000 -0.00000113  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00004096  0.00000000  0.00000000 -0.00000000  0.00004076 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00007039 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00004105  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00004091  0.00000000  0.00000000 -0.00000000 -0.00004072
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00002369  0.00000000  0.00000000  0.00000000  0.00007026
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00040075  0.00000000  0.00000000 -0.00000000 -0.00000104
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.70906718 -0.00000010  0.00000000 -0.00000000  0.70514024 -0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.70710609 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00051834 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00038390  0.57664012  0.00000000 -0.00000000 -0.00000000 -0.40931801 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00004118 -0.00000000  0.00000000 -0.00000000  0.00004053 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00004118 -0.00000000 -0.00000000  0.00000000  0.00004053

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004756  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000029  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040068  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00038393  0.57876770  0.00000000  0.00000000 -0.00000000  0.81549155  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000010  0.70514037 -0.00000000 -0.00000000  0.00000007  0.70906705

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.70514082  0.00000010 -0.00000000 -0.00000000  0.70906661 -0.00000007

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00004096 -0.00000000 -0.00000000  0.00000000  0.00004076

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004105 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00007040  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00004091  0.00000000 -0.00000000 -0.00000000  0.00004072 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00002369 -0.00000000 -0.00000000 -0.00000000  0.00007026 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00040075 -0.00000000  0.00000000 -0.00000000 -0.00000104  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000010  0.70906762 -0.00000000  0.00000000 -0.00000007 -0.70513980

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00038390 -0.57663964  0.00000000 -0.00000000  0.00000000  0.40918274  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00051834 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.70710698  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00028890
                          -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00129931
                          -0.00000000 -0.00000000

   4    1  |0 0>          -0.00133073 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00004064
                          -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00004063 -0.00000000
                          -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>+          0.70710660  0.00000000
                           0.00000065  0.00000000

   9    1  |1 1>+         -0.00000000  0.70706680
                           0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000
                           0.00000000 -0.00008130

   2    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000
                           0.00008121  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00007781

   8    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000
                           0.00004063  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000
                           0.00000000 -0.00004062

   4    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.70714549

   9    1  |1 1>-          0.00000065  0.00000000
                          -0.70710571 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1    -36.75006111     -0.00000007       -0.02      0.00000000        0.00      0.0000
   2   1    -36.64579528      0.10426576    22883.69      0.10426583    22883.70      2.8372
   3   1    -36.64579528      0.10426576    22883.69      0.10426583    22883.71      2.8372
   4   1    -36.64579517      0.10426587    22883.71      0.10426595    22883.73      2.8372
   5   1    -36.64576369      0.10429735    22890.62      0.10429742    22890.64      2.8381
   6   1    -36.64576360      0.10429743    22890.64      0.10429751    22890.66      2.8381
   7   1    -36.64576324      0.10429780    22890.72      0.10429787    22890.74      2.8381
   8   1    -36.64576313      0.10429791    22890.74      0.10429798    22890.76      2.8381
   9   1    -36.64576313      0.10429791    22890.74      0.10429798    22890.76      2.8381
  10   1    -36.64571509      0.10434595    22901.29      0.10434602    22901.31      2.8394
  11   1    -36.64571488      0.10434615    22901.33      0.10434623    22901.35      2.8394
  12   1    -36.64571488      0.10434616    22901.33      0.10434623    22901.35      2.8394
  13   1    -36.64571487      0.10434617    22901.34      0.10434625    22901.35      2.8394
  14   1    -36.64571467      0.10434637    22901.38      0.10434644    22901.40      2.8394
  15   1    -36.64571467      0.10434637    22901.38      0.10434644    22901.40      2.8394
  16   1    -36.64571457      0.10434647    22901.40      0.10434654    22901.42      2.8394
  17   1    -36.63958462      0.11047642    24246.77      0.11047649    24246.79      3.0062
  18   1    -36.63958461      0.11047643    24246.77      0.11047650    24246.79      3.0062
  19   1    -36.63958456      0.11047648    24246.78      0.11047655    24246.80      3.0062
  20   1    -36.63958456      0.11047648    24246.78      0.11047655    24246.80      3.0062
  21   1    -36.63958456      0.11047648    24246.78      0.11047655    24246.80      3.0062
  22   1    -36.60532443      0.14473660    31766.01      0.14473668    31766.03      3.9385
  23   1    -36.60532443      0.14473660    31766.01      0.14473668    31766.03      3.9385
  24   1    -36.60532443      0.14473660    31766.01      0.14473668    31766.03      3.9385
  25   1    -36.59733478      0.15272626    33519.54      0.15272633    33519.56      4.1559
  26   1    -36.57235696      0.17770408    39001.54      0.17770415    39001.55      4.8356
  27   1    -36.57224572      0.17781532    39025.95      0.17781540    39025.97      4.8386
  28   1    -36.57224572      0.17781532    39025.95      0.17781540    39025.97      4.8386
  29   1    -36.57224510      0.17781594    39026.09      0.17781601    39026.10      4.8386
  30   1    -36.57202276      0.17803828    39074.88      0.17803835    39074.90      4.8447
  31   1    -36.57202255      0.17803849    39074.93      0.17803856    39074.95      4.8447
  32   1    -36.57202255      0.17803849    39074.93      0.17803856    39074.95      4.8447
  33   1    -36.57202193      0.17803911    39075.07      0.17803918    39075.08      4.8447
  34   1    -36.57202193      0.17803911    39075.07      0.17803918    39075.08      4.8447

 E0 =    -36.75006104 is the energy of the lowest zeroth-order state
 E1 =    -36.75006111 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999980 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00152009  0.00668291  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00668308  0.00152005 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000 -0.00685251 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00001837  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00001830 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00685290
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.55064167  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.41084384
                               -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.41102779 -0.70506923 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.54989898 -0.00000000  0.00000000 -0.41129487 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000015 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000002 -0.54603554  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

 12  1     5    1  |1 1>+       0.00000000  0.00000001 -0.31275810  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00005275  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007684
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00005306 -0.00000000  0.00000000 -0.00007679 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00036916  0.00000000  0.00000000  0.00000000  0.00007662  0.00004473 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.81717610  0.00405640 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.54847578 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.41460773

 19  1     3    1  |1 0>       -0.00000000  0.00000001  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                               -0.00000000  0.00000002 -0.54846630  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000030 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000504  0.00000000 -0.00000000  0.81340720  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.62865391 -0.00000000 -0.00000000  0.00001082 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00036919 -0.00000000  0.00000000 -0.00000000  0.00000044 -0.00008874 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00005316  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00005316 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007675

 26  1     1    1  |1 1>-      -0.00000000 -0.00000001 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000002  0.55064714 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000015 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.54991397  0.00000000 -0.00000000  0.41128857  0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.40402028  0.70909375 -0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54603022  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40518048

 30  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.31276040 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70362602

 31  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00005275  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00036916 -0.00000000 -0.00000000  0.00000000  0.00007706 -0.00004397 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00005306  0.00000000 -0.00000000  0.00007679  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000188  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000883  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003564  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00685290  0.00000000 -0.00000000 -0.00004520  0.00000000 -0.00000000 -0.00002889  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00004527 -0.00000000  0.00000000  0.00002888 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.71073363 -0.00000001  0.00000000 -0.15116534  0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.57784273  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.57461034  0.00000000  0.00000000  0.44526707
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000057 -0.00000000  0.00000000  0.00000007

 11  1     4    1  |1 1>+      -0.40517358 -0.00000000  0.00000001  0.55614193  0.00000000 -0.00000001 -0.47788897 -0.00000000
                                0.00000046 -0.00000000  0.00000002 -0.00000080 -0.00000000  0.00000000 -0.00000002 -0.00000000

 12  1     5    1  |1 1>+       0.70363484 -0.00000000 -0.00000000 -0.28494447  0.00000000 -0.00000002 -0.57084459  0.00000000
                               -0.00000079 -0.00000000 -0.00000001  0.00000041  0.00000000  0.00000000 -0.00000003 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000035 -0.00000000  0.00000000  0.00000041 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039 -0.00000000  0.00000000  0.00000035
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.57634663 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000002  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.32351938 -0.00000000  0.00000000  0.65007856 -0.00000002 -0.00000000

 19  1     3    1  |1 0>        0.00000047 -0.00000000 -0.00000001  0.00000046  0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.41460669  0.00000000  0.00000000  0.32258714 -0.00000000  0.00000002  0.65055032 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000058 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.58166732 -0.00000000  0.00000000  0.00074346

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00100368  0.00000000  0.00000000  0.77768455

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00007675  0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000022 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000059 -0.00000000  0.00000000  0.00000022 -0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000046 -0.00000000 -0.00000002  0.00000102  0.00000000 -0.00000000  0.00000001  0.00000000
                                0.41083659 -0.00000000  0.00000001  0.71095030  0.00000000 -0.00000000 -0.15014281 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000058  0.00000000 -0.00000000 -0.00000007
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.57574741  0.00000000 -0.00000000  0.44378309

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.57786014  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     4    1  |1 1>-       0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.55545355  0.00000001 -0.00000000  0.47868914 -0.00000001 -0.00000000

 30  1     5    1  |1 1>-       0.00000004 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.28576959  0.00000000 -0.00000000 -0.57044159  0.00000002  0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00007684  0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000040 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000038 -0.00000000  0.00000000  0.00000035


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99997507 -0.00105877  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00105877  0.99997507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000007  0.99997564  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000002  0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.99997563 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000024 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99997563 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279786  0.00000002  0.00000002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00533625 -0.00168602  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00279800 -0.00000000 -0.00000000  0.00000000 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00279810 -0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00484578  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.59168053  0.80617243  0.00002031
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007  0.00000008  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00094051 -0.00022849 -0.00016770  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00094047  0.00000000 -0.00000000  0.00000000 -0.00028332
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00032719  0.00103576 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00120826 -0.00546385  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279793 -0.00000003 -0.00000002  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00279793  0.00000000 -0.00000000  0.00000002 -0.00000003 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00559486  0.00000000  0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001337 -0.00001538  0.99999992

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00106073 -0.00023457 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00094051  0.00000000 -0.00000000 -0.00016764  0.00022841  0.00000001

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00094051  0.00022841  0.00016764 -0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00279786  0.00000000 -0.00000000 -0.00000002  0.00000002  0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00279801  0.00000000 -0.00000000  0.00000000 -0.00000002

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00412776 -0.00377886  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00279809  0.00000002  0.00000002 -0.00000000

 30  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00484578 -0.00000001 -0.00000001  0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000034 -0.00000038 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.80617243  0.59168053 -0.00000168

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00094051 -0.00000000  0.00000000 -0.00016770  0.00022849  0.00000001

 33  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00073341  0.00080122 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00094047 -0.00000000 -0.00000000  0.00000000 -0.00028332


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000049 -0.00063942  0.00000000  0.00000000  0.00000000  0.00000109 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000233  0.00000000  0.00000000 -0.00000000  0.00129944  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000052 -0.00000000 -0.00000000  0.00000000  0.00028893  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000369 -0.00000000 -0.00000000  0.00000000  0.00133079
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000369  0.00000000  0.00000000  0.00000000 -0.00133079  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99999978  0.00066496 -0.00000000 -0.00000000 -0.00000000 -0.00000113  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00004096  0.00000000  0.00000000 -0.00000000  0.00004076 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00007039 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00004105  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00004091  0.00000000  0.00000000 -0.00000000 -0.00004072
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00002369  0.00000000  0.00000000  0.00000000  0.00007026
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00040075  0.00000000  0.00000000 -0.00000000 -0.00000104
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.70906718 -0.00000010  0.00000000 -0.00000000  0.70514024 -0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.70710609 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00051834 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00038390  0.57664012  0.00000000 -0.00000000 -0.00000000 -0.40931801 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00004118 -0.00000000  0.00000000 -0.00000000  0.00004053 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00004118 -0.00000000 -0.00000000  0.00000000  0.00004053

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004756  0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000029  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040068  0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00038393  0.57876770  0.00000000  0.00000000 -0.00000000  0.81549155  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000010  0.70514037 -0.00000000 -0.00000000  0.00000007  0.70906705

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.70514082  0.00000010 -0.00000000 -0.00000000  0.70906661 -0.00000007

 26  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00004096 -0.00000000 -0.00000000  0.00000000  0.00004076

 27  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004105 -0.00000000  0.00000000  0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00007040  0.00000000  0.00000000

 29  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00004091  0.00000000 -0.00000000 -0.00000000  0.00004072 -0.00000000

 30  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00002369 -0.00000000 -0.00000000 -0.00000000  0.00007026 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00040075 -0.00000000  0.00000000 -0.00000000 -0.00000104  0.00000000

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000010  0.70906762 -0.00000000  0.00000000 -0.00000007 -0.70513980

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00038390 -0.57663964  0.00000000 -0.00000000  0.00000000  0.40918274  0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00051834 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.70710698  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00028890
                               -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00129931
                               -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00133073 -0.00000000
                               -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00004064
                               -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00004063 -0.00000000
                               -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000
                               -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.70710660  0.00000000
                                0.00000065  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.70706680
                                0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000
                                0.00000000 -0.00008130

 18  1     2    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000
                                0.00008121  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00007781

 24  1     8    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 26  1     1    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000
                                0.00004063  0.00000000

 28  1     3    1  |1 1>-       0.00000000  0.00000000
                                0.00000000 -0.00004062

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000
                                0.00000000 -0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000
                                0.00000000  0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.70714549

 34  1     9    1  |1 1>-       0.00000065  0.00000000
                               -0.70710571 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.32%    0.00%    0.00%    0.00%    0.00%    0.00%   16.88%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.89%   49.71%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.24%    0.00%    0.00%   16.92%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   29.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    9.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.78%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%   30.08%    0.00%    0.00%    0.00%    0.00%    0.00%   17.19%
 19  1     3    1  |1 0>          0.00%    0.00%   30.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.16%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.52%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   30.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.24%    0.00%    0.00%   16.92%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.32%   50.28%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%   29.81%    0.00%    0.00%    0.00%    0.00%    0.00%   16.42%
 30  1     5    1  |1 1>-         0.00%    9.78%    0.00%    0.00%    0.00%    0.00%    0.00%   49.51%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   50.51%    0.00%    0.00%    2.29%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   33.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.02%    0.00%    0.00%   19.83%
 11  1     4    1  |1 1>+        16.42%    0.00%    0.00%   30.93%    0.00%    0.00%   22.84%    0.00%
 12  1     5    1  |1 1>+        49.51%    0.00%    0.00%    8.12%    0.00%    0.00%   32.59%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   10.47%    0.00%    0.00%   42.26%    0.00%    0.00%
 19  1     3    1  |1 0>         17.19%    0.00%    0.00%   10.41%    0.00%    0.00%   42.32%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.83%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.48%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-        16.88%    0.00%    0.00%   50.55%    0.00%    0.00%    2.25%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.15%    0.00%    0.00%   19.69%
 28  1     3    1  |1 1>-         0.00%   33.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   30.85%    0.00%    0.00%   22.91%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    8.17%    0.00%    0.00%   32.54%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   35.01%   64.99%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   64.99%   35.01%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%   50.28%    0.00%    0.00%    0.00%   49.72%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.25%    0.00%    0.00%    0.00%   16.75%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.50%    0.00%    0.00%    0.00%   66.50%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.72%    0.00%    0.00%    0.00%   50.28%
 25  1     9    1  |1 0>          0.00%    0.00%   49.72%    0.00%    0.00%    0.00%   50.28%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.28%    0.00%    0.00%    0.00%   49.72%
 33  1     8    1  |1 1>-         0.00%   33.25%    0.00%    0.00%    0.00%   16.74%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+        50.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   49.99%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%   50.01%
 34  1     9    1  |1 1>-        50.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       81.93       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       239.70    163.50     49.00     25.17      1.31      0.05      0.46
 REAL TIME  *       251.87 SEC
 DISK USED  *       114.74 MB (local),        1.40 GB (total)
 SF USED    *       442.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -36.572021928033

              CI              CI           MULTI         RHF-SCF
    -36.55540093    -36.57722083    -36.30137303    -36.44720534
 **********************************************************************************************************************************
 Molpro calculation terminated
