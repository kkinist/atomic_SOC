
 Working directory              : /wrk/irikura/molpro.1emWYlIYv9/
 Global scratch directory       : /wrk/irikura/molpro.1emWYlIYv9/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1emWYlIYv9/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion ROHF orbitals
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP = 3
 NSING = 6
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
     wf,nelec=22,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5102.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 15:42:10  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ge   ECP ECP10MDF                 selected for group  1
 Library entry GE     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  GE     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.600E-05 0.229E-03 0.934E-03 0.129E-02 0.129E-02 0.129E-02 0.129E-02 0.129E-02
         2 0.169E-04 0.169E-04 0.169E-04 0.885E-03 0.885E-03 0.885E-03 0.519E-02 0.519E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     544.211 MB (compressed) written to integral file ( 13.3%)

     Node minimum: 33.554 MB, node maximum: 53.215 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291128. INTEGRALS IN     13 RECORDS. CPU TIME:     2.23 SEC, REAL TIME:     2.29 SEC
 SORT2 READ    53577812. AND WROTE   312900871. INTEGRALS IN   1980 RECORDS. CPU TIME:     0.53 SEC, REAL TIME:     0.58 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.55      8.30
 REAL TIME  *         9.77 SEC
 DISK USED  *        30.87 MB (local),        1.43 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -194.18246742    -194.18246742     0.00D+00     0.14D+00     0     0       0.14      0.26    start
   2     -253.64293994     -59.46047252     0.27D+00     0.20D+00     1     0       0.14      0.40    diag2
   3     -276.68872059     -23.04578065     0.34D+00     0.75D-01     2     0       0.15      0.55    diag2
   4     -291.73708497     -15.04836439     0.19D+00     0.61D-01     3     0       0.15      0.70    diag2
   5     -292.38825298      -0.65116801     0.26D-01     0.72D-01     4     0       0.15      0.85    diag2
   6     -293.21743228      -0.82917929     0.87D-02     0.66D-01     5     0       0.15      1.00    diag2
   7     -293.34695421      -0.12952193     0.45D-02     0.39D-02     6     0       0.15      1.15    diag2
   8     -293.37993026      -0.03297605     0.18D-02     0.23D-02     7     0       0.16      1.31    fixocc
   9     -293.38195003      -0.00201977     0.77D-03     0.90D-03     8     0       0.16      1.47    diag2
  10     -293.38311076      -0.00116073     0.28D-03     0.55D-03     9     0       0.15      1.62    diag2/orth
  11     -293.38329597      -0.00018522     0.10D-03     0.23D-03     9     0       0.16      1.78    diag2
  12     -293.38331352      -0.00001754     0.32D-04     0.80D-04     9     0       0.16      1.94    diag2
  13     -293.38331913      -0.00000561     0.11D-04     0.51D-04     9     0       0.18      2.12    diag2
  14     -293.38331995      -0.00000082     0.42D-05     0.26D-04     9     0       0.15      2.27    diag2
  15     -293.38332006      -0.00000011     0.15D-05     0.74D-05     9     0       0.15      2.42    diag2
  16     -293.38332010      -0.00000004     0.80D-06     0.42D-05     9     0       0.15      2.57    diag2
  17     -293.38332010      -0.00000000     0.23D-06     0.14D-05     9     0       0.15      2.72    diag2
  18     -293.38332010      -0.00000000     0.57D-07     0.16D-06     0     0       0.16      2.88    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -293.383320102615
  RHF One-electron energy            -528.169904417203
  RHF Two-electron energy             234.786584314588
  RHF Kinetic energy                  205.138323083357
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.430173142165

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.09554     1  1  s    0.99990
    2.1     2.00000    -1.35041     1  1  d0   0.50080    1  1  d2+  0.86555
    3.1     2.00000    -1.35041     1  1  d2-  0.99999
    4.1     2.00000    -1.35041     1  1  d1-  0.99999
    5.1     2.00000    -1.35041     1  1  d1+  0.99999
    6.1     2.00000    -1.35041     1  1  d0   0.86555    1  1  d2+ -0.50080
    7.1     2.00000    -0.33235     1  1  s   -0.30651    1  5  s    0.44283    1  6  s    0.50143
    1.2     2.00000    -5.01052     1  1  py   1.00015
    2.2     2.00000    -5.01052     1  1  px   0.99992
    3.2     2.00000    -5.01052     1  1  pz   0.99992
    4.2     1.00000    -0.05790     1  5  pz   0.34024    1  6  pz   0.37193    1  7  pz   0.25745
    5.2     1.00000    -0.05790     1  5  px   0.34024    1  6  px   0.37193    1  7  px   0.25745
    6.2     1.00000    -0.05790     1  5  py   0.34025    1  6  py   0.37192    1  7  py   0.25749


 HOMO      6.2    -0.057898 =      -1.5755eV
 LUMO      7.2     0.138221 =       3.7612eV
 LUMO-HOMO         0.196119 =       5.3367eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.45      2.89      8.30
 REAL TIME  *        12.85 SEC
 DISK USED  *        36.95 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.241D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.281D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 6 4 2 1 1 4 2   3 5 6 1 5 3 6 2 4 7   9 8151014131112 2 4   3 6 5 11013 915 714
                                        81112 2 4 3 6 5 110  131114 7 815 912 5 3   6 2 4 110131114 7 8  1512 9 5 3 6 4 21622
                                       27182124201923172625  28 1101311 714 81512   9 5 3 6 2 4 1 5 3 6   4 2101311 714 81512
                                        9 5 3 6 4 2 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.204D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.209D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.209D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.817D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.815D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.198D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 3 2 1   3 2 6 4 5 8 710 9 1   3 2 4 6 5 8 710 9 1   3 2 4 6 5 8 710 919
                                       11162114171815201312   9 710 5 8 4 6 2 1 3  18201315121417162111  19 9 710 5 8 4 6 2 1
                                        3182013151214172116  1911 9 710 5 8 4 6 2   1 3 9 710 5 8 4 618  20131215171421161119
                                        2 1 3 9 710 8 5 6 4   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1775
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   32    0   -293.30622629    -293.32802384   -0.02179755    0.12701390 0.00009879 0.00000000  0.40E+00      1.56
   2    8   14    0   -293.32545730    -293.32865671   -0.00319941    0.17952017 0.00000892 0.00000000  0.39E-01      2.86
   3    7   12    0   -293.32867979    -293.32868030   -0.00000050    0.00146306 0.00000000 0.00000000  0.88E-03      4.19
   4    6   12    0   -293.32868030    -293.32868030    0.00000000    0.00000026 0.00000000 0.00000000  0.26E-06      5.33

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.50E-11)
                       Final energy:   -293.32868030
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.358206740781
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.23929759
 Virial ratio                                    2.43058743
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.358206740780
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.23929759
 Virial ratio                                    2.43058743
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.358206740780
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.23929759
 Virial ratio                                    2.43058743
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.319557845225
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.27794649
 Virial ratio                                    2.43039895
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.319557845225
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.27794649
 Virial ratio                                    2.43039895
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.319557845224
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.27794649
 Virial ratio                                    2.43039895
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.319557845224
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.27794649
 Virial ratio                                    2.43039895
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.319557845224
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06136220
 One electron energy                          -522.59750433
 Two electron energy                           229.27794649
 Virial ratio                                    2.43039895
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -293.285713244292
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05305105
 One electron energy                          -522.43783871
 Two electron energy                           229.15212547
 Virial ratio                                    2.43029188
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.881601149256
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.118398850744
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.123271847815
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.876728152185
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.995127002930
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.004872997070
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 6 5 1 1 2 4   6 3 5 1 6 4 2 5 313  10 812 711 91415 2 5   3 4 6 1 8121415 7 9
                                       111310 2 4 6 5 3 114  1512 8 911 71013 2 4   6 5 3 11310 8121415   7 911 2 4 6 3 51721
                                       22262316252419201828  27 112 8 71415 91113  10 2 4 6 5 3 1 6 4 3   5 2 812 7 911141513
                                       10 2 5 6 4 3 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 3 2 1 2   1 3 6 5 4 9 710 8 2   1 3 5 4 6 9 710 8 2   1 3 9 7 6 4 510 814
                                       16211320181911121517   9 7 6 4 510 8 2 1 3  11122113141615171820  19 9 7 4 5 610 8 1 2
                                        3141621131911121517  1820 7 9 4 5 610 8 1   2 3 7 9 5 4 810 611  19121521171320181614
                                        2 1 3 810 4 5 6 7 9   1 2 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.35354     1  1  s    1.00064
    2.1     2.00000    -1.60809     1  1  d0   1.00007
    3.1     2.00000    -1.60809     1  1  d2-  1.00007
    4.1     2.00000    -1.60809     1  1  d1+  1.00007
    5.1     2.00000    -1.60809     1  1  d1-  1.00007
    6.1     2.00000    -1.60809     1  1  d2+  1.00007
    7.1     1.96761    -0.56479     1  1  s   -0.31592    1  5  s    0.48113    1  6  s    0.55230
    1.2     2.00000    -5.26800     1  1  px   0.99997
    2.2     2.00000    -5.26800     1  1  pz   0.99997
    3.2     2.00000    -5.26800     1  1  py   0.99997
    4.2     0.67746    -0.06822     1  5  py   0.41047    1  6  py   0.40806
    5.2     0.67746    -0.06822     1  5  px   0.41047    1  6  px   0.40806
    6.2     0.67746    -0.06822     1  5  pz   0.41047    1  6  pz   0.40806
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.99369797     -0.00000000     -0.00000000
 2 a0a         -0.00000000     -0.00000000      0.99369797
 2 0aa          0.00000000      0.99369797     -0.00000000
 0 2aa         -0.00000000     -0.11209080     -0.00000000
 0 a2a          0.00000000      0.00000000     -0.11209080
 0 aa2         -0.11209080     -0.00000000     -0.00000000
 
 Energy:     -293.35820674   -293.35820674   -293.35820674
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002         -0.02831893     -0.00000000      0.81085663     -0.00000000     -0.00000000      0.56413888
 2 020          0.71638191     -0.00000000     -0.38090340     -0.00000000      0.00000000      0.56413888
 2 ab0         -0.00000000      0.70265057     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 ba0          0.00000000     -0.70265057      0.00000000      0.00000000      0.00000000      0.00000000
 2 a0b         -0.00000000     -0.00000000      0.00000000     -0.00000000      0.70265057     -0.00000000
 2 b0a          0.00000000      0.00000000     -0.00000000      0.00000000     -0.70265057      0.00000000
 2 0ba          0.00000000      0.00000000      0.00000000     -0.70265057      0.00000000      0.00000000
 2 0ab         -0.00000000     -0.00000000     -0.00000000      0.70265057     -0.00000000     -0.00000000
 2 200         -0.68806297     -0.00000000     -0.42995323     -0.00000000      0.00000000      0.56413888
 0 202          0.08080908     -0.00000000     -0.04296654     -0.00000000      0.00000000     -0.12280333
 0 022         -0.07761466     -0.00000000     -0.04849945     -0.00000000     -0.00000000     -0.12280333
 0 220         -0.00319442     -0.00000000      0.09146599     -0.00000000      0.00000000     -0.12280333
 0 2ba          0.00000000     -0.00000000      0.00000000      0.07926016      0.00000000      0.00000000
 0 2ab         -0.00000000      0.00000000     -0.00000000     -0.07926016     -0.00000000     -0.00000000
 0 a2b          0.00000000      0.00000000     -0.00000000      0.00000000     -0.07926016      0.00000000
 0 b2a         -0.00000000     -0.00000000      0.00000000     -0.00000000      0.07926016     -0.00000000
 0 ab2         -0.00000000     -0.07926016     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 ba2          0.00000000      0.07926016      0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:     -293.31955785   -293.31955785   -293.31955785   -293.31955785   -293.31955785   -293.28571324
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        17.16      5.70      2.89      8.30
 REAL TIME  *        19.44 SEC
 DISK USED  *        71.78 MB (local),        1.90 GB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3582067   2.0
    -293.3582067   2.0
    -293.3582067   2.0
    -293.3195578   6.0
    -293.3195578   6.0
    -293.3195578   6.0
    -293.3195578   6.0
    -293.3195578   6.0
    -293.2857132  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.35820674
     2      -293.35820674
     3      -293.35820674

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        370584
 Number of doubly external configurations:       7575450
 Total number of contracted configurations:      7946571
 Total number of uncontracted configurations:   43099315

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1990564 words, CPU-time:      0.84 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35820674     0.00000000    -1.11342702  0.35D-01  0.74D-01     1.19
    1     2     2     1.00000000     0.00000000  -293.35820674    -0.00000000    -1.11321424  0.34D-01  0.74D-01     1.19
    1     3     3     1.00000000     0.00000000  -293.35820674     0.00000000    -1.11305348  0.34D-01  0.74D-01     1.19
    2     1     1     1.07470619    -0.92531002  -294.28351676    -0.92531002    -0.02701217  0.35D-02  0.15D-02    27.62
    2     2     2     1.07487493    -0.92516734  -294.28337408    -0.92516734    -0.02715207  0.36D-02  0.15D-02    27.62
    2     3     3     1.07510834    -0.92497246  -294.28317920    -0.92497246    -0.02734071  0.37D-02  0.15D-02    27.62
    3     1     1     1.06135265    -0.95034511  -294.30855186    -0.02503509    -0.00062309  0.95D-04  0.43D-04    53.59
    3     2     2     1.06134509    -0.95034375  -294.30855049    -0.02517641    -0.00062458  0.95D-04  0.43D-04    53.59
    3     3     3     1.06133471    -0.95034196  -294.30854870    -0.02536950    -0.00062659  0.95D-04  0.44D-04    53.59
    4     1     1     1.06022058    -0.95093261  -294.30913935    -0.00058750    -0.00002820  0.39D-05  0.21D-05    79.36
    4     2     2     1.06021734    -0.95093259  -294.30913933    -0.00058884    -0.00002824  0.39D-05  0.21D-05    79.36
    4     3     3     1.06021276    -0.95093256  -294.30913930    -0.00059060    -0.00002830  0.38D-05  0.21D-05    79.36
    5     1     1     1.06025078    -0.95095953  -294.30916627    -0.00002692    -0.00000094  0.82D-07  0.83D-07   105.40
    5     2     2     1.06025048    -0.95095953  -294.30916627    -0.00002694    -0.00000094  0.82D-07  0.84D-07   105.40
    5     3     3     1.06025008    -0.95095953  -294.30916627    -0.00002697    -0.00000094  0.82D-07  0.84D-07   105.40
    6     1     1     1.06027762    -0.95096047  -294.30916721    -0.00000094    -0.00000003  0.18D-08  0.40D-08   131.58
    6     2     2     1.06027753    -0.95096047  -294.30916721    -0.00000094    -0.00000003  0.18D-08  0.41D-08   131.58
    6     3     3     1.06027743    -0.95096047  -294.30916721    -0.00000094    -0.00000003  0.18D-08  0.41D-08   131.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   1.6%
 P   0.6%   9.1%  24.9%

 Initialization:   0.7%
 Other:           63.0%

 Total CPU:      131.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000  -0.0000000   0.9656816
 2222222222/0/          -0.0000000   0.9656816   0.0000000
 22222222220//           0.9656816   0.0000000  -0.0000000
 2222220222//2          -0.0000000   0.0000000  -0.1020536
 2222220222/2/           0.0000000  -0.1020535  -0.0000000
 22222202222//          -0.1020534  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.971035
 2          -0.000000    0.971035    0.000000
 3           0.971035    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971035   -0.000000   -0.000000
 2          -0.000000    0.971035    0.000000
 3          -0.000000    0.000000    0.971035


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97103506 (fixed)   0.97105911 (relaxed)   0.97103506 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00025466   -0.00056054   -0.00075689
 Singles      0.01150595   -0.04166101   -0.04959711
 Pairs        0.04878702   -0.90873892   -0.90060646
 Total        1.06054763   -0.95096047   -0.95096047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35820674
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53256009
 One electron energy                 -521.65822466
 Two electron energy                  227.34905745
 Virial quotient                       -1.43193452
 Correlation energy                    -0.95096047
 !MRCI STATE 1.1 Energy              -294.309167210784

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36674562 (Davidson, fixed reference)
 Cluster corrected energies          -294.36669567 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36674562 (Davidson, rotated reference)

 Cluster corrected energies          -294.36360581 (Pople, fixed reference)
 Cluster corrected energies          -294.36355622 (Pople, relaxed reference)
 Cluster corrected energies          -294.36360581 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97103510 (fixed)   0.97105915 (relaxed)   0.97103510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00025466   -0.00056054   -0.85761523
 Singles      0.01150587   -0.04166092   -0.04959704
 Pairs        0.04878701   -0.00000000   -0.04374820
 Total        1.06054754   -0.04222146   -0.95096047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35820674
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53256373
 One electron energy                 -521.65822738
 Two electron energy                  227.34906016
 Virial quotient                       -1.43193449
 Correlation energy                    -0.95096047
 !MRCI STATE 2.1 Energy              -294.309167210722

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36674553 (Davidson, fixed reference)
 Cluster corrected energies          -294.36669558 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36674553 (Davidson, rotated reference)

 Cluster corrected energies          -294.36360572 (Pople, fixed reference)
 Cluster corrected energies          -294.36355613 (Pople, relaxed reference)
 Cluster corrected energies          -294.36360572 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97103515 (fixed)   0.97105919 (relaxed)   0.97103515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00025466   -0.00056054   -0.85761542
 Singles      0.01150577   -0.04166081   -0.04959694
 Pairs        0.04878701    0.00000000   -0.04374811
 Total        1.06054744   -0.04222135   -0.95096047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35820674
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53256985
 One electron energy                 -521.65823132
 Two electron energy                  227.34906411
 Virial quotient                       -1.43193445
 Correlation energy                    -0.95096047
 !MRCI STATE 3.1 Energy              -294.309167210629

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36674543 (Davidson, fixed reference)
 Cluster corrected energies          -294.36669549 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36674543 (Davidson, rotated reference)

 Cluster corrected energies          -294.36360563 (Pople, fixed reference)
 Cluster corrected energies          -294.36355604 (Pople, relaxed reference)
 Cluster corrected energies          -294.36360563 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      188.11       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       151.40    134.22      5.70      2.89      8.30
 REAL TIME  *       162.34 SEC
 DISK USED  *       257.06 MB (local),        4.08 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.36674562  AU                              
 SETTING HLSDIAG(2)     =      -294.36674553  AU                              
 SETTING HLSDIAG(3)     =      -294.36674543  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.31955785
     2      -293.31955785
     3      -293.31955785
     4      -293.31955785
     5      -293.31955785
     6      -293.28571324

 Number of blocks in overlap matrix:   679   Smallest eigenvalue:  0.24D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        264542
 Number of doubly external configurations:      12835564
 Total number of contracted configurations:     13100556
 Total number of uncontracted configurations:   33375942

 Diagonal Coupling coefficients finished.               Storage:    700677 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2101206 words, CPU-time:      1.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31955785    -0.00000000    -1.12365199  0.38D-01  0.79D-01     1.91
    1     2     2     1.00000000     0.00000000  -293.31955785    -0.00000000    -1.12403231  0.38D-01  0.79D-01     1.91
    1     3     3     1.00000000     0.00000000  -293.31955785    -0.00000000    -1.12380811  0.38D-01  0.78D-01     1.91
    1     4     4     1.00000000     0.00000000  -293.31955785    -0.00000000    -1.12453600  0.39D-01  0.79D-01     1.91
    1     5     5     1.00000000     0.00000000  -293.31955785    -0.00000000    -1.12448142  0.39D-01  0.79D-01     1.91
    1     6     6     1.00000000     0.00000000  -293.28571324    -0.00000000    -1.11036108  0.14D-01  0.93D-01     1.91
    2     1     1     1.07971548    -0.93009812  -294.24965596    -0.93009812    -0.02902485  0.39D-02  0.19D-02    97.17
    2     2     2     1.07974486    -0.93009085  -294.24964869    -0.93009085    -0.02902087  0.39D-02  0.19D-02    97.17
    2     3     3     1.07998641    -0.92985360  -294.24941145    -0.92985360    -0.02929077  0.41D-02  0.19D-02    97.17
    2     4     4     1.08021764    -0.92962696  -294.24918481    -0.92962696    -0.02955027  0.42D-02  0.19D-02    97.17
    2     5     5     1.08027271    -0.92958530  -294.24914314    -0.92958530    -0.02959165  0.42D-02  0.19D-02    97.17
    2     6     6     1.07416405    -0.92695828  -294.21267152    -0.92695828    -0.02672459  0.28D-02  0.24D-02    97.17
    3     1     1     1.06438729    -0.95693984  -294.27649768    -0.02684172    -0.00064420  0.81D-04  0.60D-04   190.93
    3     2     2     1.06438397    -0.95693573  -294.27649358    -0.02684489    -0.00064713  0.82D-04  0.60D-04   190.93
    3     3     3     1.06440743    -0.95692692  -294.27648476    -0.02707332    -0.00065995  0.84D-04  0.61D-04   190.93
    3     4     4     1.06440562    -0.95692684  -294.27648468    -0.02729987    -0.00066038  0.84D-04  0.61D-04   190.93
    3     5     5     1.06440651    -0.95692579  -294.27648363    -0.02734049    -0.00066136  0.84D-04  0.62D-04   190.93
    3     6     6     1.06213162    -0.95154041  -294.23725365    -0.02458213    -0.00063972  0.55D-04  0.95D-04   190.93
    4     1     1     1.06309392    -0.95757335  -294.27713119    -0.00063351    -0.00003286  0.45D-05  0.28D-05   285.31
    4     2     2     1.06308767    -0.95757307  -294.27713092    -0.00063734    -0.00003314  0.46D-05  0.28D-05   285.31
    4     3     3     1.06309625    -0.95757232  -294.27713017    -0.00064541    -0.00003421  0.48D-05  0.29D-05   285.31
    4     4     4     1.06309607    -0.95757231  -294.27713015    -0.00064547    -0.00003423  0.47D-05  0.29D-05   285.31
    4     5     5     1.06309427    -0.95757207  -294.27712991    -0.00064628    -0.00003444  0.48D-05  0.29D-05   285.31
    4     6     6     1.06094855    -0.95217452  -294.23788776    -0.00063411    -0.00003231  0.46D-05  0.31D-05   285.31
    5     1     1     1.06307393    -0.95760513  -294.27716297    -0.00003178    -0.00000127  0.14D-06  0.11D-06   380.60
    5     2     2     1.06307216    -0.95760511  -294.27716296    -0.00003204    -0.00000128  0.14D-06  0.11D-06   380.60
    5     3     3     1.06307440    -0.95760507  -294.27716292    -0.00003275    -0.00000133  0.15D-06  0.12D-06   380.60
    5     4     4     1.06307441    -0.95760507  -294.27716292    -0.00003276    -0.00000133  0.15D-06  0.12D-06   380.60
    5     5     5     1.06307337    -0.95760506  -294.27716291    -0.00003299    -0.00000133  0.15D-06  0.12D-06   380.60
    5     6     6     1.06093020    -0.95220624  -294.23791948    -0.00003172    -0.00000149  0.18D-06  0.14D-06   380.60
    6     1     1     1.06307671    -0.95760639  -294.27716423    -0.00000126    -0.00000004  0.34D-08  0.44D-08   474.99
    6     2     2     1.06307639    -0.95760639  -294.27716423    -0.00000127    -0.00000004  0.35D-08  0.45D-08   474.99
    6     3     3     1.06307665    -0.95760638  -294.27716423    -0.00000131    -0.00000004  0.34D-08  0.47D-08   474.99
    6     4     4     1.06307670    -0.95760638  -294.27716423    -0.00000131    -0.00000004  0.34D-08  0.47D-08   474.99
    6     5     5     1.06307671    -0.95760638  -294.27716423    -0.00000132    -0.00000004  0.34D-08  0.47D-08   474.99
    6     6     6     1.06094274    -0.95220771  -294.23792095    -0.00000147    -0.00000006  0.52D-08  0.63D-08   474.99
    7     1     1     1.06307679    -0.95760643  -294.27716427    -0.00000004    -0.00000000  0.34D-09  0.13D-09   569.61
    7     2     2     1.06307674    -0.95760643  -294.27716427    -0.00000004    -0.00000000  0.35D-09  0.14D-09   569.61
    7     3     3     1.06307685    -0.95760643  -294.27716427    -0.00000004    -0.00000000  0.36D-09  0.14D-09   569.61
    7     4     4     1.06307685    -0.95760643  -294.27716427    -0.00000004    -0.00000000  0.36D-09  0.14D-09   569.61
    7     5     5     1.06307681    -0.95760643  -294.27716427    -0.00000004    -0.00000000  0.37D-09  0.14D-09   569.61
    7     6     6     1.06094200    -0.95220776  -294.23792101    -0.00000006    -0.00000000  0.43D-09  0.19D-09   569.61


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.4%   7.2%  28.4%

 Initialization:   0.3%
 Other:           63.0%

 Total CPU:      569.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0          -0.0000000   0.0000000   0.0000000   0.0000000   0.9643634  -0.0000000
 22222222220/\          -0.0000000  -0.0000000   0.9643634  -0.0000000  -0.0000000  -0.0000000
 2222222222/0\           0.0000000  -0.0000000   0.0000000   0.9643634  -0.0000000  -0.0000000
 2222222222002           0.7873994  -0.0001061   0.0000000  -0.0000000   0.0000000   0.5490635
 2222222222020          -0.3936078   0.6819610   0.0000000   0.0000000  -0.0000000   0.5490635
 2222222222200          -0.3937916  -0.6818549  -0.0000000  -0.0000000   0.0000000   0.5490635
 2222220222202          -0.0415893   0.0720571  -0.0000000   0.0000000  -0.0000000  -0.1124217
 2222220222022          -0.0416087  -0.0720459  -0.0000000  -0.0000000   0.0000000  -0.1124217
 2222220222220           0.0831979  -0.0000112   0.0000000  -0.0000000   0.0000000  -0.1124217
 2222220222/\2           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1018963   0.0000000
 22222202222/\           0.0000000   0.0000000  -0.1018963   0.0000000   0.0000000   0.0000000
 2222220222/2\          -0.0000000   0.0000000  -0.0000000  -0.1018963   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000168   -0.000000    0.969708   -0.000000    0.000000   -0.000000
 2           0.969708    0.000000   -0.000168   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.000000    0.969708    0.000000    0.000000
 4           0.000000    0.000000   -0.000000   -0.000000    0.969708    0.000000
 5          -0.000000    0.969708    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970661

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969708   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.969708    0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.969708   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.969708   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.969708    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.970661


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96970758 (fixed)   0.96973173 (relaxed)   0.96970760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00035413   -0.00081239   -0.85840046
 Singles      0.01306947   -0.04507677   -0.05415689
 Pairs        0.05002966   -0.00000001   -0.04504908
 Total        1.06345326   -0.04588918   -0.95760643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31955785
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53395045
 One electron energy                 -521.61489639
 Two electron energy                  227.33773212
 Virial quotient                       -1.43176912
 Correlation energy                    -0.95760643
 !MRCI STATE 1.1 Energy              -294.277164274788

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33792752 (Davidson, fixed reference)
 Cluster corrected energies          -294.33787682 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33792752 (Davidson, rotated reference)

 Cluster corrected energies          -294.33540690 (Pople, fixed reference)
 Cluster corrected energies          -294.33535568 (Pople, relaxed reference)
 Cluster corrected energies          -294.33540690 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96970761 (fixed)   0.96973176 (relaxed)   0.96970762 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00035413   -0.00081239   -0.85840050
 Singles      0.01306945   -0.04507677   -0.05415689
 Pairs        0.05002962   -0.00000001   -0.04504904
 Total        1.06345320   -0.04588918   -0.95760643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31955785
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53395594
 One electron energy                 -521.61490174
 Two electron energy                  227.33773747
 Virial quotient                       -1.43176909
 Correlation energy                    -0.95760643
 !MRCI STATE 2.1 Energy              -294.277164274732

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33792747 (Davidson, fixed reference)
 Cluster corrected energies          -294.33787677 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33792747 (Davidson, rotated reference)

 Cluster corrected energies          -294.33540684 (Pople, fixed reference)
 Cluster corrected energies          -294.33535563 (Pople, relaxed reference)
 Cluster corrected energies          -294.33540684 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96970757 (fixed)   0.96973171 (relaxed)   0.96970757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00035413   -0.00081239   -0.85840034
 Singles      0.01306952   -0.04507686   -0.05415696
 Pairs        0.05002966   -0.00000000   -0.04504913
 Total        1.06345331   -0.04588925   -0.95760643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31955785
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53397292
 One electron energy                 -521.61491115
 Two electron energy                  227.33774688
 Virial quotient                       -1.43176897
 Correlation energy                    -0.95760643
 !MRCI STATE 3.1 Energy              -294.277164274716

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33792757 (Davidson, fixed reference)
 Cluster corrected energies          -294.33787688 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33792757 (Davidson, rotated reference)

 Cluster corrected energies          -294.33540695 (Pople, fixed reference)
 Cluster corrected energies          -294.33535573 (Pople, relaxed reference)
 Cluster corrected energies          -294.33540695 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96970757 (fixed)   0.96973171 (relaxed)   0.96970757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00035413   -0.00081239   -0.85840034
 Singles      0.01306953   -0.04507686   -0.05415697
 Pairs        0.05002966   -0.00000000   -0.04504913
 Total        1.06345331   -0.04588925   -0.95760643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31955785
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53397340
 One electron energy                 -521.61491158
 Two electron energy                  227.33774731
 Virial quotient                       -1.43176896
 Correlation energy                    -0.95760643
 !MRCI STATE 4.1 Energy              -294.277164274716

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33792758 (Davidson, fixed reference)
 Cluster corrected energies          -294.33787688 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33792758 (Davidson, rotated reference)

 Cluster corrected energies          -294.33540695 (Pople, fixed reference)
 Cluster corrected energies          -294.33535574 (Pople, relaxed reference)
 Cluster corrected energies          -294.33540695 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96970759 (fixed)   0.96973173 (relaxed)   0.96970759 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00035413   -0.00081239   -0.85840039
 Singles      0.01306950   -0.04507684   -0.05415696
 Pairs        0.05002964   -0.00000000   -0.04504907
 Total        1.06345327   -0.04588923   -0.95760643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31955785
 Nuclear energy                         0.00000000
 Kinetic energy                       205.53397693
 One electron energy                 -521.61491650
 Two electron energy                  227.33775223
 Virial quotient                       -1.43176894
 Correlation energy                    -0.95760643
 !MRCI STATE 5.1 Energy              -294.277164274677

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33792754 (Davidson, fixed reference)
 Cluster corrected energies          -294.33787684 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33792754 (Davidson, rotated reference)

 Cluster corrected energies          -294.33540691 (Pople, fixed reference)
 Cluster corrected energies          -294.33535570 (Pople, relaxed reference)
 Cluster corrected energies          -294.33540691 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97066146 (fixed)   0.97073583 (relaxed)   0.97066146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039793   -0.00066036   -0.00097919
 Singles      0.00550353   -0.02801596   -0.03133423
 Pairs        0.05546272   -0.92353144   -0.91989434
 Total        1.06136418   -0.95220776   -0.95220776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.28571324
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54972171
 One electron energy                 -521.45636587
 Two electron energy                  227.21844486
 Virial quotient                       -1.43146835
 Correlation energy                    -0.95220776
 !MRCI STATE 6.1 Energy              -294.237921008574

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.29635246 (Davidson, fixed reference)
 Cluster corrected energies          -294.29619760 (Davidson, relaxed reference)
 Cluster corrected energies          -294.29635246 (Davidson, rotated reference)

 Cluster corrected energies          -294.29382918 (Pople, fixed reference)
 Cluster corrected energies          -294.29367331 (Pople, relaxed reference)
 Cluster corrected energies          -294.29382918 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       736.72    585.33    134.22      5.70      2.89      8.30
 REAL TIME  *       783.56 SEC
 DISK USED  *       861.39 MB (local),       11.16 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.33792752  AU                              
 SETTING HLSDIAG(5)     =      -294.33792747  AU                              
 SETTING HLSDIAG(6)     =      -294.33792757  AU                              
 SETTING HLSDIAG(7)     =      -294.33792758  AU                              
 SETTING HLSDIAG(8)     =      -294.33792754  AU                              
 SETTING HLSDIAG(9)     =      -294.29635246  AU                              


         HLSDIAG
    -294.3667456
    -294.3667455
    -294.3667454
    -294.3379275
    -294.3379275
    -294.3379276
    -294.3379276
    -294.3379275
    -294.2963525
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.309167   -294.309167   -294.309167
 Replaced energies:   -294.366746   -294.366746   -294.366745

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -294.277164   -294.277164   -294.277164   -294.277164   -294.277164   -294.237921
 Replaced energies:   -294.337928   -294.337927   -294.337928   -294.337928   -294.337928   -294.296352



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.36674562

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -181.70
                           -0.00    -446.63      -0.00       0.00       0.00    -315.81       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00      -0.00      -0.00    -315.81       0.00       0.00       0.00       0.00
                          446.63      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     181.62

    3   3.1  1.0  1.0       0.00       0.00       0.04      -0.00     315.81       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     315.81       0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00    -315.81       0.00       0.00       0.00       0.00       0.00    -315.81      -0.00

    5   2.1  1.0  0.0       0.00      -0.00     315.81       0.00       0.02       0.00      -0.00      -0.00    -315.81       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00    -315.81       0.00       0.00       0.00       0.04      -0.00     315.81       0.00       0.00
                          315.81       0.00       0.00      -0.00      -0.00       0.00     315.81       0.00      -0.00    -513.81

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -181.70
                           -0.00      -0.00      -0.00      -0.00       0.00    -315.81       0.00     446.63       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     315.81       0.00       0.02       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -446.63       0.00       0.00    -181.62

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -315.81       0.00       0.00       0.00       0.04       0.00
                           -0.00      -0.00      -0.00     315.81       0.00       0.00      -0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0    -181.70       0.00       0.00       0.00       0.00       0.00    -181.70       0.00       0.00    6324.84
                            0.00    -181.62       0.00       0.00       0.00     513.81      -0.00     181.62      -0.00       0.00

   11   2.1  0.0  0.0    -314.62      -0.00      -0.00       0.00       0.00       0.00    -314.62      -0.00      -0.00       0.00
                           -0.00     314.67       0.00      -0.00       0.00      -0.07       0.00    -314.67      -0.00      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -314.64       0.00    -444.97       0.00       0.00       0.00     314.64      -0.00

   13   4.1  0.0  0.0      -0.00      -0.00     314.64       0.00       0.00       0.00      -0.00      -0.00     314.64       0.00
                           -0.00       0.00       0.00     444.97       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   14   5.1  0.0  0.0       0.00    -314.64      -0.00       0.00       0.00       0.00       0.00    -314.64      -0.00       0.00
                         -314.64      -0.00       0.00      -0.00       0.00       0.00     314.64       0.00      -0.00      -0.00

   15   6.1  0.0  0.0    -523.80       0.00       0.00       0.00       0.00       0.00    -523.80       0.00       0.00       0.00
                            0.00    -523.80      -0.00      -0.00       0.00    -740.77      -0.00     523.80       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0    -314.62      -0.00      -0.00       0.00    -523.80
                            0.00       0.00       0.00     314.64      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00      -0.00    -314.64       0.00
                         -314.67       0.00      -0.00       0.00     523.80

    3   3.1  1.0  1.0      -0.00       0.00     314.64      -0.00       0.00
                           -0.00     314.64      -0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -444.97       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00     444.97      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.07      -0.00       0.00      -0.00     740.77

    7   1.1  1.0 -1.0    -314.62      -0.00      -0.00       0.00    -523.80
                           -0.00      -0.00      -0.00    -314.64       0.00

    8   2.1  1.0 -1.0      -0.00      -0.00      -0.00    -314.64       0.00
                          314.67      -0.00       0.00      -0.00    -523.80

    9   3.1  1.0 -1.0      -0.00       0.00     314.64      -0.00       0.00
                            0.00    -314.64       0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6324.85       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6324.83       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6324.83       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6324.84       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15449.51
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -294.36674562 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -446.629      -0.000    -446.629

    2    1  |1 1>+              0.000       0.019       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     446.629      -0.000

    3    1  |1 1>+              0.000       0.000       0.041      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     446.629       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000    -446.629       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.019       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.041       0.000    -446.629
                              446.629       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -446.629      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    -446.629       0.000       0.019
                              446.629      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     446.629       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>            -256.967       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     513.815       0.000    -256.847

    2    1  |0 0>            -444.942      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.069      -0.000     445.012

    3    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -444.968       0.000      -0.000      -0.000

    4    1  |0 0>              -0.000      -0.000     444.968       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     444.968       0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000    -444.968      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000    -444.968      -0.000

    6    1  |0 0>            -740.769       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -740.769       0.000    -740.769

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -256.967    -444.942      -0.000      -0.000       0.000    -740.769
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000    -444.968       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000     444.968      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000    -444.968       0.000       0.000

    2    1  |1 0>             446.629       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     444.968      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -513.815       0.069      -0.000       0.000      -0.000     740.769

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     444.968      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     256.847    -445.012       0.000      -0.000       0.000     740.769

    3    1  |1 1>-              0.041       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     444.967      -0.000      -0.000       0.000

    1    1  |0 0>               0.000    6324.841       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6324.853       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6324.830       0.000       0.000       0.000
                             -444.967      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6324.829       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6324.838       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15449.513
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.37127168    -0.00452606     -993.35      0.00000000        0.00      0.0000
    2  -294.36878056    -0.00203494     -446.62      0.00249111      546.74      0.0678
    3  -294.36878052    -0.00203490     -446.61      0.00249116      546.75      0.0678
    4  -294.36878047    -0.00203485     -446.60      0.00249120      546.76      0.0678
    5  -294.36501411     0.00173151      380.02      0.00625757     1373.38      0.1703
    6  -294.36501409     0.00173153      380.03      0.00625759     1373.38      0.1703
    7  -294.36501404     0.00173158      380.04      0.00625763     1373.39      0.1703
    8  -294.36501400     0.00173162      380.05      0.00625768     1373.40      0.1703
    9  -294.36501400     0.00173162      380.05      0.00625768     1373.40      0.1703
   10  -294.33762407     0.02912155     6391.44      0.03364760     7384.80      0.9156
   11  -294.33762407     0.02912155     6391.44      0.03364761     7384.80      0.9156
   12  -294.33762403     0.02912159     6391.45      0.03364764     7384.80      0.9156
   13  -294.33762400     0.02912162     6391.46      0.03364767     7384.81      0.9156
   14  -294.33762395     0.02912167     6391.47      0.03364772     7384.82      0.9156
   15  -294.29589629     0.07084933    15549.63      0.07537539    16542.99      2.0511

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57560880 -0.00000000  0.00000000  0.00000000  0.78198972 -0.00000000  0.00000000  0.21854479
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70709856 -0.00000000 -0.00000000  0.00000000  0.70318449  0.00000000 -0.00000000
                           0.00000000  0.00006466 -0.00000000  0.00000000  0.00000000  0.00166391  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.70708960  0.00000000 -0.00000000 -0.00000000  0.70001156  0.00000000
                          -0.00000000 -0.00000000  0.00011185  0.00000000 -0.00000000  0.00000000  0.06684040  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00011186 -0.00000000 -0.00000000  0.00000000  0.06683712  0.00000000
                          -0.00000000  0.00000000  0.70712395  0.00000000  0.00000000  0.00000000 -0.69997722 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.70711574 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.57559211 -0.00000000 -0.00000000  0.00000000  0.20173217  0.00000000 -0.00000000  0.78650682

   1    1  |1 1>-         -0.00000000 -0.00006467  0.00000000 -0.00000000  0.00000000  0.00166387  0.00000000  0.00000000
                           0.00000000  0.70711499 -0.00000000 -0.00000000 -0.00000000 -0.70316799 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.57560080  0.00000000 -0.00000000  0.00000000  0.58027150 -0.00000000  0.00000000 -0.56794709

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.70709783 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000085 -0.00000000  0.00000000  0.00000000  0.02616692  0.00000000 -0.00000000  0.10196370
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000047 -0.00000000 -0.00000000 -0.00000000  0.10196321 -0.00000000  0.00000000 -0.02616696
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000121  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000227  0.00000000  0.00000000  0.00000000 -0.10478914 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01000576 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000105 -0.00000000 -0.00000000  0.00000000  0.10526518  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00024908  0.00000000  0.00000000

   6    1  |0 0>           0.07779431  0.00000000 -0.00000000 -0.00000000 -0.00000069 -0.00000000  0.00000000 -0.00000073
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.04324644 -0.07427785 -0.04491451
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.07443375  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00021457  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.07436325  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00325244 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00325242 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.07436282 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.07359340  0.00000000  0.00025513 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.69930745 -0.00000000  0.07443370  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08595034  0.00031353  0.04491462

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00021457  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.07443349 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.04270349 -0.07459160  0.04491456

   3    1  |1 1>-         -0.07359528  0.00000000  0.00025514 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.69932534 -0.00000000  0.07443388  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.99443778 -0.00349365 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00349367  0.99443783 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.10468778 -0.00000001  0.99443827  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01101708 -0.00000000 -0.00340862  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.99349433  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.04345264 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.99444002 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00286669 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000002  0.99696943
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.37127168     -0.00452606     -993.35      0.00000000        0.00      0.0000
     2   1   -294.36878056     -0.00203494     -446.62      0.00249111      546.74      0.0678
     3   1   -294.36878052     -0.00203490     -446.61      0.00249116      546.75      0.0678
     4   1   -294.36878047     -0.00203485     -446.60      0.00249120      546.76      0.0678
     5   1   -294.36501411      0.00173151      380.02      0.00625757     1373.38      0.1703
     6   1   -294.36501409      0.00173153      380.03      0.00625759     1373.38      0.1703
     7   1   -294.36501404      0.00173158      380.04      0.00625763     1373.39      0.1703
     8   1   -294.36501400      0.00173162      380.05      0.00625768     1373.40      0.1703
     9   1   -294.36501400      0.00173162      380.05      0.00625768     1373.40      0.1703
    10   1   -294.33762407      0.02912155     6391.44      0.03364760     7384.80      0.9156
    11   1   -294.33762407      0.02912155     6391.44      0.03364761     7384.80      0.9156
    12   1   -294.33762403      0.02912159     6391.45      0.03364764     7384.80      0.9156
    13   1   -294.33762400      0.02912162     6391.46      0.03364767     7384.81      0.9156
    14   1   -294.33762395      0.02912167     6391.47      0.03364772     7384.82      0.9156
    15   1   -294.29589629      0.07084933    15549.63      0.07537539    16542.99      2.0511

 E0 =   -294.36674562 is the energy of the lowest zeroth-order state
 E1 =   -294.37127168 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57560880 -0.00000000  0.00000000  0.00000000  0.78198972 -0.00000000  0.00000000  0.21854479
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70709856 -0.00000000 -0.00000000  0.00000000  0.70318449  0.00000000 -0.00000000
                                0.00000000  0.00006466 -0.00000000  0.00000000  0.00000000  0.00166391  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.70708960  0.00000000 -0.00000000 -0.00000000  0.70001156  0.00000000
                               -0.00000000 -0.00000000  0.00011185  0.00000000 -0.00000000  0.00000000  0.06684040  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00011186 -0.00000000 -0.00000000  0.00000000  0.06683712  0.00000000
                               -0.00000000  0.00000000  0.70712395  0.00000000  0.00000000  0.00000000 -0.69997722 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.70711574 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.57559211 -0.00000000 -0.00000000  0.00000000  0.20173217  0.00000000 -0.00000000  0.78650682

  7  1     1    1  |1 1>-      -0.00000000 -0.00006467  0.00000000 -0.00000000  0.00000000  0.00166387  0.00000000  0.00000000
                                0.00000000  0.70711499 -0.00000000 -0.00000000 -0.00000000 -0.70316799 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.57560080  0.00000000 -0.00000000  0.00000000  0.58027150 -0.00000000  0.00000000 -0.56794709

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000074  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.70709783 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000085 -0.00000000  0.00000000  0.00000000  0.02616692  0.00000000 -0.00000000  0.10196370
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000047 -0.00000000 -0.00000000 -0.00000000  0.10196321 -0.00000000  0.00000000 -0.02616696
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000121  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000227  0.00000000  0.00000000  0.00000000 -0.10478914 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01000576 -0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000105 -0.00000000 -0.00000000  0.00000000  0.10526518  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00024908  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.07779431  0.00000000 -0.00000000 -0.00000000 -0.00000069 -0.00000000  0.00000000 -0.00000073
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.04324644 -0.07427785 -0.04491451
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.07443375  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00021457  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.07436325  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00325244 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00325242 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.07436282 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.07359340  0.00000000  0.00025513 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.69930745 -0.00000000  0.07443370  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08595034  0.00031353  0.04491462

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00021457  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.07443349 -0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.04270349 -0.07459160  0.04491456

  9  1     3    1  |1 1>-      -0.07359528  0.00000000  0.00025514 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.69932534 -0.00000000  0.07443388  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.99443778 -0.00349365 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00349367  0.99443783 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.10468778 -0.00000001  0.99443827  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01101708 -0.00000000 -0.00340862  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.99349433  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.04345264 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.99444002 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00286669 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000002  0.99696943
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.13%    0.00%    0.00%    0.00%   61.15%    0.00%    0.00%    4.78%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.13%    0.00%    0.00%    0.00%    4.07%    0.00%    0.00%   61.86%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.13%    0.00%    0.00%    0.00%   33.67%    0.00%    0.00%   32.26%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    1.04%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.04%    0.00%    0.00%    0.07%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.11%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.11%    0.00%    0.00%
 15  1     6    1  |0 0>          0.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.55%    0.20%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         49.44%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.74%    0.00%    0.20%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.18%    0.56%    0.20%
  9  1     3    1  |1 1>-        49.45%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.89%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.89%    0.00%
 12  1     3    1  |0 0>          1.11%    0.00%   98.89%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%   98.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   98.89%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.39%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       980.30    243.56    585.33    134.22      5.70      2.89      8.30
 REAL TIME  *      1055.84 SEC
 DISK USED  *       861.39 MB (local),       11.16 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -294.295896288795

              CI              CI           MULTI         RHF-SCF
   -294.23792101   -294.30916721   -293.28571324   -293.38332010
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
