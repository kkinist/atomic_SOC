
 Working directory              : /wrk/irikura/molpro.aUTNwJPRJP/
 Global scratch directory       : /wrk/irikura/molpro.aUTNwJPRJP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aUTNwJPRJP/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rb SO-CI
                                                                                 ! ECP replaces 28 electrons
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Rb};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=8,sym=1,spin=0}
 
 {multi
     closed,1,3
     occ,8,3
     wf,nelec=9,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 15:00:29  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Rb   ECP ECP28MDF                 selected for group  1
 Library entry RB     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RB     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RB     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RB     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RB     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RB     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  RB      9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         361
 NUMBER OF SYMMETRY AOS:          267
 NUMBER OF CONTRACTIONS:          218   (  106Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7
                                        8 9101112131415 7 8   9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.625E-04 0.867E-04 0.867E-04 0.867E-04 0.867E-04 0.867E-04 0.126E-03 0.130E-02
         2 0.872E-03 0.872E-03 0.872E-03 0.431E-02 0.431E-02 0.431E-02 0.173E-01 0.173E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     236.978 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 13.894 MB, node maximum: 23.855 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11974923.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11974923      RECORD LENGTH: 524288

 Memory used in sort:      12.53 MW

 SORT1 READ   248856419. AND WROTE     2023312. INTEGRALS IN      6 RECORDS. CPU TIME:     1.15 SEC, REAL TIME:     1.19 SEC
 SORT2 READ    25546192. AND WROTE   143766176. INTEGRALS IN   1056 RECORDS. CPU TIME:     0.26 SEC, REAL TIME:     0.30 SEC

 Node minimum:    11970927.  Node maximum:    11995940. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.28      3.95
 REAL TIME  *         5.07 SEC
 DISK USED  *        30.25 MB (local),      867.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -23.62966581     -23.62966581     0.00D+00     0.43D-01     0     0       0.05      0.11    start
   2      -23.65791259      -0.02824678     0.76D-02     0.12D-01     1     0       0.06      0.17    diag
   3      -23.65836748      -0.00045489     0.13D-02     0.13D-02     2     0       0.06      0.23    diag
   4      -23.65838017      -0.00001269     0.15D-03     0.21D-03     3     0       0.06      0.29    diag
   5      -23.65838020      -0.00000003     0.64D-05     0.23D-04     4     0       0.06      0.35    diag
   6      -23.65838020      -0.00000000     0.44D-06     0.17D-05     5     0       0.07      0.42    diag
   7      -23.65838020      -0.00000000     0.22D-07     0.33D-07     0     0       0.05      0.47    diag

 Final occupancy:   1   3

 !RHF STATE 1.1 Energy                -23.658380202998
  RHF One-electron energy             -37.713566662471
  RHF Two-electron energy              14.055186459473
  RHF Kinetic energy                    7.522856194504
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.144866735627

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.77947     1  1  s    0.99581
    1.2     2.00000    -1.00738     1  1  px   0.99876
    2.2     2.00000    -1.00738     1  1  py   0.99876
    3.2     2.00000    -1.00738     1  1  pz   0.99876


 HOMO      3.2    -1.007377 =     -27.4121eV
 LUMO      2.1    -0.139434 =      -3.7942eV
 LUMO-HOMO         0.867943 =      23.6179eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.77       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.77      0.48      3.95
 REAL TIME  *         6.57 SEC
 DISK USED  *        32.03 MB (local),      889.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     207 (   98  109)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.305D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.305D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.206D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.205D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.101D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 4 3 5 2 1 6 4   3 5 2 1 6 4 3 5 2 1  151411 912 81310 7 2   6 4 3 5 1 715141013
                                       11 912 8 6 4 3 5 2 1   9111013 7141512 8 2   4 6 3 5 2 4 6 5 311   91310 712 81415 1 4
                                        6 5 3 2151412 8 713  10 911 4 6 5 3 2 1 4   6 5 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.251D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.251D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 3   1 2 810 6 4 5 9 7 3   1 2 6 810 4 5 9 7 3   2 11112141619211315
                                       172018 6 5 4 9 710 8  14161820111219211315  17 3 2 1 6 9 7 4 510   8 6 9 7 4 5 8101517
                                       191416111213211820 3   2 1 6 9 7 4 5 810 6   9 7 810 4 5 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1118  ( 7 closed/active, 425 closed/virtual, 0 active/active, 686 active/virtual )
 Total number of variables:    1167
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -23.72937557     -23.72944075   -0.00006517    0.01139352 0.00000038 0.00000000  0.13E-01      0.58
   2    3    3    0    -23.72944076     -23.72944076   -0.00000000    0.00000999 0.00000000 0.00000000  0.13E-03      1.07

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.30E-10)
                       Final energy:    -23.72944076
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -23.798047772419
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.61676301
 One electron energy                           -39.48355299
 Two electron energy                            15.68550522
 Virial ratio                                    4.12443064
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -23.718191545326
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59971964
 One electron energy                           -38.85911994
 Two electron energy                            15.14092840
 Virial ratio                                    4.12092981
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -23.718191545326
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59971964
 One electron energy                           -38.85911994
 Two electron energy                            15.14092840
 Virial ratio                                    4.12092981
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -23.718191545326
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59971964
 One electron energy                           -38.85911994
 Two electron energy                            15.14092840
 Virial ratio                                    4.12092981
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -23.718191545326
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59971964
 One electron energy                           -38.85911994
 Two electron energy                            15.14092840
 Virial ratio                                    4.12092981
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -23.718191545309
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59971964
 One electron energy                           -38.85911994
 Two electron energy                            15.14092840
 Virial ratio                                    4.12092981
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -23.717079839766
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.55394660
 One electron energy                           -38.53094636
 Two electron energy                            14.81386652
 Virial ratio                                    4.13969387
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     4.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000414289491
 !MCSCF expec                      <6.1|LXLX|6.1>     2.999585710474
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     0.999585767713
 !MCSCF expec                      <6.1|LYLY|6.1>     3.000414232322
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999999942796
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.000000057204
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 4 3 1 6 2 5 3   6 4 2 1 5 3 6 4 2 1  141511 912 81310 7 2   5 3 6 4 11514 71013
                                       11 912 8 3 5 4 6 2 1  11 91013 7151412 8 5   3 4 6 2 3 5 4 6 213  1011 9 71415 812 1 3
                                        5 4 6 21415 812 713  10 911 3 5 4 6 2 1 3   5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   2 1 6 810 5 4 9 7 3   1 2 6 5 4 810 9 7 3   1 21211161415172113
                                       192018 6 5 4 7 910 8  18201416121121131517  19 3 1 2 6 9 7 5 410   8 6 7 9 5 4 8101517
                                       141620181912112113 3   1 2 6 7 9 5 4 810 6   7 9 810 4 5 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.63950     1  1  s    0.99585
    2.1     0.14286     0.03067     1  1  d2+  0.91441
    3.1     0.14286     0.01358     1  4  s   -1.09924    1  5  s    0.51608    1  6  s   -1.05686    1 11  s    1.95894
    4.1     0.14286     0.03067     1  1  d1+  0.91441
    5.1     0.14286     0.03067     1  1  d2-  0.91441
    6.1     0.14286    -0.03292     1  2  s   -0.25573    1  3  s    0.34247    1  4  s    0.59596    1  5  s    0.29284
    7.1     0.14286     0.03067     1  1  d1-  0.91441
    8.1     0.14286     0.03067     1  1  d0   0.91441
    1.2     2.00000    -0.86788     1  1  py   1.00088
    2.2     2.00000    -0.86788     1  1  px   1.00088
    3.2     2.00000    -0.86788     1  1  pz   1.00088
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 00000a0       -0.00000000      1.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 000a000        0.00000000      0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000
 00a0000        0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 000000a        0.00000000     -0.00000000      0.00000000      0.00000000      0.00011959      0.99999999      0.00000001
 a000000       -0.00000000      0.00000000      0.00000000      0.00000000      0.99999999     -0.00011959     -0.00000000
 0000a00        0.99999854     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00170766
 0a00000       -0.00170766     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001      0.99999854
 
 Energy:      -23.79804777    -23.71819155    -23.71819155    -23.71819155    -23.71819155    -23.71819155    -23.71707984
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       49.04       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.00      1.23      0.48      3.95
 REAL TIME  *         8.14 SEC
 DISK USED  *        50.94 MB (local),        1.09 GB (total)
 SF USED    *        56.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -23.79804777  -0.0
    -23.71819155   6.0
    -23.71819155   6.0
    -23.71819155   6.0
    -23.71819155   6.0
    -23.71819155   6.0
    -23.71707984  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:      889 conf     2205 CSFs
 N-1 el internal:      309 conf      967 CSFs
 N-2 el internal:       74 conf      274 CSFs

 Number of electrons in valence space:                      9
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     207 (  98 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.79804777
     2       -23.71819155
     3       -23.71819155
     4       -23.71819155
     5       -23.71819155
     6       -23.71819155
     7       -23.71707984

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         99155
 Number of doubly external configurations:       1289094
 Total number of contracted configurations:      1389530
 Total number of uncontracted configurations:    3034992

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1170170 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.79804777    -0.00000000    -0.24583862  0.51D-02  0.66D-01     0.29
    1     2     2     1.00000000     0.00000000   -23.71819155    -0.00000000    -0.23401754  0.40D-02  0.60D-01     0.29
    1     3     3     1.00000000     0.00000000   -23.71819155    -0.00000000    -0.23401454  0.40D-02  0.60D-01     0.29
    1     4     4     1.00000000     0.00000000   -23.71819155    -0.00000000    -0.23401374  0.40D-02  0.60D-01     0.29
    1     5     5     1.00000000     0.00000000   -23.71819155    -0.00000000    -0.23401487  0.40D-02  0.60D-01     0.29
    1     6     6     1.00000000     0.00000000   -23.71819155    -0.00000000    -0.23401329  0.40D-02  0.60D-01     0.29
    1     7     7     1.00000000     0.00000000   -23.71707984    -0.00000000    -0.23170409  0.40D-02  0.58D-01     0.29
    2     1     1     1.06490838    -0.23444217   -24.03248994    -0.23444217    -0.00371146  0.60D-03  0.73D-03     7.80
    2     2     2     1.06053031    -0.22811897   -23.94631051    -0.22811897    -0.00317746  0.45D-03  0.59D-03     7.80
    2     3     3     1.06053220    -0.22811749   -23.94630903    -0.22811749    -0.00317849  0.45D-03  0.59D-03     7.80
    2     4     4     1.06053186    -0.22811643   -23.94630798    -0.22811643    -0.00317946  0.45D-03  0.59D-03     7.80
    2     5     5     1.06053391    -0.22811599   -23.94630753    -0.22811599    -0.00318034  0.45D-03  0.59D-03     7.80
    2     6     6     1.06053380    -0.22811577   -23.94630732    -0.22811577    -0.00318089  0.45D-03  0.59D-03     7.80
    2     7     7     1.05938432    -0.22690472   -23.94398456    -0.22690472    -0.00307054  0.28D-03  0.56D-03     7.80
    3     1     1     1.06711332    -0.23840428   -24.03645205    -0.00396211    -0.00010929  0.98D-05  0.25D-04    15.47
    3     2     2     1.06335940    -0.23157423   -23.94976578    -0.00345526    -0.00010009  0.10D-04  0.23D-04    15.47
    3     3     3     1.06335933    -0.23157419   -23.94976573    -0.00345670    -0.00010017  0.10D-04  0.23D-04    15.47
    3     4     4     1.06335870    -0.23157418   -23.94976572    -0.00345775    -0.00010010  0.10D-04  0.23D-04    15.47
    3     5     5     1.06335852    -0.23157417   -23.94976572    -0.00345819    -0.00010010  0.10D-04  0.23D-04    15.47
    3     6     6     1.06335894    -0.23157414   -23.94976569    -0.00345837    -0.00010016  0.10D-04  0.23D-04    15.47
    3     7     7     1.06223839    -0.23025171   -23.94733155    -0.00334698    -0.00008912  0.71D-05  0.19D-04    15.47
    4     1     1     1.06768908    -0.23852564   -24.03657341    -0.00012136    -0.00000456  0.15D-05  0.79D-06    23.25
    4     2     2     1.06385782    -0.23168862   -23.94988017    -0.00011439    -0.00000570  0.42D-05  0.75D-06    23.25
    4     3     3     1.06385756    -0.23168861   -23.94988016    -0.00011443    -0.00000571  0.42D-05  0.75D-06    23.25
    4     4     4     1.06385768    -0.23168861   -23.94988016    -0.00011443    -0.00000571  0.42D-05  0.75D-06    23.25
    4     5     5     1.06385744    -0.23168861   -23.94988015    -0.00011443    -0.00000571  0.42D-05  0.75D-06    23.25
    4     6     6     1.06385744    -0.23168861   -23.94988015    -0.00011446    -0.00000571  0.42D-05  0.75D-06    23.25
    4     7     7     1.06260055    -0.23035208   -23.94743192    -0.00010038    -0.00000364  0.91D-06  0.68D-06    23.25
    5     1     1     1.06788299    -0.23853098   -24.03657876    -0.00000534    -0.00000018  0.33D-07  0.34D-07    30.89
    5     2     2     1.06408237    -0.23169591   -23.94988746    -0.00000729    -0.00000047  0.15D-06  0.10D-06    30.89
    5     3     3     1.06408245    -0.23169591   -23.94988746    -0.00000730    -0.00000047  0.15D-06  0.10D-06    30.89
    5     4     4     1.06408251    -0.23169591   -23.94988746    -0.00000730    -0.00000047  0.15D-06  0.10D-06    30.89
    5     5     5     1.06408250    -0.23169591   -23.94988746    -0.00000730    -0.00000047  0.15D-06  0.10D-06    30.89
    5     6     6     1.06408238    -0.23169591   -23.94988746    -0.00000730    -0.00000048  0.15D-06  0.10D-06    30.89
    5     7     7     1.06271200    -0.23035645   -23.94743629    -0.00000436    -0.00000016  0.38D-07  0.28D-07    30.89
    6     1     1     1.06790086    -0.23853119   -24.03657896    -0.00000021    -0.00000001  0.15D-08  0.11D-08    38.48
    6     2     2     1.06412048    -0.23169650   -23.94988805    -0.00000059    -0.00000004  0.19D-07  0.59D-08    38.48
    6     3     3     1.06412050    -0.23169650   -23.94988805    -0.00000059    -0.00000004  0.19D-07  0.59D-08    38.48
    6     4     4     1.06412050    -0.23169650   -23.94988805    -0.00000059    -0.00000004  0.19D-07  0.59D-08    38.48
    6     5     5     1.06412047    -0.23169650   -23.94988805    -0.00000059    -0.00000004  0.19D-07  0.59D-08    38.48
    6     6     6     1.06412048    -0.23169650   -23.94988805    -0.00000059    -0.00000004  0.19D-07  0.59D-08    38.48
    6     7     7     1.06272536    -0.23035663   -23.94743647    -0.00000018    -0.00000001  0.26D-08  0.10D-08    38.48
    7     1     1     1.06790086    -0.23853119   -24.03657896    -0.00000000    -0.00000001  0.15D-08  0.11D-08    43.86
    7     2     2     1.06413008    -0.23169655   -23.94988810    -0.00000005    -0.00000000  0.13D-09  0.43D-09    43.86
    7     3     3     1.06412673    -0.23169655   -23.94988810    -0.00000005    -0.00000000  0.13D-08  0.45D-09    43.86
    7     4     4     1.06412673    -0.23169655   -23.94988810    -0.00000005    -0.00000000  0.13D-08  0.45D-09    43.86
    7     5     5     1.06412672    -0.23169655   -23.94988810    -0.00000005    -0.00000000  0.13D-08  0.45D-09    43.86
    7     6     6     1.06412673    -0.23169655   -23.94988810    -0.00000005    -0.00000000  0.13D-08  0.45D-09    43.86
    7     7     7     1.06272536    -0.23035663   -23.94743647    -0.00000000    -0.00000001  0.26D-08  0.10D-08    43.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.5%   2.6%
 P   0.7%   8.2%  11.6%

 Initialization:   0.5%
 Other:           75.4%

 Total CPU:       43.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000/000222           0.0000000   0.0000000  -0.0000000   0.9693536   0.0000000  -0.0000000  -0.0000000
 200/0000222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9693536   0.0000000
 2000000/222           0.0000000   0.0000000  -0.0002099   0.0000000   0.9693536  -0.0000000  -0.0000000
 2/000000222           0.0000000  -0.0000000   0.9693536  -0.0000000   0.0002099  -0.0000000  -0.0000000
 200000/0222          -0.0000000   0.9693521   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 20/00000222          -0.0486481   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9686369
 20000/00222           0.9664183   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0511260

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966500   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.046998
 2           0.000000    0.969352   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000   -0.000000    0.969354   -0.000000   -0.000210   -0.000000
 4          -0.000000    0.000000   -0.000000   -0.000000    0.969354    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000210    0.000000    0.969354    0.000000
 6          -0.000000   -0.000000    0.969354   -0.000000   -0.000000   -0.000000   -0.000000
 7           0.049472    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.968723

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967641   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.001180
 2          -0.000000    0.969352   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.969354   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.969354    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.969354   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.969354    0.000000
 7           0.001180    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.969984


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96649993 (fixed)   0.96764193 (relaxed)   0.96764121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009291   -0.00017477   -0.22791258
 Singles      0.00530583   -0.01017151   -0.01070952
 Pairs        0.06260135    0.01502880    0.00009091
 Total        1.06800009    0.00468252   -0.23853119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.79784707
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79489371
 One electron energy                  -39.36865918
 Two electron energy                   15.33208022
 Virial quotient                       -3.08363139
 Correlation energy                    -0.23873189
 !MRCI STATE 1.1 Energy               -24.036578963884

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.05281275 (Davidson, fixed reference)
 Cluster corrected energies           -24.05281237 (Davidson, relaxed reference)
 Cluster corrected energies           -24.05281275 (Davidson, rotated reference)

 Cluster corrected energies           -24.04917115 (Pople, fixed reference)
 Cluster corrected energies           -24.04917085 (Pople, relaxed reference)
 Cluster corrected energies           -24.04917115 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96935212 (fixed)   0.96935212 (relaxed)   0.96935212 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009706   -0.00017657   -0.20888929
 Singles      0.00463155   -0.00941209   -0.00985246
 Pairs        0.05950475    0.00000000   -0.01295480
 Total        1.06423337   -0.00958866   -0.23169655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71819155
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79716709
 One electron energy                  -38.74755642
 Two electron energy                   14.79766832
 Virial quotient                       -3.07161406
 Correlation energy                    -0.23169655
 !MRCI STATE 2.1 Energy               -23.949888097655

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96477075 (Davidson, fixed reference)
 Cluster corrected energies           -23.96477075 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96477075 (Davidson, rotated reference)

 Cluster corrected energies           -23.96141096 (Pople, fixed reference)
 Cluster corrected energies           -23.96141096 (Pople, relaxed reference)
 Cluster corrected energies           -23.96141096 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96935362 (fixed)   0.96935365 (relaxed)   0.96935365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009706   -0.00017657   -0.20889014
 Singles      0.00462882   -0.00941189   -0.00985223
 Pairs        0.05950414    0.00000000   -0.01295418
 Total        1.06423002   -0.00958845   -0.23169655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71819155
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79716527
 One electron energy                  -38.74750765
 Two electron energy                   14.79761955
 Virial quotient                       -3.07161478
 Correlation energy                    -0.23169655
 !MRCI STATE 3.1 Energy               -23.949888096331

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96476997 (Davidson, fixed reference)
 Cluster corrected energies           -23.96476997 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96476997 (Davidson, rotated reference)

 Cluster corrected energies           -23.96141034 (Pople, fixed reference)
 Cluster corrected energies           -23.96141034 (Pople, relaxed reference)
 Cluster corrected energies           -23.96141034 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96935365 (fixed)   0.96935365 (relaxed)   0.96935365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009706   -0.00017657   -0.20889014
 Singles      0.00462882   -0.00941189   -0.00985223
 Pairs        0.05950414   -0.00000000   -0.01295419
 Total        1.06423001   -0.00958845   -0.23169655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71819155
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79716525
 One electron energy                  -38.74750763
 Two electron energy                   14.79761954
 Virial quotient                       -3.07161479
 Correlation energy                    -0.23169655
 !MRCI STATE 4.1 Energy               -23.949888096330

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96476997 (Davidson, fixed reference)
 Cluster corrected energies           -23.96476997 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96476997 (Davidson, rotated reference)

 Cluster corrected energies           -23.96141034 (Pople, fixed reference)
 Cluster corrected energies           -23.96141034 (Pople, relaxed reference)
 Cluster corrected energies           -23.96141034 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96935363 (fixed)   0.96935365 (relaxed)   0.96935365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009706   -0.00017657   -0.20889013
 Singles      0.00462882   -0.00941189   -0.00985223
 Pairs        0.05950413   -0.00000000   -0.01295419
 Total        1.06423001   -0.00958846   -0.23169655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71819155
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79716525
 One electron energy                  -38.74750762
 Two electron energy                   14.79761952
 Virial quotient                       -3.07161479
 Correlation energy                    -0.23169655
 !MRCI STATE 5.1 Energy               -23.949888096309

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96476997 (Davidson, fixed reference)
 Cluster corrected energies           -23.96476997 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96476997 (Davidson, rotated reference)

 Cluster corrected energies           -23.96141034 (Pople, fixed reference)
 Cluster corrected energies           -23.96141034 (Pople, relaxed reference)
 Cluster corrected energies           -23.96141034 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96935365 (fixed)   0.96935365 (relaxed)   0.96935365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009706   -0.00017657   -0.20889014
 Singles      0.00462882   -0.00941188   -0.00985223
 Pairs        0.05950414   -0.00000000   -0.01295418
 Total        1.06423002   -0.00958845   -0.23169655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71819155
 Nuclear energy                         0.00000000
 Kinetic energy                         7.79716524
 One electron energy                  -38.74750772
 Two electron energy                   14.79761963
 Virial quotient                       -3.07161479
 Correlation energy                    -0.23169655
 !MRCI STATE 6.1 Energy               -23.949888096307

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96476997 (Davidson, fixed reference)
 Cluster corrected energies           -23.96476997 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96476997 (Davidson, rotated reference)

 Cluster corrected energies           -23.96141034 (Pople, fixed reference)
 Cluster corrected energies           -23.96141034 (Pople, relaxed reference)
 Cluster corrected energies           -23.96141034 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96872279 (fixed)   0.96998521 (relaxed)   0.96998449 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011370   -0.00020781   -0.00048473
 Singles      0.00436788   -0.00982649   -0.01019214
 Pairs        0.05836461   -0.22004114   -0.21967976
 Total        1.06284619   -0.23007544   -0.23035663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71728054
 Nuclear energy                         0.00000000
 Kinetic energy                         7.75046636
 One electron energy                  -38.38151939
 Two electron energy                   14.43408293
 Virial quotient                       -3.08980587
 Correlation energy                    -0.23015592
 !MRCI STATE 7.1 Energy               -23.947436465197

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.96190089 (Davidson, fixed reference)
 Cluster corrected energies           -23.96190053 (Davidson, relaxed reference)
 Cluster corrected energies           -23.96190089 (Davidson, rotated reference)

 Cluster corrected energies           -23.95862790 (Pople, fixed reference)
 Cluster corrected energies           -23.95862761 (Pople, relaxed reference)
 Cluster corrected energies           -23.95862790 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       49.04       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       77.59       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        51.40     45.39      1.23      0.48      3.95
 REAL TIME  *        57.48 SEC
 DISK USED  *       126.74 MB (local),        1.98 GB (total)
 SF USED    *       608.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.05281275  AU                              
 SETTING HLSDIAG(2)     =       -23.96477075  AU                              
 SETTING HLSDIAG(3)     =       -23.96476997  AU                              
 SETTING HLSDIAG(4)     =       -23.96476997  AU                              
 SETTING HLSDIAG(5)     =       -23.96476997  AU                              
 SETTING HLSDIAG(6)     =       -23.96476997  AU                              
 SETTING HLSDIAG(7)     =       -23.96190089  AU                              


        HLSDIAG
    -24.05281275
    -23.96477075
    -23.96476997
    -23.96476997
    -23.96476997
    -23.96476997
    -23.96190089
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -24.036579    -23.949888    -23.949888    -23.949888    -23.949888    -23.949888    -23.947436
 Replaced energies:    -24.052813    -23.964771    -23.964770    -23.964770    -23.964770    -23.964770    -23.961901



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.05281275

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   19322.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.49       0.00       0.00      -0.00       0.49

    3   3.1  0.5  0.5       0.00       0.00   19323.16       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.99       0.00      -0.00      -0.00       0.00      -0.49       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   19323.16       0.00       0.00       0.00       0.00      -0.49      -0.00
                           -0.00      -0.00      -0.99      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   19323.16       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.85      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19323.16       0.00      -0.00      -0.00       0.49
                           -0.00       0.49       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19952.85       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    9   2.1  0.5 -0.5      -0.00       0.00      -0.00      -0.49      -0.00      -0.00       0.00       0.00   19322.99       0.00
                            0.00       0.00       0.49       0.00       0.85       0.00      -0.00      -0.00      -0.00       0.00

   10   3.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.49      -0.00       0.00       0.00   19323.16
                            0.00      -0.49      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   11   4.1  0.5 -0.5      -0.00       0.49       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.49      -0.00       0.00       0.00       0.99

   12   5.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.85       0.00       0.00       0.00       0.00
                            0.00      -0.85      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00      -0.49       0.00       0.85       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.49      -0.00      -0.00       0.00       0.00      -0.49      -0.00

   14   7.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.49       0.00       0.00      -0.00
                            0.00       0.85       0.00      -0.00

    3   3.1  0.5  0.5       0.00      -0.00      -0.49       0.00
                           -0.00       0.00       0.00       0.00

    4   4.1  0.5  0.5      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.49      -0.00

    5   5.1  0.5  0.5      -0.00      -0.00       0.85      -0.00
                           -0.00      -0.00       0.00       0.00

    6   6.1  0.5  0.5      -0.00      -0.85       0.00       0.00
                           -0.49      -0.00       0.00       0.00

    7   7.1  0.5  0.5      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.49      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.99      -0.00       0.00       0.00

   11   4.1  0.5 -0.5   19323.16       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   12   5.1  0.5 -0.5       0.00   19323.16       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   19323.16       0.00
                           -0.00       0.00      -0.00       0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19952.85
                            0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.05281275     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -24.05281275     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -23.96477494     0.08803781    19322.07      0.08803781    19322.07      2.3956
     4   -23.96477494     0.08803781    19322.07      0.08803781    19322.07      2.3956
     5   -23.96477446     0.08803829    19322.17      0.08803829    19322.17      2.3956
     6   -23.96477446     0.08803829    19322.17      0.08803829    19322.17      2.3956
     7   -23.96477446     0.08803829    19322.17      0.08803829    19322.17      2.3956
     8   -23.96477446     0.08803829    19322.17      0.08803829    19322.17      2.3956
     9   -23.96476353     0.08804922    19324.57      0.08804922    19324.57      2.3959
    10   -23.96476353     0.08804922    19324.57      0.08804922    19324.57      2.3959
    11   -23.96476323     0.08804953    19324.64      0.08804953    19324.64      2.3959
    12   -23.96476323     0.08804953    19324.64      0.08804953    19324.64      2.3959
    13   -23.96190089     0.09091186    19952.85      0.09091186    19952.85      2.4738
    14   -23.96190089     0.09091186    19952.85      0.09091186    19952.85      2.4738


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000005   0.779985947   0.000006753  -0.000168078   0.000248720  -0.000019502
                        -0.000000000  -0.000000001   0.000000012  -0.155599185   0.000000133  -0.000003315  -0.000809936   0.000063507

    3    3.1  0.5  0.5   0.000000000  -0.000000000  -0.247630198   0.000000001   0.721469122   0.028985363   0.008535355   0.108855127
                        -0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000021   0.000000008   0.000000005   0.000000009

    4    4.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000004  -0.000000016  -0.000000005  -0.000000007  -0.000000007
                         0.000000000  -0.000000000   0.247594024  -0.000000001   0.684210884   0.027488497  -0.019829404  -0.252892786

    5    5.1  0.5  0.5   0.000000000   0.000000000  -0.427990312   0.000000001  -0.064547222  -0.002593213  -0.049210728  -0.627605483
                         0.000000000  -0.000000000  -0.000000001  -0.000000007  -0.000000009  -0.000000005   0.000000003  -0.000000003

    6    6.1  0.5  0.5  -0.000000000   0.000000001   0.000000004  -0.048559886  -0.000059075   0.001470561   0.692115059  -0.054268942
                         0.000000000   0.000000000  -0.000000002  -0.243420482   0.002995107  -0.074550478   0.212538413  -0.016665203

    7    7.1  0.5  0.5  -0.000000000   0.000000000   0.000000008   0.000000000  -0.000000005  -0.000000000   0.000000001   0.000000010
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    8    1.1  0.5 -0.5  -0.000000000   0.993142623  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000
                        -0.000000000   0.116909072   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    9    2.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000001  -0.000000013  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.795354753  -0.000000003   0.000168111   0.000006754   0.000066434   0.000847265

   10    3.1  0.5 -0.5   0.000000000   0.000000000  -0.000000004   0.048445121   0.000571639  -0.014228719  -0.104059161   0.008159305
                        -0.000000000   0.000000000   0.000000002   0.242845188  -0.028979727   0.721328803  -0.031955046   0.002505607

   11    4.1  0.5 -0.5   0.000000000   0.000000000  -0.000000002  -0.242809713  -0.027483147   0.684077801   0.074238148  -0.005821034
                         0.000000000  -0.000000000  -0.000000004   0.048438044  -0.000542120   0.013493917  -0.241750841   0.018955758

   12    5.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000006   0.083729862  -0.000051138   0.001272992   0.599954403  -0.047042598
                        -0.000000000   0.000000000   0.000000003   0.419720165   0.002592717  -0.064534686   0.184237223  -0.014446098

   13    6.1  0.5 -0.5  -0.000000001  -0.000000000  -0.248216828   0.000000001   0.074564960   0.002995680   0.056770124   0.724013698
                         0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000011   0.000000005  -0.000000004   0.000000004

   14    7.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000000   0.000000000  -0.000000009   0.000000001
                        -0.000000000  -0.000000000  -0.000000000  -0.000000008   0.000000000  -0.000000005  -0.000000003   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.304324004   0.516050103   0.000001855  -0.000001273  -0.000000003  -0.000000000
                         0.046802431  -0.079364082  -0.000300142   0.000206049  -0.000000016  -0.000000000

    3    3.1  0.5  0.5   0.279865058   0.165041447  -0.309910801  -0.451432514   0.000000000  -0.000000000
                        -0.000000001   0.000000003   0.000000003   0.000000006   0.000000000   0.000000000

    4    4.1  0.5  0.5  -0.000000001   0.000000003   0.000000003   0.000000006   0.000000000   0.000000000
                        -0.279986017  -0.165112779   0.309889437   0.451401394  -0.000000000   0.000000008

    5    5.1  0.5  0.5   0.484351921   0.285631019   0.179118256   0.260913153   0.000000000  -0.000000000
                        -0.000000003   0.000000006  -0.000000002  -0.000000003   0.000000000   0.000000000

    6    6.1  0.5  0.5  -0.025042725   0.042465591   0.451705439  -0.310098166   0.000000010   0.000000000
                        -0.162835609   0.276124563   0.002791760  -0.001916557  -0.000000002  -0.000000000

    7    7.1  0.5  0.5   0.000000014   0.000000008   0.000000001   0.000000001  -0.001630133   0.999998322
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000606105  -0.000575233

    8    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000

    9    2.1  0.5 -0.5   0.000000003  -0.000000006   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.522117196   0.307901879   0.000206053   0.000300148   0.000000000  -0.000000016

   10    3.1  0.5 -0.5   0.025087021  -0.042540705   0.451423892  -0.309904882  -0.000000000  -0.000000000
                         0.163123636  -0.276612978   0.002790019  -0.001915362   0.000000000   0.000000000

   11    4.1  0.5 -0.5  -0.163194139   0.276732531  -0.002789827   0.001915230  -0.000000002  -0.000000000
                         0.025097864  -0.042559091   0.451392773  -0.309883519  -0.000000008  -0.000000000

   12    5.1  0.5 -0.5   0.043417163  -0.073623596  -0.260908170   0.179114835  -0.000000000  -0.000000000
                         0.282311936  -0.478723668  -0.001612540   0.001107016   0.000000000   0.000000000

   13    6.1  0.5 -0.5   0.279370902   0.164750034   0.310104088   0.451714066   0.000000000  -0.000000011
                        -0.000000002   0.000000003  -0.000000003  -0.000000006   0.000000000   0.000000000

   14    7.1  0.5 -0.5   0.000000001  -0.000000002  -0.000000001   0.000000001   0.980920206   0.001480679
                         0.000000008  -0.000000014  -0.000000000   0.000000000  -0.194402994  -0.000912296


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.000%  63.259%   0.000%   0.000%   0.000%   0.000%   9.480%  27.261%
    3    3.1  0.5  0.5   0.000%   0.000%   6.132%   0.000%  52.052%   0.084%   0.007%   1.185%   7.832%   2.724%
    4    4.1  0.5  0.5   0.000%   0.000%   6.130%   0.000%  46.814%   0.076%   0.039%   6.395%   7.839%   2.726%
    5    5.1  0.5  0.5   0.000%   0.000%  18.318%   0.000%   0.417%   0.001%   0.242%  39.389%  23.460%   8.159%
    6    6.1  0.5  0.5   0.000%   0.000%   0.000%   6.161%   0.001%   0.556%  52.420%   0.322%   2.714%   7.805%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  63.259%   0.000%   0.000%   0.000%   0.000%   0.000%  27.261%   9.480%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.000%   6.132%   0.084%  52.052%   1.185%   0.007%   2.724%   7.832%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.000%   6.130%   0.076%  46.814%   6.395%   0.039%   2.726%   7.839%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.000%  18.318%   0.001%   0.417%  39.389%   0.242%   8.159%  23.460%
   13    6.1  0.5 -0.5   0.000%   0.000%   6.161%   0.000%   0.556%   0.001%   0.322%  52.420%   7.805%   2.714%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5   9.604%  20.379%   0.000%   0.000%
    4    4.1  0.5  0.5   9.603%  20.376%   0.000%   0.000%
    5    5.1  0.5  0.5   3.208%   6.808%   0.000%   0.000%
    6    6.1  0.5  0.5  20.405%   9.616%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000% 100.000%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   10    3.1  0.5 -0.5  20.379%   9.604%   0.000%   0.000%
   11    4.1  0.5 -0.5  20.376%   9.603%   0.000%   0.000%
   12    5.1  0.5 -0.5   6.808%   3.208%   0.000%   0.000%
   13    6.1  0.5 -0.5   9.616%  20.405%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000% 100.000%   0.000%


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
              1      21       49.04       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       77.59       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        71.63     20.22     45.39      1.23      0.48      3.95
 REAL TIME  *        82.70 SEC
 DISK USED  *       126.74 MB (local),        1.98 GB (total)
 SF USED    *       608.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -23.961900888634

              CI           MULTI         RHF-SCF
    -23.94743647    -23.71707984    -23.65838020
 **********************************************************************************************************************************
 Molpro calculation terminated
