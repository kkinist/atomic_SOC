
 Working directory              : /wrk/irikura/molpro.UVwoimLxOC/
 Global scratch directory       : /wrk/irikura/molpro.UVwoimLxOC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.UVwoimLxOC/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,1; save,5101.2}
 hlsdiag = energd
 {ci;wf,sym=1,spin=2;state,15; save,5103.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 16:47:49  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         157
 NUMBER OF SYMMETRY AOS:          131
 NUMBER OF CONTRACTIONS:           87   (   38Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.117E-04 0.758E-03 0.758E-03 0.758E-03 0.758E-03 0.758E-03 0.143E-02 0.911E-02
         2 0.564E-02 0.564E-02 0.564E-02 0.159E-01 0.159E-01 0.159E-01 0.902E-01 0.902E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     14.418 MB (compressed) written to integral file ( 19.6%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     233060.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     233060      RECORD LENGTH: 524288

 Memory used in sort:       0.79 MW

 SORT1 READ     8662933. AND WROTE       47927. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     64 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      232328.  Node maximum:      235903. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.52
 REAL TIME  *         1.33 SEC
 DISK USED  *        29.04 MB (local),      534.94 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -25.09500683     -25.09500683     0.00D+00     0.10D+00     0     0       0.00      0.01    start
   2      -25.09500683      -0.00000000     0.15D-05     0.30D-04     1     0       0.00      0.01    diag
   3      -25.09500683      -0.00000000     0.61D-06     0.19D-04     2     0       0.00      0.01    diag
   4      -25.09500683      -0.00000000     0.26D-06     0.12D-04     3     0       0.01      0.02    diag
   5      -25.09500683      -0.00000000     0.45D-07     0.98D-06     4     0       0.00      0.02    diag
   6      -25.09500683      -0.00000000     0.12D-07     0.13D-06     0     0       0.00      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095006829040
  RHF One-electron energy             -41.272176595185
  RHF Two-electron energy              16.177169766145
  RHF Kinetic energy                    6.695468947861
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748058130724

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    1.00121
    2.1     2.00000    -0.16318     1  2  s    1.00075
    1.2     2.00000    -0.89696     1  1  pz   0.99996
    2.2     2.00000    -0.89696     1  1  py   0.99996
    3.2     2.00000    -0.89696     1  1  px   0.99996


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.007939 =       0.2160eV
 LUMO-HOMO         0.171119 =       4.6564eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.41       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.75      0.02      0.52
 REAL TIME  *         1.36 SEC
 DISK USED  *        29.42 MB (local),      541.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      76 (   30   46)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.254D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.452D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 2 6   4 3 5 1 4 6 3 5 2 1   4 6 5 3 2 1 4 6 3 5   2 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.800D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 5 4 6 7 9 810 3   2 1 6 5 4 7 9 810 5   4 6 7 9 810 3 2 1 5
                                        4 6 810 9 7 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    749
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5    -24.90463693     -25.04335263   -0.13871569    0.05826643 0.00033734 0.00000000  0.20E+01      0.26
   2    7   12    0    -25.01772332     -25.02465715   -0.00693383    0.07756821 0.00000852 0.00000000  0.44E+00      0.54
   3    7   12    0    -25.02470725     -25.02471074   -0.00000349    0.00134094 0.00000176 0.00000000  0.82E-02      0.81
   4    6   12    0    -25.02471074     -25.02471074   -0.00000000    0.00000216 0.00000001 0.00000000  0.30E-04      1.03

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.59E-08)
                       Final energy:    -25.02471074
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101318036230
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61943861
 One electron energy                           -41.24994525
 Two electron energy                            16.14862721
 Virial ratio                                    4.79206146
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061262058301
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061262058260
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061262058252
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061262058153
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964139
 Two electron energy                            16.44837933
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061262058092
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964139
 Two electron energy                            16.44837933
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004957062111
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308933
 Two electron energy                            16.90813227
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004957062103
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004957062100
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004957062094
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004957062093
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004957062080
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.90813229
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004957062079
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.90813229
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984348024920
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874131
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984348024894
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.984348024817
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.697415975614
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     4.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000026
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.302585605542
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.572388012251
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.278894644349
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     4.000000000575
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     2.110077258350
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     2.721146505910
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.889945014323
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     8.427618861730
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.274624454327
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999999988
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.725374245613
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.426669762138
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.748070636667
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.999999999171
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     8.867555515106
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     8.251877983920
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.132436263618
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.573334916369
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999999999
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.027959570059
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999999986
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.972040148845
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     7.000942225611
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     8.973034718984
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.000000000253
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.022367226544
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.026975510170
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     2.977618722059
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     2.999046221901
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 5 2 4 3 1 1 5   6 4 2 3 5 6 4 2 3 1   5 4 6 2 3 1 4 3 2 5   6 3 4 2 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 1   3 210 4 7 9 6 8 5 1   3 210 7 9 4 5 6 8 4   7 9 810 6 5 1 3 2 4
                                        7 9 8 610 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52901     1  1  s    0.98124
    2.1     0.43189    -0.01823     1  2  s    1.01366
    3.1     0.31353     0.06705     1  1  d1-  0.92895
    4.1     0.31353     0.06705     1  1  d2+  0.92895
    5.1     0.31353     0.06705     1  1  d0   0.92895
    6.1     0.31353     0.06705     1  1  d1+  0.92895
    7.1     0.31353     0.06705     1  1  d2-  0.92895
    8.1     0.00045     0.20296     1  2  s    1.47324    1  3  s    3.36210    1  4  s   -3.74322    1  5  s   -0.52773
                                    1  6  s   -0.36182    1  7  s    0.28600
    1.2     2.00000    -0.83305     1  1  px   0.97936
    2.2     2.00000    -0.83305     1  1  pz   0.97936
    3.2     2.00000    -0.83305     1  1  py   0.97936
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97690632
 0020000       -0.09090651
 0000200       -0.09090651
 0000020       -0.09090651
 0002000       -0.09090651
 0200000       -0.09090651
 
 Energy:      -25.10131804
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 00aa000       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000191     -0.00000000
 a000a00        0.00000001     -0.00000398     -0.00000000      0.99991821     -0.00000011     -0.00000000     -0.00000000
 aa00000        0.00000000     -0.00000000      0.99991821     -0.00000000      0.00000000      0.00000000      0.00000000
 a0000a0        0.99991821      0.00000040     -0.00000000     -0.00000001      0.00000003      0.00000000      0.00000000
 a0a0000        0.00000000     -0.08359874     -0.00000000     -0.00000023      0.99641742     -0.00000000     -0.00000000
 a00a000       -0.00000040      0.99641742      0.00000000      0.00000397      0.08359874     -0.00000000     -0.00000000
 00a00a0        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000084     -0.00000000
 00a0a00        0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.88621728     -0.00000000
 000a0a0       -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000070      0.00000000
 0a000a0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.33862375     -0.00000000
 0a0a000        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.03671871
 000aa00       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.31615327     -0.00000000
 0a00a00        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000169     -0.00000000
 0000aa0       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.73771341
 0aa0000       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.67411473
 
 Energy:      -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.00495706    -25.00495706

 State:              8               9              10              11              12              13              14
 00aa000        1.00000000     -0.00000041     -0.00000302     -0.00001341     -0.00000029      0.00000000      0.00000000
 a000a00        0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0000a0        0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 00a00a0        0.00000319      0.38585184     -0.00000010      0.22609370      0.00000094      0.89442719      0.00000021
 00a0a00       -0.00000173      0.00000269      0.00000000     -0.00000079     -0.12090879      0.00000010     -0.44721359
 000a0a0        0.00001136     -0.50556088      0.00000014      0.86279093     -0.00001175      0.00000000      0.00000000
 0a000a0       -0.00000041     -0.00000574      0.00000000      0.00000763      0.82784899     -0.00000010      0.44721360
 0a0a000        0.00000190      0.00000017      0.63138873     -0.00000000      0.00000000      0.00000000     -0.00000000
 000aa00       -0.00000076      0.00000487      0.00000000     -0.00000486     -0.54776556     -0.00000018      0.77459667
 0a00a00        0.00000638      0.77170367     -0.00000021      0.45218740      0.00000187     -0.44721360     -0.00000010
 0000aa0        0.00000153      0.00000014      0.50574591     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0aa0000       -0.00000177     -0.00000016     -0.58785146     -0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:      -25.00495706    -25.00495706    -25.00495706    -25.00495706    -25.00495706    -24.98434802    -24.98434802

 State:             15
 00aa000        0.00000000
 a000a00        0.00000000
 aa00000       -0.00000000
 a0000a0       -0.00000000
 a0a0000        0.00000000
 a00a000        0.00000000
 00a00a0        0.00000000
 00a0a00       -0.00000000
 000a0a0       -0.00000000
 0a000a0        0.00000000
 0a0a000        0.77459667
 000aa00        0.00000000
 0a00a00        0.00000000
 0000aa0       -0.44721359
 0aa0000        0.44721359
 
 Energy:      -24.98434802
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.66       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.73      0.99      0.02      0.52
 REAL TIME  *         2.62 SEC
 DISK USED  *        32.56 MB (local),      591.26 MB (total)
 SF USED    *         9.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10131804   -0.0
    -25.06126206    6.0
    -25.06126206    6.0
    -25.06126206    6.0
    -25.06126206    6.0
    -25.06126206    6.0
    -25.00495706   12.0
    -25.00495706   12.0
    -25.00495706   12.0
    -25.00495706   12.0
    -25.00495706   12.0
    -25.00495706   12.0
    -25.00495706   12.0
    -24.98434802    2.0
    -24.98434802    2.0
    -24.98434802    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       28 conf       28 CSFs
 N elec internal:     1946 conf     3696 CSFs
 N-1 el internal:      889 conf     2205 CSFs
 N-2 el internal:      309 conf      967 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      76 (  30  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.10131804

 Number of blocks in overlap matrix:    49   Smallest eigenvalue:  0.42D+00
 Number of N-2 electron functions:      73
 Number of N-1 electron functions:    2205

 Number of internal configurations:                 2142
 Number of singly external configurations:         80934
 Number of doubly external configurations:        104130
 Total number of contracted configurations:       187206
 Total number of uncontracted configurations:    1488948

 Diagonal Coupling coefficients finished.               Storage:  544314 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  336674 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.10131804     0.00000000    -0.22865868  0.44D-01  0.58D-01     0.06
    2     1     1     1.08486880    -0.22281201   -25.32413005    -0.22281201    -0.00537104  0.14D-02  0.10D-02     0.20
    3     1     1     1.08530592    -0.22841659   -25.32973462    -0.00560457    -0.00019343  0.38D-04  0.75D-04     0.33
    4     1     1     1.08681487    -0.22862271   -25.32994074    -0.00020612    -0.00001451  0.35D-05  0.77D-05     0.46
    5     1     1     1.08747298    -0.22864106   -25.32995910    -0.00001836    -0.00000161  0.19D-06  0.85D-06     0.60
    6     1     1     1.08769858    -0.22864310   -25.32996114    -0.00000204    -0.00000012  0.13D-07  0.40D-07     0.72
    7     1     1     1.08772664    -0.22864323   -25.32996126    -0.00000013    -0.00000001  0.50D-09  0.17D-08     0.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.6%
 S   8.2%  15.3%
 P   4.7%  30.6%   9.4%

 Initialization:   5.9%
 Other:           15.3%

 Total CPU:        0.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222           0.9362375
 2/00000\222           0.0865311
 20000020222          -0.0751101
 20000200222          -0.0751100
 20200000222          -0.0751100
 20002000222          -0.0751100
 20020000222          -0.0751100


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95453483 (fixed)   0.95577139 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00901281   -0.01362122   -0.01428839
 Singles      0.03246925   -0.07096949   -0.07142691
 Pairs        0.05604805   -0.14405251   -0.14292792
 Total        1.09753011   -0.22864323   -0.22864323
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.10131804
 Nuclear energy                         0.00000000
 Kinetic energy                         6.89183369
 One electron energy                  -41.24642897
 Two electron energy                   15.91646770
 Virial quotient                       -3.67535875
 Correlation energy                    -0.22864323
 !MRCI STATE 1.1 Energy               -25.329961261338

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35226086 (Davidson, fixed reference)
 Cluster corrected energies           -25.35161195 (Davidson, relaxed reference)

 Cluster corrected energies           -25.34887735 (Pople, fixed reference)
 Cluster corrected energies           -25.34829564 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        2.49       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.66      0.92      0.99      0.02      0.52
 REAL TIME  *         3.73 SEC
 DISK USED  *        34.39 MB (local),      620.60 MB (total)
 SF USED    *        30.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -25.35161195  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       21 conf       21 CSFs
 N elec internal:     1855 conf     5355 CSFs
 N-1 el internal:      889 conf     3521 CSFs
 N-2 el internal:      239 conf     1471 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      76 (  30  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06126206
     2       -25.06126206
     3       -25.06126206
     4       -25.06126206
     5       -25.06126206
     6       -25.00495706
     7       -25.00495706
     8       -25.00495706
     9       -25.00495706
    10       -25.00495706
    11       -25.00495706
    12       -25.00495706
    13       -24.98434802
    14       -24.98434802
    15       -24.98434802

 Number of blocks in overlap matrix:   273   Smallest eigenvalue:  0.74D+00
 Number of N-2 electron functions:     289
 Number of N-1 electron functions:    3521

 Number of internal configurations:                 2961
 Number of singly external configurations:        130158
 Number of doubly external configurations:        421926
 Total number of contracted configurations:       555045
 Total number of uncontracted configurations:    2260069

 Diagonal Coupling coefficients finished.               Storage: 1504254 words, CPU-Time:      0.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  377775 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06126206    -0.00000000    -0.22844986  0.45D-01  0.54D-01     0.38
    1     2     2     1.00000000     0.00000000   -25.06126206    -0.00000000    -0.22847812  0.45D-01  0.54D-01     0.38
    1     3     3     1.00000000     0.00000000   -25.06126206    -0.00000000    -0.22848623  0.45D-01  0.54D-01     0.38
    1     4     4     1.00000000     0.00000000   -25.06126206     0.00000000    -0.22848024  0.45D-01  0.54D-01     0.38
    1     5     5     1.00000000     0.00000000   -25.06126206    -0.00000000    -0.22838996  0.45D-01  0.54D-01     0.38
    1     6     6     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23444132  0.42D-01  0.61D-01     0.38
    1     7     7     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23452133  0.42D-01  0.61D-01     0.38
    1     8     8     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23453870  0.42D-01  0.61D-01     0.38
    1     9     9     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23456369  0.42D-01  0.61D-01     0.38
    1    10    10     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23447154  0.42D-01  0.61D-01     0.38
    1    11    11     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23462296  0.42D-01  0.61D-01     0.38
    1    12    12     1.00000000     0.00000000   -25.00495706     0.00000000    -0.23452261  0.42D-01  0.61D-01     0.38
    1    13    13     1.00000000     0.00000000   -24.98434802     0.00000000    -0.24140116  0.44D-01  0.70D-01     0.38
    1    14    14     1.00000000     0.00000000   -24.98434802     0.00000000    -0.24160692  0.44D-01  0.70D-01     0.38
    1    15    15     1.00000000     0.00000000   -24.98434802     0.00000000    -0.24157807  0.44D-01  0.70D-01     0.38
    2     1     1     1.08184207    -0.21897045   -25.28023250    -0.21897045    -0.00498529  0.13D-02  0.87D-03     4.37
    2     2     2     1.08186027    -0.21895768   -25.28021974    -0.21895768    -0.00499912  0.13D-02  0.88D-03     4.37
    2     3     3     1.08183454    -0.21895755   -25.28021961    -0.21895755    -0.00499723  0.13D-02  0.88D-03     4.37
    2     4     4     1.08185084    -0.21895516   -25.28021721    -0.21895516    -0.00499993  0.13D-02  0.88D-03     4.37
    2     5     5     1.08184910    -0.21895157   -25.28021363    -0.21895157    -0.00500318  0.13D-02  0.88D-03     4.37
    2     6     6     1.08124514    -0.21754468   -25.22250175    -0.21754468    -0.00527053  0.16D-02  0.10D-02     4.37
    2     7     7     1.08124722    -0.21753679   -25.22249385    -0.21753679    -0.00528022  0.16D-02  0.10D-02     4.37
    2     8     8     1.08124410    -0.21753526   -25.22249233    -0.21753526    -0.00528237  0.16D-02  0.10D-02     4.37
    2     9     9     1.08124412    -0.21752634   -25.22248340    -0.21752634    -0.00529208  0.16D-02  0.10D-02     4.37
    2    10    10     1.08124340    -0.21752310   -25.22248016    -0.21752310    -0.00529566  0.16D-02  0.10D-02     4.37
    2    11    11     1.08126215    -0.21751880   -25.22247586    -0.21751880    -0.00529984  0.16D-02  0.10D-02     4.37
    2    12    12     1.08125875    -0.21749953   -25.22245659    -0.21749953    -0.00532323  0.16D-02  0.11D-02     4.37
    2    13    13     1.08742424    -0.22210946   -25.20645748    -0.22210946    -0.00620945  0.22D-02  0.14D-02     4.37
    2    14    14     1.08748549    -0.22207430   -25.20642233    -0.22207430    -0.00625268  0.22D-02  0.14D-02     4.37
    2    15    15     1.08748295    -0.22207358   -25.20642160    -0.22207358    -0.00625167  0.22D-02  0.14D-02     4.37
    3     1     1     1.08353440    -0.22436643   -25.28562848    -0.00539598    -0.00013650  0.42D-04  0.26D-04     8.22
    3     2     2     1.08353741    -0.22436591   -25.28562797    -0.00540823    -0.00013699  0.42D-04  0.26D-04     8.22
    3     3     3     1.08353130    -0.22436557   -25.28562763    -0.00540802    -0.00013707  0.43D-04  0.26D-04     8.22
    3     4     4     1.08353141    -0.22436555   -25.28562761    -0.00541040    -0.00013711  0.43D-04  0.26D-04     8.22
    3     5     5     1.08352741    -0.22436553   -25.28562759    -0.00541396    -0.00013702  0.43D-04  0.26D-04     8.22
    3     6     6     1.08296581    -0.22312738   -25.22808444    -0.00558269    -0.00014607  0.31D-04  0.34D-04     8.22
    3     7     7     1.08296491    -0.22312721   -25.22808427    -0.00559042    -0.00014622  0.31D-04  0.34D-04     8.22
    3     8     8     1.08296307    -0.22312718   -25.22808424    -0.00559191    -0.00014608  0.31D-04  0.34D-04     8.22
    3     9     9     1.08296276    -0.22312692   -25.22808398    -0.00560058    -0.00014658  0.31D-04  0.34D-04     8.22
    3    10    10     1.08296322    -0.22312692   -25.22808398    -0.00560382    -0.00014661  0.31D-04  0.34D-04     8.22
    3    11    11     1.08296668    -0.22312678   -25.22808384    -0.00560798    -0.00014693  0.31D-04  0.34D-04     8.22
    3    12    12     1.08296574    -0.22312626   -25.22808333    -0.00562674    -0.00014765  0.31D-04  0.35D-04     8.22
    3    13    13     1.08908396    -0.22860890   -25.21295693    -0.00649944    -0.00022108  0.37D-04  0.89D-04     8.22
    3    14    14     1.08910550    -0.22860806   -25.21295608    -0.00653376    -0.00022288  0.38D-04  0.89D-04     8.22
    3    15    15     1.08910557    -0.22860803   -25.21295606    -0.00653445    -0.00022285  0.38D-04  0.89D-04     8.22
    4     1     1     1.08497929    -0.22453699   -25.28579904    -0.00017056    -0.00001167  0.11D-04  0.11D-05    12.09
    4     2     2     1.08497843    -0.22453694   -25.28579899    -0.00017103    -0.00001170  0.11D-04  0.11D-05    12.09
    4     3     3     1.08497861    -0.22453691   -25.28579897    -0.00017134    -0.00001171  0.11D-04  0.11D-05    12.09
    4     4     4     1.08497918    -0.22453691   -25.28579897    -0.00017136    -0.00001172  0.11D-04  0.11D-05    12.09
    4     5     5     1.08497913    -0.22453691   -25.28579896    -0.00017138    -0.00001172  0.11D-04  0.11D-05    12.09
    4     6     6     1.08388788    -0.22329809   -25.22825515    -0.00017071    -0.00000990  0.98D-05  0.11D-05    12.09
    4     7     7     1.08389025    -0.22329808   -25.22825514    -0.00017087    -0.00000989  0.99D-05  0.11D-05    12.09
    4     8     8     1.08389042    -0.22329807   -25.22825513    -0.00017089    -0.00000987  0.98D-05  0.11D-05    12.09
    4     9     9     1.08388997    -0.22329806   -25.22825512    -0.00017114    -0.00000988  0.98D-05  0.11D-05    12.09
    4    10    10     1.08389167    -0.22329806   -25.22825512    -0.00017114    -0.00000986  0.98D-05  0.11D-05    12.09
    4    11    11     1.08389069    -0.22329803   -25.22825509    -0.00017125    -0.00000988  0.98D-05  0.11D-05    12.09
    4    12    12     1.08389139    -0.22329801   -25.22825507    -0.00017174    -0.00000989  0.98D-05  0.11D-05    12.09
    4    13    13     1.09093579    -0.22888199   -25.21323001    -0.00027308    -0.00002378  0.15D-04  0.12D-04    12.09
    4    14    14     1.09093464    -0.22888197   -25.21323000    -0.00027391    -0.00002378  0.15D-04  0.12D-04    12.09
    4    15    15     1.09093519    -0.22888190   -25.21322993    -0.00027387    -0.00002375  0.14D-04  0.12D-04    12.09
    5     1     1     1.08566941    -0.22455380   -25.28581586    -0.00001681    -0.00000132  0.44D-06  0.25D-06    15.93
    5     2     2     1.08566918    -0.22455380   -25.28581585    -0.00001686    -0.00000132  0.44D-06  0.25D-06    15.93
    5     3     3     1.08566900    -0.22455379   -25.28581585    -0.00001688    -0.00000132  0.44D-06  0.25D-06    15.93
    5     4     4     1.08566893    -0.22455379   -25.28581585    -0.00001688    -0.00000132  0.44D-06  0.25D-06    15.93
    5     5     5     1.08566886    -0.22455379   -25.28581585    -0.00001688    -0.00000132  0.44D-06  0.25D-06    15.93
    5     6     6     1.08435515    -0.22331086   -25.22826792    -0.00001277    -0.00000088  0.32D-06  0.17D-06    15.93
    5     7     7     1.08435526    -0.22331086   -25.22826792    -0.00001277    -0.00000088  0.32D-06  0.17D-06    15.93
    5     8     8     1.08435539    -0.22331086   -25.22826792    -0.00001279    -0.00000088  0.32D-06  0.17D-06    15.93
    5     9     9     1.08435388    -0.22331086   -25.22826792    -0.00001279    -0.00000088  0.32D-06  0.17D-06    15.93
    5    10    10     1.08435552    -0.22331085   -25.22826791    -0.00001280    -0.00000088  0.32D-06  0.17D-06    15.93
    5    11    11     1.08435547    -0.22331085   -25.22826791    -0.00001282    -0.00000088  0.32D-06  0.17D-06    15.93
    5    12    12     1.08435525    -0.22331085   -25.22826791    -0.00001284    -0.00000088  0.32D-06  0.17D-06    15.93
    5    13    13     1.09204216    -0.22891597   -25.21326400    -0.00003398    -0.00000333  0.81D-06  0.17D-05    15.93
    5    14    14     1.09204021    -0.22891596   -25.21326399    -0.00003399    -0.00000334  0.82D-06  0.17D-05    15.93
    5    15    15     1.09203988    -0.22891596   -25.21326398    -0.00003405    -0.00000334  0.82D-06  0.17D-05    15.93
    6     1     1     1.08574926    -0.22455544   -25.28581750    -0.00000164    -0.00000008  0.38D-07  0.14D-07    19.77
    6     2     2     1.08574930    -0.22455544   -25.28581750    -0.00000164    -0.00000008  0.38D-07  0.14D-07    19.77
    6     3     3     1.08574914    -0.22455544   -25.28581750    -0.00000165    -0.00000008  0.38D-07  0.14D-07    19.77
    6     4     4     1.08574915    -0.22455544   -25.28581750    -0.00000165    -0.00000008  0.38D-07  0.14D-07    19.77
    6     5     5     1.08574911    -0.22455544   -25.28581750    -0.00000165    -0.00000008  0.38D-07  0.14D-07    19.77
    6     6     6     1.08438503    -0.22331194   -25.22826900    -0.00000108    -0.00000006  0.22D-07  0.13D-07    19.77
    6     7     7     1.08438505    -0.22331194   -25.22826900    -0.00000108    -0.00000006  0.22D-07  0.13D-07    19.77
    6     8     8     1.08438503    -0.22331194   -25.22826900    -0.00000108    -0.00000006  0.22D-07  0.13D-07    19.77
    6     9     9     1.08438488    -0.22331194   -25.22826900    -0.00000108    -0.00000006  0.22D-07  0.13D-07    19.77
    6    10    10     1.08438515    -0.22331194   -25.22826900    -0.00000109    -0.00000006  0.22D-07  0.13D-07    19.77
    6    11    11     1.08438512    -0.22331194   -25.22826900    -0.00000109    -0.00000006  0.22D-07  0.13D-07    19.77
    6    12    12     1.08438512    -0.22331194   -25.22826900    -0.00000109    -0.00000006  0.22D-07  0.13D-07    19.77
    6    13    13     1.09220230    -0.22892032   -25.21326834    -0.00000434    -0.00000044  0.13D-06  0.26D-06    19.77
    6    14    14     1.09220236    -0.22892031   -25.21326834    -0.00000435    -0.00000044  0.13D-06  0.26D-06    19.77
    6    15    15     1.09220226    -0.22892031   -25.21326834    -0.00000436    -0.00000044  0.13D-06  0.26D-06    19.77
    7     1     1     1.08577437    -0.22455553   -25.28581759    -0.00000009    -0.00000001  0.49D-08  0.11D-08    23.62
    7     2     2     1.08577431    -0.22455553   -25.28581759    -0.00000009    -0.00000001  0.49D-08  0.11D-08    23.62
    7     3     3     1.08577425    -0.22455553   -25.28581759    -0.00000010    -0.00000001  0.50D-08  0.11D-08    23.62
    7     4     4     1.08577432    -0.22455553   -25.28581759    -0.00000009    -0.00000001  0.49D-08  0.11D-08    23.62
    7     5     5     1.08577433    -0.22455553   -25.28581759    -0.00000010    -0.00000001  0.49D-08  0.11D-08    23.62
    7     6     6     1.08439082    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.50D-08  0.12D-08    23.62
    7     7     7     1.08439075    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.51D-08  0.12D-08    23.62
    7     8     8     1.08439082    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.50D-08  0.12D-08    23.62
    7     9     9     1.08439081    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.50D-08  0.12D-08    23.62
    7    10    10     1.08439083    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.50D-08  0.12D-08    23.62
    7    11    11     1.08439081    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.51D-08  0.12D-08    23.62
    7    12    12     1.08439083    -0.22331200   -25.22826907    -0.00000007    -0.00000001  0.50D-08  0.12D-08    23.62
    7    13    13     1.09227786    -0.22892090   -25.21326893    -0.00000059    -0.00000008  0.20D-07  0.46D-07    23.62
    7    14    14     1.09227772    -0.22892090   -25.21326893    -0.00000059    -0.00000008  0.20D-07  0.46D-07    23.62
    7    15    15     1.09227764    -0.22892090   -25.21326893    -0.00000059    -0.00000008  0.20D-07  0.47D-07    23.62
    8     1     1     1.08577437    -0.22455553   -25.28581759    -0.00000000    -0.00000001  0.49D-08  0.11D-08    24.84
    8     2     2     1.08577431    -0.22455553   -25.28581759    -0.00000000    -0.00000001  0.49D-08  0.11D-08    24.84
    8     3     3     1.08577424    -0.22455553   -25.28581759    -0.00000000    -0.00000001  0.50D-08  0.11D-08    24.84
    8     4     4     1.08577432    -0.22455553   -25.28581759    -0.00000000    -0.00000001  0.49D-08  0.11D-08    24.84
    8     5     5     1.08577433    -0.22455553   -25.28581759    -0.00000000    -0.00000001  0.49D-08  0.11D-08    24.84
    8     6     6     1.08439082    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.50D-08  0.12D-08    24.84
    8     7     7     1.08439075    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.51D-08  0.12D-08    24.84
    8     8     8     1.08439082    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.50D-08  0.12D-08    24.84
    8     9     9     1.08439081    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.50D-08  0.12D-08    24.84
    8    10    10     1.08439083    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.50D-08  0.12D-08    24.84
    8    11    11     1.08439081    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.51D-08  0.12D-08    24.84
    8    12    12     1.08439083    -0.22331200   -25.22826907    -0.00000000    -0.00000001  0.50D-08  0.12D-08    24.84
    8    13    13     1.09233030    -0.22892102   -25.21326905    -0.00000012    -0.00000001  0.19D-08  0.16D-08    24.84
    8    14    14     1.09233049    -0.22892102   -25.21326905    -0.00000012    -0.00000001  0.19D-08  0.16D-08    24.84
    8    15    15     1.09233050    -0.22892102   -25.21326905    -0.00000012    -0.00000001  0.19D-08  0.16D-08    24.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.4%
 S   3.8%  10.1%
 P   1.1%  19.5%  13.8%

 Initialization:   0.8%
 Other:           45.6%

 Total CPU:       24.8 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 200//000222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9581865   0.0000000  -0.0000000   0.0000000
                      -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2000/0/0222          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9579331   0.0000000   0.0000000
                      -0.0220348   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2//00000222           0.0000000   0.9568627  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                       0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000/00222           0.0000000  -0.0000000   0.0000000   0.9568627   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2/0000/0222           0.9568626  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                       0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2/00/000222          -0.0000000   0.0000000   0.9529717  -0.0000000   0.0862041  -0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/0/0000222          -0.0000000   0.0000000  -0.0862041  -0.0000000   0.9529717   0.0000001   0.0000000  -0.0000000  -0.0000000
                      -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 20/00/00222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0197085  -0.0000000  -0.0000000
                       0.8568014   0.0000000  -0.0000000  -0.4268161  -0.0000000  -0.0000000
 200/00/0222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0098542  -0.0000000   0.0000000
                       0.4284007  -0.0000000  -0.0000000   0.8536323  -0.0000000  -0.0000000
 2000//00222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0330237
                       0.0000000  -0.0000000   0.6051099   0.0000000   0.7392672  -0.0000000
 20/0/000222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0585531   0.0000000
                       0.0000000   0.6031750   0.0000000   0.0000000   0.0000000   0.7392672
 20//0000222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.7250786   0.0000000
                       0.0000000  -0.4569005  -0.0000000   0.0000000   0.0000000   0.4268161
 20/000/0222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7051328
                       0.0000000   0.0000000  -0.4871190  -0.0000000   0.4268161  -0.0000000
 200/0/00222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.6479341
                       0.0000000  -0.0000000   0.5609621   0.0000000  -0.4268161  -0.0000000
 20000//0222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.6236617  -0.0000000
                       0.0000000   0.5878293  -0.0000000   0.0000000  -0.0000000  -0.4268161

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956572   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.000000    0.956572   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.956552   -0.000000    0.000000   -0.006228   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.956572   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.006228   -0.000000    0.000000    0.956552    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958187    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.465357    0.000000
             0.837594   -0.000000   -0.000000    0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.946731   -0.000000   -0.000000   -0.147724
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.802591    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.523421    0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.837594    0.000000
             0.465357    0.000000   -0.000000   -0.000000    0.000000
 11          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.147724   -0.000000   -0.000000    0.946731
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.523421   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.802591   -0.000000   -0.000000    0.000000
 13         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.954390    0.000000    0.000000
 14         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.954390    0.000000
 15          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.954390

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956572    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.956572    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.956572    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.956572   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.956572    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958187    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958187    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958187   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958187   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958187
             0.000000   -0.000000    0.000000   -0.000000    0.000000
 11         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.958187   -0.000000   -0.000000   -0.000000    0.000000
 12          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.958187    0.000000    0.000000    0.000000
 13         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.954390    0.000000    0.000000
 14         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.954390    0.000000
 15         -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.954390


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95657240 (fixed)   0.95700621 (relaxed)   0.95657240 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652537   -0.01158627   -0.14431310
 Singles      0.03620351   -0.06830691   -0.06994270
 Pairs        0.05013057    0.00000000   -0.01029973
 Total        1.09285945   -0.07989318   -0.22455553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06126206
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06650527
 One electron energy                  -41.53670560
 Two electron energy                   16.25088801
 Virial quotient                       -3.57826346
 Correlation energy                    -0.22455553
 !MRCI STATE 1.1 Energy               -25.285817590804

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30666969 (Davidson, fixed reference)
 Cluster corrected energies           -25.30644726 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30666969 (Davidson, rotated reference)

 Cluster corrected energies           -25.30218908 (Pople, fixed reference)
 Cluster corrected energies           -25.30200667 (Pople, relaxed reference)
 Cluster corrected energies           -25.30218908 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95657242 (fixed)   0.95700623 (relaxed)   0.95657242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652537   -0.01158627   -0.14431311
 Singles      0.03620349   -0.06830691   -0.06994270
 Pairs        0.05013053    0.00000000   -0.01029972
 Total        1.09285939   -0.07989318   -0.22455553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06126206
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06650531
 One electron energy                  -41.53670537
 Two electron energy                   16.25088778
 Virial quotient                       -3.57826344
 Correlation energy                    -0.22455553
 !MRCI STATE 2.1 Energy               -25.285817590784

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30666968 (Davidson, fixed reference)
 Cluster corrected energies           -25.30644724 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30666968 (Davidson, rotated reference)

 Cluster corrected energies           -25.30218907 (Pople, fixed reference)
 Cluster corrected energies           -25.30200666 (Pople, relaxed reference)
 Cluster corrected energies           -25.30218907 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95655218 (fixed)   0.95700626 (relaxed)   0.95657245 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652537   -0.01158627   -0.14431312
 Singles      0.03620343   -0.06830690   -0.06994269
 Pairs        0.05013053    0.00000000   -0.01029972
 Total        1.09285932   -0.07989317   -0.22455553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06126206
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06650515
 One electron energy                  -41.53670462
 Two electron energy                   16.25088703
 Virial quotient                       -3.57826352
 Correlation energy                    -0.22455553
 !MRCI STATE 3.1 Energy               -25.285817590753

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30666966 (Davidson, fixed reference)
 Cluster corrected energies           -25.30644723 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30666966 (Davidson, rotated reference)

 Cluster corrected energies           -25.30218906 (Pople, fixed reference)
 Cluster corrected energies           -25.30200665 (Pople, relaxed reference)
 Cluster corrected energies           -25.30218906 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95657242 (fixed)   0.95700623 (relaxed)   0.95657242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652537   -0.01158627   -0.14431310
 Singles      0.03620350   -0.06830691   -0.06994270
 Pairs        0.05013053    0.00000000   -0.01029972
 Total        1.09285939   -0.07989318   -0.22455553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06126206
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06650529
 One electron energy                  -41.53670536
 Two electron energy                   16.25088777
 Virial quotient                       -3.57826345
 Correlation energy                    -0.22455553
 !MRCI STATE 4.1 Energy               -25.285817590708

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30666968 (Davidson, fixed reference)
 Cluster corrected energies           -25.30644724 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30666968 (Davidson, rotated reference)

 Cluster corrected energies           -25.30218907 (Pople, fixed reference)
 Cluster corrected energies           -25.30200666 (Pople, relaxed reference)
 Cluster corrected energies           -25.30218907 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95655214 (fixed)   0.95700623 (relaxed)   0.95657242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652536   -0.01158627   -0.14431311
 Singles      0.03620348   -0.06830690   -0.06994270
 Pairs        0.05013056    0.00000000   -0.01029972
 Total        1.09285940   -0.07989317   -0.22455553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06126206
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06650525
 One electron energy                  -41.53670514
 Two electron energy                   16.25088755
 Virial quotient                       -3.57826347
 Correlation energy                    -0.22455553
 !MRCI STATE 5.1 Energy               -25.285817590663

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30666968 (Davidson, fixed reference)
 Cluster corrected energies           -25.30644725 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30666968 (Davidson, rotated reference)

 Cluster corrected energies           -25.30218907 (Pople, fixed reference)
 Cluster corrected energies           -25.30200666 (Pople, relaxed reference)
 Cluster corrected energies           -25.30218907 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95818651 (fixed)   0.95818651 (relaxed)   0.95818651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795022
 Singles      0.03019924   -0.06315387   -0.06417519
 Pairs        0.05456434   -0.00000000   -0.01118660
 Total        1.08918060   -0.07219906   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865109
 One electron energy                  -41.83017542
 Two electron energy                   16.60190636
 Virial quotient                       -3.48521689
 Correlation energy                    -0.22331200
 !MRCI STATE 6.1 Energy               -25.228269065871

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818416 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818416 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818416 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.83759433 (fixed)   0.95818654 (relaxed)   0.95818654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795023
 Singles      0.03019916   -0.06315387   -0.06417518
 Pairs        0.05456434   -0.00000000   -0.01118659
 Total        1.08918054   -0.07219906   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865047
 One electron energy                  -41.83017378
 Two electron energy                   16.60190471
 Virial quotient                       -3.48521719
 Correlation energy                    -0.22331200
 !MRCI STATE 7.1 Energy               -25.228269065869

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818415 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818415 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818415 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387702 (Pople, fixed reference)
 Cluster corrected energies           -25.24387702 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387702 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94673076 (fixed)   0.95818651 (relaxed)   0.95818651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795021
 Singles      0.03019922   -0.06315388   -0.06417519
 Pairs        0.05456435    0.00000001   -0.01118660
 Total        1.08918060   -0.07219906   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865080
 One electron energy                  -41.83017486
 Two electron energy                   16.60190579
 Virial quotient                       -3.48521703
 Correlation energy                    -0.22331200
 !MRCI STATE 8.1 Energy               -25.228269065844

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818416 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818416 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818416 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.80259081 (fixed)   0.95818651 (relaxed)   0.95818651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795021
 Singles      0.03019921   -0.06315388   -0.06417519
 Pairs        0.05456435   -0.00000000   -0.01118660
 Total        1.08918059   -0.07219907   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865075
 One electron energy                  -41.83017468
 Two electron energy                   16.60190561
 Virial quotient                       -3.48521706
 Correlation energy                    -0.22331200
 !MRCI STATE 9.1 Energy               -25.228269065840

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818416 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818416 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818416 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.83759430 (fixed)   0.95818650 (relaxed)   0.95818650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795020
 Singles      0.03019921   -0.06315389   -0.06417519
 Pairs        0.05456437   -0.00000000   -0.01118661
 Total        1.08918061   -0.07219907   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865058
 One electron energy                  -41.83017440
 Two electron energy                   16.60190533
 Virial quotient                       -3.48521714
 Correlation energy                    -0.22331200
 !MRCI STATE 10.1 Energy              -25.228269065797

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818417 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818417 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818417 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94673076 (fixed)   0.95818651 (relaxed)   0.95818651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795022
 Singles      0.03019918   -0.06315389   -0.06417519
 Pairs        0.05456438    0.00000002   -0.01118660
 Total        1.08918059   -0.07219906   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865028
 One electron energy                  -41.83017353
 Two electron energy                   16.60190447
 Virial quotient                       -3.48521728
 Correlation energy                    -0.22331200
 !MRCI STATE 11.1 Energy              -25.228269065772

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818416 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818416 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818416 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.80259082 (fixed)   0.95818650 (relaxed)   0.95818650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441703   -0.00904519   -0.14795019
 Singles      0.03019921   -0.06315390   -0.06417519
 Pairs        0.05456437   -0.00000000   -0.01118662
 Total        1.08918061   -0.07219908   -0.22331200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00495706
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23865049
 One electron energy                  -41.83017408
 Two electron energy                   16.60190501
 Virial quotient                       -3.48521718
 Correlation energy                    -0.22331200
 !MRCI STATE 12.1 Energy              -25.228269065768

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24818417 (Davidson, fixed reference)
 Cluster corrected energies           -25.24818417 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24818417 (Davidson, rotated reference)

 Cluster corrected energies           -25.24387703 (Pople, fixed reference)
 Cluster corrected energies           -25.24387703 (Pople, relaxed reference)
 Cluster corrected energies           -25.24387703 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95438993 (fixed)   0.95438993 (relaxed)   0.95438993 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00506540   -0.01016492   -0.15174797
 Singles      0.02972500   -0.06348206   -0.06402310
 Pairs        0.06307299    0.00000000   -0.01314996
 Total        1.09786340   -0.07364698   -0.22892102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98434802
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23178079
 One electron energy                  -41.79198087
 Two electron energy                   16.57871183
 Virial quotient                       -3.48645372
 Correlation energy                    -0.22892102
 !MRCI STATE 13.1 Energy              -25.213269046997

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23567204 (Davidson, fixed reference)
 Cluster corrected energies           -25.23567204 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23567204 (Davidson, rotated reference)

 Cluster corrected energies           -25.23090082 (Pople, fixed reference)
 Cluster corrected energies           -25.23090082 (Pople, relaxed reference)
 Cluster corrected energies           -25.23090082 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95438985 (fixed)   0.95438985 (relaxed)   0.95438985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00506540   -0.01016492   -0.15174798
 Singles      0.02972503   -0.06348202   -0.06402307
 Pairs        0.06307315   -0.00000000   -0.01314998
 Total        1.09786359   -0.07364694   -0.22892102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98434802
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23178153
 One electron energy                  -41.79198343
 Two electron energy                   16.57871439
 Virial quotient                       -3.48645337
 Correlation energy                    -0.22892102
 !MRCI STATE 14.1 Energy              -25.213269046968

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23567208 (Davidson, fixed reference)
 Cluster corrected energies           -25.23567208 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23567208 (Davidson, rotated reference)

 Cluster corrected energies           -25.23090085 (Pople, fixed reference)
 Cluster corrected energies           -25.23090085 (Pople, relaxed reference)
 Cluster corrected energies           -25.23090085 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95438984 (fixed)   0.95438984 (relaxed)   0.95438984 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00506540   -0.01016492   -0.01031503
 Singles      0.02972504   -0.06348203   -0.06402307
 Pairs        0.06307316   -0.15527408   -0.15458292
 Total        1.09786360   -0.22892102   -0.22892102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98434802
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23178140
 One electron energy                  -41.79198328
 Two electron energy                   16.57871423
 Virial quotient                       -3.48645343
 Correlation energy                    -0.22892102
 !MRCI STATE 15.1 Energy              -25.213269046966

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23567208 (Davidson, fixed reference)
 Cluster corrected energies           -25.23567208 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23567208 (Davidson, rotated reference)

 Cluster corrected energies           -25.23090085 (Pople, fixed reference)
 Cluster corrected energies           -25.23090085 (Pople, relaxed reference)
 Cluster corrected energies           -25.23090085 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       67.64       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        32.95     30.29      0.92      0.99      0.02      0.52
 REAL TIME  *        40.70 SEC
 DISK USED  *        99.54 MB (local),        1.62 GB (total)
 SF USED    *       673.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -25.30666969  AU                              
 SETTING HLSDIAG(3)     =       -25.30666968  AU                              
 SETTING HLSDIAG(4)     =       -25.30666966  AU                              
 SETTING HLSDIAG(5)     =       -25.30666968  AU                              
 SETTING HLSDIAG(6)     =       -25.30666968  AU                              
 SETTING HLSDIAG(7)     =       -25.24818416  AU                              
 SETTING HLSDIAG(8)     =       -25.24818415  AU                              
 SETTING HLSDIAG(9)     =       -25.24818416  AU                              
 SETTING HLSDIAG(10)    =       -25.24818416  AU                              
 SETTING HLSDIAG(11)    =       -25.24818417  AU                              
 SETTING HLSDIAG(12)    =       -25.24818416  AU                              
 SETTING HLSDIAG(13)    =       -25.24818417  AU                              
 SETTING HLSDIAG(14)    =       -25.23567204  AU                              
 SETTING HLSDIAG(15)    =       -25.23567208  AU                              
 SETTING HLSDIAG(16)    =       -25.23567208  AU                              


        HLSDIAG
    -25.35161195
    -25.30666969
    -25.30666968
    -25.30666966
    -25.30666968
    -25.30666968
    -25.24818416
    -25.24818415
    -25.24818416
    -25.24818416
    -25.24818417
    -25.24818416
    -25.24818417
    -25.23567204
    -25.23567208
    -25.23567208
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)  1101     1401     1411     1650(1)  1700(2)
                                         OPER      SR      EKINR    POTR    MOLCAS    OPER   

              2       7       67.64       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.22      0.21     30.29      0.92      0.99      0.02      0.52
 REAL TIME  *        41.51 SEC
 DISK USED  *        99.68 MB (local),        1.63 GB (total)
 SF USED    *       673.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:    -25.329961
 Replaced energies:    -25.351612

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:    -25.285818    -25.285818    -25.285818    -25.285818    -25.285818    -25.228269    -25.228269    -25.228269
                       -25.228269    -25.228269    -25.228269    -25.228269    -25.213269    -25.213269    -25.213269
 Replaced energies:    -25.306670    -25.306670    -25.306670    -25.306670    -25.306670    -25.248184    -25.248184    -25.248184
                       -25.248184    -25.248184    -25.248184    -25.248184    -25.235672    -25.235672    -25.235672



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.35161195

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

    2   1.1  1.0  1.0      -0.00    9863.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -17.74       0.00     196.10      -4.66       0.00      -0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      98.45      -0.00       0.00       0.00      -0.00      -0.32

    4   3.1  1.0  1.0       0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      17.74       0.00      -0.00      -0.00       0.00      -0.00       0.28      -0.00      -0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -98.45       0.00       0.00       0.00       0.00      -0.00      -0.57      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00
                            0.00    -196.10       0.00      -0.00      -0.00       0.00       0.00      -4.65      -0.00      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   22699.77       0.00       0.00       0.00
                            0.00       4.66      -0.00       0.00      -0.00      -0.00      -0.00     179.99      -0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.78       0.00       0.00
                           -0.00      -0.00      -0.00      -0.28       0.00       4.65    -179.99      -0.00      -0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.77       0.00
                            0.00       0.00       0.00       0.00       0.57       0.00       0.00       0.00      -0.00    -268.86

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.77
                           -0.00      -0.00       0.32       0.00       0.00       0.00      -0.00      -0.00     268.86       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       6.23       0.00       0.46       4.14      -0.00      -0.00      -0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -5.86       0.00      -0.00       0.00      -0.00     -21.17

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -5.88      -0.00      -0.00       0.00      -0.00      -0.00       5.96       0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.67       0.00      -0.06       0.00      -0.00      -0.00      -0.00

   15  14.1  1.0  1.0     -10.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.58      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.11       0.00       0.00      -0.00      -0.58       0.00      -0.00       0.00      -0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00     -69.61       0.00      -0.00       0.00       0.00       0.00      -4.12       0.00
                           -0.00       0.00      -0.00      -0.00     -69.61      -0.00       0.00       0.00      -0.00      -3.97

   18   2.1  1.0  0.0       0.00      69.61      -0.00       0.00       0.00       0.00      -0.00      -3.35       0.00       0.00
                           -0.00       0.00      -0.00    -113.81       0.00     -80.19      -3.29       0.00      -0.00      -0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00     126.36       0.00       0.00       0.00      -0.00      -0.17
                            0.00       0.00     113.81      -0.00      -0.00      -0.00       0.00       0.00       0.01       0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00    -126.36       0.00      58.47       3.29       0.00      -0.00      -0.00
                            0.00      69.61      -0.00       0.00      -0.00       0.00      -0.00      -3.23       0.00       0.00

   21   5.1  1.0  0.0       0.00      -0.00      -0.00      -0.00     -58.47       0.00      -0.00      -0.00       0.00       4.09
                            0.00       0.00      80.19       0.00      -0.00       0.00       0.00       0.00      -3.93      -0.00

   22   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -3.29       0.00       0.00       0.00       0.00      72.36
                           -0.00      -0.00       3.29      -0.00       0.00      -0.00       0.00      -0.00     -87.32       0.00

   23   7.1  1.0  0.0       0.00      -0.00       3.35      -0.00      -0.00       0.00      -0.00      -0.00      68.20       0.00
                           -0.00      -0.00      -0.00      -0.00       3.23      -0.00       0.00      -0.00      -0.00      83.50

   24   8.1  1.0  0.0       0.00       4.12      -0.00       0.00       0.00      -0.00      -0.00     -68.20       0.00       0.00
                           -0.00       0.00       0.00      -0.01      -0.00       3.93      87.32       0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00      -0.00      -0.00       0.17       0.00      -4.09     -72.36      -0.00      -0.00      -0.00
                            0.00       3.97       0.00      -0.00      -0.00       0.00      -0.00     -83.50      -0.00      -0.00

   26  10.1  1.0  0.0       0.00       0.00       2.47       0.00       0.00       0.00       0.00       0.00      13.50      -0.00
                            0.00       0.00      -0.00      -0.00      -2.63      -0.00       0.00       0.00      -0.00       6.58

   27  11.1  1.0  0.0       0.00      -0.65      -0.00       0.00       0.00      -0.00      -0.00    -104.11       0.00       0.00
                           -0.00      -0.00       0.00      -3.71      -0.00       1.10     -92.64       0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00      -0.00      -0.00       3.51       0.00       1.14    -104.74       0.00      -0.00      -0.00
                           -0.00       1.26      -0.00       0.00      -0.00       0.00       0.00      99.80      -0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.41      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           14.30       0.00      -0.00      -0.00      -0.41      -0.00      -0.00      -0.00      -0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00      -0.20      -0.00      -0.43      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.41      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00       0.41      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.27       0.00      -0.39      -0.00      -0.00      -0.00       0.00

   32   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0     -10.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.11      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00     -10.11       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      10.11       0.00       0.00      -0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      69.61      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -69.61

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -69.61      -0.00      -0.00      -0.00
                            0.00       0.00       5.88       0.00       0.58      -0.00       0.00       0.00    -113.81       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -126.36
                           -6.23       0.00       0.00       0.67       0.00       0.00       0.00     113.81       0.00      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     126.36       0.00
                           -0.00       5.86       0.00      -0.00      -0.00       0.58      69.61      -0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      58.47
                           -0.46      -0.00      -0.00       0.06      -0.00      -0.00       0.00      80.19       0.00      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       3.29
                           -4.14       0.00       0.00      -0.00      -0.00       0.00      -0.00       3.29      -0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.35       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       3.23

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.12       0.00      -0.00      -0.00
                            0.00       0.00      -5.96       0.00      -0.00       0.00       0.00       0.00      -0.01      -0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.17      -0.00
                            0.00      21.17      -0.00       0.00       0.00      -0.00       3.97       0.00      -0.00      -0.00

   11  10.1  1.0  1.0   22699.77       0.00       0.00       0.00       0.00       0.00      -0.00      -2.47      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -2.63

   12  11.1  1.0  1.0       0.00   22699.78       0.00       0.00       0.00       0.00       0.65       0.00      -0.00      -0.00
                            0.00      -0.00     -90.88       0.00      -0.00       0.00      -0.00       0.00      -3.71      -0.00

   13  12.1  1.0  1.0       0.00       0.00   22699.77       0.00       0.00       0.00       0.00       0.00      -3.51      -0.00
                           -0.00      90.88       0.00       0.00       0.00      -0.00       1.26      -0.00       0.00      -0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00   25445.87       0.00       0.00      -0.00      -0.41       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.41

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   25445.86       0.00      -0.00      -0.00       0.20       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      99.85      -0.41      -0.00      -0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25445.86      -0.41       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00     -99.85      -0.00      -0.00       0.00       0.27       0.00

   17   1.1  1.0  0.0      -0.00       0.65       0.00      -0.00      -0.00      -0.41    9863.68       0.00       0.00       0.00
                           -0.00       0.00      -1.26      -0.00       0.41       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -2.47       0.00       0.00      -0.41      -0.00       0.00       0.00    9863.69       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      -0.00      -0.00      -3.51       0.00       0.20      -0.00       0.00       0.00    9863.69       0.00
                            0.00       3.71      -0.00       0.00       0.00      -0.27      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    9863.69
                            2.63       0.00       0.00       0.41      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00       0.00      -1.14      -0.00       0.43       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.10      -0.00       0.00       0.00       0.39      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00       0.00     104.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      92.64      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00     104.11      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -99.80       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0     -13.50      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -6.58       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00    -157.62       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -153.43       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0     157.62      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                          153.43       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      70.60       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      70.60       0.00      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -70.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0      -0.00       0.00       0.00     -70.60      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.61       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -69.61

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      69.61      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -113.81       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     126.36
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     113.81      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -126.36       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      69.61      -0.00       0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -58.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      80.19       0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -3.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.29      -0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.35      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.23

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.12      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.17       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.97       0.00      -0.00      -0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.47       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -2.63

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.65      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -3.71      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.51       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.26      -0.00       0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.41      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.41

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.20      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.41      -0.00      -0.00       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.41      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.27       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     -14.30       0.00

    2   1.1  1.0  1.0      -0.00      -0.00      -0.00       4.12      -0.00       0.00      -0.65      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -3.97      -0.00       0.00      -1.26      -0.00       0.41

    3   2.1  1.0  1.0      -0.00       0.00       3.35      -0.00      -0.00       2.47      -0.00      -0.00       0.41       0.00
                          -80.19      -3.29       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.17       0.00       0.00       3.51      -0.00      -0.20
                           -0.00       0.00       0.00       0.01       0.00       0.00       3.71      -0.00       0.00       0.00

    5   4.1  1.0  1.0     -58.47      -3.29      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -3.23       0.00       0.00       2.63       0.00       0.00       0.41      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00      -0.00      -4.09       0.00      -0.00       1.14       0.00      -0.43
                           -0.00       0.00       0.00      -3.93      -0.00       0.00      -1.10      -0.00       0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00      -0.00      -0.00     -72.36       0.00      -0.00    -104.74       0.00      -0.00
                           -0.00      -0.00      -0.00     -87.32       0.00      -0.00      92.64      -0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00      -0.00     -68.20      -0.00       0.00    -104.11       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      83.50      -0.00      -0.00     -99.80       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00      68.20       0.00      -0.00      13.50       0.00      -0.00      -0.00      -0.00
                            3.93      87.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       4.09      72.36       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00     -83.50      -0.00       0.00      -6.58       0.00      -0.00      -0.00       0.00

   11  10.1  1.0  1.0      -0.00      -0.00      -0.00     -13.50       0.00       0.00     157.62      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       6.58       0.00      -0.00    -153.43       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00     104.11      -0.00      -0.00    -157.62      -0.00      -0.00       0.00      -0.00
                            1.10     -92.64       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   13  12.1  1.0  1.0      -1.14     104.74      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      99.80      -0.00       0.00     153.43       0.00      -0.00      -0.00       0.00

   14  13.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      70.60

   15  14.1  1.0  1.0       0.43       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -70.60       0.00

   16  15.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      70.60       0.00
                           -0.39      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0    9863.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   22699.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   22699.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   22699.77       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   22699.77       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22699.77       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22699.78       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.77       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25445.87       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25445.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00      -4.12       0.00      -0.00       0.65       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -3.97      -0.00       0.00      -1.26      -0.00       0.41

   33   2.1  1.0 -1.0       0.00      -0.00      -3.35       0.00       0.00      -2.47       0.00       0.00      -0.41      -0.00
                          -80.19      -3.29       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.17      -0.00      -0.00      -3.51       0.00       0.20
                           -0.00       0.00       0.00       0.01       0.00       0.00       3.71      -0.00       0.00       0.00

   35   4.1  1.0 -1.0      58.47       3.29       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -3.23       0.00       0.00       2.63       0.00       0.00       0.41      -0.00

   36   5.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       4.09      -0.00       0.00      -1.14      -0.00       0.43
                            0.00       0.00       0.00      -3.93      -0.00       0.00      -1.10      -0.00       0.00       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00      72.36      -0.00       0.00     104.74      -0.00       0.00
                           -0.00       0.00      -0.00     -87.32       0.00      -0.00      92.64      -0.00       0.00       0.00

   38   7.1  1.0 -1.0       0.00      -0.00      -0.00      68.20       0.00      -0.00     104.11      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      83.50      -0.00      -0.00     -99.80       0.00       0.00

   39   8.1  1.0 -1.0      -0.00      -0.00     -68.20       0.00       0.00     -13.50      -0.00       0.00       0.00       0.00
                            3.93      87.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   9.1  1.0 -1.0      -4.09     -72.36      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00     -83.50      -0.00      -0.00      -6.58       0.00      -0.00      -0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00      13.50      -0.00       0.00    -157.62       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       6.58      -0.00      -0.00    -153.43       0.00       0.00

   42  11.1  1.0 -1.0      -0.00      -0.00    -104.11       0.00       0.00     157.62      -0.00       0.00      -0.00       0.00
                            1.10     -92.64       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   43  12.1  1.0 -1.0       1.14    -104.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      99.80      -0.00       0.00     153.43       0.00       0.00      -0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      70.60

   45  14.1  1.0 -1.0      -0.43      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -70.60      -0.00

   46  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -70.60      -0.00
                           -0.39      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   1.1  1.0  1.0       0.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0     -70.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00      69.61      -0.00       0.00      -0.00      -0.00      -0.00       4.12      -0.00
                            0.00      -0.00      -0.00      -0.00     -69.61      -0.00       0.00       0.00      -0.00      -3.97

   18   2.1  1.0  0.0       0.00     -69.61      -0.00      -0.00      -0.00      -0.00       0.00       3.35      -0.00      -0.00
                            0.00       0.00       0.00    -113.81       0.00     -80.19      -3.29       0.00      -0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00    -126.36      -0.00      -0.00      -0.00       0.00       0.17
                            0.00       0.00     113.81       0.00      -0.00      -0.00       0.00       0.00       0.01       0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00     126.36       0.00     -58.47      -3.29      -0.00       0.00       0.00
                            0.00      69.61      -0.00       0.00       0.00       0.00      -0.00      -3.23       0.00       0.00

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00      58.47       0.00       0.00       0.00      -0.00      -4.09
                            0.00       0.00      80.19       0.00      -0.00      -0.00       0.00       0.00      -3.93      -0.00

   22   6.1  1.0  0.0       0.00       0.00      -0.00       0.00       3.29      -0.00       0.00      -0.00      -0.00     -72.36
                            0.00      -0.00       3.29      -0.00       0.00      -0.00      -0.00      -0.00     -87.32       0.00

   23   7.1  1.0  0.0       0.00       0.00      -3.35       0.00       0.00      -0.00       0.00      -0.00     -68.20      -0.00
                            0.00      -0.00      -0.00      -0.00       3.23      -0.00       0.00       0.00      -0.00      83.50

   24   8.1  1.0  0.0       0.00      -4.12       0.00      -0.00      -0.00       0.00       0.00      68.20       0.00      -0.00
                            0.00       0.00       0.00      -0.01      -0.00       3.93      87.32       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00      -0.17      -0.00       4.09      72.36       0.00       0.00      -0.00
                            0.00       3.97       0.00      -0.00      -0.00       0.00      -0.00     -83.50      -0.00       0.00

   26  10.1  1.0  0.0       0.00      -0.00      -2.47      -0.00      -0.00      -0.00      -0.00      -0.00     -13.50       0.00
                            0.00       0.00      -0.00      -0.00      -2.63      -0.00       0.00       0.00      -0.00       6.58

   27  11.1  1.0  0.0       0.00       0.65       0.00      -0.00      -0.00       0.00       0.00     104.11      -0.00      -0.00
                            0.00      -0.00       0.00      -3.71      -0.00       1.10     -92.64       0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00      -3.51      -0.00      -1.14     104.74      -0.00       0.00       0.00
                            0.00       1.26      -0.00       0.00      -0.00       0.00       0.00      99.80      -0.00       0.00

   29  13.1  1.0  0.0       0.00      -0.00      -0.41       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.41      -0.00      -0.00      -0.00      -0.00       0.00

   30  14.1  1.0  0.0       0.00      -0.00      -0.00       0.20       0.00       0.43       0.00       0.00       0.00      -0.00
                            0.00      -0.41      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0   25445.86      -0.41       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.27       0.00      -0.39      -0.00      -0.00      -0.00       0.00

   32   1.1  1.0 -1.0      -0.41    9863.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      17.74      -0.00    -196.10       4.66      -0.00       0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -98.45       0.00      -0.00      -0.00       0.00       0.32

   34   3.1  1.0 -1.0      -0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.27     -17.74      -0.00       0.00       0.00      -0.00       0.00      -0.28       0.00       0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      98.45      -0.00      -0.00      -0.00      -0.00       0.00       0.57       0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    9863.69       0.00       0.00       0.00       0.00
                            0.39     196.10      -0.00       0.00       0.00      -0.00      -0.00       4.65       0.00       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   22699.77       0.00       0.00       0.00
                            0.00      -4.66       0.00      -0.00       0.00       0.00       0.00    -179.99       0.00      -0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.78       0.00       0.00
                            0.00       0.00       0.00       0.28      -0.00      -4.65     179.99       0.00       0.00      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.77       0.00
                            0.00      -0.00      -0.00      -0.00      -0.57      -0.00      -0.00      -0.00       0.00     268.86

   40   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22699.77
                           -0.00       0.00      -0.32      -0.00      -0.00      -0.00       0.00       0.00    -268.86      -0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -6.23      -0.00      -0.46      -4.14       0.00       0.00       0.00

   42  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       5.86      -0.00       0.00      -0.00       0.00      21.17

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.88       0.00       0.00      -0.00       0.00       0.00      -5.96      -0.00

   44  13.1  1.0 -1.0      70.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.67      -0.00       0.06      -0.00       0.00       0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.58       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.58      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00     -10.11       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     -10.11

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.65      -0.00       0.00       0.00       0.41
                           -0.00       0.00      -1.26      -0.00       0.41       0.00

   18   2.1  1.0  0.0       2.47      -0.00      -0.00       0.41       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.00       3.51      -0.00      -0.20       0.00
                            0.00       3.71      -0.00       0.00       0.00      -0.27

   20   4.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00
                            2.63       0.00       0.00       0.41      -0.00      -0.00

   21   5.1  1.0  0.0       0.00      -0.00       1.14       0.00      -0.43      -0.00
                            0.00      -1.10      -0.00       0.00       0.00       0.39

   22   6.1  1.0  0.0       0.00      -0.00    -104.74       0.00      -0.00      -0.00
                           -0.00      92.64      -0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00    -104.11       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00     -99.80       0.00       0.00       0.00

   24   8.1  1.0  0.0      13.50       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -6.58       0.00      -0.00      -0.00       0.00      -0.00

   26  10.1  1.0  0.0       0.00     157.62      -0.00       0.00       0.00      -0.00
                            0.00      -0.00    -153.43       0.00       0.00       0.00

   27  11.1  1.0  0.0    -157.62      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00
                          153.43       0.00      -0.00      -0.00       0.00       0.00

   29  13.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00     -70.60
                           -0.00      -0.00       0.00      -0.00      70.60       0.00

   30  14.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00     -70.60       0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00      -0.00      70.60       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -5.88      -0.00      -0.58       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            6.23      -0.00      -0.00      -0.67      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.86      -0.00       0.00       0.00      -0.58

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.46       0.00       0.00      -0.06       0.00       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            4.14      -0.00      -0.00       0.00       0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       5.96      -0.00       0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -21.17       0.00      -0.00      -0.00       0.00

   41  10.1  1.0 -1.0   22699.77       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00   22699.78       0.00       0.00       0.00       0.00
                           -0.00       0.00      90.88      -0.00       0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00   22699.77       0.00       0.00       0.00
                            0.00     -90.88      -0.00      -0.00      -0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   25445.87       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   25445.86       0.00
                            0.00      -0.00       0.00       0.00       0.00     -99.85

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   25445.86
                            0.00       0.00      -0.00      -0.00      99.85       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by    -25.35161195 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000    9863.685       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000    9863.688       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000    9863.691       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000    9863.687       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    9863.687       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22699.775       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   22699.778
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            -14.301       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -98.450      -0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000    -160.958       0.000    -113.412      -4.658       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000     160.958       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      98.450      -0.000       0.000       0.000       0.000      -0.000      -4.574

    5    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000     113.412       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       4.658      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       4.574      -0.000       0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.008      -0.000       5.558     123.484       0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       5.616       0.000      -0.000      -0.000       0.000      -0.000    -118.085

   10    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -3.714      -0.000       0.000       0.000

   11    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -5.241      -0.000       1.552    -131.011       0.000

   12    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       1.782      -0.000       0.000      -0.000       0.000       0.000     141.137

   13    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               14.301       0.000      -0.000      -0.000      -0.583      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.583      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.387       0.000      -0.550      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -17.739       0.000     196.100      -4.659       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      98.450      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      17.739       0.000      -0.000      -0.000       0.000      -0.000       0.277

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -98.450       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -196.100       0.000      -0.000      -0.000       0.000       0.000      -4.652

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.659      -0.000       0.000      -0.000      -0.000      -0.000     179.987

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.277       0.000       4.652    -179.987      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.569       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.321       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       6.233       0.000       0.456       4.140      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -5.865       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -5.883      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.670       0.000      -0.061       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.583      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.301       0.000       0.000      -0.000      -0.583       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -14.301       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          22699.775       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   22699.775       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   22699.774       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   22699.775       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   22699.774       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   25445.869       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   25445.860       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   25445.859
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -5.616      -0.000       0.000      -1.782      -0.000       0.583       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.008       0.000       0.000       5.241      -0.000       0.000       0.000      -0.387

    4    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       3.714       0.000       0.000       0.583      -0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -5.558      -0.000       0.000      -1.552      -0.000       0.000       0.000       0.550

    6    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -123.484       0.000      -0.000     131.011      -0.000       0.000       0.000       0.000

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000     118.085      -0.000      -0.000    -141.137       0.000       0.000       0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -9.303       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       9.303       0.000      -0.000    -216.980       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000     216.980       0.000       0.000      -0.001       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.001       0.000      99.847       0.000

   14    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000     -99.847       0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.321       0.000       0.000       5.883       0.000       0.583      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -6.233       0.000       0.000       0.670       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.569      -0.000      -0.000       5.865       0.000      -0.000      -0.000       0.583

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.456      -0.000      -0.000       0.061      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -4.140       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -268.863       0.000       0.000      -5.963       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              268.863       0.000       0.000      21.172      -0.000       0.000       0.000      -0.001

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -21.172       0.000      -0.000     -90.885       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.963       0.000      -0.000      90.885       0.000       0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      99.848

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000      -0.000       0.000       0.000     -99.848      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -98.450      -0.000       0.000       0.000      -0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000    -160.958       0.000    -113.412      -4.658       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     160.958       0.000      -0.000      -0.000       0.000       0.000       0.008

    4    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               98.450      -0.000       0.000       0.000       0.000      -0.000      -4.574       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000     113.412       0.000      -0.000       0.000       0.000       0.000      -5.558

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       4.658      -0.000       0.000      -0.000       0.000      -0.000    -123.484

    7    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       4.574      -0.000       0.000       0.000      -0.000

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.008      -0.000       5.558     123.484       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                5.616       0.000      -0.000      -0.000       0.000      -0.000    -118.085      -0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -3.714      -0.000       0.000       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -5.241      -0.000       1.552    -131.011       0.000      -0.000

   12    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                1.782      -0.000       0.000      -0.000       0.000       0.000     141.137      -0.000

   13    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.583      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.583      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.387       0.000      -0.550      -0.000      -0.000      -0.000

    1    1  |1 0>            9863.685       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000    9863.688       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000    9863.691       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000    9863.687       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000    9863.687       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22699.775       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22699.778       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22699.775
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      98.450      -0.000       0.000      -0.000      -0.000      -0.000       5.821
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-            -98.450       0.000      -0.000      -0.000      -0.000       0.000       4.740      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000    -178.697      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-             -0.000       0.000     178.697       0.000     -82.688      -4.658      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000      82.688       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000      -0.000       0.000       4.658      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000      -4.740       0.000       0.000      -0.000       0.000       0.000     -96.445
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-             -5.821       0.000      -0.000      -0.000       0.000       0.000      96.445       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.244      -0.000       5.779     102.328       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-             -0.000      -3.500      -0.000      -0.000      -0.000      -0.000      -0.000     -19.091
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.915       0.000      -0.000      -0.000       0.000       0.000     147.228      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000      -4.970      -0.000      -1.615     148.125      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>-             -0.000      -0.583       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-             -0.000      -0.000       0.282       0.000       0.610       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>-             -0.583       0.000      -0.000      -0.000       0.000       0.000      -0.001      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -14.301       0.000       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -5.616      -0.000       0.000      -1.782      -0.000       0.583       0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       5.241      -0.000       0.000       0.000      -0.387      17.739

    4    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       3.714       0.000       0.000       0.583      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -1.552      -0.000       0.000       0.000       0.550    -196.100

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     131.011      -0.000       0.000       0.000       0.000       4.659

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                              118.085      -0.000      -0.000    -141.137       0.000       0.000       0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -9.303       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                9.303       0.000      -0.000    -216.980       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000     216.980       0.000       0.000      -0.001       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.001       0.000      99.847       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000     -99.847       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      98.450
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       5.821
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           22699.775       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000   22699.774       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000   22699.775       0.000       0.000       0.000       0.000      -0.915
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000   22699.774       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   25445.869       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   25445.860       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   25445.859       0.583
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-             -0.000       0.000      -0.915      -0.000       0.000       0.000       0.583    9863.685
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-             -0.000       3.500      -0.000      -0.000       0.583       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.244       0.000       0.000       4.970      -0.000      -0.282       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-             -5.779       0.000      -0.000       1.615       0.000      -0.610      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-           -102.328       0.000      -0.000    -148.125       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000    -147.228       0.000      -0.000      -0.000       0.001       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-             -0.000      19.091       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000     222.909      -0.000       0.000       0.000      -0.001       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -0.000    -222.909       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000       0.000     -99.847       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>-             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000       0.001      -0.000      -0.000      99.847       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.739       0.000     196.100      -4.659       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      98.450      -0.000       0.000       0.000      -0.000      -0.321

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.277      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -98.450       0.000       0.000       0.000       0.000      -0.000      -0.569      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -4.652      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000     179.987      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.277       0.000       4.652    -179.987      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.569       0.000       0.000       0.000      -0.000    -268.863

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.321       0.000       0.000       0.000      -0.000      -0.000     268.863       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       6.233       0.000       0.456       4.140      -0.000      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -5.865       0.000      -0.000       0.000      -0.000     -21.172

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.883      -0.000      -0.000       0.000      -0.000      -0.000       5.963       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.670       0.000      -0.061       0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.583      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.583       0.000      -0.000       0.000      -0.000       0.001

    1    1  |1 0>             -98.450       0.000      -0.000       0.000       0.000       0.000      -5.821       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -4.740       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000     178.697       0.000       0.000       0.000      -0.000      -0.244
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000    -178.697       0.000      82.688       4.658       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000      -0.000     -82.688       0.000      -0.000      -0.000       0.000       5.779
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000      -0.000      -4.658       0.000       0.000       0.000       0.000     102.328
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>               4.740      -0.000      -0.000       0.000      -0.000       0.000      96.445       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000     -96.445       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.244       0.000      -5.779    -102.328      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               3.500       0.000       0.000       0.000       0.000       0.000      19.091      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000    -147.228       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>              -0.000       4.970       0.000       1.615    -148.125       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.583      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000      -0.282      -0.000      -0.610      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.001       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           9863.688       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    9863.691       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000    9863.687       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000    9863.687       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   22699.775       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22699.778       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22699.775       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22699.775
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      14.301

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       5.883       0.000       0.583      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -6.233       0.000       0.000       0.670       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       5.865       0.000      -0.000      -0.000       0.583

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.456      -0.000      -0.000       0.061      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -4.140       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -5.963       0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      21.172      -0.000       0.000       0.000      -0.001

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -90.885       0.000      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      90.885       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      99.848

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -99.848      -0.000

    1    1  |1 0>              -0.000       0.915       0.000      -0.000      -0.000      -0.583
                                0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>              -3.500       0.000       0.000      -0.583      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -4.970       0.000       0.282      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -1.615      -0.000       0.610       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000     148.125      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>              -0.000     147.228      -0.000       0.000       0.000      -0.001
                               -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>             -19.091      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000    -222.909       0.000      -0.000      -0.000       0.001
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 0>             222.909       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      99.847
                                0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.001       0.000       0.000     -99.847      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          22699.774       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   22699.775       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   22699.774       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   25445.869       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   25445.860       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   25445.859
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.35161206    -0.00000011       -0.02      0.00000000        0.00      0.0000
    2   -25.30801540     0.04359655     9568.34      0.04359666     9568.36      1.1863
    3   -25.30801540     0.04359655     9568.34      0.04359666     9568.36      1.1863
    4   -25.30801539     0.04359656     9568.34      0.04359667     9568.36      1.1863
    5   -25.30711828     0.04449366     9765.23      0.04449377     9765.25      1.2107
    6   -25.30711828     0.04449367     9765.23      0.04449378     9765.26      1.2107
    7   -25.30711828     0.04449367     9765.23      0.04449378     9765.26      1.2107
    8   -25.30711827     0.04449368     9765.23      0.04449379     9765.26      1.2107
    9   -25.30711827     0.04449368     9765.23      0.04449379     9765.26      1.2107
   10   -25.30577258     0.04583937    10060.58      0.04583948    10060.60      1.2474
   11   -25.30577258     0.04583937    10060.58      0.04583948    10060.60      1.2474
   12   -25.30577257     0.04583938    10060.58      0.04583949    10060.60      1.2474
   13   -25.30577257     0.04583938    10060.58      0.04583949    10060.61      1.2474
   14   -25.30577256     0.04583939    10060.58      0.04583950    10060.61      1.2474
   15   -25.30577256     0.04583939    10060.58      0.04583950    10060.61      1.2474
   16   -25.30577256     0.04583939    10060.58      0.04583950    10060.61      1.2474
   17   -25.24982474     0.10178721    22339.71      0.10178732    22339.74      2.7698
   18   -25.24982473     0.10178722    22339.71      0.10178733    22339.74      2.7698
   19   -25.24982473     0.10178722    22339.71      0.10178733    22339.74      2.7698
   20   -25.24982473     0.10178722    22339.71      0.10178733    22339.74      2.7698
   21   -25.24982473     0.10178722    22339.71      0.10178733    22339.74      2.7698
   22   -25.24859428     0.10301767    22609.76      0.10301778    22609.79      2.8033
   23   -25.24859428     0.10301767    22609.76      0.10301778    22609.79      2.8033
   24   -25.24859428     0.10301767    22609.76      0.10301778    22609.79      2.8033
   25   -25.24859428     0.10301767    22609.76      0.10301778    22609.79      2.8033
   26   -25.24859428     0.10301767    22609.77      0.10301778    22609.79      2.8033
   27   -25.24859428     0.10301767    22609.77      0.10301778    22609.79      2.8033
   28   -25.24859427     0.10301767    22609.77      0.10301778    22609.79      2.8033
   29   -25.24695372     0.10465822    22969.83      0.10465834    22969.85      2.8479
   30   -25.24695372     0.10465822    22969.83      0.10465834    22969.85      2.8479
   31   -25.24695372     0.10465823    22969.83      0.10465834    22969.85      2.8479
   32   -25.24695372     0.10465823    22969.83      0.10465834    22969.85      2.8479
   33   -25.24695372     0.10465823    22969.83      0.10465834    22969.85      2.8479
   34   -25.24695372     0.10465823    22969.83      0.10465834    22969.85      2.8479
   35   -25.24695371     0.10465823    22969.83      0.10465834    22969.85      2.8479
   36   -25.24695371     0.10465823    22969.83      0.10465834    22969.85      2.8479
   37   -25.24695371     0.10465823    22969.83      0.10465834    22969.85      2.8479
   38   -25.23658183     0.11503012    25246.19      0.11503023    25246.22      3.1301
   39   -25.23612702     0.11548493    25346.01      0.11548504    25346.04      3.1425
   40   -25.23612700     0.11548495    25346.02      0.11548506    25346.04      3.1425
   41   -25.23612699     0.11548495    25346.02      0.11548506    25346.04      3.1425
   42   -25.23521714     0.11639481    25545.71      0.11639492    25545.73      3.1673
   43   -25.23521714     0.11639481    25545.71      0.11639492    25545.73      3.1673
   44   -25.23521712     0.11639483    25545.71      0.11639494    25545.74      3.1673
   45   -25.23521712     0.11639483    25545.71      0.11639494    25545.74      3.1673
   46   -25.23521711     0.11639483    25545.71      0.11639494    25545.74      3.1673

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999952 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000005  0.54772704 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40824621
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.54772423 -0.00000000 -0.40824279  0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000177 -0.00000000  0.00184504  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.26559191 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.44287631 -0.00000006 -0.68594812  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.57398536 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00030780
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00037796 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00037375  0.00000000  0.00003667 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00022729
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00005939  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005878 -0.00000000 -0.00033418  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00003371 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004521
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00056646  0.00000000 -0.00000000 -0.00000000 -0.00004386 -0.00000000 -0.00002832  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00003369 -0.00000000 -0.00004521  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000020  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000000 -0.00000000  0.81549060  0.00000000  0.04057076 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.54772004 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000204  0.00000000 -0.00033244 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.62988085 -0.00000000 -0.07355734  0.00000001 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000005 -0.54772034  0.00000000  0.00000000 -0.00000000  0.00000000  0.40825655

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00367508  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.05697851  0.00000000  0.81316847 -0.00000007  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000137  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00030247 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00030155 -0.00000000 -0.00002435  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002085

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002711 -0.00000000 -0.00040485  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00038207

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00056646  0.00000000 -0.00000000 -0.00000000  0.00000259 -0.00000000 -0.00005214  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00003371 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00004519

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00003371 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.54772666  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000000  0.00000000  0.37260605  0.00000006  0.72651827 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000003 -0.36428021  0.00000000  0.00000000 -0.00000000  0.00000000  0.66745136

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000177 -0.00000000  0.00184504  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.54772414  0.00000000  0.40824425 -0.00000004  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000004  0.51700817 -0.00000000  0.00000000 -0.00000000  0.00000000  0.47028705

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00030249

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00035744  0.00000000  0.00004984 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000165 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036470  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014722 -0.00000000 -0.00032288  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000052 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00011568  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00003370 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00003369 -0.00000000 -0.00004521  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00056646 -0.00000000 -0.00000000  0.00000000  0.00004646 -0.00000000 -0.00002383 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.72535475 -0.00000009 -0.00000001 -0.00000000 -0.00000000  0.08479533 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000001  0.60789580  0.00000000  0.00000000  0.40471586
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001887 -0.00000000 -0.00000000  0.00001081

   3    1  |1 1>+          0.74100853 -0.00000001 -0.08603030  0.00000000  0.00000000 -0.61070915  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.57735197 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.34287989  0.00000009  0.69505750  0.00000000  0.00000001 -0.26432730  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00030249  0.00000000  0.00027468 -0.00000000  0.00000000  0.00032907 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00021561  0.00000000  0.00000000  0.00000000  0.00000000  0.00035933 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00023155  0.00000000 -0.00000000  0.00003424
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00024362  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00006639  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00052851  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00032429  0.00000000 -0.00000000 -0.00054716
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00035266  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000003
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.57734622  0.00000001 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.40825642  0.00000001  0.02662804 -0.00000000 -0.00000000  0.72980822 -0.00000002 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00002065
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00336804  0.00000000  0.00000001  0.77319315

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.09923531 -0.00000001 -0.00000000  0.00000000  0.00000002  0.72351988 -0.00000001

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001795 -0.00000000 -0.00000000 -0.00000076
                          -0.00000000  0.00000000 -0.00000000  0.00000001  0.57852277  0.00000000 -0.00000000  0.02842444

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042752 -0.00000000  0.00000000  0.00003069

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00042851  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00003698 -0.00000000 -0.00063875 -0.00000000 -0.00000000  0.00004403 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00063761  0.00000000  0.00000000  0.00000000  0.00000000  0.00007567 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000986 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00038085 -0.00000000 -0.00006987  0.00000000  0.00000000 -0.00021093  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000562  0.00000000 -0.00000000  0.00000000  0.00000000  0.00021679 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00004519 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.40824754  0.00000009  0.71329115 -0.00000000  0.00000000  0.15666789 -0.00000001  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.57735214 -0.00000001  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02471411  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.64899724  0.00000001

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001688  0.00000000  0.00000000 -0.00001302
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.54384024 -0.00000000  0.00000001  0.48741043

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.68073600  0.00000009  0.00000001  0.00000000  0.00000001  0.21938726 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00030611  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00030005  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00029703 -0.00000000 -0.00024947 -0.00000000 -0.00000000  0.00036018 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00029399  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00028188 -0.00000000  0.00000000 -0.00000843

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00024121  0.00000000  0.00002489 -0.00000000 -0.00000000  0.00051648 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00031191 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00036077  0.00000000  0.00000000  0.00049965

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00004521 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000003

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00025309 -0.00000000  0.00029764 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00025307  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00048139 -0.00000000
                           0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00045938  0.00000000 -0.00000000  0.00037298
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00047156 -0.00000000 -0.00018384  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00021258 -0.00000000  0.00000000 -0.00021263
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000002 -0.00000006  0.00000000  0.48795067  0.00000001 -0.00000006  0.57619582
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000001

   7    1  |1 1>+         -0.00000000  0.00000002 -0.00000003 -0.49650973  0.00000000 -0.30252698  0.00000002  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000001  0.60972773  0.00000001  0.00000003 -0.00000003  0.00000002  0.19134459  0.00000005
                           0.00000000 -0.00004946  0.00000000  0.00000000  0.00000000  0.00000000  0.00000419 -0.00000000

   9    1  |1 1>+          0.06275482 -0.00000001  0.60257794 -0.00000003  0.00000008  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000002 -0.00000002 -0.36664564  0.00000000  0.67644922 -0.00000005 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.09583838 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.43336421  0.00000004
                          -0.00000000  0.00000777 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000952 -0.00000003

  12    1  |1 1>+          0.50920394  0.00000001 -0.20085279  0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000014  0.00000000  0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00007657  0.00000000 -0.00050031  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025307 -0.00000000  0.00000000 -0.00040678

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00004560  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00050351 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00025306 -0.00000000  0.00051319 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00050408 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022641 -0.00000000

   6    1  |1 0>          -0.00000000  0.00003958 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000531 -0.00000001
                          -0.00000001  0.48794903  0.00000001  0.00000002 -0.00000002 -0.00000003 -0.24262537 -0.00000009

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.05891696  0.00000001 -0.48448053  0.00000003 -0.00000006  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.05963623 -0.00000002  0.00000006 -0.54893718

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.03363402  0.00000000  0.29380787 -0.00000002 -0.00000001

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.64864545  0.00000001 -0.08792029  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000003 -0.00000008  0.00000000  0.61432587 -0.00000000  0.00000003 -0.27089311

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000003  0.00000003  0.61629746 -0.00000000 -0.25761643  0.00000002  0.00000001

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000035 -0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000009  0.00000000  0.00000014 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000018

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025309 -0.00000000  0.00000000 -0.00044877

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00039499  0.00000000 -0.00031646  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00041377 -0.00000000 -0.00043896  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00025307 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012115  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00029156 -0.00000000 -0.00008089  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000002  0.00000003  0.48794966 -0.00000000  0.54608062 -0.00000004 -0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002 -0.00000006  0.00000000  0.47912642 -0.00000000 -0.00000001  0.12088791

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.03668001 -0.00000001  0.58104957 -0.00000003  0.00000007  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00004772  0.00000000  0.00000000  0.00000000  0.00000000  0.00000424 -0.00000001
                           0.00000001 -0.58831798 -0.00000001 -0.00000003  0.00000003 -0.00000002 -0.19377375 -0.00000006

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                           0.00000000 -0.00000002  0.00000005 -0.00000000 -0.38908724  0.00000001 -0.00000006  0.52789093

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.55786669  0.00000000  0.12840420 -0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00001514  0.00000000  0.00000000  0.00000000  0.00000000 -0.00001806 -0.00000001
                           0.00000000 -0.18663979 -0.00000000 -0.00000001  0.00000001  0.00000006  0.82411578  0.00000010

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000006

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000032  0.00000000 -0.00000034  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00045318 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00024941 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00026562 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00042863  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00050950 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000007  0.00000000  0.03649428 -0.00000000 -0.00000002  0.00000001 -0.43521101 -0.00000028
                          -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000657  0.00000001

   7    1  |1 1>+          0.00000000  0.47650580 -0.00000002  0.00000001 -0.00000001  0.01949782  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00087646 -0.00000000  0.00000000

   8    1  |1 1>+          0.25058746  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000018 -0.27347847
                           0.00000175  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00020458

   9    1  |1 1>+          0.00000000 -0.00000001  0.00000001  0.32815181 -0.16258375 -0.00000010  0.00000004 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000001 -0.23909589  0.00000001 -0.00000001 -0.00000033  0.56025766  0.00000002 -0.00000004
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.02518456 -0.00000000  0.00000000

  11    1  |1 1>+          0.73899894  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000032  0.48896993
                           0.00000517 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00036578

  12    1  |1 1>+          0.00000000 -0.00000001  0.00000001  0.47502474 -0.46959617 -0.00000028  0.00000001  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00042863  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00035844  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00027575  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00017488  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00036560 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

   6    1  |1 0>           0.00000365  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00048551
                          -0.52389675 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000004 -0.00000042  0.64903080

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000001  0.57719761  0.03526511  0.00000002  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000001  0.00000001  0.00000002  0.00000000  0.00000000  0.00000000  0.00000368 -0.00000000
                           0.00000007  0.00000002  0.66516596 -0.00000001 -0.00000001  0.00000001 -0.24407429 -0.00000016

   9    1  |1 0>          -0.00000000  0.00000001  0.00000001  0.00000000 -0.00000000  0.00603252 -0.00000000 -0.00000000
                          -0.00000001  0.81344862 -0.00000002  0.00000002 -0.00000008  0.13419993  0.00000000 -0.00000001

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.01327814  0.72667983  0.00000043 -0.00000001 -0.00000001

  11    1  |1 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001000  0.00000001
                           0.00000003 -0.00000000 -0.12717118  0.00000000  0.00000001 -0.00000002  0.66300572  0.00000043

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.03123633  0.00000000 -0.00000000
                           0.00000000  0.13764171 -0.00000001  0.00000000 -0.00000041  0.69488562  0.00000002 -0.00000005

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000025  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00030425 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00042863 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00019955 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00052846  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00052480  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.01922122 -0.00000000  0.00000000
                          -0.00000001  0.18743247 -0.00000000  0.00000000  0.00000025 -0.42759672 -0.00000001  0.00000003

   7    1  |1 1>-          0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000
                          -0.00000002  0.00000002  0.57762134 -0.00000001  0.00000001  0.00000000  0.01576957  0.00000001

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000001  0.39599822  0.23620443  0.00000014 -0.00000004 -0.00000000

   9    1  |1 1>-          0.00000228  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000897
                          -0.32671859 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000001  0.01199050

  10    1  |1 1>-          0.00000001  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000842  0.00000001
                          -0.00000007  0.00000002  0.45431590 -0.00000001  0.00000001 -0.00000002  0.55784752  0.00000036

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.42014206 -0.40981243 -0.00000024  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000067 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00038489
                           0.09936347  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000034  0.51452173

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000018  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000008 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00098113  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002611 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001267
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00002735
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001  0.00000003  0.00000000 -0.48904171 -0.00000003  0.00000000 -0.00000000 -0.00000004
                          -0.00000000 -0.00000000 -0.00000000 -0.00004245 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000001 -0.00000002 -0.00000005  0.65917842  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001 -0.00058314  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.67375892 -0.00000002  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000015 -0.00000000
                          -0.00913602  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000002  0.70197004  0.07798999  0.00000002 -0.00000001  0.00000019  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000002  0.00000000 -0.00000001 -0.00000001  0.19051855  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00016854 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.13340026 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00180888  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.15046981 -0.48120582  0.00000000 -0.00000001 -0.00000011  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000003
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000019 -0.00000001 -0.00000000  0.00000000  0.57735596 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000026 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.70710779 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00008194 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002611

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002998  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000272  0.00000000

   6    1  |1 0>           0.00116077 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.08560389  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.08751312  0.64787952  0.00000001  0.00000002 -0.00000006 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00003814  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000002  0.00000000 -0.43942357 -0.00000003  0.00000000  0.00000000  0.00000003

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00042684  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000001  0.00000002  0.00000004 -0.48249396 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.19881282 -0.06133934 -0.00000001 -0.00000000  0.00000029  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00002654  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000003  0.00000000 -0.30573086 -0.00000003 -0.00000000 -0.00000000 -0.00000014

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00019983  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000001 -0.00000001 -0.00000002  0.22588495  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000002  0.00000005  0.00000000 -0.00000000 -0.57733688  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000003

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00000000  0.70712470

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00002611

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002612 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00043820 -0.00000000 -0.00000000  0.00000000
                          -0.00000002  0.00000001 -0.00000001 -0.00000004  0.49533955 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00005638 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000002 -0.00000001  0.64956032  0.00000005  0.00000000 -0.00000000  0.00000016

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.65024754  0.16002119 -0.00000002  0.00000001 -0.00000009  0.00000000  0.00000000

   9    1  |1 1>-          0.00967745 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.71368831 -0.00000002  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000025  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00001986  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000002  0.00000000 -0.22879066 -0.00000002 -0.00000000  0.00000000 -0.00000019

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.12078893  0.55967968  0.00000001  0.00000002 -0.00000014  0.00000000  0.00000000

  12    1  |1 1>-          0.00144718 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.10672592 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.70708886

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00008194 -0.00000000
                          -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.70710576  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000027  0.00000020 -0.00000000  0.00000000  0.57735713 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00002611 -0.00000000  0.00000000  0.00000000  0.00002610  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00002611  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00004735  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00002721  0.00000000  0.00000000  0.00000000 -0.00004457
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00002192 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000010  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000030 -0.00000000 -0.00000000  0.00000000  0.00000015
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000034
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.70708988 -0.00000000  0.00000000  0.00000001  0.70712368  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

  14    1  |1 1>+          0.00000000 -0.69691854  0.00000001 -0.00000000 -0.00000000  0.42539901
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000001  0.70705295 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00864199  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00005219  0.00000000  0.00000000 -0.00000000  0.00000128

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00002611  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000470  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002611 -0.00000000  0.00000000  0.00000000  0.00002611  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000064 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00005198 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000028  0.00000000  0.00000000  0.00000000 -0.00000004

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000024

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000021 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01995616 -0.00000000 -0.00000000 -0.00000000  0.81626194

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                           0.70712368  0.00000000 -0.00000000 -0.00000001 -0.70708987 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000003 -0.00000000 -0.00000000 -0.70708886  0.00000001 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00002610  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00002500  0.00000000 -0.00000000 -0.00000000  0.00004584

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001738 -0.00000000  0.00000000  0.00000000  0.00004265  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00002611 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002464 -0.00000000  0.00000000  0.00000000  0.00003006  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000014  0.00000000  0.00000000  0.00000000  0.00000010  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000018  0.00000000 -0.00000000  0.00000000 -0.00000014

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000018

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000000  0.70712470 -0.00000001  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00864202 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.70705499 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.71687258 -0.00000001 -0.00000000  0.00000000  0.39083516


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.35161206     -0.00000011       -0.02      0.00000000        0.00      0.0000
     2   1    -25.30801540      0.04359655     9568.34      0.04359666     9568.36      1.1863
     3   1    -25.30801540      0.04359655     9568.34      0.04359666     9568.36      1.1863
     4   1    -25.30801539      0.04359656     9568.34      0.04359667     9568.36      1.1863
     5   1    -25.30711828      0.04449366     9765.23      0.04449377     9765.25      1.2107
     6   1    -25.30711828      0.04449367     9765.23      0.04449378     9765.26      1.2107
     7   1    -25.30711828      0.04449367     9765.23      0.04449378     9765.26      1.2107
     8   1    -25.30711827      0.04449368     9765.23      0.04449379     9765.26      1.2107
     9   1    -25.30711827      0.04449368     9765.23      0.04449379     9765.26      1.2107
    10   1    -25.30577258      0.04583937    10060.58      0.04583948    10060.60      1.2474
    11   1    -25.30577258      0.04583937    10060.58      0.04583948    10060.60      1.2474
    12   1    -25.30577257      0.04583938    10060.58      0.04583949    10060.60      1.2474
    13   1    -25.30577257      0.04583938    10060.58      0.04583949    10060.61      1.2474
    14   1    -25.30577256      0.04583939    10060.58      0.04583950    10060.61      1.2474
    15   1    -25.30577256      0.04583939    10060.58      0.04583950    10060.61      1.2474
    16   1    -25.30577256      0.04583939    10060.58      0.04583950    10060.61      1.2474
    17   1    -25.24982474      0.10178721    22339.71      0.10178732    22339.74      2.7698
    18   1    -25.24982473      0.10178722    22339.71      0.10178733    22339.74      2.7698
    19   1    -25.24982473      0.10178722    22339.71      0.10178733    22339.74      2.7698
    20   1    -25.24982473      0.10178722    22339.71      0.10178733    22339.74      2.7698
    21   1    -25.24982473      0.10178722    22339.71      0.10178733    22339.74      2.7698
    22   1    -25.24859428      0.10301767    22609.76      0.10301778    22609.79      2.8033
    23   1    -25.24859428      0.10301767    22609.76      0.10301778    22609.79      2.8033
    24   1    -25.24859428      0.10301767    22609.76      0.10301778    22609.79      2.8033
    25   1    -25.24859428      0.10301767    22609.76      0.10301778    22609.79      2.8033
    26   1    -25.24859428      0.10301767    22609.77      0.10301778    22609.79      2.8033
    27   1    -25.24859428      0.10301767    22609.77      0.10301778    22609.79      2.8033
    28   1    -25.24859427      0.10301767    22609.77      0.10301778    22609.79      2.8033
    29   1    -25.24695372      0.10465822    22969.83      0.10465834    22969.85      2.8479
    30   1    -25.24695372      0.10465822    22969.83      0.10465834    22969.85      2.8479
    31   1    -25.24695372      0.10465823    22969.83      0.10465834    22969.85      2.8479
    32   1    -25.24695372      0.10465823    22969.83      0.10465834    22969.85      2.8479
    33   1    -25.24695372      0.10465823    22969.83      0.10465834    22969.85      2.8479
    34   1    -25.24695372      0.10465823    22969.83      0.10465834    22969.85      2.8479
    35   1    -25.24695371      0.10465823    22969.83      0.10465834    22969.85      2.8479
    36   1    -25.24695371      0.10465823    22969.83      0.10465834    22969.85      2.8479
    37   1    -25.24695371      0.10465823    22969.83      0.10465834    22969.85      2.8479
    38   1    -25.23658183      0.11503012    25246.19      0.11503023    25246.22      3.1301
    39   1    -25.23612702      0.11548493    25346.01      0.11548504    25346.04      3.1425
    40   1    -25.23612700      0.11548495    25346.02      0.11548506    25346.04      3.1425
    41   1    -25.23612699      0.11548495    25346.02      0.11548506    25346.04      3.1425
    42   1    -25.23521714      0.11639481    25545.71      0.11639492    25545.73      3.1673
    43   1    -25.23521714      0.11639481    25545.71      0.11639492    25545.73      3.1673
    44   1    -25.23521712      0.11639483    25545.71      0.11639494    25545.74      3.1673
    45   1    -25.23521712      0.11639483    25545.71      0.11639494    25545.74      3.1673
    46   1    -25.23521711      0.11639483    25545.71      0.11639494    25545.74      3.1673

 E0 =    -25.35161195 is the energy of the lowest zeroth-order state
 E1 =    -25.35161206 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999952 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.00000005  0.54772704 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40824621
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.54772423 -0.00000000 -0.40824279  0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000177 -0.00000000  0.00184504  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.26559191 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.44287631 -0.00000006 -0.68594812  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.57398536 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00030780
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00037796 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00037375  0.00000000  0.00003667 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00022729
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00005939  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005878 -0.00000000 -0.00033418  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00003371 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004521
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00056646  0.00000000 -0.00000000 -0.00000000 -0.00004386 -0.00000000 -0.00002832  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00003369 -0.00000000 -0.00004521  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000020  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000000 -0.00000000  0.81549060  0.00000000  0.04057076 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.54772004 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000204  0.00000000 -0.00033244 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.62988085 -0.00000000 -0.07355734  0.00000001 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000005 -0.54772034  0.00000000  0.00000000 -0.00000000  0.00000000  0.40825655

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00367508  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.05697851  0.00000000  0.81316847 -0.00000007  0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000137  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00030247 -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00030155 -0.00000000 -0.00002435  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002085

 26  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002711 -0.00000000 -0.00040485  0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00038207

 29  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00056646  0.00000000 -0.00000000 -0.00000000  0.00000259 -0.00000000 -0.00005214  0.00000000

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00003371 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00004519

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00003371 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.54772666  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000000  0.00000000  0.37260605  0.00000006  0.72651827 -0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000003 -0.36428021  0.00000000  0.00000000 -0.00000000  0.00000000  0.66745136

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000177 -0.00000000  0.00184504  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.54772414  0.00000000  0.40824425 -0.00000004  0.00000000

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000004  0.51700817 -0.00000000  0.00000000 -0.00000000  0.00000000  0.47028705

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00030249

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00035744  0.00000000  0.00004984 -0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000165 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036470  0.00000000 -0.00000000

 41  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014722 -0.00000000 -0.00032288  0.00000000

 43  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000052 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00011568  0.00000000 -0.00000000

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00003370 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00003369 -0.00000000 -0.00004521  0.00000000 -0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00056646 -0.00000000 -0.00000000  0.00000000  0.00004646 -0.00000000 -0.00002383 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.72535475 -0.00000009 -0.00000001 -0.00000000 -0.00000000  0.08479533 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000001  0.60789580  0.00000000  0.00000000  0.40471586
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001887 -0.00000000 -0.00000000  0.00001081

  4  1     3    1  |1 1>+       0.74100853 -0.00000001 -0.08603030  0.00000000  0.00000000 -0.61070915  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.57735197 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.34287989  0.00000009  0.69505750  0.00000000  0.00000001 -0.26432730  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00030249  0.00000000  0.00027468 -0.00000000  0.00000000  0.00032907 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00021561  0.00000000  0.00000000  0.00000000  0.00000000  0.00035933 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00023155  0.00000000 -0.00000000  0.00003424
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00024362  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000000 -0.00006639  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00052851  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00032429  0.00000000 -0.00000000 -0.00054716
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001

 13  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00035266  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000003
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.57734622  0.00000001 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.40825642  0.00000001  0.02662804 -0.00000000 -0.00000000  0.72980822 -0.00000002 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00002065
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00336804  0.00000000  0.00000001  0.77319315

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.09923531 -0.00000001 -0.00000000  0.00000000  0.00000002  0.72351988 -0.00000001

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001795 -0.00000000 -0.00000000 -0.00000076
                               -0.00000000  0.00000000 -0.00000000  0.00000001  0.57852277  0.00000000 -0.00000000  0.02842444

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00042752 -0.00000000  0.00000000  0.00003069

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00042851  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00003698 -0.00000000 -0.00063875 -0.00000000 -0.00000000  0.00004403 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00063761  0.00000000  0.00000000  0.00000000  0.00000000  0.00007567 -0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000986 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00038085 -0.00000000 -0.00006987  0.00000000  0.00000000 -0.00021093  0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000562  0.00000000 -0.00000000  0.00000000  0.00000000  0.00021679 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000

 31  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00004519 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.40824754  0.00000009  0.71329115 -0.00000000  0.00000000  0.15666789 -0.00000001  0.00000000

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.57735214 -0.00000001  0.00000000  0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02471411  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.64899724  0.00000001

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001688  0.00000000  0.00000000 -0.00001302
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.54384024 -0.00000000  0.00000001  0.48741043

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.68073600  0.00000009  0.00000001  0.00000000  0.00000001  0.21938726 -0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00030611  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00030005  0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00029703 -0.00000000 -0.00024947 -0.00000000 -0.00000000  0.00036018 -0.00000000 -0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00029399  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00028188 -0.00000000  0.00000000 -0.00000843

 41  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00024121  0.00000000  0.00002489 -0.00000000 -0.00000000  0.00051648 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00031191 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00036077  0.00000000  0.00000000  0.00049965

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00004521 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000003

 46  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00025309 -0.00000000  0.00029764 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00025307  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00048139 -0.00000000
                                0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

  4  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00045938  0.00000000 -0.00000000  0.00037298
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00047156 -0.00000000 -0.00018384  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00021258 -0.00000000  0.00000000 -0.00021263
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000000  0.00000002 -0.00000006  0.00000000  0.48795067  0.00000001 -0.00000006  0.57619582
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000001

  8  1     7    1  |1 1>+      -0.00000000  0.00000002 -0.00000003 -0.49650973  0.00000000 -0.30252698  0.00000002  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000001  0.60972773  0.00000001  0.00000003 -0.00000003  0.00000002  0.19134459  0.00000005
                                0.00000000 -0.00004946  0.00000000  0.00000000  0.00000000  0.00000000  0.00000419 -0.00000000

 10  1     9    1  |1 1>+       0.06275482 -0.00000001  0.60257794 -0.00000003  0.00000008  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000  0.00000002 -0.00000002 -0.36664564  0.00000000  0.67644922 -0.00000005 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.09583838 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.43336421  0.00000004
                               -0.00000000  0.00000777 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000952 -0.00000003

 13  1    12    1  |1 1>+       0.50920394  0.00000001 -0.20085279  0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000014  0.00000000  0.00000029 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00007657  0.00000000 -0.00050031  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025307 -0.00000000  0.00000000 -0.00040678

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00004560  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00050351 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00025306 -0.00000000  0.00051319 -0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00050408 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022641 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00003958 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000531 -0.00000001
                               -0.00000001  0.48794903  0.00000001  0.00000002 -0.00000002 -0.00000003 -0.24262537 -0.00000009

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.05891696  0.00000001 -0.48448053  0.00000003 -0.00000006  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.05963623 -0.00000002  0.00000006 -0.54893718

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.03363402  0.00000000  0.29380787 -0.00000002 -0.00000001

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.64864545  0.00000001 -0.08792029  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000003 -0.00000008  0.00000000  0.61432587 -0.00000000  0.00000003 -0.27089311

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000003  0.00000003  0.61629746 -0.00000000 -0.25761643  0.00000002  0.00000001

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000035 -0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000009  0.00000000  0.00000014 -0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000018

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025309 -0.00000000  0.00000000 -0.00044877

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00039499  0.00000000 -0.00031646  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00041377 -0.00000000 -0.00043896  0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00025307 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012115  0.00000000

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00029156 -0.00000000 -0.00008089  0.00000000  0.00000000

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000002  0.00000003  0.48794966 -0.00000000  0.54608062 -0.00000004 -0.00000001

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002 -0.00000006  0.00000000  0.47912642 -0.00000000 -0.00000001  0.12088791

 39  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.03668001 -0.00000001  0.58104957 -0.00000003  0.00000007  0.00000000  0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00004772  0.00000000  0.00000000  0.00000000  0.00000000  0.00000424 -0.00000001
                                0.00000001 -0.58831798 -0.00000001 -0.00000003  0.00000003 -0.00000002 -0.19377375 -0.00000006

 41  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                                0.00000000 -0.00000002  0.00000005 -0.00000000 -0.38908724  0.00000001 -0.00000006  0.52789093

 42  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.55786669  0.00000000  0.12840420 -0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000

 43  1    12    1  |1 1>-       0.00000000 -0.00001514  0.00000000  0.00000000  0.00000000  0.00000000 -0.00001806 -0.00000001
                                0.00000000 -0.18663979 -0.00000000 -0.00000001  0.00000001  0.00000006  0.82411578  0.00000010

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000006

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000032  0.00000000 -0.00000034  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00045318 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00024941 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00026562 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00042863  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000  0.00050950 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000007  0.00000000  0.03649428 -0.00000000 -0.00000002  0.00000001 -0.43521101 -0.00000028
                               -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000657  0.00000001

  8  1     7    1  |1 1>+       0.00000000  0.47650580 -0.00000002  0.00000001 -0.00000001  0.01949782  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00087646 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.25058746  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000018 -0.27347847
                                0.00000175  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00020458

 10  1     9    1  |1 1>+       0.00000000 -0.00000001  0.00000001  0.32815181 -0.16258375 -0.00000010  0.00000004 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000001 -0.23909589  0.00000001 -0.00000001 -0.00000033  0.56025766  0.00000002 -0.00000004
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.02518456 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.73899894  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000032  0.48896993
                                0.00000517 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00036578

 13  1    12    1  |1 1>+       0.00000000 -0.00000001  0.00000001  0.47502474 -0.46959617 -0.00000028  0.00000001  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00042863  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00035844  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00027575  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00017488  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00036560 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002

 22  1     6    1  |1 0>        0.00000365  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00048551
                               -0.52389675 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000004 -0.00000042  0.64903080

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000001  0.57719761  0.03526511  0.00000002  0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000001  0.00000001  0.00000002  0.00000000  0.00000000  0.00000000  0.00000368 -0.00000000
                                0.00000007  0.00000002  0.66516596 -0.00000001 -0.00000001  0.00000001 -0.24407429 -0.00000016

 25  1     9    1  |1 0>       -0.00000000  0.00000001  0.00000001  0.00000000 -0.00000000  0.00603252 -0.00000000 -0.00000000
                               -0.00000001  0.81344862 -0.00000002  0.00000002 -0.00000008  0.13419993  0.00000000 -0.00000001

 26  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.01327814  0.72667983  0.00000043 -0.00000001 -0.00000001

 27  1    11    1  |1 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001000  0.00000001
                                0.00000003 -0.00000000 -0.12717118  0.00000000  0.00000001 -0.00000002  0.66300572  0.00000043

 28  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.03123633  0.00000000 -0.00000000
                                0.00000000  0.13764171 -0.00000001  0.00000000 -0.00000041  0.69488562  0.00000002 -0.00000005

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000025  0.00000000 -0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00030425 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00042863 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00019955 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00052846  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00052480  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 37  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.01922122 -0.00000000  0.00000000
                               -0.00000001  0.18743247 -0.00000000  0.00000000  0.00000025 -0.42759672 -0.00000001  0.00000003

 38  1     7    1  |1 1>-       0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000
                               -0.00000002  0.00000002  0.57762134 -0.00000001  0.00000001  0.00000000  0.01576957  0.00000001

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000001  0.39599822  0.23620443  0.00000014 -0.00000004 -0.00000000

 40  1     9    1  |1 1>-       0.00000228  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000897
                               -0.32671859 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000001  0.01199050

 41  1    10    1  |1 1>-       0.00000001  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000842  0.00000001
                               -0.00000007  0.00000002  0.45431590 -0.00000001  0.00000001 -0.00000002  0.55784752  0.00000036

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.42014206 -0.40981243 -0.00000024  0.00000000  0.00000000

 43  1    12    1  |1 1>-      -0.00000067 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00038489
                                0.09936347  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000034  0.51452173

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000018  0.00000000

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000008 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00098113  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002611 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001267
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00002735
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.00000001  0.00000003  0.00000000 -0.48904171 -0.00000003  0.00000000 -0.00000000 -0.00000004
                               -0.00000000 -0.00000000 -0.00000000 -0.00004245 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000000  0.00000001 -0.00000002 -0.00000005  0.65917842  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001 -0.00058314  0.00000000  0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.67375892 -0.00000002  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000015 -0.00000000
                               -0.00913602  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.00000002  0.70197004  0.07798999  0.00000002 -0.00000001  0.00000019  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.00000002  0.00000000 -0.00000001 -0.00000001  0.19051855  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00016854 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.13340026 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00180888  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000 -0.15046981 -0.48120582  0.00000000 -0.00000001 -0.00000011  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000003
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000 -0.00000019 -0.00000001 -0.00000000  0.00000000  0.57735596 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000026 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.70710779 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00008194 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002611

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002998  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000272  0.00000000

 22  1     6    1  |1 0>        0.00116077 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.08560389  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.08751312  0.64787952  0.00000001  0.00000002 -0.00000006 -0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00003814  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000002  0.00000000 -0.43942357 -0.00000003  0.00000000  0.00000000  0.00000003

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00042684  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000001  0.00000002  0.00000004 -0.48249396 -0.00000000  0.00000000  0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.19881282 -0.06133934 -0.00000001 -0.00000000  0.00000029  0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00002654  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000003  0.00000000 -0.30573086 -0.00000003 -0.00000000 -0.00000000 -0.00000014

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00019983  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000001 -0.00000001 -0.00000002  0.22588495  0.00000000  0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000002  0.00000005  0.00000000 -0.00000000 -0.57733688  0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000003

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00000000  0.70712470

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00002611

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00002612 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00043820 -0.00000000 -0.00000000  0.00000000
                               -0.00000002  0.00000001 -0.00000001 -0.00000004  0.49533955 -0.00000000  0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00005638 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000002 -0.00000001  0.64956032  0.00000005  0.00000000 -0.00000000  0.00000016

 39  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.65024754  0.16002119 -0.00000002  0.00000001 -0.00000009  0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00967745 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.71368831 -0.00000002  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000025  0.00000000

 41  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00001986  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000002  0.00000000 -0.22879066 -0.00000002 -0.00000000  0.00000000 -0.00000019

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.12078893  0.55967968  0.00000001  0.00000002 -0.00000014  0.00000000  0.00000000

 43  1    12    1  |1 1>-       0.00144718 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.10672592 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000

 44  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.70708886

 45  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00008194 -0.00000000
                               -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.70710576  0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000027  0.00000020 -0.00000000  0.00000000  0.57735713 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00002611 -0.00000000  0.00000000  0.00000000  0.00002610  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00002611  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00004735  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00002721  0.00000000  0.00000000  0.00000000 -0.00004457
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00002192 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000010  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000000  0.00000030 -0.00000000 -0.00000000  0.00000000  0.00000015
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000034
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.70708988 -0.00000000  0.00000000  0.00000001  0.70712368  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.69691854  0.00000001 -0.00000000 -0.00000000  0.42539901
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000001  0.70705295 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00864199  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00005219  0.00000000  0.00000000 -0.00000000  0.00000128

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00002611  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000470  0.00000000  0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002611 -0.00000000  0.00000000  0.00000000  0.00002611  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000064 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00005198 -0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000028  0.00000000  0.00000000  0.00000000 -0.00000004

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000024

 27  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000021 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01995616 -0.00000000 -0.00000000 -0.00000000  0.81626194

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                                0.70712368  0.00000000 -0.00000000 -0.00000001 -0.70708987 -0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000003 -0.00000000 -0.00000000 -0.70708886  0.00000001 -0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00002610  0.00000000  0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00002500  0.00000000 -0.00000000 -0.00000000  0.00004584

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001738 -0.00000000  0.00000000  0.00000000  0.00004265  0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00002611 -0.00000000 -0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002464 -0.00000000  0.00000000  0.00000000  0.00003006  0.00000000

 37  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000014  0.00000000  0.00000000  0.00000000  0.00000010  0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000018  0.00000000 -0.00000000  0.00000000 -0.00000014

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000000

 41  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000018

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000000  0.70712470 -0.00000001  0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00864202 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.70705499 -0.00000000 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.71687258 -0.00000001 -0.00000000  0.00000000  0.39083516



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    7.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   19.61%    0.00%   47.05%    0.00%
  6  1     5    1  |1 1>+         0.00%   32.95%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.50%    0.00%    0.16%    0.00%
 18  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%   39.67%    0.00%    0.54%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.32%    0.00%   66.13%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   13.88%    0.00%   52.78%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%   13.27%    0.00%    0.00%    0.00%    0.00%   44.55%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%   26.73%    0.00%    0.00%    0.00%    0.00%   22.12%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   52.61%    0.00%    0.00%    0.00%    0.00%    0.72%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.95%    0.00%    0.00%   16.38%
  4  1     3    1  |1 1>+        54.91%    0.00%    0.74%    0.00%    0.00%   37.30%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+        11.76%    0.00%   48.31%    0.00%    0.00%    6.99%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>         16.67%    0.00%    0.07%    0.00%    0.00%   53.26%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   59.78%
 20  1     4    1  |1 0>          0.00%    0.98%    0.00%    0.00%    0.00%    0.00%   52.35%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.47%    0.00%    0.00%    0.08%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-        16.67%    0.00%   50.88%    0.00%    0.00%    2.45%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.06%    0.00%    0.00%    0.00%    0.00%   42.12%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   29.58%    0.00%    0.00%   23.76%
 36  1     5    1  |1 1>-         0.00%   46.34%    0.00%    0.00%    0.00%    0.00%    4.81%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%   33.20%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   24.65%    0.00%    9.15%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%   37.18%    0.00%    0.00%    0.00%    0.00%    3.66%    0.00%
 10  1     9    1  |1 1>+         0.39%    0.00%   36.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%   13.44%    0.00%   45.76%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.92%    0.00%    0.00%    0.00%    0.00%   18.78%    0.00%
 13  1    12    1  |1 1>+        25.93%    0.00%    4.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    5.89%    0.00%
 23  1     7    1  |1 0>          0.35%    0.00%   23.47%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%   30.13%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.11%    0.00%    8.63%    0.00%    0.00%
 26  1    10    1  |1 0>         42.07%    0.00%    0.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   37.74%    0.00%    0.00%    7.34%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%   37.98%    0.00%    6.64%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%   23.81%    0.00%   29.82%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.96%    0.00%    0.00%    1.46%
 39  1     8    1  |1 1>-         0.13%    0.00%   33.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%   34.61%    0.00%    0.00%    0.00%    0.00%    3.75%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   15.14%    0.00%    0.00%   27.87%
 42  1    11    1  |1 1>-        31.12%    0.00%    1.65%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    3.48%    0.00%    0.00%    0.00%    0.00%   67.92%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.13%    0.00%    0.00%    0.00%   18.94%    0.00%
  8  1     7    1  |1 1>+         0.00%   22.71%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  9  1     8    1  |1 1>+         6.28%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.48%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%   10.77%    2.64%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    5.72%    0.00%    0.00%    0.00%   31.45%    0.00%    0.00%
 12  1    11    1  |1 1>+        54.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.91%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%   22.56%   22.05%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         27.45%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.12%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%   33.32%    0.12%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   44.24%    0.00%    0.00%    0.00%    5.96%    0.00%
 25  1     9    1  |1 0>          0.00%   66.17%    0.00%    0.00%    0.00%    1.80%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.02%   52.81%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    1.62%    0.00%    0.00%    0.00%   43.96%    0.00%
 28  1    12    1  |1 0>          0.00%    1.89%    0.00%    0.00%    0.00%   48.38%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    3.51%    0.00%    0.00%    0.00%   18.32%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%   33.36%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   15.68%    5.58%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-        10.67%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 41  1    10    1  |1 1>-         0.00%    0.00%   20.64%    0.00%    0.00%    0.00%   31.12%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%   17.65%   16.79%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.47%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   23.92%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   43.45%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+        45.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%   49.28%    0.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.63%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         1.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    2.26%   23.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.73%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.77%   41.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   19.31%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.28%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    3.95%    0.38%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    9.35%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.10%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   24.54%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%   42.19%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%   42.28%    2.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-        50.94%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    5.23%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    1.46%   31.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 15  1    14    1  |1 1>+         0.00%   48.57%    0.00%    0.00%    0.00%   18.10%
 16  1    15    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.04%    0.00%    0.00%    0.00%   66.63%
 30  1    14    1  |1 0>         50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%   51.39%    0.00%    0.00%    0.00%   15.28%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)  1101     1401     1411     1650(1)  1700(2)
                                         OPER      SR      EKINR    POTR    MOLCAS    OPER   

              2       7       67.64       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       183.61    150.37      0.21     30.29      0.92      0.99      0.02      0.52
 REAL TIME  *       202.20 SEC
 DISK USED  *        99.68 MB (local),        1.63 GB (total)
 SF USED    *       673.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -25.235217113476

              CI              CI           MULTI         RHF-SCF
    -25.21326905    -25.32996126    -25.00495706    -25.09500683
 **********************************************************************************************************************************
 Molpro calculation terminated
