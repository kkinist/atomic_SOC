
 Working directory              : /wrk/irikura/molpro.Ss80fZBB7O/
 Global scratch directory       : /wrk/irikura/molpro.Ss80fZBB7O/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Ss80fZBB7O/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,900,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
 w(1) = 99
 DO i=2,NSING
   w(i) = 1
 ENDDO
 
                                                                                 ! active space (2/10)
 {multi
     closed,1,3
     occ,8,9
     wf,sym=1,spin=0;state,NSING;
        weight,w
     wf,sym=1,spin=2;state,NTRIP;
        weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 02-May-24          TIME: 18:03:57  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:       900 MW
 Total memory per node:  21600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 900.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  BA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.375E-04 0.266E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.135E-02
         2 0.408E-03 0.408E-03 0.408E-03 0.110E-02 0.110E-02 0.110E-02 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     249.037 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 3.408 MB, node maximum: 17.826 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5449443.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5449443      RECORD LENGTH: 524288

 Memory used in sort:       6.01 MW

 SORT1 READ   226482739. AND WROTE      906112. INTEGRALS IN      3 RECORDS. CPU TIME:     1.31 SEC, REAL TIME:     1.38 SEC
 SORT2 READ    23241716. AND WROTE   131080516. INTEGRALS IN    672 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC

 Node minimum:     5446104.  Node maximum:     5472081. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.05      3.69
 REAL TIME  *         5.04 SEC
 DISK USED  *        30.09 MB (local),        1.16 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.68510439     -24.68510439     0.00D+00     0.26D+00     0     0       0.03      0.07    start
   2      -24.96654727      -0.28144287     0.17D-01     0.15D+00     1     0       0.03      0.10    diag
   3      -25.03741811      -0.07087085     0.39D-02     0.67D-01     2     0       0.04      0.14    diag
   4      -25.08903752      -0.05161941     0.26D-02     0.47D-01     3     0       0.03      0.17    diag
   5      -25.09491156      -0.00587404     0.86D-03     0.77D-02     4     0       0.03      0.20    diag
   6      -25.09500726      -0.00009570     0.12D-03     0.13D-02     5     0       0.04      0.24    diag
   7      -25.09501691      -0.00000965     0.39D-04     0.13D-02     6     0       0.03      0.27    diag
   8      -25.09501760      -0.00000069     0.12D-04     0.30D-03     7     0       0.04      0.31    fixocc
   9      -25.09501761      -0.00000001     0.17D-05     0.19D-04     8     0       0.04      0.35    diag
  10      -25.09501761      -0.00000000     0.38D-06     0.44D-05     9     0       0.04      0.39    diag/orth
  11      -25.09501761      -0.00000000     0.96D-07     0.25D-05     9     0       0.04      0.43    diag
  12      -25.09501761      -0.00000000     0.10D-07     0.84D-07     0     0       0.04      0.47    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095017612110
  RHF One-electron energy             -41.272199558955
  RHF Two-electron energy              16.177181946845
  RHF Kinetic energy                    6.695439484744
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748076234471

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99988
    2.1     2.00000    -0.16318     1  1  s   -0.31509    1  4  s    0.47981    1  5  s    0.61878
    1.2     2.00000    -0.89696     1  1  pz   0.99995
    2.2     2.00000    -0.89696     1  1  px   0.99995
    3.2     2.00000    -0.89696     1  1  py   0.99995


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.006813 =       0.1854eV
 LUMO-HOMO         0.169992 =       4.6257eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.73       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.53      0.47      3.69
 REAL TIME  *         5.58 SEC
 DISK USED  *        32.15 MB (local),        1.21 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  
 SETTING W(1)           =        99.00000000                                  

 DO I                   =         2.00000000   
 SETTING W(2)           =         1.00000000                                  

 DO I                   =         3.00000000   
 SETTING W(3)           =         1.00000000                                  

 DO I                   =         4.00000000   
 SETTING W(4)           =         1.00000000                                  

 DO I                   =         5.00000000   
 SETTING W(5)           =         1.00000000                                  

 DO I                   =         6.00000000   
 SETTING W(6)           =         1.00000000                                  

 DO I                   =         7.00000000   
 SETTING W(7)           =         1.00000000                                  

 DO I                   =         8.00000000   
 SETTING W(8)           =         1.00000000                                  

 DO I                   =         9.00000000   
 SETTING W(9)           =         1.00000000                                  

 DO I                   =        10.00000000   
 SETTING W(10)          =         1.00000000                                  

 DO I                   =        11.00000000   
 SETTING W(11)          =         1.00000000                                  

 DO I                   =        12.00000000   
 SETTING W(12)          =         1.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:     196 (   93  103)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.439D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.254D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 5 3 2 4   6 3 5 1 2 4 6 5 312   8 911 714151310 1 2   4 6 5 3 1 2 6 4 3 5
                                       11 9 81213101514 7 2   6 4 3 5 1 91112 814  15 71310 2 3 6 4 5 9  1112 81514 71310 111
                                        912 81514 71310 3 6   4 5 2 6 5 3 4 2 1 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.230D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.230D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.346D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.346D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.427D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.427D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 1 3   2 1 5 4 6 810 9 7 3   2 11112151719211314  162018 3 2 1 810 4 5
                                        6 7 9 9 7 810 5 4 6   3 2 1 6 5 410 8 9 7  19211316141517121118  20 3 2 110 8 9 7 5 4
                                        6 3 2 1111219182016  1415172113 5 410 8 6   9 7 9 7 5 410 8 6 1   3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.78571   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
                                          0.00794   0.00794   0.00794   0.00794
 Weight factors for state symmetry  2:    0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
                                          0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794   0.00794
 
 Number of orbital rotations:  1696  ( 25 closed/active, 402 closed/virtual, 0 active/active, 1269 active/virtual )
 Total number of variables:    3292
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   32    5    -25.06489906     -25.10341062   -0.03851157    0.01681037 0.00007823 0.00000000  0.27E+01      2.17
   2   10   18    0    -25.09586996     -25.09775485   -0.00188489    0.00712945 0.00001615 0.00000000  0.93E+00      3.92
   3   10   18    0    -25.09776747     -25.09776847   -0.00000100    0.00017447 0.00000002 0.00000000  0.15E-01      5.66
   4    4    8    0    -25.09776847     -25.09776847   -0.00000000    0.00000031 0.00000000 0.00000000  0.20E-04      6.89

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.21E-08)
                       Final energy:    -25.09776847
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.118561653507
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.70120470
 One electron energy                           -41.26954043
 Two electron energy                            16.15097877
 Virial ratio                                    4.74836507
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054295175428
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86811745
 One electron energy                           -41.43891000
 Two electron energy                            16.38461482
 Virial ratio                                    4.64791304
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054295175418
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86811745
 One electron energy                           -41.43891000
 Two electron energy                            16.38461483
 Virial ratio                                    4.64791303
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054295175321
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86811745
 One electron energy                           -41.43891000
 Two electron energy                            16.38461482
 Virial ratio                                    4.64791304
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054295175180
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86811745
 One electron energy                           -41.43890999
 Two electron energy                            16.38461481
 Virial ratio                                    4.64791304
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054295174997
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86811744
 One electron energy                           -41.43890997
 Two electron energy                            16.38461480
 Virial ratio                                    4.64791304
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.999890351735
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.00844818
 One electron energy                           -41.59249567
 Two electron energy                            16.59260532
 Virial ratio                                    4.56710782
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.999890351653
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.00844819
 One electron energy                           -41.59249568
 Two electron energy                            16.59260532
 Virial ratio                                    4.56710782
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.999890351631
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.00844819
 One electron energy                           -41.59249568
 Two electron energy                            16.59260533
 Virial ratio                                    4.56710782
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.999890351629
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.00844819
 One electron energy                           -41.59249568
 Two electron energy                            16.59260533
 Virial ratio                                    4.56710782
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.999890351535
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.00844819
 One electron energy                           -41.59249569
 Two electron energy                            16.59260534
 Virial ratio                                    4.56710782
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.992133571041
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85198080
 One electron energy                           -41.08475315
 Two electron energy                            16.09261958
 Virial ratio                                    4.64743193
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.060491684365
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.88441172
 One electron energy                           -41.55052742
 Two electron energy                            16.49003574
 Virial ratio                                    4.64017910
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.060491684331
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.88441172
 One electron energy                           -41.55052742
 Two electron energy                            16.49003573
 Virial ratio                                    4.64017910
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.060491684267
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.88441172
 One electron energy                           -41.55052742
 Two electron energy                            16.49003573
 Virial ratio                                    4.64017911
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.060491684057
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.88441171
 One electron energy                           -41.55052740
 Two electron energy                            16.49003572
 Virial ratio                                    4.64017911
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.060491683789
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.88441171
 One electron energy                           -41.55052739
 Two electron energy                            16.49003570
 Virial ratio                                    4.64017911
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.002580421270
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857795
 One electron energy                           -41.90624487
 Two electron energy                            16.90366445
 Virial ratio                                    4.51724080
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.002580421249
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624486
 Two electron energy                            16.90366444
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.002580421237
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624484
 Two electron energy                            16.90366442
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.002580421208
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624485
 Two electron energy                            16.90366443
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.002580421179
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624486
 Two electron energy                            16.90366444
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.002580421162
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624484
 Two electron energy                            16.90366442
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.002580421146
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.10857794
 One electron energy                           -41.90624486
 Two electron energy                            16.90366444
 Virial ratio                                    4.51724081
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.000357264568
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.95125623
 One electron energy                           -41.42514844
 Two electron energy                            16.42479118
 Virial ratio                                    4.59652363
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000357264312
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.95125623
 One electron energy                           -41.42514846
 Two electron energy                            16.42479119
 Virial ratio                                    4.59652363
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000357264244
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.95125623
 One electron energy                           -41.42514846
 Two electron energy                            16.42479120
 Virial ratio                                    4.59652362
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.996569352087
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.70153408
 One electron energy                           -40.55275300
 Two electron energy                            15.55618364
 Virial ratio                                    4.72997720
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.868023082293
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.131976927040
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000002
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     3.196433886502
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000001
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     4.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000000000
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.803567000672
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.973692655131
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999993
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.026306029063
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.869511030926
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999999810
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.605530807874
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     5.891680488018
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     8.394471926424
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.130487170116
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     4.108314156756
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>    -0.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.138062972936
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.861937016845
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999999999998
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.013831520700
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000076
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.999999999862
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.986168609277
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.026540096080
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000031
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.973461243095
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     2.689206005883
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000084
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.448726803525
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     6.107542752280
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.551274978070
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     7.310785728152
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.892462526180
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.993913944771
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.006086056114
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.999999999999
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     2.789734592798
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999999999923
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000000138
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.210264390050
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999767248789
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999976
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000232727842
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     5.441282963191
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000000106
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     6.945742388601
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000776759702
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.054253095506
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     4.558727101732
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.999223317064
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 4 5 3 2 6 1 3 6   2 5 4 1 3 6 5 2 4 1  11 7 81214151310 9 5   6 3 2 4 1 2 6 3 4 5
                                       11 7 8121514 91310 6   2 3 5 4 111 7 812 9  15141310 6 2 3 4 511   7 812 915141310 111
                                        7 812 914151310 6 2   4 3 5 6 2 4 3 5 1 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 2 1 1   2 3 1 2 3 5 610 4 8   9 71219211314161517  201811 1 2 3 4 6 510
                                        8 7 9 5 6 810 4 9 7   1 3 2 5 6 810 4 9 7  12192113141611151718  20 2 3 1 5 6 810 4 9
                                        7 3 2 1121921131416  1115172018 5 6 810 4   9 7 5 9 7 6 4 810 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.59221     1  1  s    0.99675
    2.1     1.52547    -0.12412     1  1  s   -0.32004    1  4  s    0.53485    1  5  s    0.63612
    3.1     0.05971     0.06091     1  2  d1+  0.34465    1  3  d1+  0.37711
    4.1     0.05971     0.06091     1  2  d2+  0.34465    1  3  d2+  0.37711
    5.1     0.05971     0.06091     1  2  d2-  0.34465    1  3  d2-  0.37711
    6.1     0.05971     0.06091     1  2  d0   0.34465    1  3  d0   0.37711
    7.1     0.05971     0.06091     1  2  d1-  0.34465    1  3  d1-  0.37711
    8.1     0.01360     0.07338     1  1  s    0.29925    1  2  s    0.36575    1  4  s   -1.47633    1  6  s    1.23466
                                    1 11  s    0.27547
    1.2     2.00000    -0.88671     1  1  py   0.99853
    2.2     2.00000    -0.88671     1  1  pz   0.99853
    3.2     2.00000    -0.88671     1  1  px   0.99853
    4.2     0.05351     0.04994     1  1  pz  -0.39040    1  2  pz   0.39921    1  3  pz   0.51590    1  4  pz   0.26511
    5.2     0.05351     0.04994     1  1  py  -0.39040    1  2  py   0.39921    1  3  py   0.51590    1  4  py   0.26511
    6.2     0.05351     0.04994     1  1  px  -0.39040    1  2  px   0.39921    1  3  px   0.51590    1  4  px   0.26511
    7.2     0.00061     0.14855     1  1  pz   0.42631    1  2  pz  -1.36957    1  4  pz   1.00085    1  5  pz   0.34538
    8.2     0.00061     0.14855     1  1  py   0.42631    1  2  py  -1.36957    1  4  py   1.00085    1  5  py   0.34538
    9.2     0.00061     0.14855     1  1  px   0.42631    1  2  px  -1.36957    1  4  px   1.00085    1  5  px   0.34538
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95794629      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0000b0 000000     -0.00000000      0.00000025      0.64494495      0.00000000     -0.00000000      0.00000000     -0.00000001
 b0000a0 000000      0.00000000     -0.00000025     -0.64494495     -0.00000000      0.00000000     -0.00000000      0.00000001
 a00b000 000000      0.00000000     -0.00000043     -0.00000000      0.64494495     -0.00000007      0.00000006     -0.00000001
 b00a000 000000     -0.00000000      0.00000043      0.00000000     -0.64494495      0.00000007     -0.00000006      0.00000001
 ba00000 000000      0.00000000      0.00000002      0.00000000      0.00000006      0.00000100     -0.64494495     -0.00000000
 ab00000 000000     -0.00000000     -0.00000002     -0.00000000     -0.00000006     -0.00000100      0.64494495      0.00000000
 b0a0000 000000     -0.00000000     -0.64445412      0.00000025     -0.00000043     -0.02515710     -0.00000005     -0.01817196
 a0b0000 000000      0.00000000      0.64445412     -0.00000025      0.00000043      0.02515710      0.00000005      0.01817196
 a000b00 000000     -0.00000000     -0.02515710      0.00000001      0.00000006      0.64445412      0.00000100      0.01196907
 b000a00 000000      0.00000000      0.02515710     -0.00000001     -0.00000006     -0.64445412     -0.00000100     -0.01196907
 000ab00 000000     -0.00000000     -0.00000008     -0.00000000      0.11954055     -0.00000001      0.00000001      0.00000021
 000ba00 000000      0.00000000      0.00000008      0.00000000     -0.11954055      0.00000001     -0.00000001     -0.00000021
 0200000 000000     -0.04173823     -0.10111493      0.00000004     -0.00000007     -0.06376295     -0.00000010      0.46502808
 a00000b 000000     -0.00271738      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 b00000a 000000      0.00271738     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000001
 0000020 000000     -0.04173823      0.10577780     -0.00000004      0.00000006     -0.05568663     -0.00000008     -0.20879117
 0ab0000 000000      0.00000000      0.00000000      0.00000000      0.00000001      0.00000016     -0.10352516      0.00000007
 0ba0000 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000016      0.10352516     -0.00000007
 0b0a000 000000     -0.00000000      0.00000004      0.10352516      0.00000000     -0.00000000      0.00000000      0.00000021
 0a0b000 000000      0.00000000     -0.00000004     -0.10352516     -0.00000000      0.00000000     -0.00000000     -0.00000021
 0a000b0 000000      0.00000000      0.00000007      0.00000000     -0.10352516      0.00000001     -0.00000001     -0.00000018
 0b000a0 000000     -0.00000000     -0.00000007     -0.00000000      0.10352516     -0.00000001      0.00000001      0.00000018
 00b00a0 000000      0.00000000     -0.00000004     -0.10352516     -0.00000000      0.00000000     -0.00000000     -0.00000021
 00a00b0 000000     -0.00000000      0.00000004      0.10352516      0.00000000     -0.00000000      0.00000000      0.00000021
 000a0b0 000000      0.00000000      0.00000000      0.00000000      0.00000001      0.00000016     -0.10352516      0.00000007
 000b0a0 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000016      0.10352516     -0.00000007
 0000200 000000     -0.04173823      0.00466287     -0.00000000     -0.00000001     -0.11944958     -0.00000018      0.25623690
 0020000 000000     -0.04173823     -0.00466287      0.00000000      0.00000001      0.11944958      0.00000018     -0.25623688
 00a0b00 000000     -0.00000000      0.11944958     -0.00000005      0.00000008      0.00466287      0.00000001     -0.38902972
 00b0a00 000000      0.00000000     -0.11944958      0.00000005     -0.00000008     -0.00466287     -0.00000001      0.38902972
 0002000 000000     -0.04173823     -0.00466287      0.00000000      0.00000001      0.11944958      0.00000018     -0.25623688
 0000000 020000     -0.15493010      0.22969633     -0.00000009      0.00000017      0.14484622      0.00000023      0.37634480
 0000000 002000     -0.15493010     -0.24028867      0.00000009     -0.00000014      0.12649975      0.00000019     -0.16897363
 0000000 0ba000     -0.00000000     -0.00000016     -0.00000000      0.23517148     -0.00000003      0.00000002     -0.00000014
 0000000 0ab000      0.00000000      0.00000016      0.00000000     -0.23517148      0.00000003     -0.00000002      0.00000014
 0000000 ba0000     -0.00000000      0.00000009      0.23517148      0.00000000     -0.00000000      0.00000000     -0.00000017
 0000000 ab0000      0.00000000     -0.00000009     -0.23517148     -0.00000000      0.00000000     -0.00000000      0.00000017
 0000000 a0b000     -0.00000000      0.00000001      0.00000000      0.00000002      0.00000036     -0.23517148     -0.00000005
 0000000 b0a000      0.00000000     -0.00000001     -0.00000000     -0.00000002     -0.00000036      0.23517148      0.00000005
 0000000 200000     -0.15493010      0.01059234     -0.00000000     -0.00000002     -0.27134597     -0.00000042     -0.20737120
 0b00a00 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000009      0.05977028     -0.00000004
 0a00b00 000000      0.00000000      0.00000000      0.00000000      0.00000001      0.00000009     -0.05977028      0.00000004
 0000ab0 000000      0.00000000     -0.00000002     -0.05977028     -0.00000000      0.00000000     -0.00000000     -0.00000012
 0000ba0 000000     -0.00000000      0.00000002      0.05977028      0.00000000     -0.00000000      0.00000000      0.00000012
 00000ab 000000     -0.00000000      0.00000002      0.05848810      0.00000000     -0.00000000      0.00000000     -0.00000005
 00000ba 000000      0.00000000     -0.00000002     -0.05848810     -0.00000000      0.00000000     -0.00000000      0.00000005
 000a00b 000000     -0.00000000     -0.00000004     -0.00000000      0.05848810     -0.00000001      0.00000001     -0.00000004
 000b00a 000000      0.00000000      0.00000004      0.00000000     -0.05848810      0.00000001     -0.00000001      0.00000004
 0b0000a 000000     -0.00000000      0.00000000      0.00000000      0.00000001      0.00000009     -0.05848810     -0.00000002
 0a0000b 000000      0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000009      0.05848810      0.00000002
 0000000 0b00a0     -0.00831533     -0.01123379      0.00000000     -0.00000001     -0.00708401     -0.00000001     -0.05241659
 0000000 0a00b0      0.00831533      0.01123379     -0.00000000      0.00000001      0.00708401      0.00000001      0.05241659
 0000000 b00a00     -0.00831533     -0.00051804      0.00000000      0.00000000      0.01327075      0.00000002      0.02888227
 0000000 a00b00      0.00831533      0.00051804     -0.00000000     -0.00000000     -0.01327075     -0.00000002     -0.02888227
 0000000 00a00b      0.00831533     -0.01175183      0.00000000     -0.00000001      0.00618674      0.00000001     -0.02353433
 0000000 00b00a     -0.00831533      0.01175183     -0.00000000      0.00000001     -0.00618674     -0.00000001      0.02353433
 0000b0a 000000     -0.00000000      0.00228142     -0.00000000     -0.00000001     -0.05844359     -0.00000009     -0.05222661
 0000a0b 000000      0.00000000     -0.00228142      0.00000000      0.00000001      0.05844359      0.00000009      0.05222661
 00a000b 000000      0.00000000      0.05844359     -0.00000002      0.00000004      0.00228142      0.00000000      0.07929266
 00b000a 000000     -0.00000000     -0.05844359      0.00000002     -0.00000004     -0.00228142     -0.00000000     -0.07929266
 0000002 000000     -0.03316924     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:           -25.11856165    -25.05429518    -25.05429518    -25.05429518    -25.05429518    -25.05429517    -24.99989035

 State:                   8               9              10              11              12
 2000000 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.06148312
 a0000b0 000000     -0.00000000      0.02175957      0.00000000      0.00000000     -0.00000000
 b0000a0 000000      0.00000000     -0.02175957     -0.00000000     -0.00000000      0.00000000
 a00b000 000000     -0.02175957     -0.00000000      0.00000011      0.00000001     -0.00000000
 b00a000 000000      0.02175957      0.00000000     -0.00000011     -0.00000001      0.00000000
 ba00000 000000     -0.00000011     -0.00000000     -0.02175957     -0.00000000     -0.00000000
 ab00000 000000      0.00000011      0.00000000      0.02175957      0.00000000      0.00000000
 b0a0000 000000      0.00000001     -0.00000001      0.00000000      0.01196907     -0.00000000
 a0b0000 000000     -0.00000001      0.00000001     -0.00000000     -0.01196907      0.00000000
 a000b00 000000     -0.00000000      0.00000001     -0.00000000      0.01817196     -0.00000000
 b000a00 000000      0.00000000     -0.00000001      0.00000000     -0.01817196      0.00000000
 000ab00 000000      0.46583416      0.00000005     -0.00000235     -0.00000012      0.00000000
 000ba00 000000     -0.46583416     -0.00000005      0.00000235      0.00000012     -0.00000000
 0200000 000000     -0.00000021      0.00000024     -0.00000007     -0.02739279      0.26759216
 a00000b 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.43981476
 b00000a 000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.43981476
 0000020 000000      0.00000020     -0.00000011      0.00000001      0.41642252      0.26759217
 0ab0000 000000      0.00000204      0.00000000      0.40342423      0.00000002      0.00000000
 0ba0000 000000     -0.00000204     -0.00000000     -0.40342423     -0.00000002     -0.00000000
 0b0a000 000000      0.00000004     -0.40342422     -0.00000000     -0.00000000      0.00000000
 0a0b000 000000     -0.00000004      0.40342422      0.00000000      0.00000000     -0.00000000
 0a000b0 000000     -0.40342422     -0.00000004      0.00000204      0.00000010     -0.00000000
 0b000a0 000000      0.40342422      0.00000004     -0.00000204     -0.00000010      0.00000000
 00b00a0 000000     -0.00000004      0.40342422      0.00000000      0.00000000     -0.00000000
 00a00b0 000000      0.00000004     -0.40342422     -0.00000000     -0.00000000      0.00000000
 000a0b0 000000      0.00000204      0.00000000      0.40342422      0.00000002     -0.00000000
 000b0a0 000000     -0.00000204     -0.00000000     -0.40342422     -0.00000002      0.00000000
 0000200 000000     -0.00000001      0.00000013     -0.00000006      0.38902973      0.26759216
 0020000 000000      0.00000001     -0.00000013      0.00000006     -0.38902972      0.26759218
 00a0b00 000000      0.00000024     -0.00000020      0.00000005      0.25623689      0.00000002
 00b0a00 000000     -0.00000024      0.00000020     -0.00000005     -0.25623689     -0.00000002
 0002000 000000      0.00000001     -0.00000013      0.00000006     -0.38902972      0.26759218
 0000000 020000     -0.00000017      0.00000020     -0.00000006     -0.02216885     -0.25639427
 0000000 002000      0.00000016     -0.00000009      0.00000001      0.33700858     -0.25639425
 0000000 0ba000     -0.32648913     -0.00000004      0.00000165      0.00000008     -0.00000000
 0000000 0ab000      0.32648913      0.00000004     -0.00000165     -0.00000008      0.00000000
 0000000 ba0000     -0.00000004      0.32648913      0.00000000      0.00000000     -0.00000000
 0000000 ab0000      0.00000004     -0.32648913     -0.00000000     -0.00000000      0.00000000
 0000000 a0b000     -0.00000165     -0.00000000     -0.32648913     -0.00000002     -0.00000000
 0000000 b0a000      0.00000165      0.00000000      0.32648913      0.00000002      0.00000000
 0000000 200000      0.00000001     -0.00000011      0.00000005     -0.31483974     -0.25639425
 0b00a00 000000     -0.00000117     -0.00000000     -0.23291709     -0.00000001     -0.00000000
 0a00b00 000000      0.00000117      0.00000000      0.23291709      0.00000001      0.00000000
 0000ab0 000000     -0.00000003      0.23291708      0.00000000      0.00000000     -0.00000000
 0000ba0 000000      0.00000003     -0.23291708     -0.00000000     -0.00000000      0.00000000
 00000ab 000000     -0.00000001      0.09494707      0.00000000      0.00000000     -0.00000000
 00000ba 000000      0.00000001     -0.09494707     -0.00000000     -0.00000000      0.00000000
 000a00b 000000     -0.09494707     -0.00000001      0.00000048      0.00000002      0.00000000
 000b00a 000000      0.09494707      0.00000001     -0.00000048     -0.00000002     -0.00000000
 0b0000a 000000     -0.00000048     -0.00000000     -0.09494707     -0.00000000      0.00000000
 0a0000b 000000      0.00000048      0.00000000      0.09494707      0.00000000     -0.00000000
 0000000 0b00a0      0.00000002     -0.00000003      0.00000001      0.00308764      0.08991912
 0000000 0a00b0     -0.00000002      0.00000003     -0.00000001     -0.00308764     -0.08991912
 0000000 b00a00     -0.00000000      0.00000001     -0.00000001      0.04385029      0.08991912
 0000000 a00b00      0.00000000     -0.00000001      0.00000001     -0.04385029     -0.08991912
 0000000 00a00b      0.00000002     -0.00000001      0.00000000      0.04693792     -0.08991912
 0000000 00b00a     -0.00000002      0.00000001     -0.00000000     -0.04693792      0.08991912
 0000b0a 000000      0.00000000     -0.00000003      0.00000001     -0.07929266      0.00000000
 0000a0b 000000     -0.00000000      0.00000003     -0.00000001      0.07929266     -0.00000000
 00a000b 000000     -0.00000005      0.00000004     -0.00000001     -0.05222661     -0.00000000
 00b000a 000000      0.00000005     -0.00000004      0.00000001      0.05222661      0.00000000
 0000002 000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.07470899
 
 Energy:           -24.99989035    -24.99989035    -24.99989035    -24.99989035    -24.99213357
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 00a0a00 000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000082      1.00000000
 000aa00 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000023      0.00000193
 aa00000 000000     -0.00000000      0.00000001      0.00000011     -0.00000058      0.99902665      0.00000000     -0.00000000
 a00a000 000000      0.00000000      0.00000117      0.99902665     -0.00000242     -0.00000011      0.00000000     -0.00000000
 a0000a0 000000      0.99902665      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00 000000      0.00000000     -0.00762067      0.00000243      0.99899758      0.00000058      0.00000000     -0.00000000
 a0a0000 000000     -0.00000000      0.99899758     -0.00000115      0.00762067     -0.00000000      0.00000000      0.00000000
 a00000a 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0a000a0 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000123     -0.00000481
 00a00a0 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.89216946      0.00000070
 0aa0000 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000685
 0a0a000 000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.16154812      0.00000023
 000a0a0 000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000314
 00aa000 000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000062      0.00000241
 0000aa0 000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.42182444     -0.00000054
 0a00a00 000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000214
 0000000 aa0000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000
 0000000 0aa000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 a0a000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 a00a00      0.00000000     -0.00002408      0.00000001      0.00315614      0.00000000     -0.00000000     -0.00000000
 0000000 0a00a0      0.00000000     -0.00272126     -0.00000000     -0.00159892     -0.00000000      0.00000000     -0.00000000
 0000000 00a00a     -0.00000000      0.00274534     -0.00000001     -0.00155722     -0.00000000     -0.00000000      0.00000000
 0000000 00aa00     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00273338     -0.00000000     -0.00000000
 0000000 0a0a00      0.00273338     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 a0000a      0.00000000      0.00000000      0.00000000     -0.00000000      0.00273338      0.00000000      0.00000000
 0000000 a000a0      0.00273338      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 00a0a0     -0.00000000      0.00000000      0.00273338     -0.00000001     -0.00000000     -0.00000000      0.00000000
 0000000 0a000a      0.00000000      0.00000000      0.00273338     -0.00000001     -0.00000000      0.00000000     -0.00000000
 
 Energy:           -25.06049168    -25.06049168    -25.06049168    -25.06049168    -25.06049168    -25.00258042    -25.00258042

 State:                   8               9              10              11              12              13              14
 00a0a00 000000      0.00000781      0.00000541      0.00000066     -0.00000041     -0.00000186      0.00000000      0.00000000
 000aa00 000000      0.00000017     -0.01393520      0.00000371      0.00000013      0.99990290     -0.00000000      0.00000000
 aa00000 000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000 000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0000a0 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a0a0000 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a00000a 000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0a000a0 000000     -0.00000164      0.89434035      0.00000096     -0.00000011      0.01246402     -0.00000005     -0.00000000
 00a00a0 000000      0.00000000     -0.00000124      0.00000002     -0.06351098     -0.00000022      0.00000000      0.35570396
 0aa0000 000000      0.88714852      0.00000175     -0.11387500     -0.00000000      0.00000030     -0.35570394      0.00000000
 0a0a000 000000     -0.00000003      0.00000033     -0.00000023      0.87971713     -0.00000007      0.00000000      0.35570392
 000a0a0 000000      0.33204613     -0.00000024      0.83050908      0.00000023     -0.00000314      0.35570400     -0.00000000
 00aa000 000000      0.00000082     -0.44717015     -0.00000048      0.00000005     -0.00623201     -0.00000010     -0.00000000
 0000aa0 000000      0.00000001      0.00000052      0.00000012     -0.47123681      0.00000017      0.00000000      0.61609731
 0a00a00 000000      0.32048849      0.00000114     -0.54524046     -0.00000013      0.00000199      0.61609728     -0.00000000
 0000000 aa0000      0.00000000     -0.00000000      0.00000000     -0.00000002      0.00000000     -0.00000000     -0.59474269
 0000000 0aa000     -0.00000000      0.00000002      0.00000000      0.00000000      0.00000000     -0.00000008     -0.00000000
 0000000 a0a000     -0.00000001      0.00000000     -0.00000004     -0.00000000      0.00000000      0.59474269     -0.00000000
 0000000 a00a00     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 0a00a0     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 00a00a     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 00aa00      0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000     -0.08253188      0.00000000
 0000000 0a0a00     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.08253188
 0000000 a0000a     -0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000000      0.08253188     -0.00000000
 0000000 a000a0      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.08253188
 0000000 00a0a0      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000001      0.00000000
 0000000 0a000a     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001     -0.00000000
 
 Energy:           -25.00258042    -25.00258042    -25.00258042    -25.00258042    -25.00258042    -25.00035726    -25.00035726

 State:                  15              16
 00a0a00 000000      0.00000000     -0.00000000
 000aa00 000000     -0.00000000      0.00000000
 aa00000 000000     -0.00000000      0.00000000
 a00a000 000000      0.00000000      0.00000000
 a0000a0 000000      0.00000000      0.00000000
 a000a00 000000     -0.00000000      0.00000000
 a0a0000 000000     -0.00000000      0.00000000
 a00000a 000000     -0.00000000      0.98082110
 0a000a0 000000      0.35570391      0.00000000
 00a00a0 000000      0.00000000      0.00000000
 0aa0000 000000     -0.00000005     -0.00000000
 0a0a000 000000      0.00000000     -0.00000000
 000a0a0 000000      0.00000005     -0.00000000
 00aa000 000000      0.71140790      0.00000000
 0000aa0 000000      0.00000000      0.00000000
 0a00a00 000000      0.00000008      0.00000000
 0000000 aa0000     -0.00000000     -0.00000000
 0000000 0aa000      0.59474269      0.00000000
 0000000 a0a000      0.00000008      0.00000000
 0000000 a00a00      0.00000000     -0.11253144
 0000000 0a00a0      0.00000000     -0.11253144
 0000000 00a00a     -0.00000000     -0.11253143
 0000000 00aa00     -0.00000001     -0.00000000
 0000000 0a0a00      0.00000000      0.00000000
 0000000 a0000a      0.00000001      0.00000000
 0000000 a000a0     -0.00000000     -0.00000000
 0000000 00a0a0     -0.08253188      0.00000000
 0000000 0a000a      0.08253188      0.00000000
 
 Energy:           -25.00035726    -24.99656935
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.70       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.36      5.82      0.47      3.69
 REAL TIME  *        13.66 SEC
 DISK USED  *        72.48 MB (local),        2.16 GB (total)
 SF USED    *       132.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11856165   -0.0
    -25.05429518    6.0
    -25.05429518    6.0
    -25.05429518    6.0
    -25.05429518    6.0
    -25.05429517    6.0
    -24.99989035    6.0
    -24.99989035    6.0
    -24.99989035    6.0
    -24.99989035    6.0
    -24.99989035    6.0
    -24.99213357    0.0
    -25.06049168    6.0
    -25.06049168    6.0
    -25.06049168    6.0
    -25.06049168    6.0
    -25.06049168    6.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00258042   12.0
    -25.00035726    2.0
    -25.00035726    2.0
    -25.00035726    2.0
    -24.99656935   -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    18369 conf    44681 CSFs
 N-1 el internal:     4797 conf    14053 CSFs
 N-2 el internal:      543 conf     1681 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     196 (  93 103 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11856165
     2       -25.05429518
     3       -25.05429518
     4       -25.05429518
     5       -25.05429518
     6       -25.05429517
     7       -24.99989035
     8       -24.99989035
     9       -24.99989035
    10       -24.99989035
    11       -24.99989035
    12       -24.99213357

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.42D+00
 Number of N-2 electron functions:     297
 Number of N-1 electron functions:   14053

 Number of internal configurations:                22428
 Number of singly external configurations:       1377199
 Number of doubly external configurations:       2858315
 Total number of contracted configurations:      4257942
 Total number of uncontracted configurations:   17546986

 Diagonal Coupling coefficients finished.               Storage:13922065 words, CPU-Time:      2.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2058872 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11856165    -0.00000000    -0.24371155  0.37D-01  0.44D-01     5.12
    1     2     2     1.00000000     0.00000000   -25.05429518     0.00000000    -0.26299182  0.51D-01  0.52D-01     5.12
    1     3     3     1.00000000     0.00000000   -25.05429518     0.00000000    -0.26335329  0.52D-01  0.52D-01     5.12
    1     4     4     1.00000000     0.00000000   -25.05429518    -0.00000000    -0.26321669  0.51D-01  0.52D-01     5.12
    1     5     5     1.00000000     0.00000000   -25.05429518     0.00000000    -0.26305265  0.51D-01  0.52D-01     5.12
    1     6     6     1.00000000     0.00000000   -25.05429517    -0.00000000    -0.26309421  0.51D-01  0.52D-01     5.12
    1     7     7     1.00000000     0.00000000   -24.99989035    -0.00000000    -0.27111846  0.45D-01  0.62D-01     5.12
    1     8     8     1.00000000     0.00000000   -24.99989035    -0.00000000    -0.27179722  0.45D-01  0.62D-01     5.12
    1     9     9     1.00000000     0.00000000   -24.99989035    -0.00000000    -0.27178859  0.45D-01  0.62D-01     5.12
    1    10    10     1.00000000     0.00000000   -24.99989035    -0.00000000    -0.27172627  0.45D-01  0.62D-01     5.12
    1    11    11     1.00000000     0.00000000   -24.99989035    -0.00000000    -0.27089681  0.44D-01  0.62D-01     5.12
    1    12    12     1.00000000     0.00000000   -24.99213357     0.00000000    -0.25825669  0.47D-01  0.55D-01     5.12
    2     1     1     1.06823939    -0.24607703   -25.36463868    -0.24607703    -0.00606686  0.16D-02  0.76D-03    56.52
    2     2     2     1.08191258    -0.25168963   -25.30598481    -0.25168963    -0.00765456  0.28D-02  0.11D-02    56.52
    2     3     3     1.08195863    -0.25168558   -25.30598076    -0.25168558    -0.00766641  0.29D-02  0.11D-02    56.52
    2     4     4     1.08200765    -0.25166040   -25.30595557    -0.25166040    -0.00769936  0.29D-02  0.11D-02    56.52
    2     5     5     1.08198444    -0.25165756   -25.30595274    -0.25165756    -0.00769951  0.29D-02  0.11D-02    56.52
    2     6     6     1.08201966    -0.25163361   -25.30592878    -0.25163361    -0.00772448  0.29D-02  0.11D-02    56.52
    2     7     7     1.08187993    -0.25225858   -25.25214893    -0.25225858    -0.00794628  0.33D-02  0.15D-02    56.52
    2     8     8     1.08198590    -0.25215178   -25.25204213    -0.25215178    -0.00810264  0.35D-02  0.16D-02    56.52
    2     9     9     1.08207371    -0.25203940   -25.25192975    -0.25203940    -0.00826336  0.37D-02  0.16D-02    56.52
    2    10    10     1.08206339    -0.25203780   -25.25192816    -0.25203780    -0.00826548  0.37D-02  0.16D-02    56.52
    2    11    11     1.08207947    -0.25203531   -25.25192567    -0.25203531    -0.00826835  0.37D-02  0.16D-02    56.52
    2    12    12     1.07902909    -0.24820574   -25.24033931    -0.24820574    -0.00855418  0.33D-02  0.17D-02    56.52
    3     1     1     1.07083303    -0.25235901   -25.37092066    -0.00628198    -0.00023350  0.48D-04  0.33D-04   106.73
    3     2     2     1.08427209    -0.25923794   -25.31353311    -0.00754831    -0.00046323  0.17D-03  0.80D-04   106.73
    3     3     3     1.08428747    -0.25923658   -25.31353175    -0.00755100    -0.00046525  0.17D-03  0.80D-04   106.73
    3     4     4     1.08428925    -0.25923506   -25.31353023    -0.00757466    -0.00046667  0.17D-03  0.81D-04   106.73
    3     5     5     1.08428382    -0.25923360   -25.31352878    -0.00757604    -0.00046801  0.17D-03  0.81D-04   106.73
    3     6     6     1.08428821    -0.25923323   -25.31352840    -0.00759962    -0.00046836  0.17D-03  0.81D-04   106.73
    3     7     7     1.08251220    -0.25995494   -25.25984529    -0.00769636    -0.00045892  0.10D-03  0.13D-03   106.73
    3     8     8     1.08254782    -0.25995107   -25.25984142    -0.00779929    -0.00046724  0.10D-03  0.13D-03   106.73
    3     9     9     1.08257602    -0.25994900   -25.25983935    -0.00790961    -0.00047320  0.10D-03  0.13D-03   106.73
    3    10    10     1.08257311    -0.25994891   -25.25983926    -0.00791111    -0.00047297  0.10D-03  0.13D-03   106.73
    3    11    11     1.08256646    -0.25994798   -25.25983833    -0.00791267    -0.00047356  0.10D-03  0.13D-03   106.73
    3    12    12     1.07803403    -0.25619207   -25.24832564    -0.00798633    -0.00053808  0.61D-04  0.20D-03   106.73
    4     1     1     1.07178224    -0.25260494   -25.37116660    -0.00024593    -0.00001116  0.45D-05  0.14D-05   156.47
    4     2     2     1.08724019    -0.25974756   -25.31404273    -0.00050962    -0.00005186  0.36D-04  0.71D-05   156.47
    4     3     3     1.08723920    -0.25974754   -25.31404272    -0.00051097    -0.00005185  0.36D-04  0.71D-05   156.47
    4     4     4     1.08723404    -0.25974718   -25.31404236    -0.00051213    -0.00005210  0.36D-04  0.71D-05   156.47
    4     5     5     1.08723456    -0.25974708   -25.31404225    -0.00051348    -0.00005217  0.36D-04  0.71D-05   156.47
    4     6     6     1.08722987    -0.25974685   -25.31404203    -0.00051363    -0.00005233  0.36D-04  0.71D-05   156.47
    4     7     7     1.08454513    -0.26045232   -25.26034267    -0.00049739    -0.00004110  0.25D-04  0.72D-05   156.47
    4     8     8     1.08454534    -0.26045228   -25.26034263    -0.00050121    -0.00004108  0.25D-04  0.72D-05   156.47
    4     9     9     1.08454336    -0.26045216   -25.26034251    -0.00050316    -0.00004116  0.25D-04  0.72D-05   156.47
    4    10    10     1.08454501    -0.26045086   -25.26034121    -0.00050195    -0.00004177  0.25D-04  0.74D-05   156.47
    4    11    11     1.08454122    -0.26044907   -25.26033942    -0.00050109    -0.00004257  0.25D-04  0.76D-05   156.47
    4    12    12     1.07923451    -0.25670399   -25.24883756    -0.00051193    -0.00004984  0.14D-04  0.15D-04   156.47
    5     1     1     1.07197203    -0.25261684   -25.37117850    -0.00001190    -0.00000079  0.37D-06  0.11D-06   206.22
    5     2     2     1.08871408    -0.25981384   -25.31410902    -0.00006629    -0.00000821  0.38D-05  0.13D-05   206.22
    5     3     3     1.08871277    -0.25981384   -25.31410901    -0.00006629    -0.00000821  0.38D-05  0.13D-05   206.22
    5     4     4     1.08871241    -0.25981380   -25.31410898    -0.00006662    -0.00000823  0.38D-05  0.13D-05   206.22
    5     5     5     1.08871055    -0.25981377   -25.31410895    -0.00006669    -0.00000826  0.39D-05  0.13D-05   206.22
    5     6     6     1.08871157    -0.25981375   -25.31410893    -0.00006690    -0.00000827  0.39D-05  0.13D-05   206.22
    5     7     7     1.08531490    -0.26050091   -25.26039126    -0.00004859    -0.00000508  0.26D-05  0.95D-06   206.22
    5     8     8     1.08531535    -0.26050089   -25.26039124    -0.00004861    -0.00000509  0.26D-05  0.95D-06   206.22
    5     9     9     1.08531472    -0.26050088   -25.26039124    -0.00004872    -0.00000510  0.26D-05  0.95D-06   206.22
    5    10    10     1.08531449    -0.26050057   -25.26039093    -0.00004972    -0.00000533  0.26D-05  0.10D-05   206.22
    5    11    11     1.08531379    -0.26050018   -25.26039053    -0.00005111    -0.00000563  0.27D-05  0.11D-05   206.22
    5    12    12     1.07965057    -0.25675252   -25.24888609    -0.00004853    -0.00000623  0.34D-05  0.14D-05   206.22
    6     1     1     1.07199147    -0.25261774   -25.37117939    -0.00000090    -0.00000007  0.27D-07  0.11D-07   255.13
    6     2     2     1.08902112    -0.25982353   -25.31411870    -0.00000968    -0.00000091  0.37D-06  0.13D-06   255.13
    6     3     3     1.08902112    -0.25982352   -25.31411870    -0.00000969    -0.00000092  0.38D-06  0.13D-06   255.13
    6     4     4     1.08902119    -0.25982352   -25.31411870    -0.00000972    -0.00000092  0.38D-06  0.14D-06   255.13
    6     5     5     1.08902068    -0.25982352   -25.31411869    -0.00000974    -0.00000093  0.38D-06  0.14D-06   255.13
    6     6     6     1.08902050    -0.25982352   -25.31411869    -0.00000976    -0.00000093  0.38D-06  0.14D-06   255.13
    6     7     7     1.08541425    -0.26050676   -25.26039711    -0.00000585    -0.00000055  0.11D-06  0.15D-06   255.13
    6     8     8     1.08541379    -0.26050676   -25.26039711    -0.00000587    -0.00000055  0.11D-06  0.15D-06   255.13
    6     9     9     1.08541411    -0.26050676   -25.26039711    -0.00000587    -0.00000055  0.11D-06  0.15D-06   255.13
    6    10    10     1.08541215    -0.26050672   -25.26039707    -0.00000615    -0.00000058  0.12D-06  0.16D-06   255.13
    6    11    11     1.08540915    -0.26050668   -25.26039703    -0.00000650    -0.00000061  0.12D-06  0.16D-06   255.13
    6    12    12     1.07968901    -0.25675938   -25.24889296    -0.00000686    -0.00000084  0.12D-06  0.29D-06   255.13
    7     1     1     1.07199886    -0.25261782   -25.37117948    -0.00000008    -0.00000001  0.23D-08  0.78D-09   304.22
    7     2     2     1.08911476    -0.25982447   -25.31411964    -0.00000094    -0.00000011  0.86D-07  0.14D-07   304.22
    7     3     3     1.08911478    -0.25982447   -25.31411964    -0.00000094    -0.00000011  0.86D-07  0.14D-07   304.22
    7     4     4     1.08911460    -0.25982446   -25.31411964    -0.00000094    -0.00000011  0.87D-07  0.14D-07   304.22
    7     5     5     1.08911431    -0.25982446   -25.31411964    -0.00000095    -0.00000011  0.88D-07  0.14D-07   304.22
    7     6     6     1.08911454    -0.25982446   -25.31411964    -0.00000095    -0.00000011  0.87D-07  0.14D-07   304.22
    7     7     7     1.08542836    -0.26050733   -25.26039768    -0.00000057    -0.00000006  0.42D-07  0.16D-07   304.22
    7     8     8     1.08542838    -0.26050733   -25.26039768    -0.00000058    -0.00000006  0.42D-07  0.16D-07   304.22
    7     9     9     1.08542829    -0.26050733   -25.26039768    -0.00000058    -0.00000006  0.42D-07  0.16D-07   304.22
    7    10    10     1.08542758    -0.26050733   -25.26039768    -0.00000061    -0.00000007  0.44D-07  0.17D-07   304.22
    7    11    11     1.08542654    -0.26050732   -25.26039767    -0.00000064    -0.00000007  0.46D-07  0.18D-07   304.22
    7    12    12     1.07969208    -0.25676026   -25.24889384    -0.00000088    -0.00000012  0.42D-07  0.32D-07   304.22
    8     1     1     1.07199913    -0.25261782   -25.37117948    -0.00000000    -0.00000000  0.20D-08  0.76D-09   349.26
    8     2     2     1.08916022    -0.25982459   -25.31411976    -0.00000012    -0.00000002  0.11D-07  0.36D-08   349.26
    8     3     3     1.08916024    -0.25982459   -25.31411976    -0.00000012    -0.00000002  0.11D-07  0.37D-08   349.26
    8     4     4     1.08916018    -0.25982459   -25.31411976    -0.00000012    -0.00000002  0.11D-07  0.36D-08   349.26
    8     5     5     1.08916003    -0.25982459   -25.31411976    -0.00000012    -0.00000002  0.12D-07  0.36D-08   349.26
    8     6     6     1.08916006    -0.25982458   -25.31411976    -0.00000012    -0.00000002  0.12D-07  0.36D-08   349.26
    8     7     7     1.08543836    -0.26050740   -25.26039775    -0.00000007    -0.00000001  0.45D-08  0.37D-08   349.26
    8     8     8     1.08543838    -0.26050740   -25.26039775    -0.00000007    -0.00000001  0.45D-08  0.37D-08   349.26
    8     9     9     1.08543835    -0.26050740   -25.26039775    -0.00000007    -0.00000001  0.45D-08  0.37D-08   349.26
    8    10    10     1.08543793    -0.26050740   -25.26039775    -0.00000007    -0.00000001  0.49D-08  0.40D-08   349.26
    8    11    11     1.08543737    -0.26050740   -25.26039775    -0.00000008    -0.00000001  0.52D-08  0.43D-08   349.26
    8    12    12     1.07969651    -0.25676038   -25.24889395    -0.00000012    -0.00000001  0.12D-08  0.21D-08   349.26
    9     1     1     1.07199912    -0.25261782   -25.37117948    -0.00000000    -0.00000000  0.20D-08  0.76D-09   372.91
    9     2     2     1.08918875    -0.25982461   -25.31411979    -0.00000003    -0.00000000  0.31D-09  0.33D-09   372.91
    9     3     3     1.08918085    -0.25982461   -25.31411978    -0.00000002    -0.00000000  0.14D-08  0.59D-09   372.91
    9     4     4     1.08918088    -0.25982461   -25.31411978    -0.00000002    -0.00000000  0.14D-08  0.60D-09   372.91
    9     5     5     1.08918087    -0.25982461   -25.31411978    -0.00000002    -0.00000000  0.13D-08  0.58D-09   372.91
    9     6     6     1.08918083    -0.25982461   -25.31411978    -0.00000002    -0.00000000  0.14D-08  0.60D-09   372.91
    9     7     7     1.08543828    -0.26050740   -25.26039775    -0.00000000    -0.00000001  0.45D-08  0.37D-08   372.91
    9     8     8     1.08543824    -0.26050740   -25.26039775    -0.00000000    -0.00000001  0.45D-08  0.38D-08   372.91
    9     9     9     1.08543824    -0.26050740   -25.26039775    -0.00000000    -0.00000001  0.45D-08  0.37D-08   372.91
    9    10    10     1.08543791    -0.26050740   -25.26039775    -0.00000000    -0.00000001  0.49D-08  0.40D-08   372.91
    9    11    11     1.08543738    -0.26050740   -25.26039775    -0.00000000    -0.00000001  0.52D-08  0.42D-08   372.91
    9    12    12     1.07969652    -0.25676038   -25.24889395    -0.00000000    -0.00000001  0.12D-08  0.21D-08   372.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.1%
 S   4.4%  20.0%
 P   0.8%  13.4%  10.5%

 Initialization:   0.7%
 Other:           44.0%

 Total CPU:      372.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000000           0.9240515  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                             0.0000000   0.0000000   0.0000000   0.0251637
 2/\00000222000000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.8818920  -0.0000000   0.0000000
                             0.1241435  -0.0000000  -0.0000000   0.0000000
 2/00\000222000000          -0.0000000  -0.0000000   0.0000000   0.8818920   0.0000000   0.0000000  -0.1241434  -0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000
 2/0000\0222000000           0.0000000   0.8818914  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1241434
                             0.0000000  -0.0000000   0.0000000   0.0000000
 2/000\00222000000           0.0000000   0.0000000  -0.0269018  -0.0000000   0.8814817   0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0052684   0.1240304   0.0000000
 2/0\0000222000000          -0.0000000   0.0000000   0.8814816  -0.0000000   0.0269018  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.1240310  -0.0052684   0.0000000
 2000/\00222000000          -0.0000000   0.0000000  -0.0000000   0.1972568  -0.0000000  -0.0000000   0.6330570  -0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 200/0\00222000000          -0.0000000   0.0000000   0.1971652   0.0000000   0.0060172   0.0000000   0.0000000   0.0000000
                            -0.0000000   0.6324958   0.0268659  -0.0000004
 2/00000\222000000          -0.0621060  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.0000001  -0.0000001   0.5760877
 2000/0\0222000000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1708294  -0.0000000   0.0000000
                             0.5482465   0.0000000  -0.0000000   0.0000000
 20/0\000222000000          -0.0000000  -0.1708267   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.5482457
                            -0.0000000  -0.0000000   0.0000000   0.0000000
 20/000\0222000000           0.0000000   0.0000000   0.0000000  -0.1708294   0.0000000   0.0000000  -0.5482443   0.0000000
                            -0.0000000   0.0000000  -0.0000000   0.0000000
 200/00\0222000000           0.0000000   0.1708267  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.5482435
                             0.0000000   0.0000000  -0.0000000  -0.0000000
 20/\0000222000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1708294  -0.0000000   0.0000000
                             0.5482426   0.0000000   0.0000000   0.0000000
 20002000222000000          -0.0543068  -0.0000000  -0.0042548   0.0000000   0.1394167  -0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0189968  -0.4472381   0.2699047
 20000200222000000          -0.0543072  -0.0000000   0.0042548  -0.0000000  -0.1394169   0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.0189973   0.4472334   0.2698985
 20020000222000000          -0.0543072   0.0000000  -0.0042549  -0.0000000   0.1394167  -0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.0189974  -0.4472332   0.2698985
 20000000222/0\000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2490118  -0.0000000  -0.0000000
                            -0.4218763  -0.0000000   0.0000000   0.0000000
 200000002220/\000          -0.0000000   0.0000000  -0.0000000  -0.2490117  -0.0000000   0.0000000   0.4218761   0.0000000
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20000000222/\0000           0.0000000  -0.2490049  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.4218760
                             0.0000000   0.0000000  -0.0000000  -0.0000000
 20200000222000000          -0.0543068  -0.0000000  -0.1186109  -0.0000000  -0.0733931  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.3968083   0.2071671   0.2699045
 20000020222000000          -0.0543067   0.0000000   0.1228657  -0.0000000  -0.0660235   0.0000000   0.0000000   0.0000000
                            -0.0000000   0.3778116   0.2400712   0.2699051
 20000000222200000          -0.1249166  -0.0000000   0.0062021   0.0000000  -0.2032226  -0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.0146184  -0.3441521  -0.2447591
 20000/\0222000000          -0.0000000  -0.0986271   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.3165263
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 20/00\00222000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0986285  -0.0000000  -0.0000000
                             0.3165262   0.0000000   0.0000000  -0.0000000
 20000000222020000          -0.1249166   0.0000000   0.1728949  -0.0000000   0.1069825  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.3053527   0.1594162  -0.2447591
 20000000222002000          -0.1249166   0.0000000  -0.1790970   0.0000000   0.0962401   0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.2907344   0.1847362  -0.2447591
 200000/\222000000           0.0000000   0.0448892   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.1239307
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 2000/00\222000000           0.0000000  -0.0000000   0.0000000   0.0448886   0.0000000   0.0000000  -0.1239307  -0.0000000
                             0.0000000   0.0000000   0.0000000  -0.0000000
 20/0000\222000000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0448886   0.0000000   0.0000000
                             0.1239300   0.0000000  -0.0000000  -0.0000000
 20000/0\222000000          -0.0000000   0.0000000  -0.0013693   0.0000000   0.0448676   0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.0052599   0.1238206  -0.0000004
 200/000\222000000          -0.0000000  -0.0000000   0.0448676  -0.0000000   0.0013693  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.1238201  -0.0052591  -0.0000003
 20000000222/00\00           0.0156075   0.0000000   0.0002013  -0.0000000  -0.0065972  -0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0023159  -0.0545211  -0.1009778
 200000002220/00\0           0.0156075   0.0000000   0.0056127  -0.0000000   0.0034729  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.0483742   0.0252549  -0.1009778
 2000000022200/00\           0.0156075   0.0000000  -0.0058140   0.0000000   0.0031242  -0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0460583   0.0292662  -0.1009777
 20000002222000000          -0.0250901   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.0000000   0.0000000  -0.0970579

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\000000222000000  31.1    -0.0000000  -0.0535120   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0098737
                            -0.0000000   0.0000000  -0.0000000  -0.0000000
 2\000000222000000  32.1    -0.0000000   0.0000000   0.0000000  -0.0534931  -0.0000000   0.0000000  -0.0098742   0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000
 2\000000222000000  34.1     0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0534930   0.0000000  -0.0000000
                             0.0098743   0.0000000   0.0000000   0.0000000
 2\000000222000000  33.1     0.0000000  -0.0000000   0.0016318   0.0000000  -0.0534683   0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0004190   0.0098667   0.0000001
 2\000000222000000  30.1     0.0000000  -0.0000000  -0.0534682   0.0000000  -0.0016318  -0.0000000  -0.0000000   0.0000000
                             0.0000000  -0.0098661  -0.0004191  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956275    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.076122
 2          -0.000000    0.000000    0.949481   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.078502   -0.000000
             0.000000   -0.000000
 3           0.000000    0.949451   -0.000000    0.000000    0.008078    0.000000    0.064209   -0.000000    0.000000   -0.000000
             0.045163    0.000000
 4           0.000000   -0.000000    0.000000    0.949485   -0.000000   -0.000000    0.000000    0.078502    0.000000    0.000000
            -0.000000   -0.000000
 5           0.000000   -0.008078   -0.000000    0.000000    0.949451   -0.000000    0.045163   -0.000000   -0.000000   -0.000000
            -0.064209    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.949485    0.000000    0.000000   -0.000000   -0.078502
             0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.078062    0.000000    0.000000    0.000000    0.951188    0.000000   -0.000000
             0.000000    0.000000
 8           0.000000   -0.000000    0.078062   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.951188    0.000000
            -0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000000    0.000000    0.078062   -0.000000    0.000000   -0.000000    0.951188
            -0.000000   -0.000000
 10         -0.000000   -0.077803   -0.000000   -0.000000   -0.006353   -0.000000    0.815829   -0.000000   -0.000000    0.000000
             0.489063   -0.000000
 11         -0.000000   -0.006353    0.000000    0.000000    0.077803   -0.000000   -0.489063    0.000000    0.000000   -0.000000
             0.815830   -0.000000
 12          0.078920    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.951953

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959299    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.001569
 2           0.000000    0.952721    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000289   -0.000000    0.000000
            -0.000000   -0.000000
 3           0.000000    0.000000    0.952725    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000288
             0.000021    0.000000
 4          -0.000000    0.000000    0.000000    0.952725    0.000000   -0.000000    0.000289   -0.000000    0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.952725    0.000000   -0.000000   -0.000000   -0.000000    0.000021
            -0.000288   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.952725    0.000000   -0.000000   -0.000289    0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000289   -0.000000    0.000000    0.954386    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000   -0.000289   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.954386    0.000000    0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000289   -0.000000    0.000000    0.954386    0.000000
             0.000000    0.000000
 10         -0.000000    0.000000    0.000288    0.000000    0.000021    0.000000    0.000000    0.000000    0.000000    0.954386
             0.000000   -0.000000
 11         -0.000000   -0.000000    0.000021    0.000000   -0.000288    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.954387   -0.000000
 12          0.001569   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.955217


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95627533 (fixed)   0.95953143 (relaxed)   0.95929904 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01367223   -0.02293516   -0.18269695
 Singles      0.03141511   -0.07376578   -0.07518735
 Pairs        0.04156840    0.01622280    0.00526648
 Total        1.08665574   -0.08047814   -0.25261782
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11773251
 Nuclear energy                         0.00000000
 Kinetic energy                         6.96626974
 One electron energy                  -41.24962305
 Two electron energy                   15.87844357
 Virial quotient                       -3.64200360
 Correlation energy                    -0.25344696
 !MRCI STATE 1.1 Energy               -25.371179477099

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.39314211 (Davidson, fixed reference)
 Cluster corrected energies           -25.39300873 (Davidson, relaxed reference)
 Cluster corrected energies           -25.39314211 (Davidson, rotated reference)

 Cluster corrected energies           -25.38968851 (Pople, fixed reference)
 Cluster corrected energies           -25.38957028 (Pople, relaxed reference)
 Cluster corrected energies           -25.38968851 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94948122 (fixed)   0.95390229 (relaxed)   0.95272086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01149911   -0.01655867   -0.16849721
 Singles      0.04367142   -0.07717672   -0.08035108
 Pairs        0.04654292    0.00000000   -0.01097632
 Total        1.10171346   -0.09373539   -0.25982461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05392851
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13546690
 One electron energy                  -41.47337116
 Two electron energy                   16.15925137
 Virial quotient                       -3.54764728
 Correlation energy                    -0.26019128
 !MRCI STATE 2.1 Energy               -25.314119785948

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34058474 (Davidson, fixed reference)
 Cluster corrected energies           -25.33987512 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34058474 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662564 (Pople, fixed reference)
 Cluster corrected energies           -25.33598636 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662564 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94945061 (fixed)   0.95390576 (relaxed)   0.95272462 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01149845   -0.01655863   -0.16849912
 Singles      0.04366339   -0.07717591   -0.08035006
 Pairs        0.04654290    0.00000000   -0.01097543
 Total        1.10170475   -0.09373454   -0.25982461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05392851
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13544939
 One electron energy                  -41.47331303
 Two electron energy                   16.15919325
 Virial quotient                       -3.54765599
 Correlation energy                    -0.26019127
 !MRCI STATE 3.1 Energy               -25.314119783609

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34058247 (Davidson, fixed reference)
 Cluster corrected energies           -25.33987303 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34058247 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662359 (Pople, fixed reference)
 Cluster corrected energies           -25.33598449 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662359 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.94948496 (fixed)   0.95390575 (relaxed)   0.95272461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01149845   -0.01655863   -0.16849911
 Singles      0.04366342   -0.07717591   -0.08035006
 Pairs        0.04654290    0.00000000   -0.01097544
 Total        1.10170477   -0.09373455   -0.25982461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05392851
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13544952
 One electron energy                  -41.47331316
 Two electron energy                   16.15919338
 Virial quotient                       -3.54765593
 Correlation energy                    -0.26019127
 !MRCI STATE 4.1 Energy               -25.314119783589

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34058248 (Davidson, fixed reference)
 Cluster corrected energies           -25.33987304 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34058248 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662360 (Pople, fixed reference)
 Cluster corrected energies           -25.33598449 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662360 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.94945059 (fixed)   0.95390576 (relaxed)   0.95272461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01149847   -0.01655863   -0.16849911
 Singles      0.04366341   -0.07717592   -0.08035006
 Pairs        0.04654290   -0.00000000   -0.01097544
 Total        1.10170477   -0.09373455   -0.25982461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05392851
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13544930
 One electron energy                  -41.47331298
 Two electron energy                   16.15919320
 Virial quotient                       -3.54765604
 Correlation energy                    -0.26019127
 !MRCI STATE 5.1 Energy               -25.314119783441

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34058248 (Davidson, fixed reference)
 Cluster corrected energies           -25.33987304 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34058248 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662360 (Pople, fixed reference)
 Cluster corrected energies           -25.33598449 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662360 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.94948499 (fixed)   0.95390577 (relaxed)   0.95272464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01149845   -0.01655863   -0.16849914
 Singles      0.04366336   -0.07717589   -0.08035005
 Pairs        0.04654291   -0.00000000   -0.01097542
 Total        1.10170472   -0.09373453   -0.25982461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05392851
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13544945
 One electron energy                  -41.47331282
 Two electron energy                   16.15919304
 Virial quotient                       -3.54765596
 Correlation energy                    -0.26019127
 !MRCI STATE 6.1 Energy               -25.314119783111

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34058246 (Davidson, fixed reference)
 Cluster corrected energies           -25.33987303 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34058246 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662358 (Pople, fixed reference)
 Cluster corrected energies           -25.33598448 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662358 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95118830 (fixed)   0.95632397 (relaxed)   0.95438609 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01145524   -0.01399230   -0.17450488
 Singles      0.03427998   -0.07190752   -0.07363272
 Pairs        0.05213701   -0.00000000   -0.01236981
 Total        1.09787223   -0.08589982   -0.26050740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00025702
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22245305
 One electron energy                  -41.49438355
 Two electron energy                   16.23398580
 Virial quotient                       -3.49748175
 Correlation energy                    -0.26014074
 !MRCI STATE 7.1 Energy               -25.260397754385

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28585831 (Davidson, fixed reference)
 Cluster corrected energies           -25.28470200 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28585831 (Davidson, rotated reference)

 Cluster corrected energies           -25.28199962 (Pople, fixed reference)
 Cluster corrected energies           -25.28096362 (Pople, relaxed reference)
 Cluster corrected energies           -25.28199962 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95118832 (fixed)   0.95632399 (relaxed)   0.95438610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01145525   -0.01399229   -0.17450488
 Singles      0.03427994   -0.07190753   -0.07363271
 Pairs        0.05213702    0.00000000   -0.01236982
 Total        1.09787221   -0.08589982   -0.26050740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00025702
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22245298
 One electron energy                  -41.49438315
 Two electron energy                   16.23398540
 Virial quotient                       -3.49748179
 Correlation energy                    -0.26014074
 !MRCI STATE 8.1 Energy               -25.260397754346

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28585830 (Davidson, fixed reference)
 Cluster corrected energies           -25.28470199 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28585830 (Davidson, rotated reference)

 Cluster corrected energies           -25.28199961 (Pople, fixed reference)
 Cluster corrected energies           -25.28096361 (Pople, relaxed reference)
 Cluster corrected energies           -25.28199961 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95118832 (fixed)   0.95632399 (relaxed)   0.95438611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01145524   -0.01399230   -0.17450487
 Singles      0.03427995   -0.07190753   -0.07363272
 Pairs        0.05213701    0.00000000   -0.01236981
 Total        1.09787219   -0.08589982   -0.26050740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00025702
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22245293
 One electron energy                  -41.49438322
 Two electron energy                   16.23398546
 Virial quotient                       -3.49748181
 Correlation energy                    -0.26014074
 !MRCI STATE 9.1 Energy               -25.260397754330

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28585830 (Davidson, fixed reference)
 Cluster corrected energies           -25.28470199 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28585830 (Davidson, rotated reference)

 Cluster corrected energies           -25.28199961 (Pople, fixed reference)
 Cluster corrected energies           -25.28096361 (Pople, relaxed reference)
 Cluster corrected energies           -25.28199961 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.81582922 (fixed)   0.95632414 (relaxed)   0.95438637 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01145498   -0.01399228   -0.17450485
 Singles      0.03427960   -0.07190759   -0.07363277
 Pairs        0.05213700   -0.00000001   -0.01236979
 Total        1.09787158   -0.08589988   -0.26050740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00025702
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22244902
 One electron energy                  -41.49436977
 Two electron energy                   16.23397201
 Virial quotient                       -3.49748370
 Correlation energy                    -0.26014074
 !MRCI STATE 10.1 Energy              -25.260397753139

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28585814 (Davidson, fixed reference)
 Cluster corrected energies           -25.28470190 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28585814 (Davidson, rotated reference)

 Cluster corrected energies           -25.28199946 (Pople, fixed reference)
 Cluster corrected energies           -25.28096353 (Pople, relaxed reference)
 Cluster corrected energies           -25.28199946 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.81582952 (fixed)   0.95632438 (relaxed)   0.95438673 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01145472   -0.01399226   -0.17450487
 Singles      0.03427898   -0.07190763   -0.07363279
 Pairs        0.05213706   -0.00000001   -0.01236973
 Total        1.09787076   -0.08589990   -0.26050740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00025702
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22244381
 One electron energy                  -41.49435186
 Two electron energy                   16.23395411
 Virial quotient                       -3.49748622
 Correlation energy                    -0.26014073
 !MRCI STATE 11.1 Energy              -25.260397751930

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28585792 (Davidson, fixed reference)
 Cluster corrected energies           -25.28470175 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28585792 (Davidson, rotated reference)

 Cluster corrected energies           -25.28199927 (Pople, fixed reference)
 Cluster corrected energies           -25.28096340 (Pople, relaxed reference)
 Cluster corrected energies           -25.28199927 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95195254 (fixed)   0.95735190 (relaxed)   0.95521705 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01506573   -0.01879891   -0.02167264
 Singles      0.03238487   -0.07143450   -0.07276749
 Pairs        0.04851233   -0.16544176   -0.16232025
 Total        1.09596294   -0.25567517   -0.25676038
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99296271
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07328044
 One electron energy                  -40.93077506
 Two electron energy                   15.68188111
 Virial quotient                       -3.56961585
 Correlation energy                    -0.25593124
 !MRCI STATE 12.1 Energy              -25.248893951702

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27345386 (Davidson, fixed reference)
 Cluster corrected energies           -25.27220429 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27345386 (Davidson, rotated reference)

 Cluster corrected energies           -25.26970781 (Pople, fixed reference)
 Cluster corrected energies           -25.26859102 (Pople, relaxed reference)
 Cluster corrected energies           -25.26970781 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      399.76       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       423.30    412.93      5.82      0.47      3.69
 REAL TIME  *       458.70 SEC
 DISK USED  *       470.53 MB (local),       11.49 GB (total)
 SF USED    *         3.97 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.39314211  AU                              
 SETTING HLSDIAG(2)     =       -25.34058474  AU                              
 SETTING HLSDIAG(3)     =       -25.34058247  AU                              
 SETTING HLSDIAG(4)     =       -25.34058248  AU                              
 SETTING HLSDIAG(5)     =       -25.34058248  AU                              
 SETTING HLSDIAG(6)     =       -25.34058246  AU                              
 SETTING HLSDIAG(7)     =       -25.28585831  AU                              
 SETTING HLSDIAG(8)     =       -25.28585830  AU                              
 SETTING HLSDIAG(9)     =       -25.28585830  AU                              
 SETTING HLSDIAG(10)    =       -25.28585814  AU                              
 SETTING HLSDIAG(11)    =       -25.28585792  AU                              
 SETTING HLSDIAG(12)    =       -25.27345386  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    17792 conf    70416 CSFs
 N-1 el internal:     3957 conf    21461 CSFs
 N-2 el internal:      413 conf     2533 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     196 (  93 103 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06049168
     2       -25.06049168
     3       -25.06049168
     4       -25.06049168
     5       -25.06049168
     6       -25.00258042
     7       -25.00258042
     8       -25.00258042
     9       -25.00258042
    10       -25.00258042
    11       -25.00258042
    12       -25.00258042
    13       -25.00035726
    14       -25.00035726
    15       -25.00035726
    16       -24.99656935

 Number of blocks in overlap matrix:   321   Smallest eigenvalue:  0.92D+00
 Number of N-2 electron functions:     361
 Number of N-1 electron functions:   21461

 Number of internal configurations:                35169
 Number of singly external configurations:       2103243
 Number of doubly external configurations:       3474743
 Total number of contracted configurations:      5613155
 Total number of uncontracted configurations:   26427607

 Diagonal Coupling coefficients finished.               Storage:21632631 words, CPU-Time:      5.78 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2084165 words, CPU-time:      0.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06049168     0.00000000    -0.26877672  0.55D-01  0.52D-01    10.53
    1     2     2     1.00000000     0.00000000   -25.06049168     0.00000000    -0.26869523  0.55D-01  0.52D-01    10.53
    1     3     3     1.00000000     0.00000000   -25.06049168    -0.00000000    -0.26876814  0.55D-01  0.52D-01    10.53
    1     4     4     1.00000000     0.00000000   -25.06049168     0.00000000    -0.26869243  0.55D-01  0.52D-01    10.53
    1     5     5     1.00000000     0.00000000   -25.06049168    -0.00000000    -0.26878457  0.55D-01  0.52D-01    10.53
    1     6     6     1.00000000     0.00000000   -25.00258042     0.00000000    -0.28445234  0.51D-01  0.66D-01    10.53
    1     7     7     1.00000000     0.00000000   -25.00258042     0.00000000    -0.28424041  0.52D-01  0.65D-01    10.53
    1     8     8     1.00000000     0.00000000   -25.00258042     0.00000000    -0.28448151  0.51D-01  0.66D-01    10.53
    1     9     9     1.00000000     0.00000000   -25.00258042    -0.00000000    -0.28471432  0.51D-01  0.66D-01    10.53
    1    10    10     1.00000000     0.00000000   -25.00258042     0.00000000    -0.28467078  0.51D-01  0.66D-01    10.53
    1    11    11     1.00000000     0.00000000   -25.00258042    -0.00000000    -0.28469573  0.51D-01  0.66D-01    10.53
    1    12    12     1.00000000     0.00000000   -25.00258042    -0.00000000    -0.28460166  0.52D-01  0.66D-01    10.53
    1    13    13     1.00000000     0.00000000   -25.00035726     0.00000000    -0.26579081  0.43D-01  0.59D-01    10.53
    1    14    14     1.00000000     0.00000000   -25.00035726     0.00000000    -0.26578001  0.43D-01  0.59D-01    10.53
    1    15    15     1.00000000     0.00000000   -25.00035726    -0.00000000    -0.26569498  0.43D-01  0.59D-01    10.53
    1    16    16     1.00000000     0.00000000   -24.99656935    -0.00000000    -0.24357604  0.48D-01  0.43D-01    10.53
    2     1     1     1.08282382    -0.25429827   -25.31478996    -0.25429827    -0.00818732  0.31D-02  0.11D-02   108.18
    2     2     2     1.08283360    -0.25429559   -25.31478728    -0.25429559    -0.00819101  0.32D-02  0.11D-02   108.18
    2     3     3     1.08283168    -0.25428533   -25.31477701    -0.25428533    -0.00820326  0.32D-02  0.11D-02   108.18
    2     4     4     1.08284171    -0.25428130   -25.31477298    -0.25428130    -0.00820712  0.32D-02  0.11D-02   108.18
    2     5     5     1.08284052    -0.25427666   -25.31476834    -0.25427666    -0.00821122  0.32D-02  0.11D-02   108.18
    2     6     6     1.08634712    -0.25758149   -25.26016192    -0.25758149    -0.00816214  0.35D-02  0.14D-02   108.18
    2     7     7     1.08635892    -0.25754203   -25.26012245    -0.25754203    -0.00821453  0.35D-02  0.14D-02   108.18
    2     8     8     1.08635789    -0.25753736   -25.26011778    -0.25753736    -0.00821894  0.35D-02  0.14D-02   108.18
    2     9     9     1.08638668    -0.25751821   -25.26009863    -0.25751821    -0.00825133  0.35D-02  0.14D-02   108.18
    2    10    10     1.08638996    -0.25748934   -25.26006976    -0.25748934    -0.00828798  0.35D-02  0.14D-02   108.18
    2    11    11     1.08639961    -0.25748901   -25.26006943    -0.25748901    -0.00828474  0.35D-02  0.14D-02   108.18
    2    12    12     1.08638768    -0.25748818   -25.26006860    -0.25748818    -0.00828875  0.35D-02  0.14D-02   108.18
    2    13    13     1.07956860    -0.24900331   -25.24936057    -0.24900331    -0.00793891  0.36D-02  0.15D-02   108.18
    2    14    14     1.07960767    -0.24898217   -25.24933943    -0.24898217    -0.00796701  0.36D-02  0.15D-02   108.18
    2    15    15     1.07960562    -0.24897524   -25.24933251    -0.24897524    -0.00797398  0.36D-02  0.15D-02   108.18
    2    16    16     1.07651407    -0.24407135   -25.24064070    -0.24407135    -0.00647355  0.20D-02  0.86D-03   108.18
    3     1     1     1.08463783    -0.26239191   -25.32288360    -0.00809364    -0.00044316  0.16D-03  0.67D-04   205.25
    3     2     2     1.08463787    -0.26239174   -25.32288343    -0.00809615    -0.00044352  0.16D-03  0.67D-04   205.25
    3     3     3     1.08463735    -0.26239174   -25.32288342    -0.00810641    -0.00044331  0.16D-03  0.67D-04   205.25
    3     4     4     1.08463597    -0.26239102   -25.32288271    -0.00810972    -0.00044413  0.16D-03  0.67D-04   205.25
    3     5     5     1.08463527    -0.26239085   -25.32288253    -0.00811419    -0.00044429  0.16D-03  0.67D-04   205.25
    3     6     6     1.08803840    -0.26569295   -25.26827338    -0.00811146    -0.00037556  0.11D-03  0.74D-04   205.25
    3     7     7     1.08805354    -0.26569149   -25.26827191    -0.00814946    -0.00037865  0.11D-03  0.75D-04   205.25
    3     8     8     1.08803638    -0.26568953   -25.26826995    -0.00815217    -0.00037881  0.11D-03  0.75D-04   205.25
    3     9     9     1.08803541    -0.26568952   -25.26826995    -0.00817131    -0.00037869  0.11D-03  0.75D-04   205.25
    3    10    10     1.08804221    -0.26568835   -25.26826877    -0.00819901    -0.00037937  0.11D-03  0.75D-04   205.25
    3    11    11     1.08804136    -0.26568832   -25.26826874    -0.00819931    -0.00037932  0.11D-03  0.75D-04   205.25
    3    12    12     1.08804297    -0.26568750   -25.26826792    -0.00819933    -0.00037983  0.11D-03  0.75D-04   205.25
    3    13    13     1.07949270    -0.25679540   -25.25715267    -0.00779210    -0.00041677  0.78D-04  0.11D-03   205.25
    3    14    14     1.07949948    -0.25679323   -25.25715049    -0.00781106    -0.00041939  0.78D-04  0.11D-03   205.25
    3    15    15     1.07949838    -0.25679300   -25.25715026    -0.00781776    -0.00041963  0.78D-04  0.11D-03   205.25
    3    16    16     1.07740956    -0.25063995   -25.24720930    -0.00656860    -0.00025603  0.69D-04  0.35D-04   205.25
    4     1     1     1.08747175    -0.26288962   -25.32338130    -0.00049771    -0.00004653  0.38D-04  0.41D-05   301.02
    4     2     2     1.08747082    -0.26288951   -25.32338119    -0.00049777    -0.00004659  0.38D-04  0.42D-05   301.02
    4     3     3     1.08747059    -0.26288949   -25.32338118    -0.00049776    -0.00004660  0.38D-04  0.42D-05   301.02
    4     4     4     1.08747024    -0.26288905   -25.32338073    -0.00049802    -0.00004648  0.38D-04  0.41D-05   301.02
    4     5     5     1.08746949    -0.26288901   -25.32338070    -0.00049817    -0.00004647  0.38D-04  0.41D-05   301.02
    4     6     6     1.09045953    -0.26612654   -25.26870696    -0.00043359    -0.00003195  0.25D-04  0.33D-05   301.02
    4     7     7     1.09046417    -0.26612586   -25.26870628    -0.00043437    -0.00003185  0.25D-04  0.33D-05   301.02
    4     8     8     1.09045625    -0.26612548   -25.26870590    -0.00043596    -0.00003214  0.25D-04  0.34D-05   301.02
    4     9     9     1.09045603    -0.26612547   -25.26870589    -0.00043594    -0.00003215  0.25D-04  0.34D-05   301.02
    4    10    10     1.09045421    -0.26612422   -25.26870464    -0.00043587    -0.00003212  0.25D-04  0.34D-05   301.02
    4    11    11     1.09045411    -0.26612422   -25.26870464    -0.00043589    -0.00003212  0.25D-04  0.34D-05   301.02
    4    12    12     1.09045314    -0.26612401   -25.26870443    -0.00043650    -0.00003218  0.25D-04  0.34D-05   301.02
    4    13    13     1.08124445    -0.25726373   -25.25762099    -0.00046832    -0.00003744  0.24D-04  0.61D-05   301.02
    4    14    14     1.08124270    -0.25726363   -25.25762089    -0.00047040    -0.00003764  0.24D-04  0.62D-05   301.02
    4    15    15     1.08124252    -0.25726362   -25.25762089    -0.00047063    -0.00003765  0.24D-04  0.62D-05   301.02
    4    16    16     1.07897780    -0.25090846   -25.24747781    -0.00026851    -0.00001024  0.32D-05  0.14D-05   301.02
    5     1     1     1.08895732    -0.26294964   -25.32344133    -0.00006002    -0.00000649  0.29D-05  0.84D-06   397.32
    5     2     2     1.08895704    -0.26294961   -25.32344130    -0.00006010    -0.00000650  0.29D-05  0.84D-06   397.32
    5     3     3     1.08895687    -0.26294961   -25.32344129    -0.00006011    -0.00000650  0.29D-05  0.84D-06   397.32
    5     4     4     1.08895546    -0.26294900   -25.32344068    -0.00005995    -0.00000648  0.29D-05  0.83D-06   397.32
    5     5     5     1.08895576    -0.26294895   -25.32344064    -0.00005994    -0.00000647  0.29D-05  0.83D-06   397.32
    5     6     6     1.09148160    -0.26616626   -25.26874669    -0.00003972    -0.00000315  0.13D-05  0.53D-06   397.32
    5     7     7     1.09148270    -0.26616554   -25.26874596    -0.00003968    -0.00000311  0.12D-05  0.53D-06   397.32
    5     8     8     1.09147892    -0.26616548   -25.26874590    -0.00003999    -0.00000319  0.13D-05  0.54D-06   397.32
    5     9     9     1.09147887    -0.26616548   -25.26874590    -0.00004001    -0.00000319  0.13D-05  0.54D-06   397.32
    5    10    10     1.09147884    -0.26616425   -25.26874467    -0.00004003    -0.00000319  0.13D-05  0.54D-06   397.32
    5    11    11     1.09147883    -0.26616425   -25.26874467    -0.00004003    -0.00000319  0.13D-05  0.54D-06   397.32
    5    12    12     1.09147763    -0.26616408   -25.26874450    -0.00004007    -0.00000321  0.13D-05  0.55D-06   397.32
    5    13    13     1.08190335    -0.25730982   -25.25766708    -0.00004609    -0.00000477  0.20D-05  0.10D-05   397.32
    5    14    14     1.08190334    -0.25730982   -25.25766708    -0.00004619    -0.00000477  0.20D-05  0.10D-05   397.32
    5    15    15     1.08190386    -0.25730980   -25.25766707    -0.00004618    -0.00000476  0.19D-05  0.10D-05   397.32
    5    16    16     1.07922949    -0.25091907   -25.24748842    -0.00001061    -0.00000050  0.23D-06  0.58D-07   397.32
    6     1     1     1.08922532    -0.26295737   -25.32344906    -0.00000773    -0.00000063  0.28D-06  0.76D-07   491.50
    6     2     2     1.08922513    -0.26295735   -25.32344903    -0.00000774    -0.00000063  0.28D-06  0.77D-07   491.50
    6     3     3     1.08922513    -0.26295735   -25.32344903    -0.00000774    -0.00000063  0.28D-06  0.76D-07   491.50
    6     4     4     1.08922318    -0.26295671   -25.32344840    -0.00000772    -0.00000063  0.27D-06  0.76D-07   491.50
    6     5     5     1.08922320    -0.26295667   -25.32344835    -0.00000771    -0.00000063  0.27D-06  0.76D-07   491.50
    6     6     6     1.09156930    -0.26616994   -25.26875036    -0.00000367    -0.00000024  0.71D-07  0.54D-07   491.50
    6     7     7     1.09156843    -0.26616919   -25.26874962    -0.00000365    -0.00000024  0.71D-07  0.55D-07   491.50
    6     8     8     1.09156843    -0.26616919   -25.26874962    -0.00000372    -0.00000024  0.71D-07  0.55D-07   491.50
    6     9     9     1.09156778    -0.26616917   -25.26874959    -0.00000369    -0.00000024  0.69D-07  0.53D-07   491.50
    6    10    10     1.09156718    -0.26616797   -25.26874839    -0.00000373    -0.00000024  0.71D-07  0.55D-07   491.50
    6    11    11     1.09156717    -0.26616797   -25.26874839    -0.00000373    -0.00000024  0.71D-07  0.55D-07   491.50
    6    12    12     1.09156724    -0.26616782   -25.26874824    -0.00000374    -0.00000025  0.71D-07  0.56D-07   491.50
    6    13    13     1.08194757    -0.25731524   -25.25767251    -0.00000542    -0.00000045  0.94D-07  0.10D-06   491.50
    6    14    14     1.08194755    -0.25731524   -25.25767251    -0.00000542    -0.00000045  0.94D-07  0.10D-06   491.50
    6    15    15     1.08194725    -0.25731521   -25.25767247    -0.00000541    -0.00000044  0.93D-07  0.10D-06   491.50
    6    16    16     1.07928681    -0.25091961   -25.24748896    -0.00000054    -0.00000003  0.20D-07  0.38D-08   491.50
    7     1     1     1.08930984    -0.26295802   -25.32344971    -0.00000065    -0.00000007  0.57D-07  0.58D-08   584.92
    7     2     2     1.08930981    -0.26295800   -25.32344969    -0.00000065    -0.00000007  0.57D-07  0.58D-08   584.92
    7     3     3     1.08930983    -0.26295800   -25.32344969    -0.00000065    -0.00000007  0.57D-07  0.58D-08   584.92
    7     4     4     1.08930781    -0.26295736   -25.32344905    -0.00000065    -0.00000007  0.57D-07  0.57D-08   584.92
    7     5     5     1.08930769    -0.26295731   -25.32344900    -0.00000065    -0.00000007  0.57D-07  0.57D-08   584.92
    7     6     6     1.09159177    -0.26617020   -25.26875062    -0.00000026    -0.00000002  0.18D-07  0.49D-08   584.92
    7     7     7     1.09159102    -0.26616946   -25.26874988    -0.00000026    -0.00000002  0.18D-07  0.50D-08   584.92
    7     8     8     1.09159103    -0.26616946   -25.26874988    -0.00000026    -0.00000002  0.18D-07  0.50D-08   584.92
    7     9     9     1.09159006    -0.26616943   -25.26874985    -0.00000026    -0.00000002  0.17D-07  0.48D-08   584.92
    7    10    10     1.09158998    -0.26616824   -25.26874866    -0.00000026    -0.00000002  0.18D-07  0.50D-08   584.92
    7    11    11     1.09158998    -0.26616824   -25.26874866    -0.00000026    -0.00000002  0.18D-07  0.50D-08   584.92
    7    12    12     1.09159002    -0.26616808   -25.26874851    -0.00000026    -0.00000002  0.18D-07  0.50D-08   584.92
    7    13    13     1.08195932    -0.25731570   -25.25767297    -0.00000046    -0.00000004  0.31D-07  0.59D-08   584.92
    7    14    14     1.08195932    -0.25731571   -25.25767297    -0.00000046    -0.00000004  0.31D-07  0.59D-08   584.92
    7    15    15     1.08195924    -0.25731567   -25.25767293    -0.00000046    -0.00000004  0.30D-07  0.58D-08   584.92
    7    16    16     1.07931497    -0.25091965   -25.24748900    -0.00000004    -0.00000000  0.21D-08  0.37D-09   584.92
    8     1     1     1.08935156    -0.26295810   -25.32344978    -0.00000007    -0.00000001  0.62D-08  0.14D-08   672.96
    8     2     2     1.08935159    -0.26295808   -25.32344976    -0.00000007    -0.00000001  0.63D-08  0.14D-08   672.96
    8     3     3     1.08935159    -0.26295808   -25.32344976    -0.00000007    -0.00000001  0.63D-08  0.14D-08   672.96
    8     4     4     1.08934944    -0.26295744   -25.32344912    -0.00000007    -0.00000001  0.62D-08  0.13D-08   672.96
    8     5     5     1.08934935    -0.26295739   -25.32344907    -0.00000007    -0.00000001  0.62D-08  0.13D-08   672.96
    8     6     6     1.09160687    -0.26617022   -25.26875065    -0.00000003    -0.00000000  0.13D-08  0.78D-09   672.96
    8     7     7     1.09160630    -0.26616949   -25.26874991    -0.00000003    -0.00000000  0.13D-08  0.79D-09   672.96
    8     8     8     1.09160630    -0.26616948   -25.26874991    -0.00000003    -0.00000000  0.13D-08  0.79D-09   672.96
    8     9     9     1.09160506    -0.26616945   -25.26874987    -0.00000003    -0.00000000  0.12D-08  0.75D-09   672.96
    8    10    10     1.09160528    -0.26616826   -25.26874868    -0.00000003    -0.00000000  0.13D-08  0.79D-09   672.96
    8    11    11     1.09160528    -0.26616826   -25.26874868    -0.00000003    -0.00000000  0.13D-08  0.79D-09   672.96
    8    12    12     1.09160538    -0.26616811   -25.26874853    -0.00000003    -0.00000000  0.13D-08  0.80D-09   672.96
    8    13    13     1.08197129    -0.25731575   -25.25767301    -0.00000004    -0.00000001  0.25D-08  0.18D-08   672.96
    8    14    14     1.08197129    -0.25731575   -25.25767301    -0.00000004    -0.00000001  0.25D-08  0.18D-08   672.96
    8    15    15     1.08197119    -0.25731572   -25.25767298    -0.00000004    -0.00000001  0.24D-08  0.18D-08   672.96
    8    16    16     1.07931497    -0.25091965   -25.24748900    -0.00000000    -0.00000000  0.21D-08  0.37D-09   672.96


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.5%
 S   4.1%  24.1%
 P   0.7%  15.1%  10.3%

 Initialization:   1.0%
 Other:           39.3%

 Total CPU:      673.0 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 200/0/00222000000          -0.0000000  -0.0000000   0.0000000  -0.0000718  -0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.9537372   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2000//00222000000          -0.0000753   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9537363  -0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000004   0.0000000   0.0000000   0.0000000   0.0000000
 2/0/0000222000000          -0.0000000  -0.0000000  -0.0000000   0.9529959   0.0000197   0.0000000   0.0000000   0.0000000
                             0.0000768  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000/00222000000          -0.0000000   0.0000000  -0.0000000  -0.0000197   0.9529959   0.0000000   0.0000000  -0.0000000
                             0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000006
 2/00/000222000000           0.9529951   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000807   0.0000000  -0.0000000
                             0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2//00000222000000           0.0000000  -0.0000000   0.9529951   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000681
                            -0.0000000   0.0000505  -0.0000000  -0.0000000  -0.0000038   0.0000000   0.0000000  -0.0000000
 2/0000/0222000000          -0.0000000   0.9529951   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000681   0.0000000
                             0.0000000   0.0000000  -0.0000505  -0.0000000  -0.0000000   0.0000038  -0.0000000   0.0000000
 2/00000/222000000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9418193
 20/000/0222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000004   0.0000000   0.0000000
                             0.0000000  -0.0000000   0.0000000   0.8531066  -0.0000000  -0.0000000   0.3598953   0.0000000
 200/00/0222000000          -0.0000000   0.0000663  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.7975691   0.0000000
                             0.0000000  -0.0000000   0.3026344  -0.0000000  -0.0000000   0.3600135  -0.0000000   0.0000000
 20//0000222000000           0.0000000  -0.0000000   0.0000663  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.7975156
                             0.0000000  -0.3027754  -0.0000000  -0.0000000  -0.3600136  -0.0000000   0.0000000   0.0000000
 200//000222000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000002  -0.0000000   0.0000000
                            -0.0000000  -0.0000000   0.0000000  -0.4264093   0.0000000  -0.0000000   0.7201266   0.0000000
 20/0/000222000000           0.0000000   0.0000001   0.0000000   0.0000000   0.0000000  -0.0000000  -0.4923809   0.0000000
                             0.0000000  -0.0000000   0.6966607   0.0000000   0.0000000   0.3599168   0.0000000  -0.0000000
 2000/0/0222000000          -0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4925040
                            -0.0000000   0.6965737  -0.0000000   0.0000000   0.3599168   0.0000000   0.0000000   0.0000000
 20/00/00222000000           0.0000000   0.0000000   0.0000423  -0.0000000   0.0000000  -0.0000000   0.0000000   0.1761321
                            -0.0000000  -0.5768256  -0.0000000   0.0000000   0.6236679  -0.0000000  -0.0000000   0.0000000
 20000//0222000000           0.0000000  -0.0000423  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1762341  -0.0000000
                             0.0000000   0.0000000  -0.5767945   0.0000000  -0.0000000   0.6236679   0.0000000   0.0000000
 200000002220//000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                             0.0000000   0.0000000  -0.0000000   0.0000724  -0.0000000   0.0000000   0.5117040   0.0000000
 20000000222//0000          -0.0000000   0.0000013  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000146   0.0000000
                             0.0000000  -0.0000000  -0.0000652  -0.0000000   0.0000000  -0.5116996   0.0000000  -0.0000000
 20000000222/0/000           0.0000000   0.0000000   0.0000013  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000146
                             0.0000000   0.0000652  -0.0000000   0.0000000   0.5116996  -0.0000000   0.0000000   0.0000000
 200000002220/00/0          -0.0000000   0.0000000  -0.0000000  -0.0024903  -0.0014388   0.0000000   0.0000000   0.0000000
                             0.0000001   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0983388
 2000000022200/00/           0.0000000   0.0000000  -0.0000000   0.0024904  -0.0014387   0.0000000  -0.0000000  -0.0000000
                            -0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0983388
 20000000222/00/00          -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0028750   0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0983384
 2000000022200//00           0.0000000   0.0000000   0.0024901   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000023
                             0.0000000  -0.0000075   0.0000000   0.0000000  -0.0604972  -0.0000000  -0.0000000  -0.0000000
 200000002220/0/00           0.0000000   0.0024901  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000023  -0.0000000
                            -0.0000000  -0.0000000   0.0000075   0.0000000   0.0000000   0.0604972   0.0000000  -0.0000000
 2000000022200/0/0           0.0024904  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                            -0.0000000  -0.0000000  -0.0000000  -0.0000088   0.0000000   0.0000000  -0.0604967  -0.0000000
 200000002220/000/           0.0024904   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                            -0.0000000  -0.0000000  -0.0000000   0.0000088   0.0000000   0.0000000   0.0604967  -0.0000000
 20000000222/0000/           0.0000000   0.0000000   0.0024906  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000013
                             0.0000000   0.0000087   0.0000000   0.0000000   0.0604954  -0.0000000  -0.0000000  -0.0000000
 20000000222/000/0          -0.0000000   0.0024906  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000013  -0.0000000
                            -0.0000000   0.0000000  -0.0000087   0.0000000  -0.0000000  -0.0604954   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/000000222000000  20.1    -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000011  -0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0574492
 2/000000222000000  34.1    -0.0000000  -0.0000000  -0.0554259   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000053
                            -0.0000000  -0.0000029   0.0000000   0.0000000  -0.0000010   0.0000000   0.0000000   0.0000000
 2/000000222000000  31.1     0.0000000  -0.0554259   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000054   0.0000000
                             0.0000000   0.0000000   0.0000029   0.0000000  -0.0000000   0.0000010  -0.0000000  -0.0000000
 2/000000222000000  32.1    -0.0554259  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000093   0.0000000   0.0000000
                             0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/000000222000000  30.1    -0.0000000  -0.0000000  -0.0000000  -0.0554230  -0.0000011  -0.0000000   0.0000000   0.0000000
                            -0.0000090   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2/000000222000000  33.1    -0.0000000  -0.0000000   0.0000000   0.0000011  -0.0554229   0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.952687   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000001   -0.000000
            -0.000000   -0.000075    0.000000    0.000000   -0.000000    0.000000
 2           0.952687   -0.000000    0.000000    0.000000   -0.000000    0.000077   -0.000000   -0.000000    0.000000   -0.000000
             0.000016    0.000000    0.000000   -0.000003    0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000   -0.000000    0.952687   -0.000000    0.000000    0.000072    0.000000   -0.000031
             0.000000   -0.000000    0.000003    0.000000   -0.000000    0.000000
 4           0.000000    0.952661    0.000000    0.007247    0.000000   -0.000000   -0.000072   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.007247    0.000000    0.952661    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000081    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.013286    0.000000
             0.000000    0.953644   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000068    0.000000    0.000000    0.000000    0.000000    0.865450   -0.000000    0.000000    0.000000    0.000000
            -0.400762   -0.000000    0.000000   -0.000030    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000068    0.000000    0.000000    0.927498    0.000000    0.222174
             0.000000    0.000000    0.000030   -0.000000   -0.000000   -0.000000
 9           0.000000    0.000077    0.000000    0.000001   -0.000000   -0.000000    0.953737    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000000    0.000000    0.000051   -0.000000    0.000000   -0.222175   -0.000000    0.927499
            -0.000000   -0.000000    0.000132    0.000000   -0.000000    0.000000
 11         -0.000051   -0.000000    0.000000   -0.000000    0.000000    0.400763    0.000000   -0.000000   -0.000000    0.000000
             0.865451   -0.000000   -0.000000    0.000132   -0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.953645    0.000000
             0.000000    0.013286    0.000000    0.000000    0.000147   -0.000000
 13         -0.000000    0.000000   -0.000000    0.000000   -0.000004   -0.000000    0.000000    0.000002   -0.000000   -0.000138
             0.000000    0.000000    0.954640    0.000000   -0.000000   -0.000000
 14          0.000004    0.000000   -0.000000   -0.000000    0.000000   -0.000029   -0.000000    0.000000   -0.000000    0.000000
            -0.000135    0.000000   -0.000000    0.954640    0.000000   -0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000150    0.000000
            -0.000000   -0.000002    0.000000    0.000000    0.954641   -0.000000
 16          0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.956955

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.952687   -0.000000   -0.000000   -0.000000    0.000000    0.000003    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.952687    0.000000   -0.000000   -0.000000   -0.000000   -0.000003   -0.000000    0.000000    0.000000
            -0.000002    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.952687   -0.000000    0.000000    0.000000    0.000000   -0.000003   -0.000000    0.000002
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.952688    0.000000   -0.000000    0.000000    0.000000    0.000003   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.952688    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 6           0.000003   -0.000000    0.000000   -0.000000    0.000000    0.953736   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000003    0.000000    0.000000    0.000000   -0.000000    0.953737   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 8           0.000000   -0.000000   -0.000003    0.000000   -0.000000   -0.000000   -0.000000    0.953737    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000    0.000000   -0.000000    0.000003    0.000000    0.000000   -0.000000    0.000000    0.953737   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 10          0.000000    0.000000    0.000002   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.953738
            -0.000000    0.000000   -0.000001    0.000000    0.000000    0.000000
 11          0.000000   -0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.953738   -0.000000    0.000000   -0.000001   -0.000000    0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.953738    0.000000   -0.000000   -0.000002   -0.000000
 13          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000001
             0.000000    0.000000    0.954640   -0.000000    0.000000    0.000000
 14         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000001   -0.000000   -0.000000    0.954640    0.000000   -0.000000
 15         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000002    0.000000    0.000000    0.954641   -0.000000
 16          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956955


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95268733 (fixed)   0.95310145 (relaxed)   0.95268733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01141911   -0.01856834   -0.17014482
 Singles      0.04428262   -0.07849682   -0.08181536
 Pairs        0.04608926   -0.00000000   -0.01099792
 Total        1.10179099   -0.09706515   -0.26295810
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06049168
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13272189
 One electron energy                  -41.53221065
 Two electron energy                   16.20876087
 Virial quotient                       -3.55032064
 Correlation energy                    -0.26295810
 !MRCI STATE 1.1 Energy               -25.323449780092

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35021655 (Davidson, fixed reference)
 Cluster corrected energies           -25.34996483 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35021655 (Davidson, rotated reference)

 Cluster corrected energies           -25.34455595 (Pople, fixed reference)
 Cluster corrected energies           -25.34434782 (Pople, relaxed reference)
 Cluster corrected energies           -25.34455595 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95268732 (fixed)   0.95310144 (relaxed)   0.95268732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01141911   -0.01856831   -0.17014480
 Singles      0.04428256   -0.07849681   -0.08181534
 Pairs        0.04608934    0.00000000   -0.01099793
 Total        1.10179102   -0.09706512   -0.26295808
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06049168
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13272222
 One electron energy                  -41.53221063
 Two electron energy                   16.20876087
 Virial quotient                       -3.55032048
 Correlation energy                    -0.26295808
 !MRCI STATE 2.1 Energy               -25.323449760789

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35021653 (Davidson, fixed reference)
 Cluster corrected energies           -25.34996482 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35021653 (Davidson, rotated reference)

 Cluster corrected energies           -25.34455594 (Pople, fixed reference)
 Cluster corrected energies           -25.34434780 (Pople, relaxed reference)
 Cluster corrected energies           -25.34455594 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95268732 (fixed)   0.95310144 (relaxed)   0.95268732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01141911   -0.01856831   -0.17014480
 Singles      0.04428256   -0.07849681   -0.08181534
 Pairs        0.04608934   -0.00000000   -0.01099793
 Total        1.10179102   -0.09706512   -0.26295808
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06049168
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13272224
 One electron energy                  -41.53221064
 Two electron energy                   16.20876088
 Virial quotient                       -3.55032047
 Correlation energy                    -0.26295808
 !MRCI STATE 3.1 Energy               -25.323449760195

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35021653 (Davidson, fixed reference)
 Cluster corrected energies           -25.34996482 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35021653 (Davidson, rotated reference)

 Cluster corrected energies           -25.34455594 (Pople, fixed reference)
 Cluster corrected energies           -25.34434780 (Pople, relaxed reference)
 Cluster corrected energies           -25.34455594 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95266058 (fixed)   0.95310229 (relaxed)   0.95268815 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01141936   -0.01856853   -0.17014561
 Singles      0.04428033   -0.07849566   -0.08181387
 Pairs        0.04608942   -0.00000000   -0.01099796
 Total        1.10178911   -0.09706419   -0.26295744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06049168
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13272128
 One electron energy                  -41.53220799
 Two electron energy                   16.20875886
 Virial quotient                       -3.55032086
 Correlation energy                    -0.26295744
 !MRCI STATE 4.1 Energy               -25.323449122999

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35021533 (Davidson, fixed reference)
 Cluster corrected energies           -25.34996360 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35021533 (Davidson, rotated reference)

 Cluster corrected energies           -25.34455483 (Pople, fixed reference)
 Cluster corrected energies           -25.34434668 (Pople, relaxed reference)
 Cluster corrected energies           -25.34455483 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95266054 (fixed)   0.95310225 (relaxed)   0.95268811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01141952   -0.01856862   -0.17014571
 Singles      0.04428014   -0.07849548   -0.08181364
 Pairs        0.04608954   -0.00000005   -0.01099804
 Total        1.10178920   -0.09706416   -0.26295739
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06049168
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13272167
 One electron energy                  -41.53220741
 Two electron energy                   16.20875834
 Virial quotient                       -3.55032066
 Correlation energy                    -0.26295739
 !MRCI STATE 5.1 Energy               -25.323449072076

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35021530 (Davidson, fixed reference)
 Cluster corrected energies           -25.34996357 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35021530 (Davidson, rotated reference)

 Cluster corrected energies           -25.34455480 (Pople, fixed reference)
 Cluster corrected energies           -25.34434665 (Pople, relaxed reference)
 Cluster corrected energies           -25.34455480 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95364375 (fixed)   0.95373629 (relaxed)   0.95373629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00711049   -0.01321296   -0.17609021
 Singles      0.03899172   -0.07447475   -0.07718397
 Pairs        0.05326652    0.00000000   -0.01289604
 Total        1.09936873   -0.08768771   -0.26617022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30592879
 One electron energy                  -41.82133132
 Two electron energy                   16.55258068
 Virial quotient                       -3.45866369
 Correlation energy                    -0.26617022
 !MRCI STATE 6.1 Energy               -25.268750645155

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519964 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519964 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519964 (Davidson, rotated reference)

 Cluster corrected energies           -25.28958188 (Pople, fixed reference)
 Cluster corrected energies           -25.28958188 (Pople, relaxed reference)
 Cluster corrected energies           -25.28958188 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.86545001 (fixed)   0.95373678 (relaxed)   0.95373678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00711000   -0.01321260   -0.17608987
 Singles      0.03899119   -0.07447445   -0.07718363
 Pairs        0.05326643    0.00000000   -0.01289598
 Total        1.09936762   -0.08768705   -0.26616949
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30594317
 One electron energy                  -41.82135190
 Two electron energy                   16.55260200
 Virial quotient                       -3.45865678
 Correlation energy                    -0.26616948
 !MRCI STATE 7.1 Energy               -25.268749906342

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519853 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519853 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519853 (Davidson, rotated reference)

 Cluster corrected energies           -25.28958084 (Pople, fixed reference)
 Cluster corrected energies           -25.28958084 (Pople, relaxed reference)
 Cluster corrected energies           -25.28958084 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.92749796 (fixed)   0.95373678 (relaxed)   0.95373678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00711000   -0.01321260   -0.17608987
 Singles      0.03899119   -0.07447445   -0.07718363
 Pairs        0.05326643    0.00000000   -0.01289598
 Total        1.09936762   -0.08768705   -0.26616948
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30594317
 One electron energy                  -41.82135188
 Two electron energy                   16.55260197
 Virial quotient                       -3.45865679
 Correlation energy                    -0.26616948
 !MRCI STATE 8.1 Energy               -25.268749906208

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519853 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519853 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519853 (Davidson, rotated reference)

 Cluster corrected energies           -25.28958084 (Pople, fixed reference)
 Cluster corrected energies           -25.28958084 (Pople, relaxed reference)
 Cluster corrected energies           -25.28958084 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95373720 (fixed)   0.95373721 (relaxed)   0.95373721 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00711024   -0.01321284   -0.17609047
 Singles      0.03898978   -0.07447399   -0.07718290
 Pairs        0.05326661   -0.00000000   -0.01289608
 Total        1.09936663   -0.08768683   -0.26616945
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30591189
 One electron energy                  -41.82130898
 Two electron energy                   16.55255910
 Virial quotient                       -3.45867159
 Correlation energy                    -0.26616945
 !MRCI STATE 9.1 Energy               -25.268749873317

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519823 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519823 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519823 (Davidson, rotated reference)

 Cluster corrected energies           -25.28958058 (Pople, fixed reference)
 Cluster corrected energies           -25.28958058 (Pople, relaxed reference)
 Cluster corrected energies           -25.28958058 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.92749879 (fixed)   0.95373771 (relaxed)   0.95373771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00710897   -0.01321191   -0.17608934
 Singles      0.03898995   -0.07447391   -0.07718295
 Pairs        0.05326655   -0.00000000   -0.01289598
 Total        1.09936547   -0.08768582   -0.26616826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30595387
 One electron energy                  -41.82137085
 Two electron energy                   16.55262217
 Virial quotient                       -3.45865155
 Correlation energy                    -0.26616826
 !MRCI STATE 10.1 Energy              -25.268748684145

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519662 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519662 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519662 (Davidson, rotated reference)

 Cluster corrected energies           -25.28957905 (Pople, fixed reference)
 Cluster corrected energies           -25.28957905 (Pople, relaxed reference)
 Cluster corrected energies           -25.28957905 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.86545073 (fixed)   0.95373771 (relaxed)   0.95373771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00710897   -0.01321191   -0.17608933
 Singles      0.03898995   -0.07447391   -0.07718295
 Pairs        0.05326655    0.00000000   -0.01289598
 Total        1.09936547   -0.08768582   -0.26616826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30595387
 One electron energy                  -41.82137087
 Two electron energy                   16.55262218
 Virial quotient                       -3.45865155
 Correlation energy                    -0.26616826
 !MRCI STATE 11.1 Energy              -25.268748684127

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519662 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519662 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519662 (Davidson, rotated reference)

 Cluster corrected energies           -25.28957905 (Pople, fixed reference)
 Cluster corrected energies           -25.28957905 (Pople, relaxed reference)
 Cluster corrected energies           -25.28957905 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95364520 (fixed)   0.95373776 (relaxed)   0.95373776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00710878   -0.01321176   -0.17608914
 Singles      0.03899003   -0.07447394   -0.07718301
 Pairs        0.05326655    0.00000000   -0.01289597
 Total        1.09936536   -0.08768571   -0.26616811
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00258042
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30596061
 One electron energy                  -41.82138094
 Two electron energy                   16.55263241
 Virial quotient                       -3.45864834
 Correlation energy                    -0.26616811
 !MRCI STATE 12.1 Energy              -25.268748533483

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29519642 (Davidson, fixed reference)
 Cluster corrected energies           -25.29519642 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29519642 (Davidson, rotated reference)

 Cluster corrected energies           -25.28957886 (Pople, fixed reference)
 Cluster corrected energies           -25.28957886 (Pople, relaxed reference)
 Cluster corrected energies           -25.28957886 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95464013 (fixed)   0.95774100 (relaxed)   0.95464014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01415627   -0.01437570   -0.17308735
 Singles      0.03208029   -0.07103172   -0.07225738
 Pairs        0.05105141    0.00000000   -0.01197103
 Total        1.09728797   -0.08540742   -0.25731575
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00035726
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19846057
 One electron energy                  -41.40201285
 Two electron energy                   16.14433984
 Virial quotient                       -3.50876035
 Correlation energy                    -0.25731575
 !MRCI STATE 13.1 Energy              -25.257673014281

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28270674 (Davidson, fixed reference)
 Cluster corrected energies           -25.28088139 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28270674 (Davidson, rotated reference)

 Cluster corrected energies           -25.27736977 (Pople, fixed reference)
 Cluster corrected energies           -25.27587095 (Pople, relaxed reference)
 Cluster corrected energies           -25.27736977 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95464013 (fixed)   0.95774100 (relaxed)   0.95464014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01415627   -0.01437570   -0.17308734
 Singles      0.03208029   -0.07103172   -0.07225738
 Pairs        0.05105141    0.00000000   -0.01197103
 Total        1.09728797   -0.08540742   -0.25731575
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00035726
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19846056
 One electron energy                  -41.40201284
 Two electron energy                   16.14433982
 Virial quotient                       -3.50876035
 Correlation energy                    -0.25731575
 !MRCI STATE 14.1 Energy              -25.257673014250

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28270674 (Davidson, fixed reference)
 Cluster corrected energies           -25.28088139 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28270674 (Davidson, rotated reference)

 Cluster corrected energies           -25.27736977 (Pople, fixed reference)
 Cluster corrected energies           -25.27587095 (Pople, relaxed reference)
 Cluster corrected energies           -25.27736977 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95464056 (fixed)   0.95774102 (relaxed)   0.95464057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01415544   -0.01437576   -0.17308724
 Singles      0.03208024   -0.07103176   -0.07225745
 Pairs        0.05105129    0.00000000   -0.01197102
 Total        1.09728697   -0.08540752   -0.25731572
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00035726
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19846042
 One electron energy                  -41.40200988
 Two electron energy                   16.14433690
 Virial quotient                       -3.50876042
 Correlation energy                    -0.25731572
 !MRCI STATE 15.1 Energy              -25.257672979331

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28270645 (Davidson, fixed reference)
 Cluster corrected energies           -25.28088133 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28270645 (Davidson, rotated reference)

 Cluster corrected energies           -25.27736952 (Pople, fixed reference)
 Cluster corrected energies           -25.27587090 (Pople, relaxed reference)
 Cluster corrected energies           -25.27736952 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95695484 (fixed)   0.95709724 (relaxed)   0.95695484 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01173998   -0.02054893   -0.02151558
 Singles      0.03893092   -0.07504107   -0.07766690
 Pairs        0.04131520   -0.15532965   -0.15173717
 Total        1.09198610   -0.25091965   -0.25091965
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99656935
 Nuclear energy                         0.00000000
 Kinetic energy                         6.94115451
 One electron energy                  -40.40982926
 Two electron energy                   15.16234026
 Virial quotient                       -3.63736162
 Correlation energy                    -0.25091965
 !MRCI STATE 16.1 Energy              -25.247488998551

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27057012 (Davidson, fixed reference)
 Cluster corrected energies           -25.27048859 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27057012 (Davidson, rotated reference)

 Cluster corrected energies           -25.26560288 (Pople, fixed reference)
 Cluster corrected energies           -25.26553606 (Pople, relaxed reference)
 Cluster corrected energies           -25.26560288 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1095.53       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1220.28    796.96    412.93      5.82      0.47      3.69
 REAL TIME  *      1309.36 SEC
 DISK USED  *         1.14 GB (local),       27.79 GB (total)
 SF USED    *         6.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.35021655  AU                              
 SETTING HLSDIAG(14)    =       -25.35021653  AU                              
 SETTING HLSDIAG(15)    =       -25.35021653  AU                              
 SETTING HLSDIAG(16)    =       -25.35021533  AU                              
 SETTING HLSDIAG(17)    =       -25.35021530  AU                              
 SETTING HLSDIAG(18)    =       -25.29519964  AU                              
 SETTING HLSDIAG(19)    =       -25.29519853  AU                              
 SETTING HLSDIAG(20)    =       -25.29519853  AU                              
 SETTING HLSDIAG(21)    =       -25.29519823  AU                              
 SETTING HLSDIAG(22)    =       -25.29519662  AU                              
 SETTING HLSDIAG(23)    =       -25.29519662  AU                              
 SETTING HLSDIAG(24)    =       -25.29519642  AU                              
 SETTING HLSDIAG(25)    =       -25.28270674  AU                              
 SETTING HLSDIAG(26)    =       -25.28270674  AU                              
 SETTING HLSDIAG(27)    =       -25.28270645  AU                              
 SETTING HLSDIAG(28)    =       -25.27057012  AU                              


        HLSDIAG
    -25.39314211
    -25.34058474
    -25.34058247
    -25.34058248
    -25.34058248
    -25.34058246
    -25.28585831
    -25.28585830
    -25.28585830
    -25.28585814
    -25.28585792
    -25.27345386
    -25.35021655
    -25.35021653
    -25.35021653
    -25.35021533
    -25.35021530
    -25.29519964
    -25.29519853
    -25.29519853
    -25.29519823
    -25.29519662
    -25.29519662
    -25.29519642
    -25.28270674
    -25.28270674
    -25.28270645
    -25.27057012
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:    -25.371179    -25.314120    -25.314120    -25.314120    -25.314120    -25.314120    -25.260398    -25.260398
                       -25.260398    -25.260398    -25.260398    -25.248894
 Replaced energies:    -25.393142    -25.340585    -25.340582    -25.340582    -25.340582    -25.340582    -25.285858    -25.285858
                       -25.285858    -25.285858    -25.285858    -25.273454

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.323450    -25.323450    -25.323450    -25.323449    -25.323449    -25.268751    -25.268750    -25.268750
                       -25.268750    -25.268749    -25.268749    -25.268749    -25.257673    -25.257673    -25.257673    -25.247489
 Replaced energies:    -25.350217    -25.350217    -25.350217    -25.350215    -25.350215    -25.295200    -25.295199    -25.295199
                       -25.295198    -25.295197    -25.295197    -25.295196    -25.282707    -25.282707    -25.282706    -25.270570



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.39314211

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   11535.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   11535.51       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23546.07       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23546.07       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23546.08       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23546.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00      69.42      -0.00       0.00      -0.00       0.00      -0.00      12.28       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00     -69.41       0.00       0.00     -12.28       0.00

   14   2.1  1.0  1.0       0.00       0.00      -0.00     -69.42       0.00      -0.00      12.27      -0.00       0.00       0.00
                            0.00      -0.00     -65.70       0.00    -122.22      -0.00      -0.00       0.00      -0.00      13.10

   15   3.1  1.0  1.0      -0.00       0.00     -73.03       0.00     117.98       0.00      -0.00       0.00      -0.00      11.30
                           -0.00      -0.00       0.00      69.42       0.00       0.00     -12.27      -0.00      -0.00      -0.00

   16   4.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -0.00      69.40      -0.00       0.00      12.28      -0.00
                           -0.00      69.40      -0.00       0.00      -0.00       0.00      -0.00      12.28      -0.00      -0.00

   17   5.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00    -120.21       0.00      -0.00     -21.19       0.00
                            0.00     120.22      -0.00       0.00      -0.00      -0.00       0.00      21.19       0.00      -0.00

   18   6.1  1.0  1.0       0.00      22.86      -0.00      -0.00       0.00       0.00       0.00     -80.99       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -22.86       0.00       0.00      80.99       0.00

   19   7.1  1.0  1.0      -0.00      -0.00      -0.00      28.88      -0.00      -0.00     102.35      -0.00       0.00       0.00
                            0.00      -0.00     -24.47       0.00      -8.09      -0.00      -0.00      -0.00       0.00     -88.48

   20   8.1  1.0  1.0      -0.00       0.00     -24.92      -0.00       6.58      -0.00       0.00      -0.00       0.00     -86.28
                            0.00      -0.00      -0.00     -28.88       0.00       0.00    -102.35       0.00      -0.00       0.00

   21   9.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00      22.86       0.00      -0.00     -80.99      -0.00
                            0.00      22.86      -0.00       0.00       0.00      -0.00      -0.00     -80.99      -0.00       0.00

   22  10.1  1.0  1.0      -0.01      -0.00     -14.41       0.00     -24.50      -0.00      -0.00      -0.00       0.00     -57.12
                           -0.00      -0.00       0.00      -1.25      -0.00      -0.00      -4.50      -0.00       0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00      -1.26      -0.00      -0.00      -4.51       0.00      -0.00      -0.00
                           -0.01       0.00      15.89      -0.00     -23.58       0.00       0.00      -0.00      -0.00      49.92

   24  12.1  1.0  1.0       0.00      17.70      -0.00      -0.00       0.00      -0.00       0.00     -62.78       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      17.70      -0.00       0.00     -62.78      -0.00

   25  13.1  1.0  1.0     -70.46       0.00     -29.06       0.00     -17.97       0.00      -0.00       0.00      -0.00     174.94
                            0.00      -0.00       0.00      29.65       0.00      -0.00    -170.85      -0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00       0.00      29.65      -0.00      -0.00    -170.85      -0.00       0.00       0.00
                          -70.46      -0.00      30.10      -0.00     -16.16      -0.00      -0.00      -0.00       0.00    -166.56

   27  15.1  1.0  1.0       0.00     -29.66      -0.00      -0.00       0.00       0.00       0.00    -170.85       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -29.66       0.00      -0.00    -170.85      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -196.15       0.00      -5.99       0.00      -0.00       0.00      -0.00      34.50

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -98.17       0.00       0.00     -17.36       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      98.18      -0.00       0.00      -0.00      -0.00      -0.00      17.36       0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     196.33       0.00       0.00     -34.53      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      32.30       0.00       0.99       0.00       0.00       0.00      -0.00     114.38

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      11.96       0.00      -0.00     -42.33      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -11.95       0.00      -0.00      -0.00       0.00       0.00      42.30      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -32.29       0.00       0.00    -114.51       0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      39.10      -0.00      -0.00       0.00      -0.00       0.00    -138.63       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      39.10      -0.00      -0.00    -138.62      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00      -1.33       0.00      43.55      -0.00       0.00       0.00      -0.00       6.54

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -41.94      -0.00      -0.00       0.00       0.00       0.00    -241.61       0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     -41.94       0.00      -0.00    -241.61      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -99.65      -0.00      -1.47      -0.00      48.24       0.00      -0.00      -0.00       0.00     -11.85

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00      69.42      -0.00       0.00      -0.00       0.00      -0.00      12.28       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      69.41      -0.00      -0.00      12.28      -0.00

   46   2.1  1.0 -1.0       0.00       0.00      -0.00     -69.42       0.00      -0.00      12.27      -0.00       0.00       0.00
                           -0.00       0.00      65.70      -0.00     122.22       0.00       0.00      -0.00       0.00     -13.10

   47   3.1  1.0 -1.0      -0.00       0.00     -73.03       0.00     117.98       0.00      -0.00       0.00      -0.00      11.30
                            0.00       0.00      -0.00     -69.42      -0.00      -0.00      12.27       0.00       0.00       0.00

   48   4.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00      69.40      -0.00       0.00      12.28      -0.00
                            0.00     -69.40       0.00      -0.00       0.00      -0.00       0.00     -12.28       0.00       0.00

   49   5.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00    -120.21       0.00      -0.00     -21.19       0.00
                           -0.00    -120.22       0.00      -0.00       0.00       0.00      -0.00     -21.19      -0.00       0.00

   50   6.1  1.0 -1.0       0.00      22.86      -0.00      -0.00       0.00       0.00       0.00     -80.99       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      22.86      -0.00      -0.00     -80.99      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00      -0.00      28.88      -0.00      -0.00     102.35      -0.00       0.00       0.00
                           -0.00       0.00      24.47      -0.00       8.09       0.00       0.00       0.00      -0.00      88.48

   52   8.1  1.0 -1.0      -0.00       0.00     -24.92      -0.00       6.58      -0.00       0.00      -0.00       0.00     -86.28
                           -0.00       0.00       0.00      28.88      -0.00      -0.00     102.35      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00      22.86       0.00      -0.00     -80.99      -0.00
                           -0.00     -22.86       0.00      -0.00      -0.00       0.00       0.00      80.99       0.00      -0.00

   54  10.1  1.0 -1.0      -0.01      -0.00     -14.41       0.00     -24.50      -0.00      -0.00      -0.00       0.00     -57.12
                            0.00       0.00      -0.00       1.25       0.00       0.00       4.50       0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00      -1.26      -0.00      -0.00      -4.51       0.00      -0.00      -0.00
                            0.01      -0.00     -15.89       0.00      23.58      -0.00      -0.00       0.00       0.00     -49.92

   56  12.1  1.0 -1.0       0.00      17.70      -0.00      -0.00       0.00      -0.00       0.00     -62.78       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -17.70       0.00      -0.00      62.78       0.00

   57  13.1  1.0 -1.0     -70.46       0.00     -29.06       0.00     -17.97       0.00      -0.00       0.00      -0.00     174.94
                           -0.00       0.00      -0.00     -29.65      -0.00       0.00     170.85       0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00      29.65      -0.00      -0.00    -170.85      -0.00       0.00       0.00
                           70.46       0.00     -30.10       0.00      16.16       0.00       0.00       0.00      -0.00     166.56

   59  15.1  1.0 -1.0       0.00     -29.66      -0.00      -0.00       0.00       0.00       0.00    -170.85       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      29.66      -0.00       0.00     170.85       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      69.42       0.00       0.00      -0.00      -0.00      22.86      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -69.40    -120.22      -0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -73.03       0.00      -0.00      -0.00      -0.00     -24.92
                            0.00       0.00       0.00      65.70      -0.00       0.00       0.00       0.00      24.47       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00     -69.42       0.00       0.00      -0.00      -0.00      28.88      -0.00
                            0.00       0.00      -0.00      -0.00     -69.42      -0.00      -0.00       0.00      -0.00      28.88

    5   5.1  0.0  0.0       0.00       0.00      -0.00       0.00     117.98      -0.00       0.00       0.00      -0.00       6.58
                            0.00       0.00      -0.00     122.22      -0.00       0.00       0.00       0.00       8.09      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      69.40    -120.21       0.00      -0.00      -0.00
                            0.00       0.00      69.41       0.00      -0.00      -0.00       0.00      22.86       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      12.27      -0.00      -0.00       0.00       0.00     102.35       0.00
                            0.00       0.00      -0.00       0.00      12.27       0.00      -0.00      -0.00       0.00     102.35

    8   8.1  0.0  0.0       0.00       0.00      12.28      -0.00       0.00       0.00      -0.00     -80.99      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     -12.28     -21.19      -0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      12.28     -21.19       0.00       0.00       0.00
                            0.00       0.00      12.28       0.00       0.00       0.00      -0.00     -80.99      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00       0.00      11.30      -0.00       0.00       0.00       0.00     -86.28
                            0.00       0.00      -0.00     -13.10       0.00       0.00       0.00      -0.00      88.48      -0.00

   11  11.1  0.0  0.0   23546.16       0.00       0.00       0.00      21.71      -0.00       0.00      -0.00      -0.00     -29.66
                            0.00       0.00      -0.00      20.67      -0.00      -0.00      -0.00      -0.00     -22.25      -0.00

   12  12.1  0.0  0.0       0.00   26268.53      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.01
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01      -0.00

   13   1.1  1.0  1.0       0.00      -0.00    9421.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     193.79       0.00       0.00      -0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00    9421.08       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.67       0.00       0.00       0.00      96.92       0.00       0.00       0.00      -0.00      -1.57

   15   3.1  1.0  1.0      21.71      -0.00       0.00       0.00    9421.08       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -96.92      -0.00      -0.00      -0.00      -0.00       1.57       0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9421.34       0.00       0.00       0.00       0.00
                            0.00       0.00    -193.79      -0.00       0.00       0.00      -0.00       4.05       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    9421.35       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   21495.89       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -4.05      -0.00       0.00       0.00      -0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.13       0.00
                           22.25       0.01       0.00       0.00      -1.57      -0.00      -0.00      -0.00      -0.00    -235.33

   20   8.1  1.0  1.0     -29.66      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.13
                            0.00       0.00      -0.00       1.57      -0.00      -0.00      -0.00       0.00     235.33      -0.00

   21   9.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.05      -0.00      -0.00       0.00      -0.00    -177.06       0.00       0.00

   22  10.1  1.0  1.0      82.73      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -4.94       0.00       0.00       0.00       0.00      98.88      -0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           87.27      -0.04       0.00      -0.00      -4.94      -0.00       0.00       0.00      -0.00      98.91

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -5.55       0.00      -0.00      -0.00

   25  13.1  1.0  1.0     -91.39    -194.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       7.30       0.00      -0.00       0.00      -0.00      -0.03      -0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -105.89    -194.89      -0.00       0.00       7.30       0.00      -0.00      -0.00      -0.00      -0.03

   27  15.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -8.36       0.00       0.00      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00     -68.53       0.00       0.00      -0.00      -0.00       3.67       0.00
                            1.47      -0.00      -0.00      -0.00     -68.53       0.00       0.00       0.00      -0.00       3.67

   30   2.1  1.0  0.0       0.00       0.00      68.53      -0.00       0.00       0.00      -0.00       2.93       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -68.52    -118.67      -0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      68.52    -118.67       0.00       0.00       0.00
                            0.00       0.00      68.53       0.00       0.00       0.00       0.00       2.93       0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00     -68.52       0.00      -0.00       0.00      -0.00      -3.10
                            0.00      -0.00      -0.00      68.52      -0.00       0.00      -0.00      -0.00       3.10      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00     118.67       0.00       0.00       0.00       0.00       0.91
                            0.00      -0.00      -0.00     118.67      -0.00       0.00      -0.00       0.00       0.91      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00      -2.93      -0.00      -0.00      -0.00      -0.00      44.39      -0.00
                            4.86      -0.00      -0.00       0.00      -2.93       0.00      -0.00      -0.00      -0.00      44.41

   35   7.1  1.0  0.0       0.00       0.00      -3.67      -0.00      -0.00       0.00      -0.00     -44.39       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -3.10      -0.91       0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       3.10      -0.91       0.00       0.00      -0.00
                            0.00       0.00      -3.67      -0.00       0.00       0.00       0.00     -44.41       0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -2.93       0.00      -0.00      -0.00       0.00    -102.19
                           -0.00      -0.00      -0.00       2.93      -0.00      -0.00       0.00       0.00     102.20       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.95       3.03      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.13      -0.00      -0.00       0.00      -0.00    -117.02       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.13       0.00      -0.00      -0.00      -0.00     117.03      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       1.95      -3.03      -0.00       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00      -2.22      -0.00      -0.00       0.00       0.00      44.80       0.00
                         -153.92      -0.05      -0.00      -0.00       2.22       0.00      -0.00      -0.00      -0.00     -44.77

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       5.16       3.00       0.00      -0.00       0.00
                           -0.00      -0.00       5.17       0.00      -0.00       0.00       0.00       0.02      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00      -5.17       0.00       0.00      -0.00       0.00      -0.02       0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       5.16      -3.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00       5.17      -0.00      -0.00       0.00       0.00      -0.01       0.00
                          278.99    -275.63      -0.00       0.00      -5.17      -0.00       0.00       0.00      -0.00       0.01

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   45   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.67      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      21.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.25      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0     -29.66      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      82.73      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.27       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0     -91.39    -194.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          105.89     194.89      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.01       0.00       0.00     -70.46       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.01       0.00      -0.00      70.46      -0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00       0.00      17.70       0.00      -0.00     -29.66      -0.00       0.00       0.00
                          -22.86       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    3   3.1  0.0  0.0      -0.00     -14.41       0.00      -0.00     -29.06       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -15.89      -0.00      -0.00     -30.10      -0.00       0.00     196.15       0.00

    4   4.1  0.0  0.0      -0.00       0.00      -1.26      -0.00       0.00      29.65      -0.00      -0.00       0.00       0.00
                           -0.00       1.25       0.00      -0.00     -29.65       0.00       0.00       0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00     -24.50      -0.00       0.00     -17.97      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      23.58      -0.00      -0.00      16.16      -0.00       0.00       5.99      -0.00

    6   6.1  0.0  0.0      22.86      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00     -17.70       0.00       0.00      29.66      -0.00      -0.00      98.17

    7   7.1  0.0  0.0       0.00      -0.00      -4.51       0.00      -0.00    -170.85       0.00      -0.00       0.00       0.00
                            0.00       4.50      -0.00       0.00     170.85       0.00      -0.00       0.00       0.00      -0.00

    8   8.1  0.0  0.0      -0.00      -0.00       0.00     -62.78       0.00      -0.00    -170.85      -0.00       0.00       0.00
                           80.99       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0     -80.99       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      62.78      -0.00      -0.00     170.85      -0.00       0.00      17.36

   10  10.1  0.0  0.0      -0.00     -57.12      -0.00       0.00     174.94       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -49.92       0.00      -0.00     166.56       0.00       0.00     -34.50      -0.00

   11  11.1  0.0  0.0      -0.00      82.73       0.00      -0.00     -91.39      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -87.27       0.00      -0.00     105.89       0.00       0.00      -1.47      -0.00

   12  12.1  0.0  0.0      -0.00      -0.04       0.00      -0.00    -194.89       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.04       0.00      -0.00     194.89      -0.00       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      68.53
                           -4.05      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -68.53      -0.00
                            0.00       4.94       0.00      -0.00      -7.30      -0.00      -0.00      -0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.94       0.00      -0.00      -7.30       0.00      -0.00      68.53       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      68.52

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       5.55      -0.00       0.00       8.36      -0.00      -0.00     118.67

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.93
                          177.06      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.67       0.00
                           -0.00     -98.88       0.00       0.00       0.03       0.00      -0.00      -0.00       0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -98.91       0.00       0.00       0.03       0.00       0.00      -3.67      -0.00

   21   9.1  1.0  1.0   21496.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       2.93

   22  10.1  1.0  1.0       0.00   21496.55       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      58.35       0.00      -0.00       0.00      -0.00      -0.00      -0.13      -0.00

   23  11.1  1.0  1.0       0.00       0.00   21496.55       0.00       0.00       0.00       0.00       0.00      -0.13      -0.00
                           -0.00     -58.35       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   21496.59       0.00       0.00       0.00       0.00       0.00       2.22
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.01      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   24237.76       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00     195.67      -0.00       0.00       5.17       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24237.76       0.00       0.00       5.17      -0.00
                           -0.00      -0.00       0.00       0.00    -195.67       0.00      -0.00      -0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   24237.83       0.00       0.00      -5.17
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     -55.28      -0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26901.44      -0.00      -0.00
                            0.00       0.00      -0.00       0.01      -0.00       0.00      55.28      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00      -0.00      -0.13       0.00      -0.00       5.17       0.00      -0.00    9421.07       0.00
                            0.00       0.13      -0.00       0.00      -5.17      -0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00      -0.00      -0.00       2.22      -0.00      -0.00      -5.17      -0.00       0.00    9421.08
                           -2.93       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       2.93      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -2.22       0.00      -0.00       5.17      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00      -1.95       0.00       0.00      -5.16       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.95      -0.00      -0.00      -5.16       0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00      -3.03       0.00      -0.00      -3.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       3.03       0.00      -0.00       3.00      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00    -117.03      -0.00      -0.00       0.02      -0.00      -0.00       0.00       0.00
                           -0.00     117.02       0.00       0.00      -0.02       0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0      -0.00       0.00       0.00     -44.80       0.00      -0.00       0.01      -0.00       0.00       0.00
                         -102.20      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0     102.19      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      44.77       0.00       0.00      -0.01      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      72.25       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      72.23      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0     -72.25      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00    -146.62      -0.00      -0.00       0.04      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0      -0.00       0.00      -0.00    -146.62      -0.00       0.00       0.04       0.00       0.00       0.00
                          -72.23       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00      -0.00     146.62      -0.00       0.00      -0.04      -0.00      -0.00       0.00       0.00
                            0.00     146.62       0.00      -0.00      -0.04       0.00       0.00      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -39.08       0.00       0.00
                            0.00       0.00      -0.00       0.04       0.00       0.00     138.36       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00       0.04      -0.00       0.00     138.36       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      39.08      -0.00      -0.00

   43  15.1  1.0  0.0       0.00      -0.00      -0.04       0.00      -0.00    -138.36      -0.00      -0.00       0.00       0.00
                           -0.00      -0.04       0.00      -0.00    -138.36       0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00      39.08      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     -39.08       0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -68.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      68.53      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      68.53       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      68.52

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     118.67

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.93
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.67      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.67      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.93

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.13      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.13       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.17       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -5.17       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.17
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.02

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -98.18       0.00       0.00      -0.00       0.00      11.95       0.00     -39.10      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -32.30      -0.00      -0.00      -0.00       0.00      -0.00       1.33

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -196.33      -0.00      -0.00       0.00       0.00      32.29       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.99      -0.00       0.00      -0.00      -0.00       0.00     -43.55

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     -11.96      -0.00      -0.00       0.00     -39.10       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      34.53       0.00      -0.00      -0.00      -0.00     114.51      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.36       0.00       0.00      -0.00       0.00     -42.30      -0.00     138.63       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      42.33       0.00      -0.00      -0.00     138.62       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -114.38       0.00       0.00       0.00      -0.00       0.00      -6.54

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -4.86      -0.00      -0.00       0.00       0.00       0.00     153.92

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.05

   13   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -3.67      -0.00      -0.00       0.00       0.13      -0.00
                          -68.53       0.00       0.00       0.00      -0.00       3.67       0.00       0.13      -0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00      -2.93      -0.00      -0.00      -0.00       0.00       0.00      -2.22
                           -0.00     -68.52    -118.67      -0.00       0.00       0.00      -2.93       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00     -68.52     118.67      -0.00      -0.00      -0.00      -2.93       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       2.93       0.00      -0.00       0.00       0.00      -0.00      -2.22

   16   4.1  1.0  1.0      68.52       0.00       0.00      -0.00       0.00       3.10       0.00       1.95      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       3.10      -0.00       0.00      -0.00      -1.95      -0.00

   17   5.1  1.0  1.0    -118.67      -0.00       0.00      -0.00      -0.00      -0.91      -0.00       3.03      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.91      -0.00      -0.00       0.00       3.03       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00      -0.00     -44.39       0.00      -0.00      -0.00     117.03       0.00
                           -2.93       0.00      -0.00       0.00      -0.00      44.41      -0.00     117.02       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      44.39       0.00       0.00       0.00      -0.00      -0.00      44.80
                           -0.00      -3.10      -0.91       0.00      -0.00      -0.00    -102.20      -0.00      -0.00       0.00

   20   8.1  1.0  1.0       0.00      -3.10       0.91      -0.00      -0.00      -0.00    -102.19       0.00      -0.00       0.00
                            0.00       0.00       0.00     -44.41       0.00       0.00      -0.00      -0.00       0.00      44.77

   21   9.1  1.0  1.0       2.93      -0.00       0.00       0.00      -0.00     102.19      -0.00     -72.25      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00     102.20       0.00      -0.00       0.00      72.23      -0.00

   22  10.1  1.0  1.0      -0.00      -1.95      -3.03       0.00       0.00      -0.00      72.25      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00    -117.02       0.00       0.00      -0.00      -0.00      -0.00    -146.62

   23  11.1  1.0  1.0       0.00       0.00       0.00    -117.03       0.00       0.00       0.00      -0.00      -0.00     146.62
                            0.00       1.95      -3.03      -0.00       0.00      -0.00     -72.23       0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.00      -0.00     -44.80      -0.00       0.00       0.00    -146.62      -0.00
                            2.22       0.00      -0.00      -0.00      -0.00     -44.77       0.00     146.62       0.00       0.00

   25  13.1  1.0  1.0       0.00      -5.16      -3.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.02      -0.00      -0.00       0.00       0.00      -0.00       0.04

   26  14.1  1.0  1.0      -0.00       0.00      -0.00       0.02      -0.00       0.00      -0.00      -0.00       0.00      -0.04
                            0.00       5.16      -3.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00       0.04      -0.00
                           -5.17      -0.00       0.00       0.00      -0.00       0.01      -0.00      -0.04       0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0    9421.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00    9421.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00    9421.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   21495.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   21496.13       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   21496.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   21496.20       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.55       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.55       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       3.67       0.00       0.00      -0.00      -0.13       0.00
                          -68.53       0.00       0.00       0.00      -0.00       3.67       0.00       0.13      -0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00      -0.00       2.93       0.00       0.00       0.00      -0.00      -0.00       2.22
                           -0.00     -68.52    -118.67      -0.00       0.00       0.00      -2.93       0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00      68.52    -118.67       0.00       0.00       0.00       2.93      -0.00       0.00       0.00
                            0.00       0.00       0.00       2.93       0.00      -0.00       0.00       0.00      -0.00      -2.22

   48   4.1  1.0 -1.0     -68.52       0.00      -0.00       0.00      -0.00      -3.10      -0.00      -1.95       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       3.10      -0.00       0.00      -0.00      -1.95      -0.00

   49   5.1  1.0 -1.0     118.67       0.00       0.00       0.00       0.00       0.91       0.00      -3.03       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.91      -0.00      -0.00       0.00       3.03       0.00

   50   6.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      44.39      -0.00       0.00       0.00    -117.03      -0.00
                           -2.93       0.00      -0.00      -0.00      -0.00      44.41      -0.00     117.02       0.00       0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00     -44.39       0.00      -0.00      -0.00       0.00       0.00     -44.80
                           -0.00      -3.10      -0.91       0.00       0.00      -0.00    -102.20      -0.00      -0.00       0.00

   52   8.1  1.0 -1.0      -0.00       3.10      -0.91       0.00       0.00      -0.00     102.19      -0.00       0.00      -0.00
                            0.00       0.00       0.00     -44.41       0.00      -0.00      -0.00      -0.00       0.00      44.77

   53   9.1  1.0 -1.0      -2.93       0.00      -0.00      -0.00       0.00    -102.19      -0.00      72.25       0.00       0.00
                           -0.00      -0.00       0.00       0.00     102.20       0.00       0.00       0.00      72.23      -0.00

   54  10.1  1.0 -1.0       0.00       1.95       3.03      -0.00      -0.00       0.00     -72.25      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00    -117.02       0.00       0.00      -0.00       0.00      -0.00    -146.62

   55  11.1  1.0 -1.0      -0.00      -0.00      -0.00     117.03      -0.00      -0.00      -0.00       0.00      -0.00    -146.62
                            0.00       1.95      -3.03      -0.00       0.00      -0.00     -72.23       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      44.80       0.00      -0.00      -0.00     146.62      -0.00
                            2.22       0.00      -0.00      -0.00      -0.00     -44.77       0.00     146.62       0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       5.16       3.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.02      -0.00      -0.00       0.00       0.00      -0.00       0.04

   58  14.1  1.0 -1.0       0.00      -0.00       0.00      -0.02       0.00      -0.00       0.00       0.00      -0.00       0.04
                            0.00       5.16      -3.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.01       0.00       0.00      -0.00      -0.04       0.00
                           -5.17      -0.00       0.00       0.00      -0.00       0.01      -0.00      -0.04       0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      99.65       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      69.42       0.00       0.00      -0.00      -0.00      22.86
                           41.94       0.00       0.00       0.00       0.00      -0.00      -0.00      69.40     120.22       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -73.03       0.00      -0.00      -0.00
                            0.00      -0.00       1.47      -0.00      -0.00     -65.70       0.00      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -69.42       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      69.42       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     117.98      -0.00       0.00       0.00
                           -0.00      -0.00     -48.24      -0.00       0.00    -122.22       0.00      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      69.40    -120.21       0.00
                           -0.00      41.94      -0.00       0.00     -69.41      -0.00       0.00       0.00      -0.00     -22.86

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      12.27      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00     -12.27      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      12.28      -0.00       0.00       0.00      -0.00     -80.99
                          241.61       0.00       0.00       0.00       0.00       0.00      -0.00      12.28      21.19       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      12.28     -21.19       0.00
                           -0.00     241.61      -0.00       0.00     -12.28      -0.00      -0.00      -0.00       0.00      80.99

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      11.30      -0.00       0.00       0.00
                           -0.00       0.00      11.85       0.00       0.00      13.10      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      21.71      -0.00       0.00      -0.00
                            0.00      -0.00    -278.99      -0.00       0.00     -20.67       0.00       0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00     275.63       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00      -5.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       5.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       5.16      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -5.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       3.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00      -0.00      39.08       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     138.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00    -138.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      39.08       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00     138.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -138.36       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0     -39.08       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -39.08       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      68.53      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -68.53       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -68.53      -0.00      -0.00      -0.00       0.00      -2.93
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -68.52    -118.67      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -68.52     118.67      -0.00
                            0.00       0.00       0.00       0.00      68.53       0.00      -0.00       0.00       0.00       2.93

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      68.52       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      68.52      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00    -118.67      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     118.67      -0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       2.93       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -2.93       0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       3.67       0.00       0.00      -0.00       0.00      44.39
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.10      -0.91       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.10       0.91      -0.00
                            0.00       0.00       0.00       0.00      -3.67      -0.00       0.00       0.00       0.00     -44.41

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       2.93      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       2.93      -0.00      -0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.95      -3.03       0.00
                            0.00       0.00       0.00       0.00      -0.13      -0.00      -0.00       0.00      -0.00    -117.02

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.13      -0.00       0.00       0.00       0.00    -117.03
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.95      -3.03      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.22       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       2.22       0.00      -0.00      -0.00

   41  13.1  1.0  0.0   24237.76       0.00       0.00       0.00      -0.00      -0.00       0.00      -5.16      -3.00      -0.00
                            0.00       0.00       0.00       0.00       5.17       0.00      -0.00       0.00       0.00       0.02

   42  14.1  1.0  0.0       0.00   24237.76       0.00       0.00       5.17      -0.00      -0.00       0.00      -0.00       0.02
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       5.16      -3.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00   24237.83       0.00       0.00      -5.17       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -5.17      -0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26901.44      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00       5.17       0.00      -0.00    9421.07       0.00       0.00       0.00       0.00       0.00
                           -5.17      -0.00       0.00       0.00       0.00       0.00       0.00    -193.79      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00      -5.17      -0.00       0.00    9421.08       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -96.92      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00    9421.08       0.00       0.00       0.00
                            0.00      -0.00       5.17      -0.00      -0.00      96.92       0.00       0.00       0.00       0.00

   48   4.1  1.0 -1.0      -5.16       0.00       0.00       0.00       0.00       0.00       0.00    9421.34       0.00       0.00
                           -0.00      -5.16       0.00       0.00     193.79       0.00      -0.00      -0.00       0.00      -4.05

   49   5.1  1.0 -1.0      -3.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    9421.35       0.00
                           -0.00       3.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   21495.89
                           -0.02       0.00      -0.00      -0.00       0.00       0.00      -0.00       4.05       0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       1.57       0.00       0.00       0.00

   52   8.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01      -0.00       0.00      -1.57       0.00       0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -4.05       0.00       0.00      -0.00       0.00     177.06

   54  10.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.04      -0.00      -0.00       4.94      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       4.94       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       5.55      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00     -39.08       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     138.36       0.00      -0.00      -7.30      -0.00       0.00      -0.00       0.00

   58  14.1  1.0 -1.0      -0.00       0.00     138.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      39.08       0.00      -0.00      -7.30      -0.00       0.00       0.00

   59  15.1  1.0 -1.0      -0.00    -138.36      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -138.36       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       8.36      -0.00

   60  16.1  1.0 -1.0      39.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -39.08       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00      -0.01       0.00       0.00     -70.46       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.01      -0.00       0.00     -70.46       0.00      -0.00

    2   2.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      17.70       0.00      -0.00     -29.66      -0.00
                           -0.00      -0.00      22.86      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

    3   3.1  0.0  0.0      -0.00     -24.92      -0.00     -14.41       0.00      -0.00     -29.06       0.00      -0.00       0.00
                          -24.47      -0.00      -0.00       0.00      15.89       0.00       0.00      30.10       0.00      -0.00

    4   4.1  0.0  0.0      28.88      -0.00      -0.00       0.00      -1.26      -0.00       0.00      29.65      -0.00      -0.00
                            0.00     -28.88       0.00      -1.25      -0.00       0.00      29.65      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00       6.58       0.00     -24.50      -0.00       0.00     -17.97      -0.00       0.00      -0.00
                           -8.09       0.00       0.00      -0.00     -23.58       0.00       0.00     -16.16       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00      22.86      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      17.70      -0.00      -0.00     -29.66       0.00

    7   7.1  0.0  0.0     102.35       0.00       0.00      -0.00      -4.51       0.00      -0.00    -170.85       0.00      -0.00
                           -0.00    -102.35      -0.00      -4.50       0.00      -0.00    -170.85      -0.00       0.00      -0.00

    8   8.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00     -62.78       0.00      -0.00    -170.85      -0.00
                           -0.00       0.00     -80.99      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00     -80.99       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -62.78       0.00       0.00    -170.85       0.00

   10  10.1  0.0  0.0       0.00     -86.28      -0.00     -57.12      -0.00       0.00     174.94       0.00       0.00       0.00
                          -88.48       0.00       0.00      -0.00      49.92      -0.00       0.00    -166.56      -0.00      -0.00

   11  11.1  0.0  0.0      -0.00     -29.66      -0.00      82.73       0.00      -0.00     -91.39      -0.00      -0.00      -0.00
                           22.25       0.00      -0.00      -0.00      87.27      -0.00       0.00    -105.89      -0.00      -0.00

   12  12.1  0.0  0.0      -0.00      -0.01      -0.00      -0.04       0.00      -0.00    -194.89       0.00      -0.00      -0.00
                            0.01       0.00       0.00      -0.00      -0.04      -0.00       0.00    -194.89       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      -3.67      -0.00      -0.00       0.00       0.13      -0.00       0.00      -5.17      -0.00       0.00
                           -0.00       3.67       0.00       0.13      -0.00       0.00      -5.17      -0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -2.22       0.00       0.00       5.17       0.00
                            0.00       0.00      -2.93       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   31   3.1  1.0  0.0      -0.00      -0.00      -2.93       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -2.22       0.00      -0.00       5.17      -0.00

   32   4.1  1.0  0.0       0.00       3.10       0.00       1.95      -0.00      -0.00       5.16      -0.00      -0.00      -0.00
                            3.10      -0.00       0.00      -0.00      -1.95      -0.00      -0.00      -5.16       0.00       0.00

   33   5.1  1.0  0.0      -0.00      -0.91      -0.00       3.03      -0.00       0.00       3.00       0.00       0.00       0.00
                            0.91      -0.00      -0.00       0.00       3.03       0.00      -0.00       3.00      -0.00       0.00

   34   6.1  1.0  0.0     -44.39       0.00      -0.00      -0.00     117.03       0.00       0.00      -0.02       0.00       0.00
                           -0.00      44.41      -0.00     117.02       0.00       0.00      -0.02       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      44.80      -0.00       0.00      -0.01       0.00
                           -0.00      -0.00    -102.20      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   36   8.1  1.0  0.0      -0.00      -0.00    -102.19       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      44.77       0.00       0.00      -0.01      -0.00

   37   9.1  1.0  0.0      -0.00     102.19      -0.00     -72.25      -0.00      -0.00       0.00       0.00       0.00       0.00
                          102.20       0.00      -0.00       0.00      72.23      -0.00      -0.00      -0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      72.25      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00    -146.62      -0.00      -0.00       0.04      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00     146.62       0.00      -0.00      -0.04      -0.00
                            0.00      -0.00     -72.23       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   40  12.1  1.0  0.0     -44.80      -0.00       0.00       0.00    -146.62      -0.00      -0.00       0.04       0.00       0.00
                           -0.00     -44.77       0.00     146.62       0.00       0.00      -0.04       0.00       0.00      -0.00

   41  13.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      39.08
                           -0.00      -0.00       0.00       0.00      -0.00       0.04      -0.00       0.00     138.36       0.00

   42  14.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      -0.04       0.00       0.00    -138.36      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      39.08

   43  15.1  1.0  0.0       0.01      -0.00      -0.00       0.00       0.04      -0.00       0.00     138.36      -0.00       0.00
                           -0.00       0.01      -0.00      -0.04       0.00      -0.00    -138.36       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -39.08       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -39.08       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.05       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.57      -0.00      -4.94      -0.00       0.00       7.30       0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.57      -0.00      -0.00       0.00      -4.94      -0.00       0.00       7.30      -0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -5.55       0.00      -0.00      -8.36       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -177.06       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0   21496.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     235.33       0.00      98.88      -0.00      -0.00      -0.03      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00   21496.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -235.33       0.00       0.00      -0.00      98.91      -0.00      -0.00      -0.03      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   21496.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   21496.55       0.00       0.00       0.00       0.00       0.00       0.00
                          -98.88       0.00       0.00      -0.00     -58.35      -0.00       0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   21496.55       0.00       0.00       0.00       0.00       0.00
                            0.00     -98.91       0.00      58.35      -0.00       0.00       0.00       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   21496.59       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   24237.76       0.00       0.00       0.00
                            0.03       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -195.67       0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24237.76       0.00       0.00
                            0.00       0.03       0.00       0.00      -0.00      -0.00     195.67      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24237.83       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      55.28

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26901.44
                           -0.00       0.00      -0.00      -0.00       0.00      -0.01       0.00      -0.00     -55.28       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.39314211 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   11535.010       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   11535.508       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   11535.507       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   11535.506       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   11535.510       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   23546.074       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23546.075
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      98.171      -0.000       0.000      -0.000       0.000      -0.000      17.368
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000     -98.173       0.000      -0.000      17.354      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.001       0.000    -103.283       0.000     166.856       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      98.151      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000    -170.009       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      32.330      -0.000      -0.000       0.000       0.000       0.000    -114.537
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000      40.843      -0.000      -0.000     144.750      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.002       0.000     -35.241      -0.000       9.299      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      32.329       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.021      -0.000     -20.384       0.000     -34.651      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000      -1.780      -0.000      -0.000      -6.383       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      25.035      -0.000      -0.000       0.000      -0.000       0.000     -88.779
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+            -99.649       0.000     -41.100       0.000     -25.407       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      41.936      -0.000      -0.000    -241.625      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000     -41.942      -0.000      -0.000       0.000       0.000       0.000    -241.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -196.153       0.000      -5.986       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     -98.171       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      98.176      -0.000       0.000      -0.000      -0.000      -0.000      17.359

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     196.327       0.000       0.000     -34.525      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.004       0.000      -0.000      -0.001      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      32.299       0.000       0.986       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      11.959       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -11.951       0.000      -0.000      -0.000       0.000       0.000      42.303

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -32.286       0.000       0.000    -114.513       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      39.102      -0.000      -0.000       0.000      -0.000       0.000    -138.628

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      39.102      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.024       0.000      -1.329       0.000      43.552      -0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -41.940      -0.000      -0.000       0.000       0.000       0.000    -241.613

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000     -41.940       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -99.648      -0.000      -1.472      -0.000      48.243       0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000     -98.166       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000     -92.916       0.000    -172.843      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      98.173       0.000       0.000     -17.353      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      98.149      -0.000       0.000      -0.000       0.000      -0.000      17.370

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     170.022      -0.000       0.000      -0.000      -0.000       0.000      29.965

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000     -32.332       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000     -34.604       0.000     -11.437      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -40.843       0.000       0.000    -144.752       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      32.327      -0.000       0.000       0.000      -0.000      -0.000    -114.535

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -1.773      -0.000      -0.000      -6.358      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.021       0.000      22.466      -0.000     -33.342       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      25.036      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      41.936       0.000      -0.000    -241.625      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -99.649      -0.000      42.572      -0.000     -22.854      -0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -41.943       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.002

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.001      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      98.171       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000    -103.283       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -98.173       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     166.856      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      98.151
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      17.354      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      17.368      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           23546.076       0.000       0.000       0.000       0.000       0.000      -0.000      17.371
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   23546.111       0.000       0.000      -0.000       0.000      15.979      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   23546.158       0.000       0.000       0.000      30.704      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26268.534      -0.000       0.000      -0.006       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000    9421.073       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    9421.076       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      15.979      30.704      -0.006       0.000       0.000    9421.076       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             17.371      -0.000      -0.000       0.000       0.000       0.000       0.000    9421.341
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -29.964       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000    -122.019     -41.940      -0.012       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -114.535      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     -80.783     116.991      -0.052       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000     247.400    -129.242    -275.610       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.002       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      34.500       1.465      -0.000       0.000      -0.000     -96.921       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              -17.359       0.000       0.000      -0.000       0.000       0.000      -0.000     -96.895

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      96.921       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      96.895      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     167.829      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000     114.385       4.859      -0.000      -0.000       0.000      -4.151       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -42.328      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -4.387

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -5.188      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       4.146      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.179      -0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                             -138.620      -0.000      -0.000      -0.000       0.000      -0.000       0.000       2.756

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       6.538    -153.925      -0.049      -0.000      -0.000       3.133       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       7.316       0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             -241.613      -0.000       0.000      -0.000       0.000      -0.000       0.000       7.301

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000     -11.851     278.995    -275.630      -0.000       0.000      -7.311      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.368       0.000       0.000      -0.000      -0.000      -0.000      -0.000     193.786

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      18.525     -29.238       0.006       0.000       0.000      96.918       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000     -96.918      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -193.786      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.004      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              114.537       0.000       0.000       0.000      -0.000      -0.000       0.000      -4.052

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -125.124      31.463       0.012       0.000       0.000      -1.568      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       1.567      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       4.053      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -4.941       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      70.593     123.415      -0.052       0.000      -0.000      -4.941      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -88.779      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       7.300       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -235.549    -149.756    -275.610      -0.000       0.000       7.300       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -241.612      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000      -0.000      -0.002      -0.000      -0.021       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      32.330      -0.000       0.000      -0.000      -0.000       0.000      25.035
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000      -0.000      -0.000     -35.241      -0.000     -20.384       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000      40.843      -0.000      -0.000       0.000      -1.780      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       9.299       0.000     -34.651      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -170.009       0.000      -0.000      -0.000      32.329      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     144.750       0.000       0.000      -0.000      -6.383       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000    -114.537      -0.000      -0.000      -0.000      -0.000       0.000     -88.779
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             -29.964       0.000       0.000       0.000    -114.535       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000    -122.019      -0.000     -80.783      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.000      -0.000     -41.940      -0.000     116.991       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000      -0.000      -0.000      -0.012      -0.000      -0.052       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           9421.347       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   21495.888       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   21496.131       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   21496.131       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   21496.197       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   21496.551       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   21496.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.594
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       5.188       0.000       0.179      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                             -167.829      -0.000       0.000       0.000      -4.146       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       4.151       0.000      -0.000       0.000       0.000      -0.000      -3.133

    4    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       4.387      -0.000       0.000      -0.000      -2.756      -0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       1.288      -0.000      -0.000       0.000       4.285       0.000

    6    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      62.812      -0.000     165.491       0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -1.288       0.000       0.000      -0.000    -144.531      -0.000      -0.000       0.000

    8    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000     -62.812       0.000       0.000      -0.000      -0.000       0.000      63.317

    9    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000     144.531       0.000       0.000       0.000     102.153      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -165.491       0.000       0.000      -0.000       0.000      -0.000    -207.358

   11    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -4.285      -0.000       0.000      -0.000    -102.153       0.000       0.000      -0.000

   12    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     -63.317       0.000     207.358       0.000       0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.030      -0.000      -0.000       0.000       0.000      -0.000       0.051

   14    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -4.247      -0.000      -0.000      -0.000       0.004       0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.009      -0.000      -0.052       0.000      -0.000

   16    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.001       0.000       0.000       0.000      -0.007       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000      -0.000       0.000      -4.053      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -1.567       0.000       4.941       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.568       0.000       0.000      -0.000       4.941       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.052       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       5.553

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     177.058      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -235.328      -0.000     -98.876       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     235.328      -0.000      -0.000       0.000     -98.908       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -177.058       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      98.876      -0.000      -0.000       0.000      58.350       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      98.908      -0.000     -58.350       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.553       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.028      -0.000      -0.000       0.000       0.004       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.028      -0.000      -0.004       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.361       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.008

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>             -99.649       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000      -0.000     -41.942      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -98.176       0.000

    3    1  |0 0>             -41.100       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     196.153       0.000       0.000      -0.000

    4    1  |0 0>               0.000      41.936      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -196.327

    5    1  |0 0>             -25.407      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.986      -0.000       0.000      -0.000

    6    1  |0 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      98.171       0.000      -0.000

    7    1  |0 0>              -0.000    -241.625       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      34.525

    8    1  |0 0>               0.000      -0.000    -241.612      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     -17.359       0.000

    9    1  |0 0>              -0.000       0.000       0.000      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      17.359      -0.000       0.000

   10    1  |0 0>             247.400       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -34.500      -0.000       0.000       0.000

   11    1  |0 0>            -129.242      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.465      -0.000      -0.000      -0.000

   12    1  |0 0>            -275.610       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -96.921       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -96.895

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      96.921       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      96.895      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     167.829      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -4.151       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -4.387

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -5.188      -0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       4.146      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.179      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       2.756

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       3.133       0.000

   13    1  |1 1>+          24237.762       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       7.316       0.000      -0.000       0.000

   14    1  |1 1>+              0.000   24237.762       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       7.301

   15    1  |1 1>+              0.000       0.000   24237.827       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -7.311      -0.000

   16    1  |1 1>+              0.000       0.000       0.000   26901.443       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000    9421.073       0.000       0.000       0.000
                               -7.316      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000    9421.076       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000    9421.076       0.000
                                0.000      -0.000       7.311      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    9421.341
                               -0.000      -7.301       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.247      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.030       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.009      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.004       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.052      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.007      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.051       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     195.677       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      55.271      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -195.677       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -55.271       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      96.921      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -96.921       0.000      -0.000      -0.000
                               -7.300      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -96.902
                               -0.000      -7.300       0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      96.902       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000    -167.825      -0.000
                               -0.000       0.000       8.361      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       4.151       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       5.188       0.000       0.000      -0.000
                                0.028       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -4.388
                                0.000       0.028       0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       4.146      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -2.755
                               -0.000       0.004      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.180      -0.000       0.000       0.000
                               -0.004      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.133       0.000       0.000
                               -0.000      -0.000       0.000      -0.008      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -7.301
                                0.000     195.672      -0.000       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       7.316      -0.000      -0.000       0.000
                             -195.672       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -7.311       0.000       0.000
                                0.000       0.000       0.000     -55.276      -0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      55.276      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.024

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      11.951       0.000     -39.102      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.299      -0.000      -0.000      -0.000       0.000      -0.000       1.329

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000       0.000       0.000      32.286       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.986      -0.000       0.000      -0.000      -0.000       0.000     -43.552

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -11.959      -0.000      -0.000       0.000     -39.102       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000     114.513      -0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -42.303      -0.000     138.628       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      42.328       0.000      -0.000      -0.000     138.620       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -114.385       0.000       0.000       0.000      -0.000       0.000      -6.538

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.859      -0.000      -0.000       0.000       0.000       0.000     153.925

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.049

    1    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       5.188       0.000       0.179      -0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                             -167.829      -0.000       0.000       0.000      -4.146       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       4.151       0.000      -0.000       0.000       0.000      -0.000      -3.133

    4    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       4.387      -0.000       0.000      -0.000      -2.756      -0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       1.288      -0.000      -0.000       0.000       4.285       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      62.812      -0.000     165.491       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -1.288       0.000       0.000      -0.000    -144.531      -0.000      -0.000       0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000     -62.812       0.000       0.000      -0.000      -0.000       0.000      63.317

    9    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000     144.531       0.000       0.000       0.000     102.153      -0.000

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -165.491       0.000       0.000      -0.000       0.000      -0.000    -207.358

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -4.285      -0.000       0.000      -0.000    -102.153       0.000       0.000      -0.000

   12    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     -63.317       0.000     207.358       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.030      -0.000      -0.000       0.000       0.000      -0.000       0.051

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -4.247      -0.000      -0.000      -0.000       0.004       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.009      -0.000      -0.052       0.000      -0.000

   16    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.001       0.000       0.000       0.000      -0.007       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>            9421.347       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   21495.888       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   21496.131       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   21496.131       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   21496.197       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   21496.551       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   21496.551       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.594
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      -5.188      -0.000      -0.000       0.000       0.180      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000      -4.151      -0.000      -0.000      -0.000       0.000       0.000      -3.133
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-            167.825      -0.000      -0.000      -0.000      -4.146       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000      -0.000       0.000       4.388       0.000       2.755      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000      -0.000      -0.000      -1.287      -0.000       4.286      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000     -62.783       0.000      -0.000      -0.000     165.502       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000      62.783       0.000       0.000       0.000      -0.000      -0.000      63.354
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              1.287      -0.000      -0.000       0.000    -144.513       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.000     144.513       0.000    -102.179      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-             -4.286       0.000       0.000      -0.000     102.179       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000    -165.502       0.000       0.000       0.000      -0.000       0.000     207.347
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-             -0.000      -0.000     -63.354      -0.000       0.000       0.000    -207.347       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>-             -4.248      -0.000       0.000      -0.000      -0.004       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-             -0.000       0.030      -0.000       0.000      -0.000      -0.000       0.000      -0.051
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       0.009      -0.000      -0.000       0.000       0.052      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 1>-             -0.000      -0.000      -0.000      -0.001      -0.000      -0.007       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      99.648       0.000      -0.000      -0.001       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               41.940       0.000       0.000       0.000      -0.000       0.000       0.000     -98.149

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.472      -0.000       0.000      92.916      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000     -98.173      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -48.243      -0.000      -0.000     172.843      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      41.940      -0.000       0.000      98.166       0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      17.353       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              241.613       0.000       0.000       0.000      -0.000      -0.000       0.000     -17.370

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     241.613      -0.000       0.000      17.368       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      11.851       0.000      -0.000     -18.525       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -278.995      -0.000      -0.000      29.238      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     275.630       0.000       0.000      -0.006       0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -7.316      -0.000       0.000       0.000      -0.000      -0.000      -0.000     193.786

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      96.918       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       7.311      -0.000       0.000     -96.918      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -7.301       0.000       0.000    -193.786      -0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.247      -0.000       0.000      -0.004      -0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.030       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -4.052

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001       0.000       0.000      -1.568      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.009      -0.000      -0.000       1.567      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.004       0.000      -0.000       4.053      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.052      -0.000       0.000      -4.941       0.000       0.000

   11    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.007       0.000      -0.000      -4.941      -0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.051       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     195.677       0.000       0.000       7.300       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      55.271      -0.000       0.000       7.300       0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -195.677       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -55.271       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -96.921       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      96.921       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      96.902
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -96.902       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     167.825       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -4.151      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -5.188      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       4.388
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -4.146       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       2.755
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.180       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -3.133      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>           24237.762       0.000       0.000       0.000       0.000       0.000      -0.000       7.301
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000   24237.762       0.000       0.000      -7.316       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000   24237.827       0.000      -0.000       7.311      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26901.443       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000      -7.316      -0.000       0.000    9421.073       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       7.311       0.000       0.000    9421.076       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000      -0.000      -0.000       0.000       0.000    9421.076       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              7.301      -0.000      -0.000      -0.000       0.000       0.000       0.000    9421.341
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              4.248       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.030       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000      -0.009       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.004       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000       0.000      -0.000       0.007       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.052      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.051       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000      -0.000      55.271       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000    -195.677      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000     195.677       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-            -55.271       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002      -0.000      -0.000       0.000       0.021       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -170.022      -0.000       0.000       0.000     -32.327       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      34.604       0.000       0.000      -0.000     -22.466      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      40.843      -0.000       1.773       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      11.437      -0.000      -0.000       0.000      33.342      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      32.332       0.000      -0.000       0.000       0.000      -0.000     -25.036

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     144.752       0.000       6.358      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.965      -0.000       0.000      -0.000     114.535       0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -114.537      -0.000       0.000       0.000      -0.000       0.000      88.779

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     125.124      -0.000      -0.000       0.000     -70.593       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -31.463      -0.000       0.000       0.000    -123.415       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.012      -0.000      -0.000       0.000       0.052       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000      -0.000       0.000      -4.053      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -1.567       0.000       4.941       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.568       0.000       0.000      -0.000       4.941       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.052       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       5.553

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     177.058      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -235.328      -0.000     -98.876       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     235.328      -0.000      -0.000       0.000     -98.908       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -177.058       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      98.876      -0.000      -0.000       0.000      58.350       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      98.908      -0.000     -58.350       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.553       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.028      -0.000      -0.000       0.000       0.004       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.028      -0.000      -0.004       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.361       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.008

    1    1  |1 0>              -0.000      -0.000       5.188       0.000       0.000      -0.000      -0.180       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       4.151       0.000       0.000       0.000      -0.000      -0.000       3.133
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>            -167.825       0.000       0.000       0.000       4.146      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000      -0.000      -4.388      -0.000      -2.755       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       1.287       0.000      -4.286       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000      62.783      -0.000       0.000       0.000    -165.502      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 0>              -0.000     -62.783       0.000      -0.000      -0.000       0.000       0.000     -63.354
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>              -1.287       0.000       0.000       0.000     144.513      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000    -144.513       0.000     102.179       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               4.286      -0.000      -0.000       0.000    -102.179       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>              -0.000     165.502      -0.000      -0.000      -0.000       0.000       0.000    -207.347
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000      63.354       0.000      -0.000      -0.000     207.347       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   13    1  |1 0>               4.248       0.000      -0.000       0.000       0.004      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000      -0.030       0.000      -0.000       0.000       0.000      -0.000       0.051
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.009       0.000       0.000      -0.000      -0.052       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.001       0.000       0.007      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           9421.347       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   21495.888       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   21496.131       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   21496.131       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   21496.197       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   21496.551       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   21496.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.594
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      99.649      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     -42.572      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                              -41.936       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      22.854      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      41.943      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                              241.625       0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.002

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000     241.612      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     235.549       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     149.756       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     275.610      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -7.300      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -7.300       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       8.361      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.028       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.028       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.004      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.004      -0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.008

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000     195.672      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                             -195.672       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -55.276

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      55.276      -0.000

    1    1  |1 0>              -0.000       7.316       0.000      -0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -7.311      -0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

    4    1  |1 0>              -7.301       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |1 0>              -4.248      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.030      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.009      -0.000
                                0.000       0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.001
                                0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.004      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000      -0.000       0.000      -0.007
                                0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.052       0.000
                               -0.000       0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.051      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000     -55.271
                                0.000      -0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.000     195.677       0.000
                               -0.000       0.000      -0.000      -0.000

   15    1  |1 0>              -0.000    -195.677       0.000      -0.000
                                0.000      -0.000       0.000       0.000

   16    1  |1 0>              55.271      -0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          24237.762       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   24237.762       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   24237.827       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26901.443
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.39314781    -0.00000569       -1.25      0.00000000        0.00      0.0000
    2   -25.35154061     0.04160151     9130.48      0.04160720     9131.73      1.1322
    3   -25.35154060     0.04160151     9130.48      0.04160720     9131.73      1.1322
    4   -25.35154059     0.04160152     9130.48      0.04160722     9131.73      1.1322
    5   -25.35077650     0.04236561     9298.18      0.04237130     9299.43      1.1530
    6   -25.35077643     0.04236568     9298.19      0.04237137     9299.44      1.1530
    7   -25.35077566     0.04236645     9298.36      0.04237215     9299.61      1.1530
    8   -25.35077563     0.04236648     9298.37      0.04237218     9299.62      1.1530
    9   -25.35077559     0.04236652     9298.38      0.04237222     9299.63      1.1530
   10   -25.34933336     0.04380875     9614.91      0.04381444     9616.16      1.1923
   11   -25.34933312     0.04380900     9614.96      0.04381469     9616.21      1.1923
   12   -25.34933312     0.04380900     9614.96      0.04381469     9616.21      1.1923
   13   -25.34933309     0.04380902     9614.97      0.04381472     9616.22      1.1923
   14   -25.34933290     0.04380921     9615.01      0.04381490     9616.26      1.1923
   15   -25.34933290     0.04380921     9615.01      0.04381490     9616.26      1.1923
   16   -25.34933288     0.04380923     9615.01      0.04381492     9616.26      1.1923
   17   -25.34047024     0.05267187    11560.14      0.05267756    11561.39      1.4334
   18   -25.34046816     0.05267395    11560.60      0.05267965    11561.85      1.4335
   19   -25.34046810     0.05267402    11560.61      0.05267971    11561.86      1.4335
   20   -25.34046801     0.05267411    11560.63      0.05267980    11561.88      1.4335
   21   -25.34046800     0.05267411    11560.63      0.05267981    11561.88      1.4335
   22   -25.29691445     0.09622766    21119.53      0.09623336    21120.78      2.6186
   23   -25.29691431     0.09622780    21119.56      0.09623350    21120.81      2.6186
   24   -25.29691381     0.09622830    21119.67      0.09623399    21120.92      2.6187
   25   -25.29691381     0.09622830    21119.67      0.09623399    21120.92      2.6187
   26   -25.29691329     0.09622882    21119.78      0.09623451    21121.03      2.6187
   27   -25.29560183     0.09754028    21407.62      0.09754598    21408.87      2.6544
   28   -25.29560183     0.09754028    21407.62      0.09754598    21408.87      2.6544
   29   -25.29560169     0.09754042    21407.65      0.09754612    21408.90      2.6544
   30   -25.29560070     0.09754142    21407.87      0.09754711    21409.12      2.6544
   31   -25.29560070     0.09754142    21407.87      0.09754711    21409.12      2.6544
   32   -25.29560042     0.09754170    21407.93      0.09754739    21409.18      2.6544
   33   -25.29560020     0.09754191    21407.98      0.09754761    21409.23      2.6544
   34   -25.29398890     0.09915321    21761.62      0.09915891    21762.86      2.6983
   35   -25.29398890     0.09915321    21761.62      0.09915891    21762.86      2.6983
   36   -25.29398859     0.09915352    21761.68      0.09915922    21762.93      2.6983
   37   -25.29398856     0.09915356    21761.69      0.09915925    21762.94      2.6983
   38   -25.29398803     0.09915409    21761.81      0.09915978    21763.06      2.6983
   39   -25.29398788     0.09915423    21761.84      0.09915992    21763.09      2.6983
   40   -25.29398709     0.09915502    21762.01      0.09916072    21763.26      2.6983
   41   -25.29398709     0.09915502    21762.01      0.09916072    21763.26      2.6983
   42   -25.29398674     0.09915538    21762.09      0.09916107    21763.34      2.6983
   43   -25.28629032     0.10685180    23451.26      0.10685749    23452.51      2.9077
   44   -25.28629028     0.10685184    23451.27      0.10685753    23452.52      2.9077
   45   -25.28629024     0.10685187    23451.27      0.10685756    23452.52      2.9077
   46   -25.28629020     0.10685192    23451.28      0.10685761    23452.53      2.9077
   47   -25.28629019     0.10685192    23451.29      0.10685761    23452.54      2.9077
   48   -25.28489748     0.10824463    23756.95      0.10825032    23758.20      2.9456
   49   -25.28360799     0.10953412    24039.96      0.10953981    24041.21      2.9807
   50   -25.28360787     0.10953425    24039.99      0.10953994    24041.24      2.9807
   51   -25.28360787     0.10953425    24039.99      0.10953994    24041.24      2.9807
   52   -25.28127633     0.11186578    24551.70      0.11187147    24552.95      3.0442
   53   -25.28127622     0.11186589    24551.72      0.11187158    24552.97      3.0442
   54   -25.28127622     0.11186589    24551.73      0.11187158    24552.97      3.0442
   55   -25.28127605     0.11186606    24551.76      0.11187175    24553.01      3.0442
   56   -25.28127524     0.11186687    24551.94      0.11187257    24553.19      3.0442
   57   -25.27304046     0.12010166    26359.27      0.12010735    26360.52      3.2683
   58   -25.27056039     0.12258172    26903.58      0.12258742    26904.83      3.3358
   59   -25.27056039     0.12258172    26903.58      0.12258742    26904.83      3.3358
   60   -25.27056039     0.12258172    26903.58      0.12258742    26904.83      3.3358

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997378 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000022 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000318  0.00000000 -0.00000000  0.00000000  0.00000000 -0.10692243
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.10678648  0.00377532 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.10690146 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00377591 -0.10676425  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000320  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00298819  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000301  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00299505
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000301 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00298144  0.00011258  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00011215 -0.00299045  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00013157 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000055  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000013 -0.54785092 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40612045
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.54785569 -0.00000000 -0.00000000 -0.40611843 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000818  0.00000000 -0.00000000  0.00000112 -0.00000000

   3    1  |1 1>+          0.00000015 -0.00000000  0.00000000  0.00000000  0.40250829  0.70501107 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.54751745  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.31612327  0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000446 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001828
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000353  0.00000000 -0.00000000 -0.00002234 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000007 -0.00000000  0.00000000  0.00000000 -0.00001779 -0.00000865  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000410  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000096 -0.00000000 -0.00000000 -0.00000000 -0.00000759  0.00001685  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000  0.00000477  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000304 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001846
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00417998 -0.00000000  0.00000000  0.00000000  0.00093391 -0.00053258 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00044830  0.00000000  0.00000000  0.00093128  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00044584 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00092849
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000278  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.81180371  0.00392632 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54785934  0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000013  0.54785909  0.00000000  0.00000000 -0.00000000 -0.00000000  0.40611426

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000224 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00001286  0.00000000  0.00000000  0.81160142  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000944  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.63222493  0.00000000  0.00000000  0.00001643  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002157  0.00000010  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000264 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000264 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000679

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00002164  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000440  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002463

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000440 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000114 -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00001798  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00044685  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00093347

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00044685 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00417994 -0.00000000 -0.00000000 -0.00000000 -0.00000520  0.00107515 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000279 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.54785077 -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000016 -0.00000000  0.00000000 -0.00000000  0.40930865 -0.70108518  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000818  0.00000000 -0.00000000  0.00000112 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.54785526  0.00000000  0.00000000  0.40611866  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000013 -0.54753066 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40578447

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000008  0.31610057  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70287498

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000446 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00001787  0.00000848  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000353  0.00000000  0.00000000  0.00002234  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000411 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001829

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000016  0.00000000 -0.00000000  0.00000477  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000096  0.00000000 -0.00000000 -0.00000000  0.00000744  0.00001692 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000304  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00044830  0.00000000  0.00000000  0.00093128  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00417998  0.00000000  0.00000000  0.00000000 -0.00092871 -0.00054158  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00044584  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000278  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00003652 -0.00000000  0.00000000  0.00000601 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00001286  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004028 -0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000036 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.10689350 -0.00000000 -0.00003652  0.00000000  0.00000000  0.00000600 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000655 -0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000238  0.00000000 -0.00000000 -0.00000346  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00299503 -0.00000000  0.00000239 -0.00000000 -0.00000000 -0.00000346  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000010 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000017  0.62665255 -0.00000000 -0.00000005 -0.37459913  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.57775653  0.00000000  0.00000000  0.44633237
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025 -0.00000000 -0.00000000 -0.00000078

   3    1  |1 1>+          0.00000000 -0.57734662  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.40581496  0.00000000  0.36639485 -0.00000010 -0.00000000  0.63197098 -0.00000008 -0.00000000
                          -0.00000000  0.00000000  0.00000010  0.00000001  0.00000000  0.00000003 -0.00000001 -0.00000000

   5    1  |1 1>+          0.70286021 -0.00000000 -0.45075977  0.00000012  0.00000000  0.44401645 -0.00000006 -0.00000000
                           0.00000000  0.00000000 -0.00000012 -0.00000001 -0.00000000  0.00000002 -0.00000001 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00005676 -0.00000000 -0.00000000 -0.00039768  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00013802 -0.00000000 -0.00000000 -0.00014387
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00033074  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00001835  0.00000000  0.00039825 -0.00000000 -0.00000000 -0.00005120  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00023315 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00037619 -0.00000000 -0.00000000 -0.00046932
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00034982 -0.00000000  0.00000000  0.00034554 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000058  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000025  0.00000000  0.00000000 -0.00000190
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000226  0.00000000 -0.00000000 -0.00000239  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.57735753 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000014 -0.00000001 -0.00000000  0.00000003 -0.00000001 -0.00000000
                           0.40611551  0.00000000  0.52008416 -0.00000014 -0.00000000 -0.51237299  0.00000007  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000014  0.51941749 -0.00000000  0.00000007  0.51304908 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000025 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.57764749  0.00000000 -0.00000000 -0.00073417

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000135
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00097544  0.00000000  0.00000000  0.77478400

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00040636  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000682  0.00000000  0.00036255 -0.00000000 -0.00000000  0.00044872 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00036318 -0.00000000 -0.00000000 -0.00044825  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00040616 -0.00000000  0.00000000  0.00000051

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00025869 -0.00000000  0.00000000  0.00000830 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002471 -0.00000000 -0.00025876  0.00000000  0.00000000  0.00000788 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000068 -0.00000000  0.00000000  0.00000125  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00093340  0.00000000 -0.00000069  0.00000000  0.00000000  0.00000125 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000016 -0.00000001 -0.00000000 -0.00000002  0.00000001  0.00000000
                           0.40612191  0.00000000  0.62616485 -0.00000017 -0.00000000  0.37541379 -0.00000005 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.57734623  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000078
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57664488  0.00000000  0.00000000  0.44776797

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000010 -0.36719788  0.00000000  0.00000008  0.63151227 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000012 -0.45019695  0.00000000 -0.00000006 -0.44457610  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001835 -0.00000000 -0.00005728  0.00000000 -0.00000000  0.00039761 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00033078  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00013773 -0.00000000 -0.00000000 -0.00014413

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00039818  0.00000000 -0.00000000 -0.00005172  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00037733  0.00000000  0.00000000  0.00046841

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00023309  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001851 -0.00000000 -0.00035027  0.00000000  0.00000000  0.00034508 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000  0.00000190

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000058 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00092842 -0.00000000  0.00000226 -0.00000000 -0.00000000 -0.00000239  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99423275 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00684248
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.02758302  0.99385746 -0.00000000 -0.00000000 -0.00685171  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000001  0.99423503 -0.00000000 -0.00683982 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000072 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.99385976  0.02758294  0.00000000  0.00000000 -0.00021153 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.99423586  0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00038677  0.00000000  0.09768245  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000

   8    1  |0 0>          -0.00038778  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.09770825
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00038770 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00001755  0.00038623 -0.00000000 -0.00000000  0.09766717 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00038798  0.00001748 -0.00000000 -0.00000000  0.00411394 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.04365203 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044224
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.04364224  0.00000000  0.00044615  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.07542102 -0.04383969  0.00000000  0.00000000  0.00043982 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.04363762  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.07558574 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00339668  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48611056
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00429100 -0.00000000 -0.61366409 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000040  0.00000000

   8    1  |1 1>+          0.00000000 -0.00107977  0.00367378 -0.00000000 -0.00000000  0.52397301 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00339661 -0.00000000  0.00000000 -0.00000000  0.00000004
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00357934  0.00224079 -0.00000000 -0.00000000  0.32045874 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018764  0.00000000  0.02692326  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

  12    1  |1 1>+         -0.00263065  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37564821
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00182624  0.00314611 -0.00000000 -0.00000000 -0.00722381  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00315742  0.00000000  0.00720124  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00315812 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00719792
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00024105 -0.08723812  0.00000000  0.00000000  0.00087986 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.04364159 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04365341 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044735

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.08728641 -0.00000000 -0.00087764 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000180  0.00000000 -0.00000002  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000938 -0.00339597  0.00000000  0.00000000 -0.48571939  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00125639 -0.00000000  0.00000000 -0.00000000  0.00000002

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00125554 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.17934219

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000031  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00339265  0.00000000  0.48547874  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00410825  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.58707740

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00410844 -0.00000000  0.00000000 -0.00000000  0.00000005

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00457667  0.00001264 -0.00000000 -0.00000000 -0.00022953 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00315733 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00719704

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00315752  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00363350  0.00001004 -0.00000000 -0.00000000  0.00000296  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.04364024 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.07566213 -0.04342225  0.00000000  0.00000000  0.00044036  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.04364226 -0.00000000 -0.00044615 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04364632 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044270

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.07560800 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00076418

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00339703  0.00000000 -0.00000000  0.00000000 -0.00000004

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00110069  0.00366736 -0.00000000 -0.00000000  0.52402598 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000040  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00429104  0.00000000  0.61366876  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00339628  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48586309

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018689  0.00000000  0.02681501  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00356671 -0.00226118  0.00000000  0.00000000 -0.32019307  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00263092 -0.00000000  0.00000000 -0.00000000  0.00000003

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00315742  0.00000000  0.00720124  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00180883 -0.00315615  0.00000000  0.00000000  0.00722086 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00315832  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000012

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000019 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000284  0.00000000 -0.00000000  0.00000405 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00021205 -0.00000000  0.00000000  0.00000091  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00686910 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00684318 -0.00000000  0.00000283 -0.00000000  0.00000000  0.00000406  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001615
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000001 -0.00000000 -0.00000000 -0.00003967 -0.00000000 -0.00000000  0.00011063 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.09770821 -0.00000000  0.00003968 -0.00000000 -0.00000000  0.00011067  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00412230 -0.00000000  0.00000000 -0.00000357 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.09785686  0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000313  0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00039976  0.00000000  0.00000000 -0.00030870  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040214
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   3    1  |1 1>+          0.00000000  0.00076277 -0.00000000 -0.00000000 -0.00040554  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00044274 -0.00000000 -0.00049740  0.00000000  0.00000000  0.00008183  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00076416  0.00000000 -0.00017547  0.00000000  0.00000000 -0.00040693 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000004 -0.00000000  0.00000008  0.50626879 -0.00000000  0.00000009 -0.27736296  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.20500076
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000693

   8    1  |1 1>+         -0.00000000  0.15559926  0.00000000  0.00000000  0.47132985 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.48586296 -0.00000000  0.14225361 -0.00000002 -0.00000000 -0.55922072 -0.00000017 -0.00000000
                           0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000002 -0.00000003 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.50862908 -0.00000000 -0.00000000 -0.33296758  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.53914148
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001823

  12    1  |1 1>+         -0.00000003 -0.00000000 -0.00000005 -0.28185377  0.00000000 -0.00000020  0.64854912 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000005  0.00000000

  13    1  |1 1>+          0.00000000  0.00418364 -0.00000000 -0.00000000  0.00000199 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000205
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000291  0.00000000 -0.00000000  0.00000373 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000012  0.00000000  0.00000074 -0.00000000  0.00000000  0.00000041  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000031  0.00000000  0.00000000  0.00040459 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00044735  0.00000000  0.00020297 -0.00000000 -0.00000000  0.00046627  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00020289 -0.00000000  0.00000000 -0.00046630  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040458

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000032

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00017139  0.00000000  0.00000000  0.57789370 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000001  0.00000000  0.00000004  0.00000001 -0.00000000  0.00000001  0.00000001  0.00000000
                           0.17944616 -0.00000000  0.79320379 -0.00000013 -0.00000000 -0.25294170 -0.00000008 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000000
                           0.00000002  0.00000000  0.00000013  0.79326836 -0.00000000 -0.00000008  0.25286890 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001954
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.57779948

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000003 -0.00000000
                          -0.00000005 -0.00000000  0.00000002  0.12129237 -0.00000000 -0.00000011  0.35469730 -0.00000000

  11    1  |1 0>          -0.00000004  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00000000
                           0.58704573 -0.00000000 -0.12137199  0.00000002  0.00000000  0.35476273  0.00000011  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.65139014  0.00000000 -0.00000000  0.00000042 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000322  0.00000000 -0.00000000  0.00000110 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00719705 -0.00000000  0.00000321 -0.00000000  0.00000000  0.00000110  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00836722 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00044224  0.00000000 -0.00039971  0.00000000  0.00000000  0.00030877  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00076246 -0.00000000 -0.00000000 -0.00040554  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040178

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00049742 -0.00000000 -0.00000000  0.00008172 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00017538  0.00000000 -0.00000000  0.00040696 -0.00000000

   6    1  |1 1>-          0.00000003 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                          -0.48611083  0.00000000  0.50631595 -0.00000008 -0.00000000  0.27727591  0.00000009 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.15532036  0.00000000  0.00000000  0.47138877 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000693
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.20485576

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000004  0.00000000
                          -0.00000004 -0.00000000 -0.00000002 -0.14234941  0.00000000  0.00000017 -0.55919628  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001825
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.53989123

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.50882745  0.00000000  0.00000000  0.33288402 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000002  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000003 -0.00000003 -0.00000000
                           0.37564787 -0.00000000  0.28196486 -0.00000005 -0.00000000  0.64850109  0.00000020 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000205

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00418871  0.00000000 -0.00000000 -0.00000199 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00719795 -0.00000000  0.00000291 -0.00000000  0.00000000  0.00000372  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000074  0.00000000  0.00000000 -0.00000041 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000044  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00001237  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000256  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000292  0.00000000 -0.00000038 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000044 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000102
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000  0.00001695 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00003216 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00003195 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002688
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000089 -0.00000000  0.00014694  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00002443  0.00000000  0.00000640 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000690  0.00000000  0.00000004  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000203 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00031054 -0.00000000 -0.00000000  0.00000000  0.00000306  0.00000000  0.00000172 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000333 -0.00000000 -0.00000273  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000168 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000449
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000349
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000008 -0.60931851 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006
                          -0.00000000 -0.00000003 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004

   7    1  |1 1>+          0.20666223  0.00000000  0.00000000  0.00000000  0.67625659 -0.00000000  0.27869845 -0.00000000
                          -0.00000128 -0.00000000 -0.00000000 -0.00000000 -0.00003969 -0.00000000 -0.00000405 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.68831112 -0.00000000 -0.02345431  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.61529092 -0.00000008  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.22379095
                          -0.00000000  0.00000008  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.14503499  0.00000000  0.53435481 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.67650968  0.00000000  0.00000000 -0.00000000 -0.20668270  0.00000000  0.45630141 -0.00000000
                          -0.00000418  0.00000000  0.00000000 -0.00000000  0.00001213 -0.00000000 -0.00000663  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00721867  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000014
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000629  0.00000000 -0.00000683  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000114  0.00000000 -0.00000000  0.00000000 -0.00000877 -0.00000000  0.00000461 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000126 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000215
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000360 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000351

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000025 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000548  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00053664  0.00000000  0.00000000 -0.00000000 -0.00000236  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00002396  0.00000000  0.65407309 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000007  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                           0.00000000 -0.48079354  0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000  0.20777252

   8    1  |1 0>          -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003
                          -0.00000000  0.00000007  0.48081056  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000950 -0.00000000
                          -0.00033560  0.00000000  0.00000000 -0.00000000  0.00014151  0.00000000  0.65433218 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012
                          -0.00000000  0.00000002  0.13757583 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000016

  11    1  |1 0>          -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009
                          -0.00000000  0.13763569 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70175786

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.10186532 -0.00000000 -0.00002387 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000929  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000926 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001935

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000562  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000160 -0.00000000 -0.00000000 -0.00000000 -0.00000111 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000203 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000359

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000274 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00031100  0.00000000  0.00000000  0.00000000  0.00000306 -0.00000000 -0.00000172 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000168  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000008 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                          -0.00000000  0.60930996 -0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.23852235

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.68828355  0.00000000 -0.02360161 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000128  0.00000000  0.00000000  0.00000000  0.00003969 -0.00000000 -0.00000405  0.00000000
                           0.20678099  0.00000000 -0.00000000  0.00000000  0.67617254 -0.00000000 -0.27891044  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000003 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004
                           0.00000000  0.00000008  0.61528282  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

  10    1  |1 1>-         -0.00000417 -0.00000000  0.00000000  0.00000000  0.00001214  0.00000000  0.00000663 -0.00000000
                          -0.67591893  0.00000000  0.00000000 -0.00000000  0.20676064  0.00000000  0.45626151 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.14519592 -0.00000000 -0.53436521  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000007
                          -0.00000000  0.00724086 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.59782203

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000114  0.00000000  0.00000000  0.00000000  0.00000878  0.00000000  0.00000461 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000627  0.00000000  0.00000687  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000127 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001445

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000 -0.00000204 -0.00000000  0.00000007 -0.00000025  0.00000000  0.00000000 -0.00713714
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000102 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00209774 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000005 -0.00000000  0.00200397  0.00061580  0.00000000  0.00000000  0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00209748  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000171 -0.00000000  0.00061604 -0.00200497  0.00000000  0.00000000 -0.00000090
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00209789 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.94018827  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000066  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00002687 -0.00000000  0.00000000 -0.00000000  0.00000000  0.94019187  0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.94019177  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000022 -0.00000001  0.91642339  0.20989938  0.00000000  0.00000000  0.00000129
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000695  0.00000000 -0.20987782  0.91635508 -0.00000000 -0.00000000 -0.00003971
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00002301  0.00000000 -0.00000100  0.00000394  0.00000000 -0.00000000  0.18672434
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000359 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00124205  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00124055  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000201 -0.00000000  0.00062386  0.00239574 -0.00000000  0.00000000 -0.00000061
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00124194  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00214229 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.23850000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04664597 -0.00000000 -0.00000000
                          -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.05896468  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.04287422  0.00000000 -0.04463925 -0.02775046  0.00000000 -0.00000000 -0.00000585
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.04665822 -0.00000000
                          -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.46648346  0.00000000 -0.04274121  0.03911146 -0.00000000 -0.00000000 -0.00002294
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00260315 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.59782237 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03616896 -0.00000000  0.00000000
                          -0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00002241  0.00000000 -0.25832576  0.06768446 -0.00000000 -0.00000000  0.56718799
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.23118035  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00001445 -0.00000000  0.00000000 -0.00000000  0.00000000  0.23115457  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000049  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00238269  0.00065329  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00124103 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000351  0.00000000  0.00000000 -0.00000000  0.00000000  0.00124104  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00246985 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00001746 -0.00000000  0.04495960  0.01232702  0.00000000  0.00000000 -0.00000003

   7    1  |1 0>          -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.01724108 -0.00000000

   8    1  |1 0>           0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.20766588 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01723100  0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.04665321 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000015 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70178968  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05648208 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.05647901  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.74909086 -0.00000000  0.01659854 -0.06053811  0.00000000  0.00000000 -0.00003086

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001934 -0.00000000  0.00000000 -0.00000000  0.00000000  0.23118180  0.00000001 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.23118197  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00002515 -0.00000000  0.07063039 -0.25760364  0.00000000  0.00000000  0.56716768

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00124204 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000200 -0.00000000  0.00175851 -0.00174254  0.00000000  0.00000000  0.00000061

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00124055 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000449 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00124186  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000349  0.00000000  0.00000000 -0.00000000  0.00000000  0.00214236  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.04664610  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.04295531  0.00000000 -0.05254761  0.00111264 -0.00000000 -0.00000000  0.00000590

   8    1  |1 1>-          0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.05896526 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.22381307 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04665841 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00259273 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.46644689 -0.00000000  0.01682561  0.05544103 -0.00000000  0.00000000 -0.00002293

  12    1  |1 1>-          0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.03616893 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.23118030  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00002243 -0.00000000  0.18768155  0.18997274 -0.00000000  0.00000000  0.56718752

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.23115479  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000215 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000049 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000016
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00419538  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00418422 -0.00013333
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00419504  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00013351  0.00417820
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00419559 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000003  0.00000000 -0.00000000 -0.32633584 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00003735  0.00000000  0.00000000 -0.32631766  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00003725 -0.00000000 -0.00000000 -0.32631793 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.32613767 -0.01340523
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01339965  0.32628687
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00001666
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00034682 -0.00000000  0.00000000 -0.00007410  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00034605 -0.00000000 -0.00000000 -0.00007443 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007252  0.00012760
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00034608 -0.00000000 -0.00000000 -0.00007480 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00019494  0.00000000  0.00000000  0.00012854  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00001061 -0.00000000 -0.00000000  0.01092631 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000873  0.00000000 -0.00000000 -0.01380956 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01178748 -0.00351466
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000265  0.00000000  0.00000000  0.01092155  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00724389  0.01146039
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000151 -0.00000000  0.00000000  0.00060985  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00001686 -0.00000000 -0.00000000  0.00847744 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.66871767 -0.38481039
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.70684279  0.00000000  0.00000000  0.66820144  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00018110 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.70680785  0.00000005 -0.00000000  0.66824733 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.02730756 -0.00000000 -0.00000000  0.00000283 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014390  0.00000020

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00034671  0.00000000  0.00000000  0.00007397  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00034671  0.00000000  0.00000000 -0.00007398  0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00014505  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000010  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00040281  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01090399  0.00001515

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000220  0.00000000  0.00000000  0.00403797  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000219 -0.00000000  0.00000000 -0.00403561  0.00000000  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.01091849  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00001468  0.00000000 -0.00000000  0.01323156 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00001467  0.00000000  0.00000000  0.01323084  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002039 -0.01469192

  13    1  |1 0>          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70687804 -0.00000005 -0.00000000  0.66816373 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000005  0.70687792  0.00000000  0.00000000  0.66816379  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00107209  0.77152188

  16    1  |1 0>           0.00000700  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.02730627  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00034682  0.00000000  0.00000000  0.00007409  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007288 -0.00012739

   3    1  |1 1>-         -0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00034605 -0.00000000 -0.00000000  0.00007443  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00034609 -0.00000000  0.00000000 -0.00007479  0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00019493  0.00000000  0.00000000 -0.00012855  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00001059 -0.00000000 -0.00000000 -0.01092634 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.01179597  0.00348391

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000874  0.00000000 -0.00000000  0.01380970  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000264 -0.00000000 -0.00000000  0.01092160 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000152 -0.00000000  0.00000000  0.00060742  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00721413  0.01147992

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00001686  0.00000000  0.00000000  0.00847745  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00018110 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70684310 -0.00000000 -0.00000000  0.66820113  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.66764597 -0.38666672

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000005 -0.70680796  0.00000000  0.00000000  0.66824713  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.02730757 -0.00000000 -0.00000000 -0.00000284 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00122262 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000009  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000054
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000054 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000007 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000156  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.98241234 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000795
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000793 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000030  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000793  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000447  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000008
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000018 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000207  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000962  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000127  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000126
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.10779836 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.01930844  0.00000000  0.00000000
                          -0.00000000  0.00000026 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000099  0.01931041
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000005  0.99962708  0.00005114
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000794  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000795

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000923  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000026 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000026

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000117

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000117  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000838 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000099 -0.01930831

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.01930831  0.00000099

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.10781253  0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00001338 -0.00000000 -0.00000000
                           0.00000000  0.99962711 -0.00000005 -0.00000004

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000795 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000029  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000793 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000793

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000447

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000008 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000211  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000018  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000127 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000958 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000126 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000026 -0.00000000 -0.00000000
                           0.00000000  0.01930844 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.10779831 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.01931041 -0.00000099

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000004 -0.00005114  0.99962708


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.39314781     -0.00000569       -1.25      0.00000000        0.00      0.0000
     2   1    -25.35154061      0.04160151     9130.48      0.04160720     9131.73      1.1322
     3   1    -25.35154060      0.04160151     9130.48      0.04160720     9131.73      1.1322
     4   1    -25.35154059      0.04160152     9130.48      0.04160722     9131.73      1.1322
     5   1    -25.35077650      0.04236561     9298.18      0.04237130     9299.43      1.1530
     6   1    -25.35077643      0.04236568     9298.19      0.04237137     9299.44      1.1530
     7   1    -25.35077566      0.04236645     9298.36      0.04237215     9299.61      1.1530
     8   1    -25.35077563      0.04236648     9298.37      0.04237218     9299.62      1.1530
     9   1    -25.35077559      0.04236652     9298.38      0.04237222     9299.63      1.1530
    10   1    -25.34933336      0.04380875     9614.91      0.04381444     9616.16      1.1923
    11   1    -25.34933312      0.04380900     9614.96      0.04381469     9616.21      1.1923
    12   1    -25.34933312      0.04380900     9614.96      0.04381469     9616.21      1.1923
    13   1    -25.34933309      0.04380902     9614.97      0.04381472     9616.22      1.1923
    14   1    -25.34933290      0.04380921     9615.01      0.04381490     9616.26      1.1923
    15   1    -25.34933290      0.04380921     9615.01      0.04381490     9616.26      1.1923
    16   1    -25.34933288      0.04380923     9615.01      0.04381492     9616.26      1.1923
    17   1    -25.34047024      0.05267187    11560.14      0.05267756    11561.39      1.4334
    18   1    -25.34046816      0.05267395    11560.60      0.05267965    11561.85      1.4335
    19   1    -25.34046810      0.05267402    11560.61      0.05267971    11561.86      1.4335
    20   1    -25.34046801      0.05267411    11560.63      0.05267980    11561.88      1.4335
    21   1    -25.34046800      0.05267411    11560.63      0.05267981    11561.88      1.4335
    22   1    -25.29691445      0.09622766    21119.53      0.09623336    21120.78      2.6186
    23   1    -25.29691431      0.09622780    21119.56      0.09623350    21120.81      2.6186
    24   1    -25.29691381      0.09622830    21119.67      0.09623399    21120.92      2.6187
    25   1    -25.29691381      0.09622830    21119.67      0.09623399    21120.92      2.6187
    26   1    -25.29691329      0.09622882    21119.78      0.09623451    21121.03      2.6187
    27   1    -25.29560183      0.09754028    21407.62      0.09754598    21408.87      2.6544
    28   1    -25.29560183      0.09754028    21407.62      0.09754598    21408.87      2.6544
    29   1    -25.29560169      0.09754042    21407.65      0.09754612    21408.90      2.6544
    30   1    -25.29560070      0.09754142    21407.87      0.09754711    21409.12      2.6544
    31   1    -25.29560070      0.09754142    21407.87      0.09754711    21409.12      2.6544
    32   1    -25.29560042      0.09754170    21407.93      0.09754739    21409.18      2.6544
    33   1    -25.29560020      0.09754191    21407.98      0.09754761    21409.23      2.6544
    34   1    -25.29398890      0.09915321    21761.62      0.09915891    21762.86      2.6983
    35   1    -25.29398890      0.09915321    21761.62      0.09915891    21762.86      2.6983
    36   1    -25.29398859      0.09915352    21761.68      0.09915922    21762.93      2.6983
    37   1    -25.29398856      0.09915356    21761.69      0.09915925    21762.94      2.6983
    38   1    -25.29398803      0.09915409    21761.81      0.09915978    21763.06      2.6983
    39   1    -25.29398788      0.09915423    21761.84      0.09915992    21763.09      2.6983
    40   1    -25.29398709      0.09915502    21762.01      0.09916072    21763.26      2.6983
    41   1    -25.29398709      0.09915502    21762.01      0.09916072    21763.26      2.6983
    42   1    -25.29398674      0.09915538    21762.09      0.09916107    21763.34      2.6983
    43   1    -25.28629032      0.10685180    23451.26      0.10685749    23452.51      2.9077
    44   1    -25.28629028      0.10685184    23451.27      0.10685753    23452.52      2.9077
    45   1    -25.28629024      0.10685187    23451.27      0.10685756    23452.52      2.9077
    46   1    -25.28629020      0.10685192    23451.28      0.10685761    23452.53      2.9077
    47   1    -25.28629019      0.10685192    23451.29      0.10685761    23452.54      2.9077
    48   1    -25.28489748      0.10824463    23756.95      0.10825032    23758.20      2.9456
    49   1    -25.28360799      0.10953412    24039.96      0.10953981    24041.21      2.9807
    50   1    -25.28360787      0.10953425    24039.99      0.10953994    24041.24      2.9807
    51   1    -25.28360787      0.10953425    24039.99      0.10953994    24041.24      2.9807
    52   1    -25.28127633      0.11186578    24551.70      0.11187147    24552.95      3.0442
    53   1    -25.28127622      0.11186589    24551.72      0.11187158    24552.97      3.0442
    54   1    -25.28127622      0.11186589    24551.73      0.11187158    24552.97      3.0442
    55   1    -25.28127605      0.11186606    24551.76      0.11187175    24553.01      3.0442
    56   1    -25.28127524      0.11186687    24551.94      0.11187257    24553.19      3.0442
    57   1    -25.27304046      0.12010166    26359.27      0.12010735    26360.52      3.2683
    58   1    -25.27056039      0.12258172    26903.58      0.12258742    26904.83      3.3358
    59   1    -25.27056039      0.12258172    26903.58      0.12258742    26904.83      3.3358
    60   1    -25.27056039      0.12258172    26903.58      0.12258742    26904.83      3.3358

 E0 =    -25.39314211 is the energy of the lowest zeroth-order state
 E1 =    -25.39314781 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997378 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000022 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000318  0.00000000 -0.00000000  0.00000000  0.00000000 -0.10692243
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.10678648  0.00377532 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.10690146 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00377591 -0.10676425  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000320  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00298819  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000301  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00299505
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000301 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00298144  0.00011258  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00011215 -0.00299045  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00013157 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000055  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000013 -0.54785092 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40612045
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.54785569 -0.00000000 -0.00000000 -0.40611843 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000818  0.00000000 -0.00000000  0.00000112 -0.00000000

 15  1     3    1  |1 1>+       0.00000015 -0.00000000  0.00000000  0.00000000  0.40250829  0.70501107 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.54751745  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.31612327  0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000446 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001828
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000353  0.00000000 -0.00000000 -0.00002234 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000007 -0.00000000  0.00000000  0.00000000 -0.00001779 -0.00000865  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000410  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000096 -0.00000000 -0.00000000 -0.00000000 -0.00000759  0.00001685  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000  0.00000477  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000304 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001846
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00417998 -0.00000000  0.00000000  0.00000000  0.00093391 -0.00053258 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00044830  0.00000000  0.00000000  0.00093128  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00044584 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00092849
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000278  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.81180371  0.00392632 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54785934  0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000013  0.54785909  0.00000000  0.00000000 -0.00000000 -0.00000000  0.40611426

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000224 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00001286  0.00000000  0.00000000  0.81160142  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000944  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.63222493  0.00000000  0.00000000  0.00001643  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002157  0.00000010  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000264 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000264 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000679

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00002164  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000440  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002463

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000440 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000114 -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00001798  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00044685  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00093347

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00044685 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00417994 -0.00000000 -0.00000000 -0.00000000 -0.00000520  0.00107515 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000279 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.54785077 -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000016 -0.00000000  0.00000000 -0.00000000  0.40930865 -0.70108518  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000818  0.00000000 -0.00000000  0.00000112 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.54785526  0.00000000  0.00000000  0.40611866  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000013 -0.54753066 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40578447

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000008  0.31610057  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70287498

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000446 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00001787  0.00000848  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000353  0.00000000  0.00000000  0.00002234  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000411 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001829

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000016  0.00000000 -0.00000000  0.00000477  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000096  0.00000000 -0.00000000 -0.00000000  0.00000744  0.00001692 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000304  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00044830  0.00000000  0.00000000  0.00093128  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00417998  0.00000000  0.00000000  0.00000000 -0.00092871 -0.00054158  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00044584  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000278  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00003652 -0.00000000  0.00000000  0.00000601 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00001286  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004028 -0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000036 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.10689350 -0.00000000 -0.00003652  0.00000000  0.00000000  0.00000600 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000655 -0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000238  0.00000000 -0.00000000 -0.00000346  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00299503 -0.00000000  0.00000239 -0.00000000 -0.00000000 -0.00000346  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000010 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000017  0.62665255 -0.00000000 -0.00000005 -0.37459913  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.57775653  0.00000000  0.00000000  0.44633237
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025 -0.00000000 -0.00000000 -0.00000078

 15  1     3    1  |1 1>+       0.00000000 -0.57734662  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.40581496  0.00000000  0.36639485 -0.00000010 -0.00000000  0.63197098 -0.00000008 -0.00000000
                               -0.00000000  0.00000000  0.00000010  0.00000001  0.00000000  0.00000003 -0.00000001 -0.00000000

 17  1     5    1  |1 1>+       0.70286021 -0.00000000 -0.45075977  0.00000012  0.00000000  0.44401645 -0.00000006 -0.00000000
                                0.00000000  0.00000000 -0.00000012 -0.00000001 -0.00000000  0.00000002 -0.00000001 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00005676 -0.00000000 -0.00000000 -0.00039768  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00013802 -0.00000000 -0.00000000 -0.00014387
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00033074  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00001835  0.00000000  0.00039825 -0.00000000 -0.00000000 -0.00005120  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00023315 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00037619 -0.00000000 -0.00000000 -0.00046932
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00034982 -0.00000000  0.00000000  0.00034554 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000058  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000025  0.00000000  0.00000000 -0.00000190
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000226  0.00000000 -0.00000000 -0.00000239  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.57735753 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000014 -0.00000001 -0.00000000  0.00000003 -0.00000001 -0.00000000
                                0.40611551  0.00000000  0.52008416 -0.00000014 -0.00000000 -0.51237299  0.00000007  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000014  0.51941749 -0.00000000  0.00000007  0.51304908 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000025 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.57764749  0.00000000 -0.00000000 -0.00073417

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000135
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00097544  0.00000000  0.00000000  0.77478400

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00040636  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000682  0.00000000  0.00036255 -0.00000000 -0.00000000  0.00044872 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00036318 -0.00000000 -0.00000000 -0.00044825  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00040616 -0.00000000  0.00000000  0.00000051

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00025869 -0.00000000  0.00000000  0.00000830 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002471 -0.00000000 -0.00025876  0.00000000  0.00000000  0.00000788 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000068 -0.00000000  0.00000000  0.00000125  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00093340  0.00000000 -0.00000069  0.00000000  0.00000000  0.00000125 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000016 -0.00000001 -0.00000000 -0.00000002  0.00000001  0.00000000
                                0.40612191  0.00000000  0.62616485 -0.00000017 -0.00000000  0.37541379 -0.00000005 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.57734623  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000078
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57664488  0.00000000  0.00000000  0.44776797

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000010 -0.36719788  0.00000000  0.00000008  0.63151227 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000012 -0.45019695  0.00000000 -0.00000006 -0.44457610  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001835 -0.00000000 -0.00005728  0.00000000 -0.00000000  0.00039761 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00033078  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00013773 -0.00000000 -0.00000000 -0.00014413

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00039818  0.00000000 -0.00000000 -0.00005172  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00037733  0.00000000  0.00000000  0.00046841

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00023309  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001851 -0.00000000 -0.00035027  0.00000000  0.00000000  0.00034508 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000  0.00000190

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000058 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00092842 -0.00000000  0.00000226 -0.00000000 -0.00000000 -0.00000239  0.00000000  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99423275 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00684248
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.02758302  0.99385746 -0.00000000 -0.00000000 -0.00685171  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000001  0.99423503 -0.00000000 -0.00683982 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000072 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.99385976  0.02758294  0.00000000  0.00000000 -0.00021153 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.99423586  0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00038677  0.00000000  0.09768245  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000

  8  1     8    1  |0 0>       -0.00038778  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.09770825
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00038770 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00001755  0.00038623 -0.00000000 -0.00000000  0.09766717 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00038798  0.00001748 -0.00000000 -0.00000000  0.00411394 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.04365203 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044224
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.04364224  0.00000000  0.00044615  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.07542102 -0.04383969  0.00000000  0.00000000  0.00043982 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.04363762  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.07558574 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00339668  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48611056
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00429100 -0.00000000 -0.61366409 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000040  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00107977  0.00367378 -0.00000000 -0.00000000  0.52397301 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00339661 -0.00000000  0.00000000 -0.00000000  0.00000004
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00357934  0.00224079 -0.00000000 -0.00000000  0.32045874 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018764  0.00000000  0.02692326  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

 24  1    12    1  |1 1>+      -0.00263065  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37564821
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00182624  0.00314611 -0.00000000 -0.00000000 -0.00722381  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00315742  0.00000000  0.00720124  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00315812 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00719792
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00024105 -0.08723812  0.00000000  0.00000000  0.00087986 -0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.04364159 -0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04365341 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044735

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.08728641 -0.00000000 -0.00087764 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000180  0.00000000 -0.00000002  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000938 -0.00339597  0.00000000  0.00000000 -0.48571939  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00125639 -0.00000000  0.00000000 -0.00000000  0.00000002

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00125554 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.17934219

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000031  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00339265  0.00000000  0.48547874  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00410825  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.58707740

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00410844 -0.00000000  0.00000000 -0.00000000  0.00000005

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00457667  0.00001264 -0.00000000 -0.00000000 -0.00022953 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00315733 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00719704

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00315752  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00363350  0.00001004 -0.00000000 -0.00000000  0.00000296  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.04364024 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.07566213 -0.04342225  0.00000000  0.00000000  0.00044036  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.04364226 -0.00000000 -0.00044615 -0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04364632 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044270

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.07560800 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00076418

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00339703  0.00000000 -0.00000000  0.00000000 -0.00000004

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00110069  0.00366736 -0.00000000 -0.00000000  0.52402598 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000040  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00429104  0.00000000  0.61366876  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00339628  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48586309

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018689  0.00000000  0.02681501  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00356671 -0.00226118  0.00000000  0.00000000 -0.32019307  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00263092 -0.00000000  0.00000000 -0.00000000  0.00000003

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00315742  0.00000000  0.00720124  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00180883 -0.00315615  0.00000000  0.00000000  0.00722086 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00315832  0.00000000  0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000012


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000019 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000284  0.00000000 -0.00000000  0.00000405 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00021205 -0.00000000  0.00000000  0.00000091  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000029
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00686910 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00684318 -0.00000000  0.00000283 -0.00000000  0.00000000  0.00000406  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001615
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000001 -0.00000000 -0.00000000 -0.00003967 -0.00000000 -0.00000000  0.00011063 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.09770821 -0.00000000  0.00003968 -0.00000000 -0.00000000  0.00011067  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00412230 -0.00000000  0.00000000 -0.00000357 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.09785686  0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000313  0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00039976  0.00000000  0.00000000 -0.00030870  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040214
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

 15  1     3    1  |1 1>+       0.00000000  0.00076277 -0.00000000 -0.00000000 -0.00040554  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00044274 -0.00000000 -0.00049740  0.00000000  0.00000000  0.00008183  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00076416  0.00000000 -0.00017547  0.00000000  0.00000000 -0.00040693 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000004 -0.00000000  0.00000008  0.50626879 -0.00000000  0.00000009 -0.27736296  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.20500076
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000693

 20  1     8    1  |1 1>+      -0.00000000  0.15559926  0.00000000  0.00000000  0.47132985 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.48586296 -0.00000000  0.14225361 -0.00000002 -0.00000000 -0.55922072 -0.00000017 -0.00000000
                                0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000002 -0.00000003 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.50862908 -0.00000000 -0.00000000 -0.33296758  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.53914148
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001823

 24  1    12    1  |1 1>+      -0.00000003 -0.00000000 -0.00000005 -0.28185377  0.00000000 -0.00000020  0.64854912 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000005  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00418364 -0.00000000 -0.00000000  0.00000199 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000205
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000291  0.00000000 -0.00000000  0.00000373 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000012  0.00000000  0.00000074 -0.00000000  0.00000000  0.00000041  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000031  0.00000000  0.00000000  0.00040459 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00044735  0.00000000  0.00020297 -0.00000000 -0.00000000  0.00046627  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00020289 -0.00000000  0.00000000 -0.00046630  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040458

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000032

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00017139  0.00000000  0.00000000  0.57789370 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000001  0.00000000  0.00000004  0.00000001 -0.00000000  0.00000001  0.00000001  0.00000000
                                0.17944616 -0.00000000  0.79320379 -0.00000013 -0.00000000 -0.25294170 -0.00000008 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000000
                                0.00000002  0.00000000  0.00000013  0.79326836 -0.00000000 -0.00000008  0.25286890 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001954
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.57779948

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000003 -0.00000000
                               -0.00000005 -0.00000000  0.00000002  0.12129237 -0.00000000 -0.00000011  0.35469730 -0.00000000

 39  1    11    1  |1 0>       -0.00000004  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00000000
                                0.58704573 -0.00000000 -0.12137199  0.00000002  0.00000000  0.35476273  0.00000011  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.65139014  0.00000000 -0.00000000  0.00000042 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000322  0.00000000 -0.00000000  0.00000110 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00719705 -0.00000000  0.00000321 -0.00000000  0.00000000  0.00000110  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00836722 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00044224  0.00000000 -0.00039971  0.00000000  0.00000000  0.00030877  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00076246 -0.00000000 -0.00000000 -0.00040554  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040178

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00049742 -0.00000000 -0.00000000  0.00008172 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00017538  0.00000000 -0.00000000  0.00040696 -0.00000000

 50  1     6    1  |1 1>-       0.00000003 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                               -0.48611083  0.00000000  0.50631595 -0.00000008 -0.00000000  0.27727591  0.00000009 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.15532036  0.00000000  0.00000000  0.47138877 -0.00000000 -0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000693
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.20485576

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000004  0.00000000
                               -0.00000004 -0.00000000 -0.00000002 -0.14234941  0.00000000  0.00000017 -0.55919628  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001825
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.53989123

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.50882745  0.00000000  0.00000000  0.33288402 -0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000002  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000003 -0.00000003 -0.00000000
                                0.37564787 -0.00000000  0.28196486 -0.00000005 -0.00000000  0.64850109  0.00000020 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000205

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00418871  0.00000000 -0.00000000 -0.00000199 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00719795 -0.00000000  0.00000291 -0.00000000  0.00000000  0.00000372  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000074  0.00000000  0.00000000 -0.00000041 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000044  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00001237  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000256  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000292  0.00000000 -0.00000038 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000044 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000102
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000  0.00001695 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00003216 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00003195 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002688
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000089 -0.00000000  0.00014694  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00002443  0.00000000  0.00000640 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000690  0.00000000  0.00000004  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000203 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00031054 -0.00000000 -0.00000000  0.00000000  0.00000306  0.00000000  0.00000172 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000333 -0.00000000 -0.00000273  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000168 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000449
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000349
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000008 -0.60931851 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006
                               -0.00000000 -0.00000003 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004

 19  1     7    1  |1 1>+       0.20666223  0.00000000  0.00000000  0.00000000  0.67625659 -0.00000000  0.27869845 -0.00000000
                               -0.00000128 -0.00000000 -0.00000000 -0.00000000 -0.00003969 -0.00000000 -0.00000405 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.68831112 -0.00000000 -0.02345431  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.61529092 -0.00000008  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.22379095
                               -0.00000000  0.00000008  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.14503499  0.00000000  0.53435481 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.67650968  0.00000000  0.00000000 -0.00000000 -0.20668270  0.00000000  0.45630141 -0.00000000
                               -0.00000418  0.00000000  0.00000000 -0.00000000  0.00001213 -0.00000000 -0.00000663  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00721867  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000014
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000629  0.00000000 -0.00000683  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000114  0.00000000 -0.00000000  0.00000000 -0.00000877 -0.00000000  0.00000461 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000126 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000215
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000360 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000351

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000025 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000548  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00053664  0.00000000  0.00000000 -0.00000000 -0.00000236  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00002396  0.00000000  0.65407309 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000007  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                                0.00000000 -0.48079354  0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000  0.20777252

 36  1     8    1  |1 0>       -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003
                               -0.00000000  0.00000007  0.48081056  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000950 -0.00000000
                               -0.00033560  0.00000000  0.00000000 -0.00000000  0.00014151  0.00000000  0.65433218 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012
                               -0.00000000  0.00000002  0.13757583 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000016

 39  1    11    1  |1 0>       -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009
                               -0.00000000  0.13763569 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70175786

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.10186532 -0.00000000 -0.00002387 -0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000929  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000926 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001935

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000562  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000160 -0.00000000 -0.00000000 -0.00000000 -0.00000111 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000203 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000359

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000274 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00031100  0.00000000  0.00000000  0.00000000  0.00000306 -0.00000000 -0.00000172 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000168  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000008 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                               -0.00000000  0.60930996 -0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.23852235

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.68828355  0.00000000 -0.02360161 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000128  0.00000000  0.00000000  0.00000000  0.00003969 -0.00000000 -0.00000405  0.00000000
                                0.20678099  0.00000000 -0.00000000  0.00000000  0.67617254 -0.00000000 -0.27891044  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000003 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004
                                0.00000000  0.00000008  0.61528282  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

 54  1    10    1  |1 1>-      -0.00000417 -0.00000000  0.00000000  0.00000000  0.00001214  0.00000000  0.00000663 -0.00000000
                               -0.67591893  0.00000000  0.00000000 -0.00000000  0.20676064  0.00000000  0.45626151 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.14519592 -0.00000000 -0.53436521  0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000007
                               -0.00000000  0.00724086 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.59782203

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000114  0.00000000  0.00000000  0.00000000  0.00000878  0.00000000  0.00000461 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000627  0.00000000  0.00000687  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000127 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001445

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000 -0.00000204 -0.00000000  0.00000007 -0.00000025  0.00000000  0.00000000 -0.00713714
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000102 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00209774 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000005 -0.00000000  0.00200397  0.00061580  0.00000000  0.00000000  0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00209748  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000171 -0.00000000  0.00061604 -0.00200497  0.00000000  0.00000000 -0.00000090
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00209789 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.94018827  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000066  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00002687 -0.00000000  0.00000000 -0.00000000  0.00000000  0.94019187  0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.94019177  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000022 -0.00000001  0.91642339  0.20989938  0.00000000  0.00000000  0.00000129
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000695  0.00000000 -0.20987782  0.91635508 -0.00000000 -0.00000000 -0.00003971
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00002301  0.00000000 -0.00000100  0.00000394  0.00000000 -0.00000000  0.18672434
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000359 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00124205  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00124055  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000201 -0.00000000  0.00062386  0.00239574 -0.00000000  0.00000000 -0.00000061
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00124194  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00214229 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.23850000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04664597 -0.00000000 -0.00000000
                               -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.05896468  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.04287422  0.00000000 -0.04463925 -0.02775046  0.00000000 -0.00000000 -0.00000585
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.04665822 -0.00000000
                               -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.46648346  0.00000000 -0.04274121  0.03911146 -0.00000000 -0.00000000 -0.00002294
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00260315 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.59782237 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03616896 -0.00000000  0.00000000
                               -0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00002241  0.00000000 -0.25832576  0.06768446 -0.00000000 -0.00000000  0.56718799
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.23118035  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00001445 -0.00000000  0.00000000 -0.00000000  0.00000000  0.23115457  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000049  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00238269  0.00065329  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00124103 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000351  0.00000000  0.00000000 -0.00000000  0.00000000  0.00124104  0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00246985 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00001746 -0.00000000  0.04495960  0.01232702  0.00000000  0.00000000 -0.00000003

 35  1     7    1  |1 0>       -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.01724108 -0.00000000

 36  1     8    1  |1 0>        0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.20766588 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01723100  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.04665321 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000015 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70178968  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05648208 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.05647901  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.74909086 -0.00000000  0.01659854 -0.06053811  0.00000000  0.00000000 -0.00003086

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001934 -0.00000000  0.00000000 -0.00000000  0.00000000  0.23118180  0.00000001 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.23118197  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00002515 -0.00000000  0.07063039 -0.25760364  0.00000000  0.00000000  0.56716768

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00124204 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000200 -0.00000000  0.00175851 -0.00174254  0.00000000  0.00000000  0.00000061

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00124055 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000449 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00124186  0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000349  0.00000000  0.00000000 -0.00000000  0.00000000  0.00214236  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.04664610  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.04295531  0.00000000 -0.05254761  0.00111264 -0.00000000 -0.00000000  0.00000590

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.05896526 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.22381307 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04665841 -0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00259273 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.46644689 -0.00000000  0.01682561  0.05544103 -0.00000000  0.00000000 -0.00002293

 56  1    12    1  |1 1>-       0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.03616893 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.23118030  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00002243 -0.00000000  0.18768155  0.18997274 -0.00000000  0.00000000  0.56718752

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.23115479  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000215 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000049 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000016
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00419538  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00418422 -0.00013333
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00419504  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00013351  0.00417820
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00419559 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000003  0.00000000 -0.00000000 -0.32633584 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00003735  0.00000000  0.00000000 -0.32631766  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00003725 -0.00000000 -0.00000000 -0.32631793 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.32613767 -0.01340523
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01339965  0.32628687
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00001666
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00034682 -0.00000000  0.00000000 -0.00007410  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00034605 -0.00000000 -0.00000000 -0.00007443 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007252  0.00012760
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.00034608 -0.00000000 -0.00000000 -0.00007480 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00019494  0.00000000  0.00000000  0.00012854  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00001061 -0.00000000 -0.00000000  0.01092631 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000873  0.00000000 -0.00000000 -0.01380956 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01178748 -0.00351466
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000265  0.00000000  0.00000000  0.01092155  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00724389  0.01146039
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000151 -0.00000000  0.00000000  0.00060985  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00001686 -0.00000000 -0.00000000  0.00847744 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.66871767 -0.38481039
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.70684279  0.00000000  0.00000000  0.66820144  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00018110 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.70680785  0.00000005 -0.00000000  0.66824733 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.02730756 -0.00000000 -0.00000000  0.00000283 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014390  0.00000020

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00034671  0.00000000  0.00000000  0.00007397  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00034671  0.00000000  0.00000000 -0.00007398  0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00014505  0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000010  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00040281  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01090399  0.00001515

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000220  0.00000000  0.00000000  0.00403797  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000219 -0.00000000  0.00000000 -0.00403561  0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.01091849  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00001468  0.00000000 -0.00000000  0.01323156 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00001467  0.00000000  0.00000000  0.01323084  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002039 -0.01469192

 41  1    13    1  |1 0>       -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70687804 -0.00000005 -0.00000000  0.66816373 -0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000005  0.70687792  0.00000000  0.00000000  0.66816379  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00107209  0.77152188

 44  1    16    1  |1 0>        0.00000700  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.02730627  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00034682  0.00000000  0.00000000  0.00007409  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007288 -0.00012739

 47  1     3    1  |1 1>-      -0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00034605 -0.00000000 -0.00000000  0.00007443  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00034609 -0.00000000  0.00000000 -0.00007479  0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00019493  0.00000000  0.00000000 -0.00012855  0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00001059 -0.00000000 -0.00000000 -0.01092634 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.01179597  0.00348391

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000874  0.00000000 -0.00000000  0.01380970  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000264 -0.00000000 -0.00000000  0.01092160 -0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000152 -0.00000000  0.00000000  0.00060742  0.00000000 -0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00721413  0.01147992

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00001686  0.00000000  0.00000000  0.00847745  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00018110 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70684310 -0.00000000 -0.00000000  0.66820113  0.00000000 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.66764597 -0.38666672

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000005 -0.70680796  0.00000000  0.00000000  0.66824713  0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.02730757 -0.00000000 -0.00000000 -0.00000284 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00122262 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000009  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000054
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000054 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000007 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000156  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.98241234 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000795
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000793 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000030  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000793  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000447  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000008
                                0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000018 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000207  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000962  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000127  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000126
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.10779836 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.01930844  0.00000000  0.00000000
                               -0.00000000  0.00000026 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000099  0.01931041
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000005  0.99962708  0.00005114
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000794  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000795

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000923  0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000026 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000026

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000117

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000117  0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000838 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000099 -0.01930831

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.01930831  0.00000099

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.10781253  0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00001338 -0.00000000 -0.00000000
                                0.00000000  0.99962711 -0.00000005 -0.00000004

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000795 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000029  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000793 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000793

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000447

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000008 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000211  0.00000000 -0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000018  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000127 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000958 -0.00000000  0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000126 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000026 -0.00000000 -0.00000000
                                0.00000000  0.01930844 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.10779831 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.01931041 -0.00000099

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000004 -0.00005114  0.99962708



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.14%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.49%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.49%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.20%   49.70%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   29.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.90%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.49%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.87%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.97%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.75%   49.15%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.49%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.98%    0.00%    0.00%    0.00%    0.00%   16.47%
 49  1     5    1  |1 1>-         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%   49.40%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%   39.27%    0.00%    0.00%   14.03%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%   19.92%
 15  1     3    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.47%    0.00%   13.42%    0.00%    0.00%   39.94%    0.00%    0.00%
 17  1     5    1  |1 1>+        49.40%    0.00%   20.32%    0.00%    0.00%   19.72%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.49%    0.00%   27.05%    0.00%    0.00%   26.25%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%   26.98%    0.00%    0.00%   26.32%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.03%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-        16.49%    0.00%   39.21%    0.00%    0.00%   14.09%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.25%    0.00%    0.00%   20.05%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%   13.48%    0.00%    0.00%   39.88%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%   20.27%    0.00%    0.00%   19.76%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         98.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.08%   98.78%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.85%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%   98.78%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.85%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.95%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.95%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.95%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.57%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.57%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.63%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.66%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   27.45%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   10.27%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.11%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.76%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.59%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.22%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.57%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.47%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.57%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   27.46%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.66%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.61%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   10.25%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.95%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   25.63%    0.00%    0.00%    7.69%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.20%
 20  1     8    1  |1 1>+         0.00%    2.42%    0.00%    0.00%   22.22%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        23.61%    0.00%    2.02%    0.00%    0.00%   31.27%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%   25.87%    0.00%    0.00%   11.09%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   29.07%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    7.94%    0.00%    0.00%   42.06%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.40%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          3.22%    0.00%   62.92%    0.00%    0.00%    6.40%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   62.93%    0.00%    0.00%    6.39%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.39%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.47%    0.00%    0.00%   12.58%    0.00%
 39  1    11    1  |1 0>         34.46%    0.00%    1.47%    0.00%    0.00%   12.59%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.63%    0.00%   25.64%    0.00%    0.00%    7.69%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    2.41%    0.00%    0.00%   22.22%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.20%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    2.03%    0.00%    0.00%   31.27%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   29.15%
 55  1    11    1  |1 1>-         0.00%   25.89%    0.00%    0.00%   11.08%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        14.11%    0.00%    7.95%    0.00%    0.00%   42.06%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%   37.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         4.27%    0.00%    0.00%    0.00%   45.73%    0.00%    7.77%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%   47.38%    0.00%    0.06%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%   37.86%    0.00%    0.00%    0.00%    0.00%    0.00%    5.01%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    2.10%    0.00%   28.55%    0.00%    0.00%
 23  1    11    1  |1 1>+        45.77%    0.00%    0.00%    0.00%    4.27%    0.00%   20.82%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.78%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%   23.12%    0.00%    0.00%    0.00%    0.00%    0.00%    4.32%
 36  1     8    1  |1 0>          0.00%    0.00%   23.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.82%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    1.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    1.89%    0.00%    0.00%    0.00%    0.00%    0.00%   49.25%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    1.04%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%   37.13%    0.00%    0.00%    0.00%    0.00%    0.00%    5.69%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%   47.37%    0.00%    0.06%    0.00%    0.00%
 52  1     8    1  |1 1>-         4.28%    0.00%    0.00%    0.00%   45.72%    0.00%    7.78%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%   37.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-        45.69%    0.00%    0.00%    0.00%    4.27%    0.00%   20.82%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    2.11%    0.00%   28.55%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   35.74%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   88.40%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   88.40%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   88.40%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%   83.98%    4.41%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    4.40%   83.97%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.49%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         5.69%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.35%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.18%    0.00%    0.20%    0.08%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%
 22  1    10    1  |1 1>+         0.00%   21.76%    0.00%    0.18%    0.15%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        35.74%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    6.67%    0.46%    0.00%    0.00%   32.17%
 26  1    14    1  |1 1>+         0.00%    0.00%    5.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.34%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.20%    0.02%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 36  1     8    1  |1 0>          4.31%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>         49.25%    0.00%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.32%    0.00%
 40  1    12    1  |1 0>          0.00%   56.11%    0.00%    0.03%    0.37%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.34%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.34%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.50%    6.64%    0.00%    0.00%   32.17%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.18%    0.00%    0.28%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.35%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         5.01%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   21.76%    0.00%    0.03%    0.31%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    5.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    3.52%    3.61%    0.00%    0.00%   32.17%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.34%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   10.65%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   10.65%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   10.65%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.64%    0.02%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   10.65%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   44.72%   14.81%
 26  1    14    1  |1 1>+        49.96%    0.00%    0.00%   44.65%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%   49.96%    0.00%    0.00%   44.66%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 41  1    13    1  |1 0>          0.00%   49.97%    0.00%    0.00%   44.64%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%   44.64%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   59.52%
 44  1    16    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 57  1    13    1  |1 1>-        49.96%    0.00%    0.00%   44.65%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   44.58%   14.95%
 59  1    15    1  |1 1>-         0.00%    0.00%   49.96%    0.00%    0.00%   44.66%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>         96.51%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         1.16%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.04%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.04%
 28  1    16    1  |1 1>+         0.00%    0.00%   99.93%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.04%
 42  1    14    1  |1 0>          0.00%    0.00%    0.04%    0.00%
 43  1    15    1  |1 0>          1.16%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%   99.93%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.04%    0.00%    0.00%
 58  1    14    1  |1 1>-         1.16%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.04%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%   99.93%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1095.53       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5400.38   4180.09    796.96    412.93      5.82      0.47      3.69
 REAL TIME  *      5672.98 SEC
 DISK USED  *         1.14 GB (local),       27.79 GB (total)
 SF USED    *         6.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -25.270560388351

              CI              CI           MULTI         RHF-SCF
    -25.24748900    -25.24889395    -25.00258042    -25.09501761
 **********************************************************************************************************************************
 Molpro calculation terminated
