
 Working directory              : /wrk/irikura/molpro.Dz9y49SDAY/
 Global scratch directory       : /wrk/irikura/molpro.Dz9y49SDAY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Dz9y49SDAY/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! start with fewer terms
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Prep energies and &lt;L**2&gt; values
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,12;
     wf,sym=1,spin=2;state,16;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,12; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,16; save,5103.2}
 hlsdiag(13) = energd4
 
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
  64 bit mpp version                                                                     DATE: 22-Mar-24          TIME: 10:02:27  
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

     13.894 MB (compressed) written to integral file ( 20.3%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     233060.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     233060      RECORD LENGTH: 524288

 Memory used in sort:       0.79 MW

 SORT1 READ     8662933. AND WROTE       47927. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     64 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      232328.  Node maximum:      235903. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.70      0.50
 REAL TIME  *         1.27 SEC
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
  RHF One-electron energy             -41.272176595184
  RHF Two-electron energy              16.177169766143
  RHF Kinetic energy                    6.695468947860
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
 CPU TIMES  *         0.72      0.02      0.50
 REAL TIME  *         1.30 SEC
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.139D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.141D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.313D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 2 4   6 3 5 1 4 6 3 5 2 1   4 6 5 3 2 1 6 4 3 5   2 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.764D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 4 5 6 7 9 810 3   1 2 6 4 5 7 9 810 5   4 6 7 9 810 3 2 1 4
                                        5 6 810 9 7 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    749
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5    -24.90463693     -25.04335263   -0.13871569    0.05826643 0.00033734 0.00000000  0.20E+01      0.27
   2    7   12    0    -25.01772332     -25.02465715   -0.00693383    0.07756821 0.00000852 0.00000000  0.44E+00      0.50
   3    7   12    0    -25.02470725     -25.02471074   -0.00000349    0.00134094 0.00000176 0.00000000  0.82E-02      0.73
   4    6   12    0    -25.02471074     -25.02471074   -0.00000000    0.00000216 0.00000000 0.00000000  0.30E-04      0.92

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.48E-08)
                       Final energy:    -25.02471074
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101318036212
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61943861
 One electron energy                           -41.24994525
 Two electron energy                            16.14862721
 Virial ratio                                    4.79206146
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061262058702
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546597
 One electron energy                           -41.50964143
 Two electron energy                            16.44837937
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061262058650
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546596
 One electron energy                           -41.50964143
 Two electron energy                            16.44837937
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061262058217
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061262057990
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964138
 Two electron energy                            16.44837933
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061262057458
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546593
 One electron energy                           -41.50964135
 Two electron energy                            16.44837929
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004957062177
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065707
 One electron energy                           -41.91308927
 Two electron energy                            16.90813221
 Virial ratio                                    4.54647188
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004957062159
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065708
 One electron energy                           -41.91308929
 Two electron energy                            16.90813223
 Virial ratio                                    4.54647188
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004957062090
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.90813229
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004957062086
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.90813229
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004957062071
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065711
 One electron energy                           -41.91308937
 Two electron energy                            16.90813231
 Virial ratio                                    4.54647186
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004957062070
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065711
 One electron energy                           -41.91308937
 Two electron energy                            16.90813231
 Virial ratio                                    4.54647186
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004957062033
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065712
 One electron energy                           -41.91308939
 Two electron energy                            16.90813233
 Virial ratio                                    4.54647186
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984348024896
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984348024885
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.984348024883
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.029140438359
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.970859570718
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.153075098083
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999999996
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     8.751370892012
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.420044123015
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.248636976598
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     3.579968625096
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     5.846926871741
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999999999995
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.000000000002
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     4.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.971139919639
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.028860071458
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.848471885491
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000010
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.858998769053
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     8.164640619891
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.141010541145
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.835384813229
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     6.151526183957
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999719642002
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000280357824
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.998453016426
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999999994
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     2.389630338935
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.415315257094
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     7.610352482256
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     6.584646561675
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.001546944302
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.000000000005
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999999998
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 5 6 4 3 1 1 5   6 4 3 2 5 6 4 3 2 1   5 3 6 4 2 1 3 5 6 4   2 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 7 910 5 8 6 4 2   1 3 9 710 5 6 8 4 7   9 810 5 4 6 2 1 3 7
                                        9 810 5 4 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52901     1  1  s    0.98124
    2.1     0.43189    -0.01823     1  2  s    1.01366
    3.1     0.31353     0.06705     1  1  d0   0.92895
    4.1     0.31353     0.06705     1  1  d2+  0.92895
    5.1     0.31353     0.06705     1  1  d1-  0.92895
    6.1     0.31353     0.06705     1  1  d1+  0.92895
    7.1     0.31353     0.06705     1  1  d2-  0.92895
    8.1     0.00045     0.20296     1  2  s    1.47324    1  3  s    3.36210    1  4  s   -3.74322    1  5  s   -0.52773
                                    1  6  s   -0.36182    1  7  s    0.28600
    1.2     2.00000    -0.83305     1  1  py   0.97936
    2.2     2.00000    -0.83305     1  1  px   0.97936
    3.2     2.00000    -0.83305     1  1  pz   0.97936
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97690632
 0200000       -0.09090651
 0000020       -0.09090651
 0020000       -0.09090651
 0000200       -0.09090651
 0002000       -0.09090651
 
 Energy:      -25.10131804
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 0aa0000        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000054      1.00000000
 a0000a0        0.00000000     -0.00000000      0.00000013      0.99991821     -0.00000000     -0.00000000      0.00000000
 a000a00        0.00000015      0.99991821      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a00a000        0.99991821     -0.00000015     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 aa00000       -0.00000000      0.00000000      0.00837126      0.00000000      0.99988317     -0.00000000     -0.00000000
 a0a0000        0.00000000     -0.00000000      0.99988317     -0.00000013     -0.00837126      0.00000000     -0.00000000
 0a000a0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.99980661      0.00000058
 00a00a0       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00879484     -0.00000076
 000aa00        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.01758968     -0.00000153
 00aa000        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000020     -0.00000006
 00a0a00       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000076
 0000aa0        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000032     -0.00000002
 000a0a0        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000079
 0a0a000       -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000007      0.00000004
 0a00a00       -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000002
 
 Energy:      -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.00495706    -25.00495706

 State:              8               9              10              11              12              13              14
 0aa0000        0.00000048      0.00000004      0.00000098      0.00000006      0.00000172      0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000a00       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 aa00000       -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000       -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0a000a0        0.00000000      0.00000030      0.00000000     -0.00000039     -0.01966586     -0.00000000      0.00000000
 00a00a0       -0.00000000     -0.00000022     -0.00000000      0.00000335      0.44712712      0.89442719     -0.00000199
 000aa00       -0.00000000     -0.00000045     -0.00000000      0.00000669      0.89425421     -0.44721360      0.00000100
 00aa000       -0.00000000      0.06909839     -0.00000000      0.89175412     -0.00000664      0.00000100      0.44721360
 00a0a00       -0.20317793     -0.00000000      0.87104462     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000aa0       -0.00000000      0.84616262      0.00000000     -0.28984276      0.00000260      0.00000100      0.44721360
 000a0a0        0.79259084     -0.00000000      0.41448734     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0a0a000        0.00000000     -0.52842619     -0.00000000     -0.34751369      0.00000233      0.00000172      0.77459667
 0a00a00       -0.57490737     -0.00000000      0.26359347     -0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:      -25.00495706    -25.00495706    -25.00495706    -25.00495706    -25.00495706    -24.98434802    -24.98434802

 State:             15
 0aa0000        0.00000000
 a0000a0       -0.00000000
 a000a00        0.00000000
 a00a000        0.00000000
 aa00000        0.00000000
 a0a0000        0.00000000
 0a000a0        0.00000000
 00a00a0       -0.00000000
 000aa00        0.00000000
 00aa000        0.00000000
 00a0a00       -0.44721360
 0000aa0        0.00000000
 000a0a0        0.44721360
 0a0a000        0.00000000
 0a00a00        0.77459667
 
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
 CPU TIMES  *         1.58      0.85      0.02      0.50
 REAL TIME  *         2.42 SEC
 DISK USED  *        32.56 MB (local),      591.26 MB (total)
 SF USED    *         9.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Prep energies and &lt;L**2&gt; values

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
                                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      76 (   30   46)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 5 6 4 3 1 1 5   6 4 3 2 5 6 4 3 2 1   5 3 6 4 2 1 3 5 6 4   2 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 7 910 5 8 6 4 2   1 3 9 710 5 6 8 4 7   9 810 5 4 6 2 1 3 7
                                        9 810 5 4 6 2 1 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    1309
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   18    1    -25.01468573     -25.01760232   -0.00291659    0.00488824 0.00000115 0.00000000  0.71E+00      0.23
   2    7   12    0    -25.01766695     -25.01767590   -0.00000895    0.00216755 0.00000099 0.00000000  0.12E-01      0.47
   3    6   12    0    -25.01767591     -25.01767591   -0.00000000    0.00000283 0.00000001 0.00000000  0.52E-04      0.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.23E-08)
                       Final energy:    -25.01767591
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.100688875123
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61622779
 One electron energy                           -41.22767099
 Two electron energy                            16.12698211
 Virial ratio                                    4.79380663
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.044249490939
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518442
 Two electron energy                            16.55093493
 Virial ratio                                    4.64772336
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.044249490727
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518441
 Two electron energy                            16.55093492
 Virial ratio                                    4.64772337
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.044249490626
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518441
 Two electron energy                            16.55093492
 Virial ratio                                    4.64772337
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.044249490591
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518441
 Two electron energy                            16.55093492
 Virial ratio                                    4.64772337
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.044249490303
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572060
 One electron energy                           -41.59518439
 Two electron energy                            16.55093490
 Virial ratio                                    4.64772337
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.988828111142
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.55673557
 One electron energy                           -40.30113709
 Two electron energy                            15.31230898
 Virial ratio                                    4.81116911
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.978837858717
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489417
 One electron energy                           -41.62606355
 Two electron energy                            16.64722569
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.978837858540
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489417
 One electron energy                           -41.62606355
 Two electron energy                            16.64722569
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.978837858388
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489417
 One electron energy                           -41.62606356
 Two electron energy                            16.64722570
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.978837858377
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489417
 One electron energy                           -41.62606356
 Two electron energy                            16.64722571
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.978837858118
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489417
 One electron energy                           -41.62606357
 Two electron energy                            16.64722571
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061599896887
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977148
 One electron energy                           -41.55263839
 Two electron energy                            16.49103850
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061599896716
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977147
 One electron energy                           -41.55263838
 Two electron energy                            16.49103848
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061599896647
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977147
 One electron energy                           -41.55263837
 Two electron energy                            16.49103848
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061599896613
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977147
 One electron energy                           -41.55263837
 Two electron energy                            16.49103847
 Virial ratio                                    4.66946391
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061599896377
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977146
 One electron energy                           -41.55263835
 Two electron energy                            16.49103846
 Virial ratio                                    4.66946391
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004688293578
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957867
 One electron energy                           -41.96789408
 Two electron energy                            16.96320578
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004688293555
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957867
 One electron energy                           -41.96789408
 Two electron energy                            16.96320579
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004688293503
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789410
 Two electron energy                            16.96320580
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004688293480
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789410
 Two electron energy                            16.96320581
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004688293470
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789410
 Two electron energy                            16.96320581
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004688293450
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789411
 Two electron energy                            16.96320582
 Virial ratio                                    4.53194582
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004688293406
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789412
 Two electron energy                            16.96320583
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.997852665868
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.50380732
 One electron energy                           -40.13908602
 Two electron energy                            15.14123336
 Virial ratio                                    4.84357214
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.983767194461
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957867
 One electron energy                           -41.96789409
 Two electron energy                            16.98412689
 Virial ratio                                    4.52899069
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.983767194348
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789409
 Two electron energy                            16.98412690
 Virial ratio                                    4.52899068
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.983767194124
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789411
 Two electron energy                            16.98412692
 Virial ratio                                    4.52899068
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.366727434347
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.633273067559
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     4.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.999744395524
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.999999999999
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.000255691957
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.850106285468
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.149893706649
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.684470312463
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.002832706966
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     5.547713682385
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     4.452257814677
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     6.315531946281
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.997167294578
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.581168643090
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.418830699107
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     4.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.027818313687
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000000002
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     2.972176905963
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     4.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.142744509245
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.857255497901
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999999
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.993207549804
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     5.792524155990
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     6.439002278486
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     3.561024569050
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     4.000000000002
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.006792548696
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.207475787106
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.052103922564
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.947896233334
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.972437290790
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     4.000000000000
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.027567402080
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.007149205287
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.992850795450
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000001
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     4.322322137733
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     6.204643137043
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.013284039129
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.986717616273
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999999999998
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     5.677675505023
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.795356918316
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
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
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 4 5 2 3 6 1 6 2   5 3 4 1 6 2 5 3 4 1   6 2 5 3 4 1 6 2 3 5   4 6 3 5 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 5 6 410 8 7 9 2   3 1 5 610 8 4 9 7 5   6 810 7 9 4 2 3 1 5
                                        6 810 7 9 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.54469     1  1  s    0.98304
    2.1     0.48974    -0.03307     1  2  s    0.98163
    3.1     0.28353     0.06045     1  1  d1+  0.94190
    4.1     0.28353     0.06045     1  1  d2+  0.94190
    5.1     0.28353     0.06045     1  1  d0   0.94190
    6.1     0.28353     0.06045     1  1  d2-  0.94190
    7.1     0.28353     0.06045     1  1  d1-  0.94190
    8.1     0.09260     0.03995     1  2  s    0.77491    1  4  s    0.26175    1  8  s   -1.49561
    1.2     2.00000    -0.84787     1  1  py   0.98112
    2.2     2.00000    -0.84787     1  1  pz   0.98112
    3.2     2.00000    -0.84787     1  1  px   0.98112
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2000000        0.97005241     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.16198757
 b00000a       -0.09315476      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.65506408
 a00000b        0.09315476     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.65506408
 b0000a0       -0.00000000     -0.64238724     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a0000b0        0.00000000      0.64238724      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 b000a00        0.00000000      0.00000000      0.00000004      0.00000005     -0.64238724     -0.00000001      0.00000000
 a000b00       -0.00000000     -0.00000000     -0.00000004     -0.00000005      0.64238724      0.00000001     -0.00000000
 ab00000        0.00000000     -0.00000000     -0.00000020     -0.00000033     -0.00000001      0.64238724      0.00000000
 ba00000       -0.00000000      0.00000000      0.00000020      0.00000033      0.00000001     -0.64238724     -0.00000000
 b00a000        0.00000000      0.00000000     -0.63818967      0.07331657     -0.00000004     -0.00000017      0.00000000
 a00b000       -0.00000000     -0.00000000      0.63818967     -0.07331657      0.00000004      0.00000017     -0.00000000
 a0b0000        0.00000000      0.00000000      0.07331657      0.63818967      0.00000006      0.00000035      0.00000000
 b0a0000       -0.00000000     -0.00000000     -0.07331657     -0.63818967     -0.00000006     -0.00000035     -0.00000000
 000ba00        0.00000000     -0.00000000      0.00000001      0.00000002     -0.22332225     -0.00000001      0.00000000
 000ab00       -0.00000000      0.00000000     -0.00000001     -0.00000002      0.22332225      0.00000001     -0.00000000
 0000020       -0.09101892      0.00000000     -0.08885816      0.20488302      0.00000001      0.00000008     -0.08624192
 0000200       -0.09101892     -0.00000000      0.22186298     -0.02548808      0.00000001      0.00000006     -0.08624192
 00ab000        0.00000000      0.00000000      0.02548808      0.22186298      0.00000002      0.00000012      0.00000000
 00ba000       -0.00000000     -0.00000000     -0.02548808     -0.22186298     -0.00000002     -0.00000012     -0.00000000
 0020000       -0.09101892     -0.00000000      0.22186298     -0.02548808      0.00000001      0.00000006     -0.08624192
 0002000       -0.09101892      0.00000000     -0.22186298      0.02548809     -0.00000001     -0.00000006     -0.08624192
 0b00a00       -0.00000000      0.19340274      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0a00b00        0.00000000     -0.19340274     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0ba0000       -0.00000000      0.00000000     -0.00000006     -0.00000010     -0.00000000      0.19340274      0.00000000
 0ab0000        0.00000000     -0.00000000      0.00000006      0.00000010      0.00000000     -0.19340274     -0.00000000
 0b000a0       -0.00000000     -0.00000000     -0.00000001     -0.00000002      0.19340274      0.00000000     -0.00000000
 0a000b0        0.00000000      0.00000000      0.00000001      0.00000002     -0.19340274     -0.00000000      0.00000000
 00a00b0       -0.00000000      0.19340274      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 00b00a0        0.00000000     -0.19340274     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0000ba0        0.00000000      0.00000000     -0.00000006     -0.00000010     -0.00000000      0.19340274     -0.00000000
 0000ab0       -0.00000000     -0.00000000      0.00000006      0.00000010      0.00000000     -0.19340274      0.00000000
 0200000       -0.09101892      0.00000000     -0.13300482     -0.17939494     -0.00000002     -0.00000013     -0.08624191
 0000002       -0.01484891      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.27991744
 00000ba       -0.00000000     -0.00782204     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00000ab        0.00000000      0.00782204      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000a0b       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00782205      0.00000000     -0.00000000
 0000b0a        0.00000000      0.00000000      0.00000000      0.00000000     -0.00782205     -0.00000000      0.00000000
 0a0000b       -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00782205     -0.00000000
 0b0000a        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00782205      0.00000000
 0a0b000        0.00000000      0.00000000      0.00000004      0.00000006      0.00000000     -0.11166112      0.00000000
 0b0a000       -0.00000000     -0.00000000     -0.00000004     -0.00000006     -0.00000000      0.11166112     -0.00000000
 000a0b0        0.00000000     -0.11166112     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 000b0a0       -0.00000000      0.11166112      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 000b00a       -0.00000000      0.00000000     -0.00777094      0.00089274     -0.00000000     -0.00000000     -0.00000000
 000a00b        0.00000000     -0.00000000      0.00777094     -0.00089274      0.00000000      0.00000000      0.00000000
 00b000a        0.00000000      0.00000000     -0.00089274     -0.00777094     -0.00000000     -0.00000000      0.00000000
 00a000b       -0.00000000     -0.00000000      0.00089274      0.00777094      0.00000000      0.00000000     -0.00000000
 
 Energy:      -25.10068888    -25.04424949    -25.04424949    -25.04424949    -25.04424949    -25.04424949    -24.98882811

 State:              8               9              10              11              12
 2000000        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 b00000a        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a00000b       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 b0000a0       -0.28124017     -0.00000000      0.00000000     -0.00000001     -0.00000000
 a0000b0        0.28124017      0.00000000     -0.00000000      0.00000001      0.00000000
 b000a00       -0.00000000      0.00000018      0.28124017      0.00000036      0.00000005
 a000b00        0.00000000     -0.00000018     -0.28124017     -0.00000036     -0.00000005
 ab00000        0.00000000     -0.00000002     -0.00000005      0.00000000      0.28124018
 ba00000       -0.00000000      0.00000002      0.00000005     -0.00000000     -0.28124018
 b00a000        0.00000000      0.24467744      0.00000002     -0.13866861      0.00000002
 a00b000       -0.00000000     -0.24467744     -0.00000002      0.13866861     -0.00000002
 a0b0000        0.00000000     -0.13866861      0.00000040     -0.24467744     -0.00000001
 b0a0000       -0.00000000      0.13866861     -0.00000040      0.24467744      0.00000001
 000ba00        0.00000000     -0.00000029     -0.45760898     -0.00000059     -0.00000009
 000ab00       -0.00000000      0.00000029      0.45760898      0.00000059      0.00000009
 0000020       -0.00000001     -0.00365804     -0.00000059      0.45759430     -0.00000000
 0000200        0.00000000      0.39811739      0.00000004     -0.22562922      0.00000003
 00ab000       -0.00000001      0.22562918     -0.00000065      0.39811738      0.00000001
 00ba000        0.00000001     -0.22562918      0.00000065     -0.39811738     -0.00000001
 0020000        0.00000000      0.39811737      0.00000004     -0.22562921      0.00000003
 0002000       -0.00000000     -0.39811729     -0.00000004      0.22562930     -0.00000003
 0b00a00       -0.39630111     -0.00000000      0.00000000     -0.00000001     -0.00000000
 0a00b00        0.39630111      0.00000000     -0.00000000      0.00000001      0.00000000
 0ba0000        0.00000000      0.00000003      0.00000008     -0.00000000     -0.39630108
 0ab0000       -0.00000000     -0.00000003     -0.00000008      0.00000000      0.39630108
 0b000a0       -0.00000000      0.00000025      0.39630102      0.00000051      0.00000008
 0a000b0        0.00000000     -0.00000025     -0.39630102     -0.00000051     -0.00000008
 00a00b0       -0.39630094     -0.00000000     -0.00000000     -0.00000001      0.00000000
 00b00a0        0.39630094      0.00000000      0.00000000      0.00000001     -0.00000000
 0000ba0        0.00000000      0.00000003      0.00000008     -0.00000000     -0.39630093
 0000ab0       -0.00000000     -0.00000003     -0.00000008      0.00000000      0.39630093
 0200000        0.00000001     -0.39445944      0.00000055     -0.23196519     -0.00000003
 0000002       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 00000ba        0.23333129      0.00000000     -0.00000000      0.00000000      0.00000000
 00000ab       -0.23333129     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0000a0b        0.00000000      0.00000015      0.23333128      0.00000030      0.00000004
 0000b0a       -0.00000000     -0.00000015     -0.23333128     -0.00000030     -0.00000004
 0a0000b       -0.00000000      0.00000002      0.00000004     -0.00000000     -0.23333127
 0b0000a        0.00000000     -0.00000002     -0.00000004      0.00000000      0.23333127
 0a0b000       -0.00000000     -0.00000002     -0.00000004      0.00000000      0.22880452
 0b0a000        0.00000000      0.00000002      0.00000004     -0.00000000     -0.22880452
 000a0b0        0.22880444      0.00000000     -0.00000000      0.00000000      0.00000000
 000b0a0       -0.22880444     -0.00000000      0.00000000     -0.00000000     -0.00000000
 000b00a       -0.00000000     -0.20299697     -0.00000002      0.11504660     -0.00000002
 000a00b        0.00000000      0.20299697      0.00000002     -0.11504660      0.00000002
 00b000a        0.00000000     -0.11504659      0.00000033     -0.20299696     -0.00000001
 00a000b       -0.00000000      0.11504659     -0.00000033      0.20299696      0.00000001
 
 Energy:      -24.97883786    -24.97883786    -24.97883786    -24.97883786    -24.97883786
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a00000a        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 00aa000        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000010     -0.00000000
 a0000a0        0.99849825     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a000a00        0.00000000      0.00000059      0.00000173      0.99849825     -0.00000004     -0.00000000      0.00000000
 aa00000       -0.00000000     -0.00000019      0.00000012      0.00000004      0.99849825      0.00000000      0.00000000
 000aa00        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000077     -0.00000000
 a00a000        0.00000000      0.99760554      0.04221300     -0.00000066      0.00000018      0.00000000     -0.00000000
 a0a0000        0.00000000     -0.04221300      0.99760554     -0.00000170     -0.00000012     -0.00000000     -0.00000000
 00a0a00        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000009      0.00000000
 0a00a00       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.89411043
 0000aa0        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.03685770      0.00000000
 0a000a0        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000017     -0.00000000
 0aa0000        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.87450421      0.00000000
 00a00a0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.24657392
 000a0a0       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.37385537
 0a0a000       -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.48361544      0.00000000
 0a0000a        0.00000000      0.00000001     -0.00000001     -0.00000000     -0.05478362     -0.00000000     -0.00000000
 0000a0a       -0.00000000     -0.00000003     -0.00000009     -0.05478361      0.00000000      0.00000000     -0.00000000
 00000aa       -0.05478361      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 00a000a       -0.00000000      0.00231606     -0.05473463      0.00000009      0.00000001     -0.00000000     -0.00000000
 000a00a       -0.00000000     -0.05473463     -0.00231606      0.00000004     -0.00000001      0.00000000     -0.00000000
 
 Energy:      -25.06159990    -25.06159990    -25.06159990    -25.06159990    -25.06159990    -25.00468829    -25.00468829

 State:              8               9              10              11              12              13              14
 a00000a        0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      1.00000000     -0.00000000
 00aa000       -0.00000090     -0.00000653      1.00000000      0.00000097      0.00000024      0.00000000      0.00000000
 a0000a0       -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a000a00        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 000aa00        0.05762820      0.99833811      0.00000657     -0.00000049     -0.00000008     -0.00000000     -0.00000000
 a00a000        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0a0000        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 00a0a00       -0.44647038      0.02577212     -0.00000023     -0.00000066     -0.00000000      0.00000000      0.00000038
 0a00a00        0.00000000      0.00000000     -0.00000000     -0.00000000      0.02380213      0.00000000      0.00000000
 0000aa0       -0.00000130      0.00000054     -0.00000086      0.89366745      0.00000000      0.00000000      0.44721360
 0a000a0        0.89294076     -0.05154423      0.00000047      0.00000133      0.00000000     -0.00000000      0.00000019
 0aa0000       -0.00000040      0.00000079     -0.00000010      0.18772955     -0.00000000      0.00000000     -0.44721359
 00a00a0        0.00000000      0.00000007     -0.00000021     -0.00000000      0.85976817      0.00000000     -0.00000000
 000a0a0       -0.00000000     -0.00000004      0.00000012      0.00000000     -0.51012955     -0.00000000     -0.00000000
 0a0a000        0.00000052      0.00000015      0.00000044     -0.40757344     -0.00000000      0.00000000      0.77459667
 0a0000a       -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000a0a       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 00000aa        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 00a000a       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 000a00a       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:      -25.00468829    -25.00468829    -25.00468829    -25.00468829    -25.00468829    -24.99785267    -24.98376719

 State:             15              16
 a00000a       -0.00000000     -0.00000000
 00aa000       -0.00000000     -0.00000000
 a0000a0        0.00000000      0.00000000
 a000a00        0.00000000     -0.00000000
 aa00000       -0.00000000     -0.00000000
 000aa00        0.00000000      0.00000000
 a00a000        0.00000000      0.00000000
 a0a0000       -0.00000000     -0.00000000
 00a0a00        0.89442719      0.00000000
 0a00a00        0.00000000      0.44721359
 0000aa0       -0.00000019     -0.00000000
 0a000a0        0.44721360      0.00000000
 0aa0000        0.00000019      0.00000000
 00a00a0       -0.00000000      0.44721360
 000a0a0        0.00000000      0.77459667
 0a0a000       -0.00000033      0.00000000
 0a0000a       -0.00000000      0.00000000
 0000a0a       -0.00000000      0.00000000
 00000aa       -0.00000000     -0.00000000
 00a000a       -0.00000000     -0.00000000
 000a00a        0.00000000     -0.00000000
 
 Energy:      -24.98376719    -24.98376719
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       6        1.18       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.27      0.69      0.85      0.02      0.50
 REAL TIME  *         3.30 SEC
 DISK USED  *        33.11 MB (local),      600.09 MB (total)
 SF USED    *         9.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10068888   -0.0
    -25.04424949    6.0
    -25.04424949    6.0
    -25.04424949    6.0
    -25.04424949    6.0
    -25.04424949    6.0
    -24.98882811   -0.0
    -24.97883786    6.0
    -24.97883786    6.0
    -24.97883786    6.0
    -24.97883786    6.0
    -24.97883786    6.0
    -25.06159990    6.0
    -25.06159990    6.0
    -25.06159990    6.0
    -25.06159990    6.0
    -25.06159990    6.0
    -25.00468829   12.0
    -25.00468829   12.0
    -25.00468829   12.0
    -25.00468829   12.0
    -25.00468829   12.0
    -25.00468829   12.0
    -25.00468829   12.0
    -24.99785267   -0.0
    -24.98376719    2.0
    -24.98376719    2.0
    -24.98376719    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.10068888
     2       -25.04424949
     3       -25.04424949
     4       -25.04424949
     5       -25.04424949
     6       -25.04424949
     7       -24.98882811
     8       -24.97883786
     9       -24.97883786
    10       -24.97883786
    11       -24.97883786
    12       -24.97883786

 Number of blocks in overlap matrix:   225   Smallest eigenvalue:  0.51D+00
 Number of N-2 electron functions:     249
 Number of N-1 electron functions:    2205

 Number of internal configurations:                 2142
 Number of singly external configurations:         80934
 Number of doubly external configurations:        362762
 Total number of contracted configurations:       445838
 Total number of uncontracted configurations:    1488948

 Diagonal Coupling coefficients finished.               Storage: 1112277 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  365010 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.10068888    -0.00000000    -0.22823442  0.44D-01  0.60D-01     0.32
    1     2     2     1.00000000     0.00000000   -25.04424949    -0.00000000    -0.23324101  0.44D-01  0.65D-01     0.32
    1     3     3     1.00000000     0.00000000   -25.04424949     0.00000000    -0.23249141  0.44D-01  0.64D-01     0.32
    1     4     4     1.00000000     0.00000000   -25.04424949    -0.00000000    -0.23254951  0.44D-01  0.64D-01     0.32
    1     5     5     1.00000000     0.00000000   -25.04424949    -0.00000000    -0.23317850  0.44D-01  0.65D-01     0.32
    1     6     6     1.00000000     0.00000000   -25.04424949     0.00000000    -0.23293685  0.44D-01  0.65D-01     0.32
    1     7     7     1.00000000     0.00000000   -24.98882811    -0.00000000    -0.21389295  0.44D-01  0.53D-01     0.32
    1     8     8     1.00000000     0.00000000   -24.97883786    -0.00000000    -0.24266578  0.46D-01  0.84D-01     0.32
    1     9     9     1.00000000     0.00000000   -24.97883786    -0.00000000    -0.24182523  0.46D-01  0.83D-01     0.32
    1    10    10     1.00000000     0.00000000   -24.97883786    -0.00000000    -0.24265507  0.46D-01  0.84D-01     0.32
    1    11    11     1.00000000     0.00000000   -24.97883786     0.00000000    -0.24199429  0.46D-01  0.83D-01     0.32
    1    12    12     1.00000000     0.00000000   -24.97883786     0.00000000    -0.24266904  0.46D-01  0.84D-01     0.32
    2     1     1     1.08634199    -0.22253604   -25.32322492    -0.22253604    -0.00642977  0.19D-02  0.13D-02     3.28
    2     2     2     1.08963510    -0.22143540   -25.26568489    -0.22143540    -0.00591863  0.16D-02  0.13D-02     3.28
    2     3     3     1.08970664    -0.22141279   -25.26566229    -0.22141279    -0.00594886  0.17D-02  0.13D-02     3.28
    2     4     4     1.08974545    -0.22132804   -25.26557753    -0.22132804    -0.00605083  0.17D-02  0.13D-02     3.28
    2     5     5     1.08972333    -0.22129573   -25.26554522    -0.22129573    -0.00608134  0.17D-02  0.13D-02     3.28
    2     6     6     1.08969748    -0.22128234   -25.26553183    -0.22128234    -0.00609367  0.17D-02  0.13D-02     3.28
    2     7     7     1.09872555    -0.21480431   -25.20363242    -0.21480431    -0.00640953  0.17D-02  0.17D-02     3.28
    2     8     8     1.09873443    -0.22474329   -25.20358115    -0.22474329    -0.00647317  0.18D-02  0.17D-02     3.28
    2     9     9     1.09873315    -0.22464292   -25.20348078    -0.22464292    -0.00659405  0.19D-02  0.18D-02     3.28
    2    10    10     1.09876843    -0.22463405   -25.20347191    -0.22463405    -0.00660615  0.19D-02  0.18D-02     3.28
    2    11    11     1.09874089    -0.22463398   -25.20347184    -0.22463398    -0.00660546  0.19D-02  0.18D-02     3.28
    2    12    12     1.08469278    -0.22443832   -25.20327617    -0.22443832    -0.00568298  0.19D-02  0.14D-02     3.28
    3     1     1     1.08809738    -0.22911062   -25.32979950    -0.00657458    -0.00026460  0.62D-04  0.83D-04     5.85
    3     2     2     1.09172907    -0.22762090   -25.27187039    -0.00618550    -0.00021932  0.64D-04  0.65D-04     5.85
    3     3     3     1.09172137    -0.22761796   -25.27186746    -0.00620517    -0.00022292  0.65D-04  0.66D-04     5.85
    3     4     4     1.09168713    -0.22761106   -25.27186056    -0.00628303    -0.00022950  0.67D-04  0.68D-04     5.85
    3     5     5     1.09168391    -0.22761075   -25.27186024    -0.00631502    -0.00022973  0.67D-04  0.68D-04     5.85
    3     6     6     1.09169132    -0.22761055   -25.27186004    -0.00632821    -0.00023016  0.67D-04  0.69D-04     5.85
    3     7     7     1.09952795    -0.22144922   -25.21027733    -0.00664491    -0.00023886  0.43D-04  0.12D-03     5.85
    3     8     8     1.09954444    -0.23143524   -25.21027310    -0.00669195    -0.00024362  0.44D-04  0.12D-03     5.85
    3     9     9     1.09953914    -0.23143136   -25.21026922    -0.00678844    -0.00024808  0.45D-04  0.12D-03     5.85
    3    10    10     1.09953015    -0.23143119   -25.21026904    -0.00679714    -0.00024829  0.45D-04  0.12D-03     5.85
    3    11    11     1.09953375    -0.23143088   -25.21026874    -0.00679690    -0.00024842  0.45D-04  0.12D-03     5.85
    3    12    12     1.08418259    -0.23023668   -25.20907454    -0.00579837    -0.00022836  0.61D-04  0.70D-04     5.85
    4     1     1     1.09004020    -0.22939833   -25.33008721    -0.00028771    -0.00001974  0.85D-05  0.62D-05     8.33
    4     2     2     1.09380880    -0.22787418   -25.27212367    -0.00025328    -0.00002057  0.13D-04  0.51D-05     8.33
    4     3     3     1.09380289    -0.22787388   -25.27212337    -0.00025591    -0.00002087  0.13D-04  0.52D-05     8.33
    4     4     4     1.09378400    -0.22787311   -25.27212260    -0.00026205    -0.00002142  0.14D-04  0.53D-05     8.33
    4     5     5     1.09378285    -0.22787311   -25.27212260    -0.00026236    -0.00002140  0.14D-04  0.53D-05     8.33
    4     6     6     1.09378204    -0.22787302   -25.27212251    -0.00026247    -0.00002148  0.14D-04  0.53D-05     8.33
    4     7     7     1.10193925    -0.22173173   -25.21055984    -0.00028251    -0.00002576  0.82D-05  0.16D-04     8.33
    4     8     8     1.10192266    -0.23172168   -25.21055954    -0.00028644    -0.00002597  0.86D-05  0.16D-04     8.33
    4     9     9     1.10189360    -0.23172147   -25.21055932    -0.00029010    -0.00002604  0.87D-05  0.16D-04     8.33
    4    10    10     1.10189734    -0.23172146   -25.21055932    -0.00029027    -0.00002608  0.88D-05  0.16D-04     8.33
    4    11    11     1.10189603    -0.23172141   -25.21055927    -0.00029053    -0.00002610  0.88D-05  0.16D-04     8.33
    4    12    12     1.08562306    -0.23047784   -25.20931570    -0.00024115    -0.00001385  0.67D-05  0.49D-05     8.33
    5     1     1     1.09079414    -0.22942249   -25.33011136    -0.00002416    -0.00000196  0.71D-06  0.62D-06    10.77
    5     2     2     1.09480605    -0.22790205   -25.27215155    -0.00002787    -0.00000250  0.12D-05  0.60D-06    10.77
    5     3     3     1.09480072    -0.22790200   -25.27215149    -0.00002812    -0.00000254  0.12D-05  0.60D-06    10.77
    5     4     4     1.09479650    -0.22790189   -25.27215138    -0.00002878    -0.00000262  0.13D-05  0.61D-06    10.77
    5     5     5     1.09479660    -0.22790189   -25.27215138    -0.00002878    -0.00000262  0.13D-05  0.61D-06    10.77
    5     6     6     1.09479622    -0.22790188   -25.27215137    -0.00002886    -0.00000263  0.13D-05  0.61D-06    10.77
    5     7     7     1.10329612    -0.22176823   -25.21059634    -0.00003650    -0.00000400  0.74D-06  0.23D-05    10.77
    5     8     8     1.10329250    -0.23175844   -25.21059630    -0.00003676    -0.00000400  0.76D-06  0.23D-05    10.77
    5     9     9     1.10328769    -0.23175839   -25.21059625    -0.00003692    -0.00000402  0.76D-06  0.23D-05    10.77
    5    10    10     1.10328701    -0.23175838   -25.21059624    -0.00003692    -0.00000403  0.77D-06  0.23D-05    10.77
    5    11    11     1.10328817    -0.23175837   -25.21059623    -0.00003697    -0.00000403  0.76D-06  0.23D-05    10.77
    5    12    12     1.08607890    -0.23049517   -25.20933302    -0.00001733    -0.00000167  0.63D-06  0.89D-06    10.77
    6     1     1     1.09097822    -0.22942471   -25.33011359    -0.00000222    -0.00000017  0.38D-07  0.58D-07    13.19
    6     2     2     1.09500003    -0.22790519   -25.27215468    -0.00000313    -0.00000024  0.12D-06  0.49D-07    13.19
    6     3     3     1.09499985    -0.22790518   -25.27215467    -0.00000318    -0.00000024  0.12D-06  0.51D-07    13.19
    6     4     4     1.09499950    -0.22790516   -25.27215465    -0.00000327    -0.00000025  0.13D-06  0.53D-07    13.19
    6     5     5     1.09499943    -0.22790516   -25.27215465    -0.00000327    -0.00000026  0.13D-06  0.53D-07    13.19
    6     6     6     1.09499950    -0.22790516   -25.27215465    -0.00000328    -0.00000026  0.13D-06  0.53D-07    13.19
    6     7     7     1.10358232    -0.22177341   -25.21060152    -0.00000518    -0.00000053  0.16D-06  0.28D-06    13.19
    6     8     8     1.10358035    -0.23176365   -25.21060151    -0.00000521    -0.00000053  0.16D-06  0.29D-06    13.19
    6     9     9     1.10357923    -0.23176364   -25.21060150    -0.00000526    -0.00000054  0.17D-06  0.29D-06    13.19
    6    10    10     1.10357908    -0.23176364   -25.21060150    -0.00000527    -0.00000054  0.17D-06  0.29D-06    13.19
    6    11    11     1.10357926    -0.23176364   -25.21060150    -0.00000527    -0.00000054  0.17D-06  0.29D-06    13.19
    6    12    12     1.08621902    -0.23049752   -25.20933538    -0.00000236    -0.00000027  0.70D-07  0.13D-06    13.19
    7     1     1     1.09102124    -0.22942489   -25.33011376    -0.00000018    -0.00000001  0.60D-08  0.39D-08    15.61
    7     2     2     1.09503426    -0.22790546   -25.27215495    -0.00000027    -0.00000003  0.19D-07  0.55D-08    15.61
    7     3     3     1.09503390    -0.22790546   -25.27215495    -0.00000028    -0.00000003  0.20D-07  0.57D-08    15.61
    7     4     4     1.09503361    -0.22790546   -25.27215495    -0.00000029    -0.00000003  0.21D-07  0.61D-08    15.61
    7     5     5     1.09503368    -0.22790546   -25.27215495    -0.00000029    -0.00000003  0.21D-07  0.61D-08    15.61
    7     6     6     1.09503360    -0.22790546   -25.27215495    -0.00000029    -0.00000003  0.21D-07  0.61D-08    15.61
    7     7     7     1.10366137    -0.22177407   -25.21060218    -0.00000066    -0.00000009  0.23D-07  0.53D-07    15.61
    7     8     8     1.10366096    -0.23176432   -25.21060218    -0.00000067    -0.00000009  0.25D-07  0.53D-07    15.61
    7     9     9     1.10366107    -0.23176432   -25.21060218    -0.00000067    -0.00000009  0.25D-07  0.53D-07    15.61
    7    10    10     1.10366113    -0.23176432   -25.21060218    -0.00000067    -0.00000009  0.25D-07  0.53D-07    15.61
    7    11    11     1.10366109    -0.23176432   -25.21060218    -0.00000067    -0.00000009  0.25D-07  0.53D-07    15.61
    7    12    12     1.08624874    -0.23049786   -25.20933572    -0.00000034    -0.00000004  0.25D-07  0.14D-07    15.61
    8     1     1     1.09102285    -0.22942489   -25.33011377    -0.00000000    -0.00000001  0.64D-08  0.34D-08    17.86
    8     2     2     1.09505123    -0.22790549   -25.27215498    -0.00000003    -0.00000000  0.24D-08  0.82D-09    17.86
    8     3     3     1.09505099    -0.22790549   -25.27215498    -0.00000003    -0.00000000  0.26D-08  0.84D-09    17.86
    8     4     4     1.09505075    -0.22790549   -25.27215498    -0.00000004    -0.00000000  0.28D-08  0.88D-09    17.86
    8     5     5     1.09505079    -0.22790549   -25.27215498    -0.00000004    -0.00000000  0.28D-08  0.88D-09    17.86
    8     6     6     1.09505075    -0.22790549   -25.27215498    -0.00000004    -0.00000000  0.28D-08  0.88D-09    17.86
    8     7     7     1.10369632    -0.22177418   -25.21060229    -0.00000011    -0.00000002  0.47D-08  0.91D-08    17.86
    8     8     8     1.10369632    -0.23176443   -25.21060229    -0.00000011    -0.00000002  0.50D-08  0.91D-08    17.86
    8     9     9     1.10369643    -0.23176443   -25.21060229    -0.00000012    -0.00000002  0.53D-08  0.92D-08    17.86
    8    10    10     1.10369644    -0.23176443   -25.21060229    -0.00000012    -0.00000002  0.53D-08  0.91D-08    17.86
    8    11    11     1.10369640    -0.23176443   -25.21060229    -0.00000012    -0.00000002  0.53D-08  0.92D-08    17.86
    8    12    12     1.08625024    -0.23049791   -25.20933577    -0.00000005    -0.00000000  0.76D-09  0.11D-08    17.86
    9     1     1     1.09102285    -0.22942489   -25.33011377    -0.00000000    -0.00000001  0.64D-08  0.34D-08    19.06
    9     2     2     1.09505211    -0.22790549   -25.27215498    -0.00000000    -0.00000000  0.23D-08  0.76D-09    19.06
    9     3     3     1.09505172    -0.22790549   -25.27215498    -0.00000000    -0.00000000  0.26D-08  0.79D-09    19.06
    9     4     4     1.09505139    -0.22790549   -25.27215498    -0.00000000    -0.00000000  0.28D-08  0.84D-09    19.06
    9     5     5     1.09505140    -0.22790549   -25.27215498    -0.00000000    -0.00000000  0.28D-08  0.83D-09    19.06
    9     6     6     1.09505136    -0.22790549   -25.27215498    -0.00000000    -0.00000000  0.28D-08  0.83D-09    19.06
    9     7     7     1.10372193    -0.22177420   -25.21060231    -0.00000002    -0.00000000  0.27D-09  0.56D-09    19.06
    9     8     8     1.10372233    -0.23176446   -25.21060231    -0.00000002    -0.00000000  0.28D-09  0.54D-09    19.06
    9     9     9     1.10372204    -0.23176446   -25.21060231    -0.00000002    -0.00000000  0.31D-09  0.57D-09    19.06
    9    10    10     1.10372227    -0.23176446   -25.21060231    -0.00000002    -0.00000000  0.29D-09  0.55D-09    19.06
    9    11    11     1.10372203    -0.23176446   -25.21060231    -0.00000002    -0.00000000  0.31D-09  0.57D-09    19.06
    9    12    12     1.08625024    -0.23049791   -25.20933577    -0.00000000    -0.00000000  0.76D-09  0.11D-08    19.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.5%
 S   3.3%   7.5%
 P   1.6%  17.2%  16.0%

 Initialization:   0.8%
 Other:           48.0%

 Total CPU:       19.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222           0.9229577   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000  -0.1941644
 2/\00000222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8963656   0.3008538   0.0000000  -0.0000000
                       0.0000000  -0.0000000   0.0000000
 2/0000\0222           0.0000000  -0.0000000   0.0000000   0.8963656   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000   0.3008536  -0.0000000
 2/000\00222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.8963656   0.0000000  -0.0000000  -0.0000000  -0.3008536
                       0.0000000   0.0000000   0.0000000
 2/0\0000222          -0.0000000   0.0010597   0.8963648   0.0000000   0.0000000  -0.0000000   0.0000000   0.1804794  -0.0000000
                      -0.2407074  -0.0000000  -0.0000000
 2/00\000222          -0.0000000   0.8963646  -0.0010597   0.0000000   0.0000000   0.0000000  -0.0000000   0.2407074   0.0000000
                       0.1804794   0.0000000   0.0000000
 2/00000\222           0.1719518   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000   0.0000000   0.8713018
 2000/\00222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.2441486   0.0000000  -0.0000000  -0.0000000   0.6504730
                      -0.0000000  -0.0000000  -0.0000000
 20/00\00222          -0.0000000  -0.0000000   0.0000000  -0.2114386  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                      -0.0000000   0.5633263  -0.0000000
 20/000\0222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2114387  -0.0000000  -0.0000000   0.0000000  -0.5633262
                       0.0000000   0.0000000   0.0000000
 20/\0000222           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2114389   0.5633261   0.0000000  -0.0000000
                       0.0000000   0.0000000  -0.0000000
 20000/\0222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2114386   0.5633261   0.0000000   0.0000000
                       0.0000000   0.0000000  -0.0000000
 200/00\0222          -0.0000000  -0.0000000  -0.0000000   0.2114389  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                       0.0000000  -0.5633261  -0.0000000
 200/\000222           0.0000000   0.0002886   0.2441484   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.3902128   0.0000000
                       0.5204313   0.0000000   0.0000000
 20000020222          -0.0764666  -0.0861427   0.1496117   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0549554  -0.0000000
                       0.4566590  -0.0000000  -0.0844299
 20200000222          -0.0764666  -0.0864961  -0.1494076   0.0000000   0.0000000  -0.0000000  -0.0000000   0.4229561   0.0000000
                      -0.1807369   0.0000000  -0.0844299
 20000200222          -0.0764667   0.1726389  -0.0002041  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.3680006   0.0000000
                      -0.2759222  -0.0000000  -0.0844299
 20020000222          -0.0764667   0.1726391  -0.0002041  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.3680006  -0.0000000
                      -0.2759221   0.0000000  -0.0844308
 20002000222          -0.0764667  -0.1726390   0.0002041   0.0000000   0.0000000  -0.0000000  -0.0000000   0.3680004   0.0000000
                       0.2759222   0.0000000  -0.0844308
 20/0\000222           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1220743   0.3252365  -0.0000000   0.0000000
                      -0.0000000   0.0000000   0.0000000
 2000/0\0222          -0.0000000  -0.0000000   0.0000000  -0.1220743  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                      -0.0000000   0.3252364  -0.0000000
 20000002222          -0.0018025   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      -0.0000000   0.0000000   0.2863353
 20/0000\222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0195958  -0.2654029  -0.0000000  -0.0000000
                      -0.0000000  -0.0000000   0.0000000
 200000/\222          -0.0000000   0.0000000  -0.0000000   0.0195957   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000  -0.2654028   0.0000000
 20000/0\222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0195957  -0.0000000  -0.0000000  -0.0000000   0.2654028
                      -0.0000000  -0.0000000  -0.0000000
 2000/00\222          -0.0000000   0.0195955  -0.0000232  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2123441  -0.0000000
                      -0.1592130   0.0000000   0.0000000
 200/000\222          -0.0000000   0.0000232   0.0195956  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1592129   0.0000000
                       0.2123441   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.952797    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.042257    0.000000    0.000000    0.000000
            -0.000000    0.000000
 2          -0.000000    0.000000    0.943403   -0.107246    0.000000   -0.000000    0.000000   -0.000000   -0.064026   -0.000000
             0.036186    0.000000
 3          -0.000000   -0.000000    0.107246    0.943404   -0.000000    0.000000    0.000000    0.000000   -0.036186   -0.000000
            -0.064026   -0.000000
 4          -0.000000    0.949480   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.073544   -0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.949480    0.000000   -0.000000   -0.000000   -0.000000   -0.073544
             0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.949480   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.073544
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.089131    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.943914
 8           0.000000   -0.000000   -0.076949   -0.044981   -0.000000   -0.000000    0.000000    0.000000   -0.936221   -0.000000
            -0.120268    0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.089131   -0.000000    0.000000    0.000000   -0.000000    0.943914
             0.000000   -0.000000
 10          0.000000   -0.000000   -0.044981    0.076949   -0.000000    0.000000   -0.000000    0.000000   -0.120268   -0.000000
             0.936221    0.000000
 11         -0.000000   -0.089131    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.943914    0.000000   -0.000000
             0.000000    0.000000
 12         -0.039392    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955184   -0.000000    0.000000   -0.000000
             0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953732   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.001482
 2          -0.000000    0.952290   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.006409   -0.000000   -0.004793
            -0.000000    0.000000
 3          -0.000000   -0.000000    0.952290    0.000000   -0.000000    0.000000   -0.000000   -0.004793   -0.000000    0.006409
            -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.952290    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.008003    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.952290    0.000000    0.000000   -0.000000    0.008003    0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.952290   -0.008003   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.008003    0.948079   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.006409   -0.004793    0.000000   -0.000000   -0.000000   -0.000000    0.948079   -0.000000   -0.000000
            -0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.008003   -0.000000    0.000000   -0.000000    0.948079   -0.000000
            -0.000000    0.000000
 10         -0.000000   -0.004793    0.006409    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.948079
             0.000000    0.000000
 11         -0.000000   -0.000000   -0.000000   -0.008003    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.948079    0.000000
 12          0.001482    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.955995


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95279671 (fixed)   0.95428367 (relaxed)   0.95373217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00765831   -0.01383462   -0.14710962
 Singles      0.03417306   -0.06945278   -0.07030598
 Pairs        0.05754687   -0.00000000   -0.01200929
 Total        1.09937824   -0.08328740   -0.22942489
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.10048440
 Nuclear energy                         0.00000000
 Kinetic energy                         6.89481600
 One electron energy                  -41.25578679
 Two electron energy                   15.92567302
 Virial quotient                       -3.67379112
 Correlation energy                    -0.22962936
 !MRCI STATE 1.1 Energy               -25.330113765508

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35293393 (Davidson, fixed reference)
 Cluster corrected energies           -25.35264222 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35293393 (Davidson, rotated reference)

 Cluster corrected energies           -25.34949291 (Pople, fixed reference)
 Cluster corrected energies           -25.34923061 (Pople, relaxed reference)
 Cluster corrected energies           -25.34949291 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94340341 (fixed)   0.95297929 (relaxed)   0.95229008 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00699357   -0.01150834   -0.14896040
 Singles      0.03513033   -0.06523917   -0.06642368
 Pairs        0.06058654   -0.00000000   -0.01252141
 Total        1.10271043   -0.07674752   -0.22790549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04377017
 Nuclear energy                         0.00000000
 Kinetic energy                         7.08851433
 One electron energy                  -41.55852128
 Two electron energy                   16.28636630
 Virial quotient                       -3.56522591
 Correlation energy                    -0.22838481
 !MRCI STATE 2.1 Energy               -25.272154983062

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29561249 (Davidson, fixed reference)
 Cluster corrected energies           -25.29524834 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29561249 (Davidson, rotated reference)

 Cluster corrected energies           -25.29211523 (Pople, fixed reference)
 Cluster corrected energies           -25.29178659 (Pople, relaxed reference)
 Cluster corrected energies           -25.29211523 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94340357 (fixed)   0.95297946 (relaxed)   0.95229024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00699358   -0.01150834   -0.14896050
 Singles      0.03512997   -0.06523912   -0.06642363
 Pairs        0.06058650    0.00000000   -0.01252137
 Total        1.10271006   -0.07674747   -0.22790549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04377017
 Nuclear energy                         0.00000000
 Kinetic energy                         7.08851329
 One electron energy                  -41.55851836
 Two electron energy                   16.28636338
 Virial quotient                       -3.56522644
 Correlation energy                    -0.22838481
 !MRCI STATE 3.1 Energy               -25.272154982698

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29561240 (Davidson, fixed reference)
 Cluster corrected energies           -25.29524825 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29561240 (Davidson, rotated reference)

 Cluster corrected energies           -25.29211515 (Pople, fixed reference)
 Cluster corrected energies           -25.29178651 (Pople, relaxed reference)
 Cluster corrected energies           -25.29211515 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94947998 (fixed)   0.95297960 (relaxed)   0.95229038 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00699359   -0.01150834   -0.14896057
 Singles      0.03512958   -0.06523910   -0.06642355
 Pairs        0.06058656    0.00000000   -0.01252138
 Total        1.10270973   -0.07674745   -0.22790549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04377017
 Nuclear energy                         0.00000000
 Kinetic energy                         7.08851235
 One electron energy                  -41.55851508
 Two electron energy                   16.28636010
 Virial quotient                       -3.56522691
 Correlation energy                    -0.22838481
 !MRCI STATE 4.1 Energy               -25.272154982499

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29561232 (Davidson, fixed reference)
 Cluster corrected energies           -25.29524818 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29561232 (Davidson, rotated reference)

 Cluster corrected energies           -25.29211508 (Pople, fixed reference)
 Cluster corrected energies           -25.29178644 (Pople, relaxed reference)
 Cluster corrected energies           -25.29211508 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.94947997 (fixed)   0.95297959 (relaxed)   0.95229038 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00699359   -0.01150834   -0.14896057
 Singles      0.03512960   -0.06523909   -0.06642355
 Pairs        0.06058655   -0.00000000   -0.01252137
 Total        1.10270974   -0.07674744   -0.22790549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04377017
 Nuclear energy                         0.00000000
 Kinetic energy                         7.08851241
 One electron energy                  -41.55851528
 Two electron energy                   16.28636030
 Virial quotient                       -3.56522688
 Correlation energy                    -0.22838481
 !MRCI STATE 5.1 Energy               -25.272154982321

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29561233 (Davidson, fixed reference)
 Cluster corrected energies           -25.29524818 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29561233 (Davidson, rotated reference)

 Cluster corrected energies           -25.29211508 (Pople, fixed reference)
 Cluster corrected energies           -25.29178644 (Pople, relaxed reference)
 Cluster corrected energies           -25.29211508 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.94947999 (fixed)   0.95297962 (relaxed)   0.95229039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00699359   -0.01150834   -0.13612493
 Singles      0.03512949   -0.06523903   -0.06642353
 Pairs        0.06058662   -0.01415405   -0.02535703
 Total        1.10270970   -0.09090143   -0.22790549
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04377017
 Nuclear energy                         0.00000000
 Kinetic energy                         7.08851214
 One electron energy                  -41.55851452
 Two electron energy                   16.28635954
 Virial quotient                       -3.56522701
 Correlation energy                    -0.22838481
 !MRCI STATE 6.1 Energy               -25.272154982135

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29561232 (Davidson, fixed reference)
 Cluster corrected energies           -25.29524817 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29561232 (Davidson, rotated reference)

 Cluster corrected energies           -25.29211507 (Pople, fixed reference)
 Cluster corrected energies           -25.29178643 (Pople, relaxed reference)
 Cluster corrected energies           -25.29211507 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.94391399 (fixed)   0.94942254 (relaxed)   0.94807907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00797836   -0.01046459   -0.00279957
 Singles      0.03211895   -0.06190746   -0.06204825
 Pairs        0.07243050   -0.15852153   -0.15692638
 Total        1.11252782   -0.23089358   -0.22177420
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97931718
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19336160
 One electron energy                  -41.62399734
 Two electron energy                   16.41339502
 Virial quotient                       -3.50470388
 Correlation energy                    -0.23128514
 !MRCI STATE 7.1 Energy               -25.210602314283

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23662833 (Davidson, fixed reference)
 Cluster corrected energies           -25.23590063 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23662833 (Davidson, rotated reference)

 Cluster corrected energies           -25.23287888 (Pople, fixed reference)
 Cluster corrected energies           -25.23221522 (Pople, relaxed reference)
 Cluster corrected energies           -25.23287888 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.93622054 (fixed)   0.94942236 (relaxed)   0.94807891 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00797835   -0.01046459   -0.15433857
 Singles      0.03211941   -0.06190754   -0.06233676
 Pairs        0.07243044   -0.00000000   -0.01508912
 Total        1.11252821   -0.07237213   -0.23176446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97931718
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19336350
 One electron energy                  -41.62400541
 Two electron energy                   16.41340310
 Virial quotient                       -3.50470296
 Correlation energy                    -0.23128514
 !MRCI STATE 8.1 Energy               -25.210602314219

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23662842 (Davidson, fixed reference)
 Cluster corrected energies           -25.23590073 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23662842 (Davidson, rotated reference)

 Cluster corrected energies           -25.23287896 (Pople, fixed reference)
 Cluster corrected energies           -25.23221530 (Pople, relaxed reference)
 Cluster corrected energies           -25.23287896 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94391391 (fixed)   0.94942249 (relaxed)   0.94807902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00797838   -0.01046459   -0.15433862
 Singles      0.03211943   -0.06190753   -0.06233680
 Pairs        0.07243014    0.00000000   -0.01508903
 Total        1.11252795   -0.07237212   -0.23176446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97931718
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19336211
 One electron energy                  -41.62399999
 Two electron energy                   16.41339768
 Virial quotient                       -3.50470363
 Correlation energy                    -0.23128514
 !MRCI STATE 9.1 Energy               -25.210602314127

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23662836 (Davidson, fixed reference)
 Cluster corrected energies           -25.23590066 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23662836 (Davidson, rotated reference)

 Cluster corrected energies           -25.23287890 (Pople, fixed reference)
 Cluster corrected energies           -25.23221524 (Pople, relaxed reference)
 Cluster corrected energies           -25.23287890 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.93622057 (fixed)   0.94942239 (relaxed)   0.94807893 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00797835   -0.01046459   -0.15433858
 Singles      0.03211941   -0.06190754   -0.06233677
 Pairs        0.07243039   -0.00000000   -0.01508911
 Total        1.11252815   -0.07237214   -0.23176446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97931718
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19336315
 One electron energy                  -41.62400418
 Two electron energy                   16.41340187
 Virial quotient                       -3.50470313
 Correlation energy                    -0.23128514
 !MRCI STATE 10.1 Energy              -25.210602314117

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23662840 (Davidson, fixed reference)
 Cluster corrected energies           -25.23590072 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23662840 (Davidson, rotated reference)

 Cluster corrected energies           -25.23287895 (Pople, fixed reference)
 Cluster corrected energies           -25.23221529 (Pople, relaxed reference)
 Cluster corrected energies           -25.23287895 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94391392 (fixed)   0.94942249 (relaxed)   0.94807902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00797837   -0.01046459   -0.15433862
 Singles      0.03211943   -0.06190753   -0.06233680
 Pairs        0.07243014   -0.00000000   -0.01508903
 Total        1.11252794   -0.07237212   -0.23176446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97931718
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19336225
 One electron energy                  -41.62400025
 Two electron energy                   16.41339793
 Virial quotient                       -3.50470356
 Correlation energy                    -0.23128514
 !MRCI STATE 11.1 Energy              -25.210602314049

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23662835 (Davidson, fixed reference)
 Cluster corrected energies           -25.23590066 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23662835 (Davidson, rotated reference)

 Cluster corrected energies           -25.23287890 (Pople, fixed reference)
 Cluster corrected energies           -25.23221524 (Pople, relaxed reference)
 Cluster corrected energies           -25.23287890 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95518407 (fixed)   0.95629334 (relaxed)   0.95599483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00730045   -0.01410190   -0.14998927
 Singles      0.03636855   -0.06806534   -0.06986897
 Pairs        0.05051136    0.00000000   -0.01063967
 Total        1.09418036   -0.08216724   -0.23049791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98903258
 Nuclear energy                         0.00000000
 Kinetic energy                         6.85004239
 One electron energy                  -40.29672322
 Two electron energy                   15.08738745
 Virial quotient                       -3.68017223
 Correlation energy                    -0.22030319
 !MRCI STATE 12.1 Energy              -25.209335772764

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23008401 (Davidson, fixed reference)
 Cluster corrected energies           -25.22993354 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23008401 (Davidson, rotated reference)

 Cluster corrected energies           -25.22690053 (Pople, fixed reference)
 Cluster corrected energies           -25.22676601 (Pople, relaxed reference)
 Cluster corrected energies           -25.22690053 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7       43.56       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        23.83     21.55      0.69      0.85      0.02      0.50
 REAL TIME  *        29.74 SEC
 DISK USED  *        75.49 MB (local),        1.25 GB (total)
 SF USED    *       433.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.35293393  AU                              
 SETTING HLSDIAG(2)     =       -25.29561249  AU                              
 SETTING HLSDIAG(3)     =       -25.29561240  AU                              
 SETTING HLSDIAG(4)     =       -25.29561232  AU                              
 SETTING HLSDIAG(5)     =       -25.29561233  AU                              
 SETTING HLSDIAG(6)     =       -25.29561232  AU                              
 SETTING HLSDIAG(7)     =       -25.23662833  AU                              
 SETTING HLSDIAG(8)     =       -25.23662842  AU                              
 SETTING HLSDIAG(9)     =       -25.23662836  AU                              
 SETTING HLSDIAG(10)    =       -25.23662840  AU                              
 SETTING HLSDIAG(11)    =       -25.23662835  AU                              
 SETTING HLSDIAG(12)    =       -25.23008401  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06159990
     2       -25.06159990
     3       -25.06159990
     4       -25.06159990
     5       -25.06159990
     6       -25.00468829
     7       -25.00468829
     8       -25.00468829
     9       -25.00468829
    10       -25.00468829
    11       -25.00468829
    12       -25.00468829
    13       -24.99785267
    14       -24.98376719
    15       -24.98376719
    16       -24.98376719

 Number of blocks in overlap matrix:   289   Smallest eigenvalue:  0.96D+00
 Number of N-2 electron functions:     313
 Number of N-1 electron functions:    3521

 Number of internal configurations:                 2961
 Number of singly external configurations:        130158
 Number of doubly external configurations:        456734
 Total number of contracted configurations:       589853
 Total number of uncontracted configurations:    2260069

 Diagonal Coupling coefficients finished.               Storage: 1568223 words, CPU-Time:      0.16 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  381639 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06159990    -0.00000000    -0.22927392  0.43D-01  0.57D-01     0.42
    1     2     2     1.00000000     0.00000000   -25.06159990     0.00000000    -0.22926630  0.43D-01  0.57D-01     0.42
    1     3     3     1.00000000     0.00000000   -25.06159990     0.00000000    -0.22905672  0.43D-01  0.56D-01     0.42
    1     4     4     1.00000000     0.00000000   -25.06159990     0.00000000    -0.22928453  0.43D-01  0.57D-01     0.42
    1     5     5     1.00000000     0.00000000   -25.06159990     0.00000000    -0.22928339  0.43D-01  0.57D-01     0.42
    1     6     6     1.00000000     0.00000000   -25.00468829    -0.00000000    -0.23627727  0.42D-01  0.63D-01     0.42
    1     7     7     1.00000000     0.00000000   -25.00468829    -0.00000000    -0.23662348  0.42D-01  0.63D-01     0.42
    1     8     8     1.00000000     0.00000000   -25.00468829    -0.00000000    -0.23653657  0.42D-01  0.63D-01     0.42
    1     9     9     1.00000000     0.00000000   -25.00468829     0.00000000    -0.23677809  0.42D-01  0.63D-01     0.42
    1    10    10     1.00000000     0.00000000   -25.00468829    -0.00000000    -0.23634730  0.42D-01  0.63D-01     0.42
    1    11    11     1.00000000     0.00000000   -25.00468829     0.00000000    -0.23664080  0.42D-01  0.63D-01     0.42
    1    12    12     1.00000000     0.00000000   -25.00468829    -0.00000000    -0.23631766  0.42D-01  0.63D-01     0.42
    1    13    13     1.00000000     0.00000000   -24.99785267     0.00000000    -0.20777942  0.41D-01  0.46D-01     0.42
    1    14    14     1.00000000     0.00000000   -24.98376719     0.00000000    -0.24416067  0.45D-01  0.73D-01     0.42
    1    15    15     1.00000000     0.00000000   -24.98376719    -0.00000000    -0.24378833  0.45D-01  0.72D-01     0.42
    1    16    16     1.00000000     0.00000000   -24.98376719    -0.00000000    -0.24413331  0.45D-01  0.73D-01     0.42
    2     1     1     1.08108206    -0.21839365   -25.27999355    -0.21839365    -0.00549454  0.16D-02  0.97D-03     4.92
    2     2     2     1.08107087    -0.21835338   -25.27995328    -0.21835338    -0.00554320  0.17D-02  0.10D-02     4.92
    2     3     3     1.08105928    -0.21835014   -25.27995004    -0.21835014    -0.00554476  0.17D-02  0.10D-02     4.92
    2     4     4     1.08107898    -0.21834929   -25.27994919    -0.21834929    -0.00554657  0.17D-02  0.10D-02     4.92
    2     5     5     1.08107085    -0.21834708   -25.27994697    -0.21834708    -0.00554755  0.17D-02  0.10D-02     4.92
    2     6     6     1.08151326    -0.21749091   -25.22217920    -0.21749091    -0.00567011  0.17D-02  0.12D-02     4.92
    2     7     7     1.08150374    -0.21749038   -25.22217868    -0.21749038    -0.00567129  0.17D-02  0.12D-02     4.92
    2     8     8     1.08152295    -0.21747304   -25.22216134    -0.21747304    -0.00568947  0.18D-02  0.12D-02     4.92
    2     9     9     1.08151040    -0.21746421   -25.22215250    -0.21746421    -0.00570491  0.17D-02  0.12D-02     4.92
    2    10    10     1.08151973    -0.21744787   -25.22213616    -0.21744787    -0.00572527  0.18D-02  0.12D-02     4.92
    2    11    11     1.08151955    -0.21744728   -25.22213558    -0.21744728    -0.00572609  0.18D-02  0.12D-02     4.92
    2    12    12     1.08154005    -0.21741484   -25.22210313    -0.21741484    -0.00576357  0.18D-02  0.12D-02     4.92
    2    13    13     1.07910656    -0.21286942   -25.21072208    -0.21286942    -0.00448915  0.14D-02  0.72D-03     4.92
    2    14    14     1.08846505    -0.22212515   -25.20589234    -0.22212515    -0.00674053  0.24D-02  0.16D-02     4.92
    2    15    15     1.08841097    -0.22206040   -25.20582760    -0.22206040    -0.00681525  0.25D-02  0.16D-02     4.92
    2    16    16     1.08844792    -0.22205366   -25.20582085    -0.22205366    -0.00682484  0.25D-02  0.16D-02     4.92
    3     1     1     1.08313276    -0.22422344   -25.28582334    -0.00582979    -0.00016380  0.42D-04  0.34D-04     9.29
    3     2     2     1.08312431    -0.22422065   -25.28582055    -0.00586727    -0.00016664  0.42D-04  0.35D-04     9.29
    3     3     3     1.08312501    -0.22422048   -25.28582038    -0.00587034    -0.00016662  0.42D-04  0.35D-04     9.29
    3     4     4     1.08312199    -0.22422044   -25.28582034    -0.00587115    -0.00016664  0.42D-04  0.35D-04     9.29
    3     5     5     1.08311855    -0.22422042   -25.28582032    -0.00587335    -0.00016664  0.42D-04  0.35D-04     9.29
    3     6     6     1.08272409    -0.22341257   -25.22810086    -0.00592166    -0.00015366  0.31D-04  0.37D-04     9.29
    3     7     7     1.08271901    -0.22341240   -25.22810069    -0.00592202    -0.00015378  0.31D-04  0.37D-04     9.29
    3     8     8     1.08272417    -0.22341227   -25.22810056    -0.00593922    -0.00015440  0.31D-04  0.37D-04     9.29
    3     9     9     1.08272773    -0.22341189   -25.22810018    -0.00594768    -0.00015507  0.31D-04  0.37D-04     9.29
    3    10    10     1.08272270    -0.22341185   -25.22810015    -0.00596399    -0.00015456  0.31D-04  0.37D-04     9.29
    3    11    11     1.08272551    -0.22341174   -25.22810004    -0.00596446    -0.00015516  0.31D-04  0.37D-04     9.29
    3    12    12     1.08272926    -0.22341076   -25.22809905    -0.00599592    -0.00015657  0.31D-04  0.38D-04     9.29
    3    13    13     1.08213277    -0.21772348   -25.21557615    -0.00485406    -0.00013650  0.31D-04  0.31D-04     9.29
    3    14    14     1.08925937    -0.22905797   -25.21282516    -0.00693282    -0.00023297  0.39D-04  0.92D-04     9.29
    3    15    15     1.08925051    -0.22905547   -25.21282266    -0.00699507    -0.00023606  0.39D-04  0.93D-04     9.29
    3    16    16     1.08923006    -0.22905461   -25.21282180    -0.00700095    -0.00023614  0.39D-04  0.94D-04     9.29
    4     1     1     1.08431618    -0.22441779   -25.28601768    -0.00019434    -0.00001312  0.12D-04  0.12D-05    13.74
    4     2     2     1.08430541    -0.22441743   -25.28601733    -0.00019678    -0.00001336  0.12D-04  0.13D-05    13.74
    4     3     3     1.08430628    -0.22441741   -25.28601731    -0.00019693    -0.00001337  0.12D-04  0.13D-05    13.74
    4     4     4     1.08430621    -0.22441741   -25.28601731    -0.00019697    -0.00001337  0.12D-04  0.13D-05    13.74
    4     5     5     1.08430540    -0.22441741   -25.28601730    -0.00019698    -0.00001338  0.12D-04  0.13D-05    13.74
    4     6     6     1.08348580    -0.22358837   -25.22827666    -0.00017580    -0.00001017  0.10D-04  0.11D-05    13.74
    4     7     7     1.08348342    -0.22358836   -25.22827665    -0.00017596    -0.00001023  0.10D-04  0.11D-05    13.74
    4     8     8     1.08348519    -0.22358835   -25.22827665    -0.00017609    -0.00001018  0.10D-04  0.11D-05    13.74
    4     9     9     1.08348632    -0.22358834   -25.22827664    -0.00017645    -0.00001017  0.10D-04  0.11D-05    13.74
    4    10    10     1.08348896    -0.22358829   -25.22827658    -0.00017644    -0.00001018  0.10D-04  0.11D-05    13.74
    4    11    11     1.08348719    -0.22358828   -25.22827658    -0.00017654    -0.00001020  0.10D-04  0.11D-05    13.74
    4    12    12     1.08348686    -0.22358828   -25.22827657    -0.00017752    -0.00001023  0.10D-04  0.11D-05    13.74
    4    13    13     1.08321394    -0.21787446   -25.21572712    -0.00015098    -0.00000716  0.53D-05  0.13D-05    13.74
    4    14    14     1.09083033    -0.22933679   -25.21310398    -0.00027882    -0.00002404  0.15D-04  0.13D-04    13.74
    4    15    15     1.09081523    -0.22933650   -25.21310369    -0.00028103    -0.00002423  0.15D-04  0.13D-04    13.74
    4    16    16     1.09080576    -0.22933615   -25.21310334    -0.00028155    -0.00002439  0.15D-04  0.13D-04    13.74
    5     1     1     1.08500330    -0.22443570   -25.28603560    -0.00001792    -0.00000142  0.63D-06  0.26D-06    18.14
    5     2     2     1.08499976    -0.22443565   -25.28603554    -0.00001821    -0.00000146  0.66D-06  0.26D-06    18.14
    5     3     3     1.08499985    -0.22443565   -25.28603554    -0.00001823    -0.00000146  0.67D-06  0.26D-06    18.14
    5     4     4     1.08499976    -0.22443564   -25.28603554    -0.00001824    -0.00000146  0.67D-06  0.26D-06    18.14
    5     5     5     1.08499989    -0.22443564   -25.28603554    -0.00001824    -0.00000146  0.66D-06  0.26D-06    18.14
    5     6     6     1.08388532    -0.22360136   -25.22828965    -0.00001299    -0.00000095  0.38D-06  0.19D-06    18.14
    5     7     7     1.08388515    -0.22360136   -25.22828965    -0.00001300    -0.00000095  0.38D-06  0.19D-06    18.14
    5     8     8     1.08388493    -0.22360136   -25.22828965    -0.00001300    -0.00000095  0.38D-06  0.19D-06    18.14
    5     9     9     1.08388238    -0.22360135   -25.22828965    -0.00001301    -0.00000095  0.39D-06  0.19D-06    18.14
    5    10    10     1.08388366    -0.22360135   -25.22828965    -0.00001306    -0.00000095  0.38D-06  0.19D-06    18.14
    5    11    11     1.08388327    -0.22360135   -25.22828964    -0.00001307    -0.00000095  0.38D-06  0.19D-06    18.14
    5    12    12     1.08388382    -0.22360135   -25.22828964    -0.00001307    -0.00000095  0.38D-06  0.19D-06    18.14
    5    13    13     1.08366796    -0.21788300   -25.21573566    -0.00000854    -0.00000053  0.23D-06  0.14D-06    18.14
    5    14    14     1.09182860    -0.22937063   -25.21313783    -0.00003384    -0.00000338  0.80D-06  0.17D-05    18.14
    5    15    15     1.09182238    -0.22937051   -25.21313771    -0.00003402    -0.00000345  0.81D-06  0.18D-05    18.14
    5    16    16     1.09182012    -0.22937045   -25.21313764    -0.00003430    -0.00000349  0.82D-06  0.18D-05    18.14
    6     1     1     1.08508909    -0.22443753   -25.28603743    -0.00000183    -0.00000011  0.53D-07  0.18D-07    22.52
    6     2     2     1.08508905    -0.22443753   -25.28603742    -0.00000188    -0.00000011  0.53D-07  0.19D-07    22.52
    6     3     3     1.08508899    -0.22443753   -25.28603742    -0.00000188    -0.00000011  0.53D-07  0.19D-07    22.52
    6     4     4     1.08508890    -0.22443753   -25.28603742    -0.00000188    -0.00000011  0.53D-07  0.19D-07    22.52
    6     5     5     1.08508892    -0.22443753   -25.28603742    -0.00000188    -0.00000011  0.53D-07  0.19D-07    22.52
    6     6     6     1.08391200    -0.22360253   -25.22829083    -0.00000117    -0.00000007  0.23D-07  0.15D-07    22.52
    6     7     7     1.08391201    -0.22360253   -25.22829083    -0.00000117    -0.00000007  0.23D-07  0.15D-07    22.52
    6     8     8     1.08391202    -0.22360253   -25.22829083    -0.00000117    -0.00000007  0.23D-07  0.15D-07    22.52
    6     9     9     1.08391190    -0.22360253   -25.22829082    -0.00000118    -0.00000007  0.23D-07  0.16D-07    22.52
    6    10    10     1.08391166    -0.22360253   -25.22829082    -0.00000118    -0.00000007  0.23D-07  0.16D-07    22.52
    6    11    11     1.08391182    -0.22360253   -25.22829082    -0.00000118    -0.00000007  0.23D-07  0.16D-07    22.52
    6    12    12     1.08391180    -0.22360253   -25.22829082    -0.00000118    -0.00000007  0.23D-07  0.16D-07    22.52
    6    13    13     1.08376200    -0.21788368   -25.21573635    -0.00000069    -0.00000005  0.28D-07  0.12D-07    22.52
    6    14    14     1.09200150    -0.22937498   -25.21314217    -0.00000435    -0.00000042  0.13D-06  0.25D-06    22.52
    6    15    15     1.09200009    -0.22937496   -25.21314215    -0.00000444    -0.00000043  0.14D-06  0.26D-06    22.52
    6    16    16     1.09199868    -0.22937494   -25.21314214    -0.00000450    -0.00000044  0.14D-06  0.26D-06    22.52
    7     1     1     1.08511117    -0.22443766   -25.28603756    -0.00000013    -0.00000001  0.83D-08  0.15D-08    26.94
    7     2     2     1.08511100    -0.22443766   -25.28603756    -0.00000013    -0.00000001  0.85D-08  0.16D-08    26.94
    7     3     3     1.08511097    -0.22443766   -25.28603756    -0.00000013    -0.00000001  0.85D-08  0.16D-08    26.94
    7     4     4     1.08511095    -0.22443766   -25.28603755    -0.00000013    -0.00000001  0.85D-08  0.16D-08    26.94
    7     5     5     1.08511097    -0.22443766   -25.28603755    -0.00000013    -0.00000001  0.85D-08  0.16D-08    26.94
    7     6     6     1.08391391    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.58D-08  0.13D-08    26.94
    7     7     7     1.08391392    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.58D-08  0.13D-08    26.94
    7     8     8     1.08391390    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.58D-08  0.13D-08    26.94
    7     9     9     1.08391383    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.59D-08  0.13D-08    26.94
    7    10    10     1.08391389    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.59D-08  0.13D-08    26.94
    7    11    11     1.08391388    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.59D-08  0.13D-08    26.94
    7    12    12     1.08391386    -0.22360261   -25.22829090    -0.00000008    -0.00000001  0.59D-08  0.13D-08    26.94
    7    13    13     1.08377636    -0.21788374   -25.21573641    -0.00000006    -0.00000001  0.50D-08  0.79D-09    26.94
    7    14    14     1.09207633    -0.22937552   -25.21314272    -0.00000055    -0.00000008  0.17D-07  0.48D-07    26.94
    7    15    15     1.09207532    -0.22937552   -25.21314271    -0.00000056    -0.00000008  0.18D-07  0.49D-07    26.94
    7    16    16     1.09207457    -0.22937552   -25.21314271    -0.00000057    -0.00000008  0.18D-07  0.50D-07    26.94
    8     1     1     1.08512140    -0.22443767   -25.28603757    -0.00000001    -0.00000000  0.73D-09  0.21D-09    29.22
    8     2     2     1.08512141    -0.22443767   -25.28603757    -0.00000001    -0.00000000  0.73D-09  0.21D-09    29.22
    8     3     3     1.08512140    -0.22443767   -25.28603757    -0.00000001    -0.00000000  0.73D-09  0.21D-09    29.22
    8     4     4     1.08512140    -0.22443767   -25.28603757    -0.00000001    -0.00000000  0.73D-09  0.21D-09    29.22
    8     5     5     1.08511117    -0.22443766   -25.28603756    -0.00000000    -0.00000001  0.83D-08  0.15D-08    29.22
    8     6     6     1.08391391    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.58D-08  0.13D-08    29.22
    8     7     7     1.08391392    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.58D-08  0.13D-08    29.22
    8     8     8     1.08391390    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.58D-08  0.13D-08    29.22
    8     9     9     1.08391383    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.59D-08  0.13D-08    29.22
    8    10    10     1.08391389    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.59D-08  0.13D-08    29.22
    8    11    11     1.08391388    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.59D-08  0.13D-08    29.22
    8    12    12     1.08391386    -0.22360261   -25.22829090    -0.00000000    -0.00000001  0.59D-08  0.13D-08    29.22
    8    13    13     1.08377636    -0.21788374   -25.21573641    -0.00000000    -0.00000001  0.50D-08  0.79D-09    29.22
    8    14    14     1.09212949    -0.22937564   -25.21314283    -0.00000011    -0.00000001  0.22D-08  0.16D-08    29.22
    8    15    15     1.09212937    -0.22937564   -25.21314283    -0.00000012    -0.00000001  0.22D-08  0.17D-08    29.22
    8    16    16     1.09212916    -0.22937564   -25.21314283    -0.00000012    -0.00000001  0.22D-08  0.17D-08    29.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   3.5%   9.3%
 P   1.4%  19.1%  15.4%

 Initialization:   0.7%
 Other:           45.9%

 Total CPU:       29.2 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 200//000222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9583975  -0.0000000   0.0000000   0.0000000
                       0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2000//00222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9583968
                      -0.0011818  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/00000/222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                       0.0000000  -0.0000000   0.0000000   0.9573475   0.0000000   0.0000000   0.0000000
 2/000/00222          -0.0000000   0.0000000   0.9545401   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                       0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2//00000222           0.0000000  -0.0000000   0.0000000   0.9545401  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                      -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2/0000/0222           0.9545401   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2/0/0000222          -0.0000000  -0.0206562   0.0000000   0.0000000   0.9543204   0.0000001   0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/00/000222          -0.0000000   0.9543165  -0.0000000   0.0000000   0.0206563   0.0000000   0.0000000   0.0000000   0.0000000
                      -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 20/000/0222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0010571
                       0.8572161  -0.0000000  -0.0000000  -0.0000000   0.4268484   0.0000000   0.0000000
 200/00/0222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8553661   0.0000000   0.0000000
                       0.0000000   0.0000000   0.0562970   0.0000000  -0.0000000   0.0000000   0.4268485
 200/0/00222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0005285
                      -0.4286080   0.0000000   0.0000000  -0.0000000   0.8536969  -0.0000000  -0.0000000
 20/00/00222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2683509   0.0000000   0.0000000
                      -0.0000000  -0.0000000   0.8141305  -0.0000000  -0.0000000  -0.0000000   0.4268485
 2000/0/0222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.3389134  -0.0000000   0.0000000
                      -0.0000000  -0.0000000  -0.5025415   0.0000000   0.0000000   0.0000000   0.7393233
 20/0/000222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0286874   0.0000000
                       0.0000000   0.6054646   0.0000000   0.0000000   0.0000000   0.7393233   0.0000000
 20//0000222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.7017739   0.0000000
                      -0.0000000   0.4922742  -0.0000000  -0.0000000   0.0000000  -0.4268485   0.0000000
 20000//0222           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.6520859  -0.0000000
                      -0.0000000  -0.5564212  -0.0000000  -0.0000000   0.0000000   0.4268485  -0.0000000
 200000//222          -0.0722156   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0000000   0.0000000  -0.0000000
 20000/0/222          -0.0000000   0.0000000  -0.0722156   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 20/0000/222           0.0000000   0.0000000  -0.0000000  -0.0722156   0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0000000
                      -0.0000000  -0.0000001  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 200/000/222          -0.0000000   0.0015627   0.0000000  -0.0000000  -0.0722079  -0.0000002  -0.0000000   0.0000000  -0.0000000
                      -0.0000000  -0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000  -0.0000000
 2000/00/222          -0.0000000  -0.0721987   0.0000000  -0.0000000  -0.0015629  -0.0000000   0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000   0.0000000  -0.0000002   0.0000000  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222  20.1     0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                       0.0000000  -0.0000000  -0.0000000  -0.0604989   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957063   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.956859    0.019769    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.000000    0.957063    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000   -0.000000    0.957063   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.019770    0.956863   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958397
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.324149   -0.000000   -0.000000   -0.000000
             0.000000    0.901917   -0.000000    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.651600    0.000000    0.000000    0.000000    0.000000
             0.702811    0.000000    0.000000    0.000000   -0.000000    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.056389    0.956737    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956737   -0.056389    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 11         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.702811   -0.000000   -0.000000   -0.000000   -0.000000
            -0.651600    0.000000   -0.000000    0.000000    0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.901917   -0.000000    0.000000    0.000000
            -0.000000    0.324149    0.000000    0.000000    0.000000    0.000000
 13          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.957347   -0.000000   -0.000000    0.000000
 14          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.954462    0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.954462   -0.000000   -0.000000
 16         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954462

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957063    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.957063   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.957063    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.957063    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.957067    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.958397   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958397    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.958397   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958397    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958397
             0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 11         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.958397    0.000000    0.000000   -0.000000    0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.958397   -0.000000   -0.000000   -0.000000   -0.000000
 13          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.957347    0.000000   -0.000000    0.000000
 14         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.954462    0.000000   -0.000000
 15         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.954462   -0.000000
 16         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954462


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95706283 (fixed)   0.95726791 (relaxed)   0.95706283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00609913   -0.01172422   -0.14694237
 Singles      0.03409797   -0.06538373   -0.06689940
 Pairs        0.05154260    0.00000000   -0.01059590
 Total        1.09173970   -0.07710794   -0.22443767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06159990
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07298466
 One electron energy                  -41.55114451
 Two electron energy                   16.26510695
 Virial quotient                       -3.57501660
 Correlation energy                    -0.22443767
 !MRCI STATE 1.1 Energy               -25.286037568926

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30662741 (Davidson, fixed reference)
 Cluster corrected energies           -25.30652244 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30662741 (Davidson, rotated reference)

 Cluster corrected energies           -25.30219439 (Pople, fixed reference)
 Cluster corrected energies           -25.30210837 (Pople, relaxed reference)
 Cluster corrected energies           -25.30219439 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95685862 (fixed)   0.95726791 (relaxed)   0.95706283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00609913   -0.01172422   -0.14694237
 Singles      0.03409797   -0.06538372   -0.06689940
 Pairs        0.05154260    0.00000000   -0.01059590
 Total        1.09173970   -0.07710794   -0.22443767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06159990
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07298466
 One electron energy                  -41.55114448
 Two electron energy                   16.26510692
 Virial quotient                       -3.57501660
 Correlation energy                    -0.22443767
 !MRCI STATE 2.1 Energy               -25.286037568781

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30662741 (Davidson, fixed reference)
 Cluster corrected energies           -25.30652244 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30662741 (Davidson, rotated reference)

 Cluster corrected energies           -25.30219439 (Pople, fixed reference)
 Cluster corrected energies           -25.30210837 (Pople, relaxed reference)
 Cluster corrected energies           -25.30219439 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95706283 (fixed)   0.95726791 (relaxed)   0.95706283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00609913   -0.01172422   -0.14694237
 Singles      0.03409797   -0.06538372   -0.06689940
 Pairs        0.05154260   -0.00000000   -0.01059590
 Total        1.09173970   -0.07710794   -0.22443767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06159990
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07298468
 One electron energy                  -41.55114452
 Two electron energy                   16.26510695
 Virial quotient                       -3.57501659
 Correlation energy                    -0.22443767
 !MRCI STATE 3.1 Energy               -25.286037568696

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30662741 (Davidson, fixed reference)
 Cluster corrected energies           -25.30652244 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30662741 (Davidson, rotated reference)

 Cluster corrected energies           -25.30219439 (Pople, fixed reference)
 Cluster corrected energies           -25.30210837 (Pople, relaxed reference)
 Cluster corrected energies           -25.30219439 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95706283 (fixed)   0.95726791 (relaxed)   0.95706283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00609913   -0.01172422   -0.14694237
 Singles      0.03409798   -0.06538373   -0.06689940
 Pairs        0.05154259   -0.00000000   -0.01059590
 Total        1.09173970   -0.07710794   -0.22443767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06159990
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07298465
 One electron energy                  -41.55114451
 Two electron energy                   16.26510694
 Virial quotient                       -3.57501660
 Correlation energy                    -0.22443767
 !MRCI STATE 4.1 Energy               -25.286037568499

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30662741 (Davidson, fixed reference)
 Cluster corrected energies           -25.30652244 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30662741 (Davidson, rotated reference)

 Cluster corrected energies           -25.30219439 (Pople, fixed reference)
 Cluster corrected energies           -25.30210837 (Pople, relaxed reference)
 Cluster corrected energies           -25.30219439 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95686297 (fixed)   0.95727244 (relaxed)   0.95706717 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00609949   -0.01172417   -0.14694474
 Singles      0.03408616   -0.06538266   -0.06689771
 Pairs        0.05154414    0.00000000   -0.01059521
 Total        1.09172979   -0.07710683   -0.22443766
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06159990
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07293861
 One electron energy                  -41.55101948
 Two electron energy                   16.26498193
 Virial quotient                       -3.57503988
 Correlation energy                    -0.22443766
 !MRCI STATE 5.1 Energy               -25.286037555426

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30662517 (Davidson, fixed reference)
 Cluster corrected energies           -25.30652010 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30662517 (Davidson, rotated reference)

 Cluster corrected energies           -25.30219255 (Pople, fixed reference)
 Cluster corrected energies           -25.30210646 (Pople, relaxed reference)
 Cluster corrected energies           -25.30219255 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95839746 (fixed)   0.95839746 (relaxed)   0.95839746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991896
 Singles      0.02910712   -0.06137323   -0.06235167
 Pairs        0.05517741    0.00000000   -0.01133198
 Total        1.08870119   -0.07040961   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706601
 One electron energy                  -41.85218735
 Two electron energy                   16.62389645
 Virial quotient                       -3.48117305
 Correlation energy                    -0.22360261
 !MRCI STATE 6.1 Energy               -25.228290901065

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812472 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812472 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812472 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383155 (Pople, fixed reference)
 Cluster corrected energies           -25.24383155 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383155 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.90191650 (fixed)   0.95839745 (relaxed)   0.95839745 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991894
 Singles      0.02910712   -0.06137325   -0.06235167
 Pairs        0.05517742    0.00000000   -0.01133199
 Total        1.08870119   -0.07040963   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706569
 One electron energy                  -41.85218674
 Two electron energy                   16.62389584
 Virial quotient                       -3.48117321
 Correlation energy                    -0.22360261
 !MRCI STATE 7.1 Energy               -25.228290901052

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812472 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812472 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812472 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383155 (Pople, fixed reference)
 Cluster corrected energies           -25.24383155 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383155 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.70281082 (fixed)   0.95839746 (relaxed)   0.95839746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991896
 Singles      0.02910709   -0.06137324   -0.06235167
 Pairs        0.05517742    0.00000000   -0.01133198
 Total        1.08870117   -0.07040962   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706538
 One electron energy                  -41.85218605
 Two electron energy                   16.62389515
 Virial quotient                       -3.48117336
 Correlation energy                    -0.22360261
 !MRCI STATE 8.1 Energy               -25.228290901023

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812471 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812471 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812471 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383155 (Pople, fixed reference)
 Cluster corrected energies           -25.24383155 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383155 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95673718 (fixed)   0.95839749 (relaxed)   0.95839749 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991898
 Singles      0.02910702   -0.06137322   -0.06235167
 Pairs        0.05517743    0.00000000   -0.01133196
 Total        1.08870111   -0.07040961   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706448
 One electron energy                  -41.85218371
 Two electron energy                   16.62389281
 Virial quotient                       -3.48117379
 Correlation energy                    -0.22360261
 !MRCI STATE 9.1 Energy               -25.228290901001

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812470 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812470 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812470 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383153 (Pople, fixed reference)
 Cluster corrected energies           -25.24383153 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383153 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95673716 (fixed)   0.95839747 (relaxed)   0.95839747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991895
 Singles      0.02910707   -0.06137325   -0.06235167
 Pairs        0.05517743   -0.00000000   -0.01133198
 Total        1.08870116   -0.07040963   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706481
 One electron energy                  -41.85218473
 Two electron energy                   16.62389382
 Virial quotient                       -3.48117363
 Correlation energy                    -0.22360261
 !MRCI STATE 10.1 Energy              -25.228290900994

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812471 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812471 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812471 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383154 (Pople, fixed reference)
 Cluster corrected energies           -25.24383154 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383154 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.70281081 (fixed)   0.95839747 (relaxed)   0.95839747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991894
 Singles      0.02910707   -0.06137326   -0.06235168
 Pairs        0.05517743   -0.00000000   -0.01133199
 Total        1.08870115   -0.07040964   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706471
 One electron energy                  -41.85218437
 Two electron energy                   16.62389347
 Virial quotient                       -3.48117368
 Correlation energy                    -0.22360261
 !MRCI STATE 11.1 Energy              -25.228290900961

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812471 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812471 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812471 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383154 (Pople, fixed reference)
 Cluster corrected energies           -25.24383154 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383154 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.90191653 (fixed)   0.95839748 (relaxed)   0.95839748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00441666   -0.00903638   -0.14991893
 Singles      0.02910704   -0.06137325   -0.06235167
 Pairs        0.05517744   -0.00000003   -0.01133201
 Total        1.08870113   -0.07040966   -0.22360261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00468829
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24706432
 One electron energy                  -41.85218349
 Two electron energy                   16.62389259
 Virial quotient                       -3.48117387
 Correlation energy                    -0.22360261
 !MRCI STATE 12.1 Energy              -25.228290900954

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24812471 (Davidson, fixed reference)
 Cluster corrected energies           -25.24812471 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24812471 (Davidson, rotated reference)

 Cluster corrected energies           -25.24383154 (Pople, fixed reference)
 Cluster corrected energies           -25.24383154 (Pople, relaxed reference)
 Cluster corrected energies           -25.24383154 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95734747 (fixed)   0.95734747 (relaxed)   0.95734747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00674883   -0.01426981   -0.13857967
 Singles      0.03792546   -0.06815123   -0.07003503
 Pairs        0.04641629   -0.00000000   -0.00926904
 Total        1.09109058   -0.08242104   -0.21788374
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99785267
 Nuclear energy                         0.00000000
 Kinetic energy                         6.82563372
 One electron energy                  -40.20859979
 Two electron energy                   14.99286338
 Virial quotient                       -3.69427037
 Correlation energy                    -0.21788374
 !MRCI STATE 13.1 Energy              -25.215736410713

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23558357 (Davidson, fixed reference)
 Cluster corrected energies           -25.23558357 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23558357 (Davidson, rotated reference)

 Cluster corrected energies           -25.23130554 (Pople, fixed reference)
 Cluster corrected energies           -25.23130554 (Pople, relaxed reference)
 Cluster corrected energies           -25.23130554 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95446217 (fixed)   0.95446217 (relaxed)   0.95446217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00509804   -0.01021254   -0.15366713
 Singles      0.02902752   -0.06186503   -0.06242629
 Pairs        0.06357166   -0.00000000   -0.01328222
 Total        1.09769722   -0.07207756   -0.22937564
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98376719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24014402
 One electron energy                  -41.81396917
 Two electron energy                   16.60082634
 Virial quotient                       -3.48240902
 Correlation energy                    -0.22937564
 !MRCI STATE 14.1 Energy              -25.213142832081

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23555219 (Davidson, fixed reference)
 Cluster corrected energies           -25.23555219 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23555219 (Davidson, rotated reference)

 Cluster corrected energies           -25.23077820 (Pople, fixed reference)
 Cluster corrected energies           -25.23077820 (Pople, relaxed reference)
 Cluster corrected energies           -25.23077820 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95446222 (fixed)   0.95446222 (relaxed)   0.95446222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00509805   -0.01021254   -0.15366722
 Singles      0.02902747   -0.06186494   -0.06242625
 Pairs        0.06357157   -0.00000000   -0.01328216
 Total        1.09769709   -0.07207748   -0.22937564
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98376719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24014549
 One electron energy                  -41.81397165
 Two electron energy                   16.60082882
 Virial quotient                       -3.48240831
 Correlation energy                    -0.22937564
 !MRCI STATE 15.1 Energy              -25.213142831876

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23555216 (Davidson, fixed reference)
 Cluster corrected energies           -25.23555216 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23555216 (Davidson, rotated reference)

 Cluster corrected energies           -25.23077818 (Pople, fixed reference)
 Cluster corrected energies           -25.23077818 (Pople, relaxed reference)
 Cluster corrected energies           -25.23077818 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95446231 (fixed)   0.95446231 (relaxed)   0.95446231 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00509804   -0.01021253   -0.01036889
 Singles      0.02902740   -0.06186491   -0.06242625
 Pairs        0.06357144   -0.15729819   -0.15658049
 Total        1.09769689   -0.22937564   -0.22937564
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98376719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24014573
 One electron energy                  -41.81397098
 Two electron energy                   16.60082815
 Virial quotient                       -3.48240820
 Correlation energy                    -0.22937564
 !MRCI STATE 16.1 Energy              -25.213142831672

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23555212 (Davidson, fixed reference)
 Cluster corrected energies           -25.23555212 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23555212 (Davidson, rotated reference)

 Cluster corrected energies           -25.23077814 (Pople, fixed reference)
 Cluster corrected energies           -25.23077814 (Pople, relaxed reference)
 Cluster corrected energies           -25.23077814 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       8      117.38       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        59.58     35.74     21.55      0.69      0.85      0.02      0.50
 REAL TIME  *        73.20 SEC
 DISK USED  *       149.31 MB (local),        2.40 GB (total)
 SF USED    *       761.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.30662741  AU                              
 SETTING HLSDIAG(14)    =       -25.30662741  AU                              
 SETTING HLSDIAG(15)    =       -25.30662741  AU                              
 SETTING HLSDIAG(16)    =       -25.30662741  AU                              
 SETTING HLSDIAG(17)    =       -25.30662517  AU                              
 SETTING HLSDIAG(18)    =       -25.24812472  AU                              
 SETTING HLSDIAG(19)    =       -25.24812472  AU                              
 SETTING HLSDIAG(20)    =       -25.24812471  AU                              
 SETTING HLSDIAG(21)    =       -25.24812470  AU                              
 SETTING HLSDIAG(22)    =       -25.24812471  AU                              
 SETTING HLSDIAG(23)    =       -25.24812471  AU                              
 SETTING HLSDIAG(24)    =       -25.24812471  AU                              
 SETTING HLSDIAG(25)    =       -25.23558357  AU                              
 SETTING HLSDIAG(26)    =       -25.23555219  AU                              
 SETTING HLSDIAG(27)    =       -25.23555216  AU                              
 SETTING HLSDIAG(28)    =       -25.23555212  AU                              


        HLSDIAG
    -25.35293393
    -25.29561249
    -25.29561240
    -25.29561232
    -25.29561233
    -25.29561232
    -25.23662833
    -25.23662842
    -25.23662836
    -25.23662840
    -25.23662835
    -25.23008401
    -25.30662741
    -25.30662741
    -25.30662741
    -25.30662741
    -25.30662517
    -25.24812472
    -25.24812472
    -25.24812471
    -25.24812470
    -25.24812471
    -25.24812471
    -25.24812471
    -25.23558357
    -25.23555219
    -25.23555216
    -25.23555212
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      117.38       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        60.33      0.72     35.74     21.55      0.69      0.85      0.02      0.50
 REAL TIME  *        74.01 SEC
 DISK USED  *       149.43 MB (local),        2.40 GB (total)
 SF USED    *       761.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:    -25.330114    -25.272155    -25.272155    -25.272155    -25.272155    -25.272155    -25.210602    -25.210602
                       -25.210602    -25.210602    -25.210602    -25.209336
 Replaced energies:    -25.352934    -25.295612    -25.295612    -25.295612    -25.295612    -25.295612    -25.236628    -25.236628
                       -25.236628    -25.236628    -25.236628    -25.230084

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.286038    -25.286038    -25.286038    -25.286038    -25.286038    -25.228291    -25.228291    -25.228291
                       -25.228291    -25.228291    -25.228291    -25.228291    -25.215736    -25.213143    -25.213143    -25.213143
 Replaced energies:    -25.306627    -25.306627    -25.306627    -25.306627    -25.306625    -25.248125    -25.248125    -25.248125
                       -25.248125    -25.248125    -25.248125    -25.248125    -25.235584    -25.235552    -25.235552    -25.235552



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.35293393

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12580.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12580.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12580.64       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12580.64       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12580.64       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25526.13       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25526.11       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25526.12       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25526.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00     -72.97       0.00      -0.00       0.00      27.60      -0.00
                            0.00    -126.47     -72.82      -0.00      -0.00       0.00       0.00     -54.80      -0.00      -6.59

   14   2.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00    -127.94     -48.39      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     124.78       0.00       0.00       0.00      -0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.00      -0.00      -0.00      72.97      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     -72.97     -27.60      -0.00      -0.00      -0.00

   16   4.1  1.0  1.0       0.00     126.30     -73.12       0.00      -0.00       0.00      -0.00      21.69      -0.00      50.76
                           -0.00      -0.00      -0.00      -0.00      72.97       0.00      -0.00      -0.00     -27.60      -0.00

   17   5.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00      70.21      26.55      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      75.68       0.00       0.00       0.00      -0.00      -0.00       0.00

   18   6.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00      28.06     -89.61      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      28.06       0.00      -0.00       0.00      -0.00       0.00      -0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00      33.46      -0.00       0.00      -0.00     106.84       0.00
                           -0.00     -17.22     -23.51       0.00       0.00      -0.00      -0.00      89.00       0.00     -27.20

   20   8.1  1.0  1.0      -0.00       1.41     -33.91      -0.00      -0.00       0.00      -0.00      61.25      -0.00     -89.43
                           -0.00      -0.00       0.00       0.00     -34.75      -0.00       0.00       0.00    -110.97       0.00

   21   9.1  1.0  1.0      -0.00       0.00      -0.00     -28.04      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      28.09     -89.70       0.00      -0.00       0.00

   22  10.1  1.0  1.0      -0.00       0.00      -0.00      21.77       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      21.70     -69.30      -0.00      -0.00       0.00

   23  11.1  1.0  1.0       0.00      30.72      10.45      -0.00      -0.00      -0.00       0.00     -98.55      -0.00     -32.02
                           -0.00      -0.00      -0.00       0.00      -7.24      -0.00       0.00      -0.00     -23.11      -0.00

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00     -11.86      -0.00      -0.00       0.00     -37.87      -0.00
                           -0.00     -25.46      26.61       0.00       0.00      -0.00       0.00      14.21       0.00     116.72

   25  13.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   26  14.1  1.0  1.0      -0.00       0.00      -0.00      33.29      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      33.29    -128.68      -0.00      -0.00       0.00

   27  15.1  1.0  1.0      11.05      19.26      33.27       0.00      -0.00       0.00       0.00    -136.64      -0.00      58.39
                           -0.00      -0.00       0.00      -0.00     -33.29       0.00       0.00       0.00    -128.68       0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00      -0.00     -33.29       0.00      -0.00       0.00    -128.68       0.00
                           11.05      19.18     -33.32      -0.00      -0.00       0.00      -0.00      17.75      -0.00    -147.52

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -103.19     -39.03      -0.00       0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -4.47       0.00      -0.00       0.00       1.69       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.24    -206.39      -0.00       0.00       0.00      -0.00     -46.83      -0.00      62.45

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     103.19      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     206.32      -0.00       0.00      -0.00     -78.03       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -39.69      -0.00       0.00       0.00    -126.73       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      28.07     -89.63      -0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -2.38      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02     -39.69       0.00      -0.00       0.00      -0.00      75.86      -0.00    -101.52

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      53.25      -0.01      -0.00      -0.00      -0.00       0.00    -136.13      -0.00    -101.88

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -50.15      -0.00       0.00       0.00      -0.00       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      41.62    -132.91      -0.00       0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.63     -54.37       0.06       0.00       0.00      -0.00       0.00     168.12      -0.00     126.06

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      47.09      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      47.09    -181.98       0.00       0.00       0.00

   45   1.1  1.0 -1.0       0.00      -0.00       0.00      -0.00     -72.97       0.00      -0.00       0.00      27.60      -0.00
                           -0.00     126.47      72.82       0.00       0.00      -0.00      -0.00      54.80       0.00       6.59

   46   2.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00    -127.94     -48.39      -0.00      -0.00       0.00
                           -0.00       0.00       0.00    -124.78      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      72.97      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00      72.97      27.60       0.00       0.00       0.00

   48   4.1  1.0 -1.0       0.00     126.30     -73.12       0.00      -0.00       0.00      -0.00      21.69      -0.00      50.76
                            0.00       0.00       0.00       0.00     -72.97      -0.00       0.00       0.00      27.60       0.00

   49   5.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00      70.21      26.55      -0.00      -0.00       0.00
                            0.00       0.00      -0.00     -75.68      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00      28.06     -89.61      -0.00       0.00      -0.00
                            0.00       0.00       0.00     -28.06      -0.00       0.00      -0.00       0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00       0.00      33.46      -0.00       0.00      -0.00     106.84       0.00
                            0.00      17.22      23.51      -0.00      -0.00       0.00       0.00     -89.00      -0.00      27.20

   52   8.1  1.0 -1.0      -0.00       1.41     -33.91      -0.00      -0.00       0.00      -0.00      61.25      -0.00     -89.43
                            0.00       0.00      -0.00      -0.00      34.75       0.00      -0.00      -0.00     110.97      -0.00

   53   9.1  1.0 -1.0      -0.00       0.00      -0.00     -28.04      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -28.09      89.70      -0.00       0.00      -0.00

   54  10.1  1.0 -1.0      -0.00       0.00      -0.00      21.77       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -21.70      69.30       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00      30.72      10.45      -0.00      -0.00      -0.00       0.00     -98.55      -0.00     -32.02
                            0.00       0.00       0.00      -0.00       7.24       0.00      -0.00       0.00      23.11       0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00     -11.86      -0.00      -0.00       0.00     -37.87      -0.00
                            0.00      25.46     -26.61      -0.00      -0.00       0.00      -0.00     -14.21      -0.00    -116.72

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0      -0.00       0.00      -0.00      33.29      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     -33.29     128.68       0.00       0.00      -0.00

   59  15.1  1.0 -1.0      11.05      19.26      33.27       0.00      -0.00       0.00       0.00    -136.64      -0.00      58.39
                            0.00       0.00      -0.00       0.00      33.29      -0.00      -0.00      -0.00     128.68      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -33.29       0.00      -0.00       0.00    -128.68       0.00
                          -11.05     -19.18      33.32       0.00       0.00      -0.00       0.00     -17.75       0.00     147.52


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00     126.30      -0.00      -0.00      -0.00       1.41
                            0.00       0.00     126.47       0.00       0.00       0.00       0.00       0.00      17.22       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00     -73.12      -0.00       0.00       0.00     -33.91
                            0.00       0.00      72.82       0.00      -0.00       0.00      -0.00       0.00      23.51      -0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00      -0.00      72.97       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00    -124.78       0.00       0.00     -75.68     -28.06      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00     -72.97      -0.00      -0.00      -0.00       0.00       0.00      33.46      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -72.97      -0.00      -0.00      -0.00      34.75

    6   6.1  0.0  0.0       0.00       0.00       0.00    -127.94       0.00       0.00      70.21      28.06      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      72.97      -0.00      -0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00     -48.39      -0.00      -0.00      26.55     -89.61       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      27.60       0.00      -0.00      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      21.69      -0.00      -0.00      -0.00      61.25
                            0.00       0.00      54.80       0.00       0.00       0.00       0.00       0.00     -89.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00      27.60      -0.00       0.00      -0.00      -0.00       0.00     106.84      -0.00
                            0.00       0.00       0.00      -0.00       0.00      27.60       0.00      -0.00      -0.00     110.97

   10  10.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      50.76       0.00      -0.00       0.00     -89.43
                            0.00       0.00       6.59       0.00       0.00       0.00      -0.00       0.00      27.20      -0.00

   11  11.1  0.0  0.0   25526.12       0.00       0.00       0.00      27.60       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00     -47.19      -0.00       0.00     -28.62      89.61      -0.00       0.00

   12  12.1  0.0  0.0       0.00   26962.44      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -0.00   10163.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     100.20      -0.00      -0.00      -0.00      -0.28

   14   2.1  1.0  1.0       0.00      -0.00       0.00   10163.10       0.00       0.00       0.00       0.00       0.00       0.00
                           47.19      -0.00      -0.00       0.00       4.34       0.00       0.00      -0.00       0.00       0.00

   15   3.1  1.0  1.0      27.60      -0.00       0.00       0.00   10163.11       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -4.34       0.00      -0.00     200.32      -4.67       0.00      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   10163.11       0.00       0.00       0.00       0.00
                           -0.00       0.00    -100.20      -0.00       0.00      -0.00       0.00      -0.00       3.30      -0.00

   17   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   10163.60       0.00       0.00       0.00
                           28.62      -0.00       0.00      -0.00    -200.32      -0.00       0.00      -0.00      -0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96       0.00       0.00
                          -89.61      -0.00       0.00       0.00       4.67       0.00       0.00      -0.00      -0.00      -0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -3.30       0.00       0.00      -0.00    -224.80

   20   8.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96
                           -0.00       0.00       0.28      -0.00       0.00       0.00      -0.00       0.00     224.80       0.00

   21   9.1  1.0  1.0      89.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.11      -0.00      -0.00       4.66    -182.91      -0.00      -0.00

   22  10.1  1.0  1.0     -69.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -6.26      -0.00       0.00      -0.14       0.23      -0.00       0.00

   23  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       5.90      -0.00       0.00       0.00       0.00       0.00     -61.85      -0.00

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -4.90       0.00       0.00      -0.00     156.83

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   26  14.1  1.0  1.0    -128.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.58      -0.00      -0.00      -0.01       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00      34.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.50       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      34.02       0.00      -0.00       0.00       0.50      -0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00      -0.00       0.00      70.85       0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00    -121.15      -0.00       0.00     -73.48      -3.30      -0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00     124.22       0.00      -0.00      -0.00       0.26
                           -0.00      -0.00     121.15       0.00       0.00       0.00       0.00       0.00       1.96       0.00

   31   3.1  1.0  0.0       0.00       0.00     -70.85       0.00       0.00      -0.00      -0.00      -0.00       3.94      -0.00
                            0.00      -0.00       0.00      -0.00       0.00     -70.85      -0.00       0.00       0.00       4.09

   32   4.1  1.0  0.0       0.00       0.00      -0.00    -124.22       0.00      -0.00      68.17       3.30       0.00       0.00
                           39.03      -0.00      -0.00      -0.00      70.85       0.00      -0.00       0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00     -68.17       0.00       0.00       0.00      -3.98
                           -0.00       0.00      73.48      -0.00       0.00       0.00      -0.00       0.00       2.81       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -3.30      -0.00      -0.00       0.00     -83.95
                            0.00       0.00       3.30      -0.00      -0.00      -0.00      -0.00      -0.00     122.84       0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00       0.00      -3.94      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -1.96      -0.00      -0.00      -2.81    -122.84       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.26       0.00      -0.00       3.98      83.95       0.00      -0.00
                            7.59      -0.00      -0.00      -0.00      -4.09       0.00      -0.00      -0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       3.30      -0.00      -0.00       0.00       0.00      -0.00      -8.38       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       3.30       0.00       0.00       0.00     -74.28

   38  10.1  1.0  0.0       0.00       0.00      -2.56      -0.00      -0.00       0.00       0.00      -0.00      88.58       0.00
                            0.00      -0.00       0.00       0.00       0.00       2.55      -0.00      -0.00       0.00      -7.41

   39  11.1  1.0  0.0       0.00       0.00      -0.00      -3.58       0.00       0.00      -1.31      98.39      -0.00       0.00
                          160.13       0.00       0.00      -0.00      -0.85       0.00      -0.00       0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00       0.00       1.40      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -3.07      -0.00      -0.00       3.06     -40.49       0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.36       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      48.12       0.00      -0.00      -0.00      -0.36      -0.00       0.00       0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00       0.20       0.00      -0.00       0.36       0.00      -0.00      -0.00
                         -181.98       0.00      -0.00      -0.00       0.36       0.00      -0.00      -0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.36      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.21      -0.00      -0.00       0.35       0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -47.19       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      27.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.62       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.61       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      89.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0     -69.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0    -128.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00      34.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -34.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      11.05      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.05      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      30.72      -0.00       0.00       0.00      19.26      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      25.46      -0.00       0.00       0.00     -19.18       0.00       0.00

    3   3.1  0.0  0.0      -0.00      -0.00      10.45       0.00      -0.00      -0.00      33.27       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -26.61       0.00      -0.00      -0.00      33.32      -0.00       0.00

    4   4.1  0.0  0.0     -28.04      21.77      -0.00       0.00       0.00      33.29       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    5   5.1  0.0  0.0      -0.00       0.00      -0.00     -11.86       0.00      -0.00      -0.00     -33.29       0.00       0.00
                           -0.00      -0.00       7.24      -0.00      -0.00       0.00      33.29       0.00       0.00       4.47

    6   6.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          -28.09     -21.70       0.00       0.00       0.00     -33.29      -0.00      -0.00     103.19      -0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           89.70      69.30      -0.00      -0.00       0.00     128.68      -0.00       0.00      39.03       0.00

    8   8.1  0.0  0.0       0.00      -0.00     -98.55       0.00      -0.00      -0.00    -136.64       0.00       0.00       0.00
                           -0.00       0.00       0.00     -14.21      -0.00       0.00      -0.00     -17.75       0.00      -0.00

    9   9.1  0.0  0.0       0.00      -0.00      -0.00     -37.87       0.00      -0.00      -0.00    -128.68       0.00       0.00
                            0.00       0.00      23.11      -0.00      -0.00       0.00     128.68       0.00      -0.00      -1.69

   10  10.1  0.0  0.0       0.00       0.00     -32.02      -0.00       0.00      -0.00      58.39       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -116.72       0.00      -0.00      -0.00     147.52       0.00      -0.00

   11  11.1  0.0  0.0      89.53     -69.53      -0.00      -0.00       0.00    -128.68       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   12  12.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       0.00      34.02       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -34.02       0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -5.90       0.00       0.00       0.00      -0.50      -0.00      -0.00    -121.15

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.11       6.26       0.00       0.00       0.00       0.58      -0.00       0.00     121.15      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      70.85      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     124.22
                            0.00      -0.00      -0.00       4.90      -0.00       0.00      -0.00      -0.50      -0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -4.66       0.14      -0.00      -0.00      -0.00       0.01      -0.00       0.00      73.48      -0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                          182.91      -0.23      -0.00      -0.00       0.00      -0.00       0.00      -0.00       3.30      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      61.85       0.00       0.00      -0.00      -0.00       0.00       0.00      -1.96

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.26
                            0.00      -0.00       0.00    -156.83       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   21   9.1  1.0  1.0   23002.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.30       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  1.0       0.00   23002.96       0.00       0.00       0.00       0.00       0.00       0.00       2.56       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   23002.96       0.00       0.00       0.00       0.00       0.00       0.00       3.58
                           -0.00       0.00      -0.00     -68.48       0.00       0.00      -0.00      -0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   23002.97       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      68.48       0.00      -0.00       0.00       0.00      -0.00       0.00      -3.07

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25755.43       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -1.37       0.00      -0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25762.31       0.00       0.00      -0.36      -0.00
                            0.00       0.00      -0.00      -0.00       1.37      -0.00       0.00       0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25762.32       0.00       0.00      -0.20
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     101.27      -0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25762.33       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00    -101.27       0.00      -0.00      -0.21

   29   1.1  1.0  0.0      -3.30       2.56       0.00       0.00       0.00      -0.36       0.00       0.00   10163.10       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       3.58      -0.00       0.00      -0.00      -0.20      -0.00       0.00   10163.10
                            0.00      -0.00       0.00       3.07      -0.00       0.00       0.00       0.21      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00      -1.40       0.00       0.00      -0.00       0.36       0.00       0.00
                           -0.00      -0.00       0.85       0.00      -0.00       0.00      -0.36       0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -3.30      -2.55      -0.00       0.00       0.00       0.36      -0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -0.00       1.31      -0.00       0.00       0.00      -0.36       0.00       0.00       0.00
                           -0.00       0.00       0.00      -3.06      -0.00       0.00       0.00      -0.35      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00     -98.39       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      40.49       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       8.38     -88.58       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           74.28       7.41      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      -0.00      -0.00     129.22      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     105.69      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00     131.17      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -158.36       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -105.69     158.36      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0    -129.22    -131.17       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.97      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.97      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     -71.61       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00     -71.61      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.97      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      71.61      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      71.61      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.97       0.00      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -121.15

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     121.15       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -70.85       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -124.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      73.48      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.30      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.96

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.30      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.56      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -3.07

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.36       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.21


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24       0.00       0.00      -0.00      -0.00      -0.00      -0.02     -53.25      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          206.39       0.00       0.00       0.00       0.00      -0.00      39.69       0.01       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -103.19       0.00       0.00       0.00       2.38      -0.00       0.00      50.15      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -206.32      39.69      -0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -28.07       0.00      -0.00       0.00      -0.00     -41.62

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      89.63       0.00       0.00      -0.00      -0.00     132.91

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           46.83       0.00       0.00      -0.00       0.00       0.00     -75.86     136.13       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      78.03     126.73       0.00       0.00       0.00       0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.45       0.00      -0.00      -0.00      -0.00       0.00     101.52     101.88       0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -39.03       0.00      -0.00       0.00      -7.59       0.00      -0.00    -160.13       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0     -70.85      -0.00       0.00      -0.00      -0.00       0.00       3.30      -2.56      -0.00      -0.00
                           -0.00       0.00     -73.48      -3.30      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00    -124.22      -0.00       0.00       0.00      -0.26      -0.00      -0.00      -3.58       0.00
                            0.00       0.00       0.00       0.00       1.96       0.00       0.00      -0.00       0.00       3.07

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00      -3.94       0.00      -0.00      -0.00       0.00       1.40
                           -0.00     -70.85      -0.00       0.00       0.00       4.09      -0.00      -0.00       0.85       0.00

   16   4.1  1.0  1.0      -0.00      -0.00     -68.17      -3.30      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           70.85      -0.00      -0.00       0.00       0.00      -0.00      -3.30      -2.55      -0.00       0.00

   17   5.1  1.0  1.0      -0.00      68.17       0.00      -0.00      -0.00       3.98       0.00       0.00      -1.31       0.00
                            0.00       0.00       0.00       0.00       2.81       0.00      -0.00       0.00       0.00      -3.06

   18   6.1  1.0  1.0      -0.00       3.30       0.00      -0.00      -0.00      83.95      -0.00      -0.00      98.39      -0.00
                           -0.00      -0.00      -0.00       0.00     122.84       0.00      -0.00       0.00      -0.00      40.49

   19   7.1  1.0  1.0       3.94       0.00       0.00       0.00      -0.00       0.00      -8.38      88.58      -0.00      -0.00
                           -0.00      -0.00      -2.81    -122.84      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   8.1  1.0  1.0      -0.00       0.00      -3.98     -83.95      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -4.09       0.00      -0.00      -0.00       0.00      -0.00      74.28       7.41      -0.00       0.00

   21   9.1  1.0  1.0       0.00      -0.00      -0.00       0.00       8.38      -0.00      -0.00       0.00       0.00    -129.22
                            0.00       3.30       0.00       0.00       0.00     -74.28      -0.00       0.00     105.69      -0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.00       0.00     -88.58      -0.00      -0.00      -0.00       0.00    -131.17
                            0.00       2.55      -0.00      -0.00       0.00      -7.41      -0.00       0.00    -158.36       0.00

   23  11.1  1.0  1.0      -0.00      -0.00       1.31     -98.39       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.85       0.00      -0.00       0.00       0.00       0.00    -105.69     158.36       0.00       0.00

   24  12.1  1.0  1.0      -1.40       0.00      -0.00       0.00       0.00       0.00     129.22     131.17      -0.00      -0.00
                           -0.00      -0.00       3.06     -40.49       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.36      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   27  15.1  1.0  1.0      -0.00       0.00      -0.36      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.36       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   28  16.1  1.0  1.0       0.36       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.35       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10163.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10163.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10163.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   23002.96       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   23002.96       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   23002.96       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23002.97       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.97
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      70.85       0.00      -0.00       0.00       0.00      -0.00      -3.30       2.56       0.00       0.00
                           -0.00       0.00     -73.48      -3.30      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00     124.22       0.00      -0.00      -0.00       0.26       0.00       0.00       3.58      -0.00
                            0.00       0.00       0.00       0.00       1.96       0.00       0.00      -0.00       0.00       3.07

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       3.94      -0.00       0.00       0.00      -0.00      -1.40
                            0.00     -70.85      -0.00       0.00       0.00       4.09      -0.00      -0.00       0.85       0.00

   48   4.1  1.0 -1.0       0.00      -0.00      68.17       3.30       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           70.85       0.00      -0.00       0.00       0.00      -0.00      -3.30      -2.55      -0.00       0.00

   49   5.1  1.0 -1.0       0.00     -68.17       0.00       0.00       0.00      -3.98      -0.00      -0.00       1.31      -0.00
                            0.00       0.00      -0.00       0.00       2.81       0.00      -0.00       0.00       0.00      -3.06

   50   6.1  1.0 -1.0       0.00      -3.30      -0.00      -0.00       0.00     -83.95       0.00       0.00     -98.39       0.00
                           -0.00      -0.00      -0.00      -0.00     122.84       0.00      -0.00       0.00      -0.00      40.49

   51   7.1  1.0 -1.0      -3.94      -0.00      -0.00      -0.00      -0.00      -0.00       8.38     -88.58       0.00       0.00
                           -0.00      -0.00      -2.81    -122.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -0.00       3.98      83.95       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -4.09       0.00      -0.00      -0.00       0.00       0.00      74.28       7.41      -0.00       0.00

   53   9.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -8.38       0.00      -0.00      -0.00      -0.00     129.22
                            0.00       3.30       0.00       0.00       0.00     -74.28       0.00       0.00     105.69      -0.00

   54  10.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      88.58       0.00       0.00      -0.00      -0.00     131.17
                            0.00       2.55      -0.00      -0.00       0.00      -7.41      -0.00      -0.00    -158.36       0.00

   55  11.1  1.0 -1.0       0.00       0.00      -1.31      98.39      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.85       0.00      -0.00       0.00       0.00       0.00    -105.69     158.36      -0.00       0.00

   56  12.1  1.0 -1.0       1.40      -0.00       0.00      -0.00      -0.00      -0.00    -129.22    -131.17       0.00      -0.00
                           -0.00      -0.00       3.06     -40.49       0.00      -0.00       0.00      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   58  14.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.36      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00      -0.00       0.36       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.36       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   60  16.1  1.0 -1.0      -0.36      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.35       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00     -15.63      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     126.30      -0.00      -0.00
                           -0.00      54.37       0.00      -0.00    -126.47      -0.00      -0.00      -0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -73.12      -0.00       0.00
                            0.00      -0.06       0.00      -0.00     -72.82      -0.00       0.00      -0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      72.97       0.00       0.00       0.00
                           -0.00      -0.00     -47.09      -0.00      -0.00     124.78      -0.00      -0.00      75.68      28.06

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00     -72.97      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      72.97       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    -127.94       0.00       0.00      70.21      28.06
                            0.00       0.00       0.00     -47.09       0.00       0.00     -72.97       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -48.39      -0.00      -0.00      26.55     -89.61
                           -0.00      -0.00      -0.00     181.98       0.00       0.00     -27.60      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      21.69      -0.00      -0.00
                            0.00    -168.12       0.00      -0.00     -54.80      -0.00      -0.00      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      27.60      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     -27.60      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      50.76       0.00      -0.00
                           -0.00    -126.06      -0.00      -0.00      -6.59      -0.00      -0.00      -0.00       0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      27.60       0.00      -0.00       0.00
                           -0.00      -0.00     181.98       0.00       0.00      47.19       0.00      -0.00      28.62     -89.61

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     -48.12      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.36      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00       0.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.21       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00      -0.00       0.00      -0.36       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.35       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00      -0.00       0.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.97       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00      -0.00      71.61       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -71.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.97       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      71.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00     -71.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -70.85      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    -121.15      -0.00       0.00     -73.48      -3.30

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -124.22      -0.00       0.00
                            0.00       0.00       0.00       0.00     121.15      -0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      70.85      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -70.85      -0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     124.22      -0.00      -0.00     -68.17      -3.30
                            0.00       0.00       0.00       0.00      -0.00      -0.00      70.85      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      68.17       0.00      -0.00
                            0.00       0.00       0.00       0.00      73.48      -0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.30       0.00      -0.00
                            0.00       0.00       0.00       0.00       3.30      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       3.94       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -1.96      -0.00      -0.00      -2.81    -122.84

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.26      -0.00       0.00      -3.98     -83.95
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -4.09       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -3.30       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       3.30       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       2.56       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.55      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       3.58      -0.00      -0.00       1.31     -98.39
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.85       0.00      -0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -1.40       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -3.07      -0.00      -0.00       3.06     -40.49

   41  13.1  1.0  0.0   25755.43       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00   25762.31       0.00       0.00      -0.36      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.36      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00   25762.32       0.00       0.00      -0.20      -0.00       0.00      -0.36      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.36       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   25762.33       0.00      -0.00       0.36       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.21      -0.00      -0.00       0.35       0.00

   45   1.1  1.0 -1.0       0.00      -0.36       0.00       0.00   10163.10       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -100.20       0.00       0.00

   46   2.1  1.0 -1.0       0.00      -0.00      -0.20      -0.00       0.00   10163.10       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.21       0.00      -0.00      -4.34      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00      -0.00       0.36       0.00       0.00   10163.11       0.00       0.00       0.00
                           -0.00       0.00      -0.36       0.00       0.00       4.34      -0.00       0.00    -200.32       4.67

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   10163.11       0.00       0.00
                            0.00       0.36      -0.00       0.00     100.20       0.00      -0.00       0.00      -0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00      -0.36       0.00       0.00       0.00       0.00       0.00   10163.60       0.00
                           -0.00       0.00       0.00      -0.35      -0.00       0.00     200.32       0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   23002.96
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -4.67      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       3.30      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.28       0.00      -0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.11       0.00       0.00      -4.66     182.91

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       6.26       0.00      -0.00       0.14      -0.23

   55  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -5.90       0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       4.90      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.97       0.00       0.00       0.00      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0      -0.00      -0.00       0.00     -71.61       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -71.61      -0.00       0.00       0.58       0.00       0.00       0.01      -0.00

   59  15.1  1.0 -1.0       0.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      71.61      -0.00       0.00      -0.50      -0.00      -0.00      -0.00      -0.00       0.00

   60  16.1  1.0 -1.0       0.00      71.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.50       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      11.05      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.05

    2   2.1  0.0  0.0      -0.00       1.41       0.00       0.00      30.72      -0.00       0.00       0.00      19.26      -0.00
                          -17.22      -0.00       0.00       0.00      -0.00     -25.46       0.00      -0.00      -0.00      19.18

    3   3.1  0.0  0.0       0.00     -33.91      -0.00      -0.00      10.45       0.00      -0.00      -0.00      33.27       0.00
                          -23.51       0.00       0.00       0.00      -0.00      26.61      -0.00       0.00       0.00     -33.32

    4   4.1  0.0  0.0       0.00      -0.00     -28.04      21.77      -0.00       0.00       0.00      33.29       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    5   5.1  0.0  0.0      33.46      -0.00      -0.00       0.00      -0.00     -11.86       0.00      -0.00      -0.00     -33.29
                            0.00     -34.75       0.00       0.00      -7.24       0.00       0.00      -0.00     -33.29      -0.00

    6   6.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      28.09      21.70      -0.00      -0.00      -0.00      33.29       0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00     -89.70     -69.30       0.00       0.00      -0.00    -128.68       0.00      -0.00

    8   8.1  0.0  0.0      -0.00      61.25       0.00      -0.00     -98.55       0.00      -0.00      -0.00    -136.64       0.00
                           89.00       0.00       0.00      -0.00      -0.00      14.21       0.00      -0.00       0.00      17.75

    9   9.1  0.0  0.0     106.84      -0.00       0.00      -0.00      -0.00     -37.87       0.00      -0.00      -0.00    -128.68
                            0.00    -110.97      -0.00      -0.00     -23.11       0.00       0.00      -0.00    -128.68      -0.00

   10  10.1  0.0  0.0       0.00     -89.43       0.00       0.00     -32.02      -0.00       0.00      -0.00      58.39       0.00
                          -27.20       0.00       0.00       0.00      -0.00     116.72      -0.00       0.00       0.00    -147.52

   11  11.1  0.0  0.0      -0.00       0.00      89.53     -69.53      -0.00      -0.00       0.00    -128.68       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      34.02       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      34.02

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

   29   1.1  1.0  0.0      -0.00       0.00       3.30      -2.56      -0.00      -0.00      -0.00       0.36      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00      -0.26      -0.00      -0.00      -3.58       0.00      -0.00       0.00       0.20       0.00
                            1.96       0.00       0.00      -0.00       0.00       3.07      -0.00       0.00       0.00       0.21

   31   3.1  1.0  0.0      -3.94       0.00      -0.00      -0.00       0.00       1.40      -0.00      -0.00       0.00      -0.36
                            0.00       4.09      -0.00      -0.00       0.85       0.00      -0.00       0.00      -0.36       0.00

   32   4.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -3.30      -2.55      -0.00       0.00       0.00       0.36      -0.00       0.00

   33   5.1  1.0  0.0      -0.00       3.98       0.00       0.00      -1.31       0.00      -0.00      -0.00       0.36      -0.00
                            2.81       0.00      -0.00       0.00       0.00      -3.06      -0.00       0.00       0.00      -0.35

   34   6.1  1.0  0.0      -0.00      83.95      -0.00      -0.00      98.39      -0.00      -0.00       0.00       0.00      -0.00
                          122.84       0.00      -0.00       0.00      -0.00      40.49       0.00      -0.00       0.00      -0.00

   35   7.1  1.0  0.0      -0.00       0.00      -8.38      88.58      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      74.28       7.41      -0.00       0.00      -0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       8.38      -0.00      -0.00       0.00       0.00    -129.22       0.00      -0.00      -0.00      -0.00
                            0.00     -74.28      -0.00       0.00     105.69      -0.00       0.00       0.00      -0.00       0.00

   38  10.1  1.0  0.0     -88.58      -0.00      -0.00      -0.00       0.00    -131.17       0.00       0.00      -0.00      -0.00
                            0.00      -7.41      -0.00       0.00    -158.36       0.00      -0.00      -0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -105.69     158.36       0.00       0.00      -0.00       0.00       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00     129.22     131.17      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.97       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.97

   42  14.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      71.61
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -71.61      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.97       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      71.61       0.00       0.00

   44  16.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -71.61       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.97       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.28      -0.00      -0.00       5.90      -0.00      -0.00      -0.00       0.50       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.11      -6.26      -0.00      -0.00      -0.00      -0.58       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.30       0.00      -0.00       0.00       0.00      -4.90       0.00      -0.00       0.00       0.50

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.66      -0.14       0.00       0.00       0.00      -0.01       0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -182.91       0.23       0.00       0.00      -0.00       0.00      -0.00       0.00

   51   7.1  1.0 -1.0   23002.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     224.80      -0.00      -0.00     -61.85      -0.00      -0.00       0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00   23002.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -224.80      -0.00      -0.00       0.00      -0.00     156.83      -0.00       0.00       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00   23002.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   23002.96       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   23002.96       0.00       0.00       0.00       0.00       0.00
                           61.85       0.00       0.00      -0.00       0.00      68.48      -0.00      -0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   23002.97       0.00       0.00       0.00       0.00
                            0.00    -156.83      -0.00       0.00     -68.48      -0.00       0.00      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25755.43       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       1.37      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25762.31       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -1.37       0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25762.32       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -101.27

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25762.33
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     101.27      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.35293393 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12580.602       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12580.621       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12580.638       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12580.637       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12580.640       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25526.129       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25526.109
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000    -103.195       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000    -180.930     -68.428      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000     103.195      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000     178.618    -103.407       0.000      -0.000       0.000      -0.000      30.672
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      99.294      37.552      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      39.688    -126.733      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000      47.317      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       2.001     -47.962      -0.000      -0.000       0.000      -0.000      86.614
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000     -39.650      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000      30.792       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      43.445      14.785      -0.000      -0.000      -0.000       0.000    -139.372
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000       0.000     -16.773      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000       0.000      -0.000      47.085      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             15.626      27.240      47.053       0.000      -0.000       0.000       0.000    -193.232
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000      -0.000     -47.085       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000    -103.195     -39.029      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -4.466       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.244    -206.391      -0.000       0.000       0.000      -0.000     -46.826

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     103.195      -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     206.324      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -39.689      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      28.069     -89.632      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -2.376      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.019     -39.689       0.000      -0.000       0.000      -0.000      75.858

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      53.247      -0.014      -0.000      -0.000      -0.000       0.000    -136.132

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -50.146      -0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      41.622    -132.907      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.626     -54.369       0.064       0.000       0.000      -0.000       0.000     168.125

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      47.086      -0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      47.085    -181.982       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -178.862    -102.984      -0.000      -0.000       0.000       0.000     -77.499

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     176.464       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000    -103.195     -39.029      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     103.195       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     107.030       0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      39.688       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -24.348     -33.254       0.000       0.000      -0.000      -0.000     125.861

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -49.148      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      39.726    -126.854       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      30.694     -98.011      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     -10.236      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -36.001      37.626       0.000       0.000      -0.000       0.000      20.096

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      47.085    -181.982      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     -47.086       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.626      27.129     -47.117      -0.000      -0.000       0.000      -0.000      25.107

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     178.618
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000    -103.407
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     103.195       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000    -103.195      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000    -180.930       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000     -68.428      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      30.672
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25526.123       0.000       0.000       0.000      39.029      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25526.112       0.000       0.000      -0.000       0.000      -0.000      71.779
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25526.123       0.000       0.000       0.000      39.029       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26962.442      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             39.029      -0.000       0.000      -0.000   10163.105       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000   10163.105       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      39.029      -0.000       0.000       0.000   10163.105       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      71.779       0.000       0.000       0.000       0.000       0.000   10163.105
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            151.095       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000    -126.470       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000     126.612      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000     -98.324       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000     -45.283      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+            -53.560      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000    -181.982       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      82.571       0.000      48.118       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+           -181.982       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000    -171.337      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.689       0.000      -0.000      -0.000     171.337       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      62.453       0.000      -0.000       0.000      -0.000       0.000    -100.197

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      39.029      -0.000      -0.000      -0.000     100.197       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -78.032       0.000      -0.000       0.000     103.917      -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                             -126.735       0.000       0.000       0.000       4.669      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -2.774      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       7.588      -0.000      -0.000      -0.000      -5.782       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000    -101.522      -0.000       0.000      -0.000      -0.000       0.000       4.674

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000    -101.875       0.000      -0.000       0.000       0.000       0.000       3.610

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000     160.127       0.000       0.000      -0.000      -1.204       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -4.335      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000     126.058       0.000      48.118       0.000      -0.000      -0.000      -0.504

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000    -181.982       0.000      -0.000      -0.000       0.504       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.302      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -9.326       0.000      -0.000      -0.000       0.000       0.000     100.197

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      66.740      -0.000      -0.000       0.000       4.337       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -4.337       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -39.029      -0.000      -0.000       0.000    -100.197      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      40.478      -0.000       0.000      -0.000    -200.324      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -126.733      -0.000       0.000       0.000       4.669       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -38.466       0.000       0.000       0.000      -0.000      -0.000      -3.302

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -156.939       0.000      -0.000       0.000       0.280      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.109      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -6.263      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.686      -0.000       0.000       0.000       5.899      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     165.068      -0.000      -0.000      -0.000      -0.000       0.000      -4.896

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.583      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -181.982       0.000      -0.000       0.000       0.504       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -208.630      -0.000      48.118       0.000      -0.000       0.000       0.504

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000       2.001       0.000       0.000      43.445      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000       0.000       0.000     -47.962      -0.000      -0.000      14.785       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      -0.000     -39.650      30.792      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      47.317      -0.000      -0.000       0.000      -0.000     -16.773
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              99.294      39.688      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              37.552    -126.733       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000      -0.000      -0.000      86.614       0.000      -0.000    -139.372       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000       0.000     151.095      -0.000       0.000      -0.000      -0.000     -53.560
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000      -0.000       0.000    -126.470       0.000       0.000     -45.283      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000      -0.000       0.000     126.612     -98.324      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10163.597       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   23002.963       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   23002.962       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   23002.964       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   23002.967       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   23002.964       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23002.964       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23002.966
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -103.917      -4.669      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       2.774       0.000       0.000      -0.000       0.000       4.335

    3    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       5.782      -0.000      -0.000       1.204       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -4.674      -3.610      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       3.974       0.000      -0.000       0.000       0.000      -4.326

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000     173.717       0.000      -0.000       0.000      -0.000      57.261

    7    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -3.974    -173.717       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000     105.054      10.473      -0.000       0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000    -105.054       0.000       0.000     149.468      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000     -10.473      -0.000       0.000    -223.954       0.000

   11    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000    -149.468     223.954       0.000       0.000

   12    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                4.326     -57.261       0.000      -0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.001      -0.000       0.000      -0.001       0.000

   15    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.001      -0.000       0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.498       0.002       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.280       0.000       0.000      -5.899       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.109       6.263       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              200.324      -4.669       0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       3.302      -0.000       0.000      -0.000      -0.000       4.896

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -4.665       0.141      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     182.914      -0.226      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -224.799       0.000       0.000      61.846       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     224.799       0.000       0.000      -0.000       0.000    -156.825

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.665    -182.914      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.141       0.226      -0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -61.846      -0.000      -0.000       0.000      -0.000     -68.480

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     156.825       0.000      -0.000      68.480       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.013       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.002       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.001       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              -0.000      -0.000      15.626      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000      27.240      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.244       0.000

    3    1  |0 0>              -0.000      -0.000      47.053       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     206.391       0.000

    4    1  |0 0>               0.000      47.085       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -103.195

    5    1  |0 0>               0.000      -0.000      -0.000     -47.085       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       4.466      -0.000       0.000

    6    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     103.195      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      39.029       0.000       0.000       0.000

    8    1  |0 0>              -0.000      -0.000    -193.232       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      46.826       0.000

    9    1  |0 0>               0.000      -0.000      -0.000    -181.982       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -1.689       0.000      -0.000

   10    1  |0 0>               0.000      -0.000      82.571       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -62.453       0.000

   11    1  |0 0>               0.000    -181.982       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     -39.029

   12    1  |0 0>              -0.000       0.000      48.118       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000    -171.337      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     171.337       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -100.197

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     100.197       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     103.917      -0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       4.669      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -2.774      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -5.782       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       4.674

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       3.610

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -1.204       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -4.335      -0.000      -0.000

   13    1  |1 1>+          25755.427       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000   25762.313       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.504

   15    1  |1 1>+              0.000       0.000   25762.319       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.504       0.000

   16    1  |1 1>+              0.000       0.000       0.000   25762.330      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.302      -0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000   10163.105       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000   10163.105       0.000       0.000
                               -0.000       0.000       0.000       0.302      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000   10163.105       0.000
                               -0.000       0.000      -0.504       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000   10163.105
                                0.000       0.504      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.498      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.002      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.001      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       1.368      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -101.265      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     101.265       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.368       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -100.197      -0.000
                                0.000       0.000      -0.504      -0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -175.673
                                0.000       0.583      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     100.197      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     175.673      -0.000       0.000
                               -0.000       0.000      -0.000      -0.504       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      96.407
                               -0.000       0.013      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       4.669
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       5.567       0.000
                                0.000      -0.000      -0.002       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.364      -0.000       0.000
                                0.000      -0.000      -0.000      -0.001       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -4.665       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       3.622       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       5.070      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -1.973       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -1.368       0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -0.504      -0.000       0.000       0.000
                                1.368      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.280      -0.000       0.000
                               -0.000      -0.000      -0.000     101.265       0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.504       0.000
                                0.000      -0.000    -101.265       0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.019     -53.247      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      39.689       0.014       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       2.376      -0.000       0.000      50.146      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -206.324      39.689      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -28.069       0.000      -0.000       0.000      -0.000     -41.622

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      89.632       0.000       0.000      -0.000      -0.000     132.907

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -75.858     136.132       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               78.032     126.735       0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     101.522     101.875       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -7.588       0.000      -0.000    -160.127       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -103.917      -4.669      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       2.774       0.000       0.000      -0.000       0.000       4.335

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       5.782      -0.000      -0.000       1.204       0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -4.674      -3.610      -0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       3.974       0.000      -0.000       0.000       0.000      -4.326

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000     173.717       0.000      -0.000       0.000      -0.000      57.261

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -3.974    -173.717       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000     105.054      10.473      -0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000    -105.054       0.000       0.000     149.468      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000     -10.473      -0.000       0.000    -223.954       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000    -149.468     223.954       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                4.326     -57.261       0.000      -0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.001      -0.000       0.000      -0.001       0.000

   15    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.001      -0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.498       0.002       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10163.597       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   23002.963       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   23002.962       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   23002.964       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   23002.967       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23002.964       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23002.964       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23002.966
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -0.000       0.000       4.665      -3.622      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.000      -0.364      -0.000      -0.000      -5.070       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000      -5.567       0.000      -0.000      -0.000       0.000       1.973
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-            -96.407      -4.669      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000      -0.000      -0.000       5.632       0.000       0.000      -1.854       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000      -0.000     118.727      -0.000      -0.000     139.141      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     -11.858     125.271      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-             -5.632    -118.727      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>-             -0.000       0.000      11.858      -0.000       0.000       0.000       0.000    -182.746
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-             -0.000       0.000    -125.271      -0.000      -0.000       0.000       0.000    -185.506
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              1.854    -139.141       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-             -0.000       0.000       0.000       0.000     182.746     185.506      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000      -0.000      -0.001       0.000       0.000      -0.000       0.000      -0.001
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>-             -0.511      -0.001       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.626      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      54.369       0.000      -0.000     178.862       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.064       0.000      -0.000     102.984       0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -47.086      -0.000       0.000    -176.464       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000    -103.195

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -47.085      -0.000      -0.000     103.195      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     181.982      -0.000      -0.000      39.029       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -168.125       0.000      -0.000      77.499       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      39.029

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -126.058      -0.000      -0.000       9.326       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     181.982       0.000      -0.000     -66.740      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -48.118      -0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000     100.197

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.302      -0.000       0.000       4.337       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.504       0.000      -0.000      -4.337       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.504      -0.000       0.000    -100.197      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.498       0.000      -0.000    -200.324      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.002       0.000       0.000       4.669       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -3.302

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001       0.000       0.000       0.280      -0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.109      -0.000      -0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.001      -0.000      -0.000      -6.263      -0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001       0.000      -0.000       5.899      -0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -4.896

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       1.368      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -101.265      -0.000      -0.000      -0.583      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     101.265       0.000       0.000       0.504       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.368       0.000      -0.000       0.000       0.000      -0.000       0.000       0.504

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     100.197       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     175.673
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000    -100.197       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000    -175.673       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -96.407
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -4.669
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -5.567      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.364       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       4.665      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -3.622      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -5.070       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       1.973      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>           25755.427       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000   25762.313       0.000       0.000       0.504       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   25762.319       0.000      -0.000       0.280       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   25762.330      -0.000       0.000      -0.504      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-             -0.000       0.504      -0.000      -0.000   10163.105       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.280       0.000       0.000   10163.105       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       0.000      -0.504       0.000       0.000   10163.105       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000   10163.105
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -0.000       0.511      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000       0.001      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.001      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000       1.368       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000      -0.000     101.265       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -1.368       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000    -101.265       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      24.348       0.000      -0.000      -0.000       0.000      36.001

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      33.254      -0.000      -0.000      -0.000       0.000     -37.626

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -107.030     -39.688      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      49.148      -0.000      -0.000      10.236      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     -39.726     -30.694       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     126.854      98.011      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -125.861      -0.000      -0.000       0.000       0.000     -20.096

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     156.939       0.000       0.000      32.686      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      38.466      -0.000      -0.000      -0.000       0.000    -165.068

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -40.478     126.733      -0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.280       0.000       0.000      -5.899       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.109       6.263       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              200.324      -4.669       0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       3.302      -0.000       0.000      -0.000      -0.000       4.896

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -4.665       0.141      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     182.914      -0.226      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -224.799       0.000       0.000      61.846       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     224.799       0.000       0.000      -0.000       0.000    -156.825

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.665    -182.914      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.141       0.226      -0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -61.846      -0.000      -0.000       0.000      -0.000     -68.480

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     156.825       0.000      -0.000      68.480       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.013       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.002       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.001       0.000      -0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000      -4.665       3.622       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.364       0.000       0.000       5.070      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       5.567      -0.000       0.000       0.000      -0.000      -1.973
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>              96.407       4.669       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      -5.632      -0.000      -0.000       1.854      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000    -118.727       0.000       0.000    -139.141       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000      11.858    -125.271       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               5.632     118.727       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000      -0.000     -11.858       0.000       0.000      -0.000      -0.000     182.746
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000      -0.000     125.271       0.000       0.000       0.000      -0.000     185.506
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   11    1  |1 0>              -1.854     139.141      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000    -182.746    -185.506       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.001      -0.000      -0.000       0.000      -0.000       0.001
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.511       0.001      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10163.597       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   23002.963       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   23002.962       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   23002.964       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   23002.967       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23002.964       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   23002.964       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23002.966
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
                                0.000       0.000       0.000     -15.626

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -27.129

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      47.117

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      47.086       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -47.085      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     181.982      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -25.107

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     181.982       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     208.630

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -48.118

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.504      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.583      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.504

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.013      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.001

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -1.368       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                                1.368      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     101.265

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000    -101.265       0.000

    1    1  |1 0>               0.000      -0.504       0.000       0.000
                               -0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.280      -0.000
                               -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.504
                               -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000      -0.511       0.000
                                0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.000      -0.001       0.000
                               -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.001       0.000      -0.000
                               -0.000      -0.000       0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

   12    1  |1 0>              -0.000      -0.001      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000      -1.368      -0.000
                                0.000       0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000    -101.265
                                0.000      -0.000      -0.000       0.000

   15    1  |1 0>               1.368      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

   16    1  |1 0>               0.000     101.265      -0.000       0.000
                               -0.000       0.000       0.000       0.000

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

   13    1  |1 1>-          25755.427       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25762.313       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25762.319       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   25762.330
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.35293406    -0.00000013       -0.03      0.00000000        0.00      0.0000
    2   -25.30799700     0.04493692     9862.51      0.04493705     9862.54      1.2228
    3   -25.30799626     0.04493767     9862.68      0.04493780     9862.71      1.2228
    4   -25.30799622     0.04493771     9862.69      0.04493784     9862.72      1.2228
    5   -25.30720110     0.04573282    10037.19      0.04573295    10037.22      1.2445
    6   -25.30720110     0.04573283    10037.20      0.04573296    10037.22      1.2445
    7   -25.30720074     0.04573319    10037.27      0.04573332    10037.30      1.2445
    8   -25.30720068     0.04573325    10037.29      0.04573338    10037.32      1.2445
    9   -25.30719954     0.04573439    10037.54      0.04573452    10037.57      1.2445
   10   -25.30571439     0.04721954    10363.49      0.04721967    10363.52      1.2849
   11   -25.30571439     0.04721954    10363.49      0.04721967    10363.52      1.2849
   12   -25.30571439     0.04721954    10363.49      0.04721967    10363.52      1.2849
   13   -25.30571438     0.04721954    10363.49      0.04721967    10363.52      1.2849
   14   -25.30571371     0.04722022    10363.64      0.04722035    10363.67      1.2849
   15   -25.30571331     0.04722062    10363.73      0.04722075    10363.76      1.2849
   16   -25.30571329     0.04722064    10363.73      0.04722077    10363.76      1.2849
   17   -25.29550260     0.05743133    12604.72      0.05743146    12604.75      1.5628
   18   -25.29550251     0.05743142    12604.74      0.05743155    12604.77      1.5628
   19   -25.29550244     0.05743149    12604.75      0.05743162    12604.78      1.5628
   20   -25.29550244     0.05743149    12604.76      0.05743162    12604.78      1.5628
   21   -25.29550243     0.05743150    12604.76      0.05743163    12604.79      1.5628
   22   -25.24989468     0.10303925    22614.50      0.10303938    22614.53      2.8038
   23   -25.24989468     0.10303925    22614.50      0.10303938    22614.53      2.8038
   24   -25.24989467     0.10303925    22614.50      0.10303938    22614.53      2.8038
   25   -25.24989467     0.10303925    22614.50      0.10303939    22614.53      2.8038
   26   -25.24989467     0.10303926    22614.50      0.10303939    22614.53      2.8038
   27   -25.24854139     0.10439254    22911.51      0.10439267    22911.54      2.8407
   28   -25.24854139     0.10439254    22911.51      0.10439267    22911.54      2.8407
   29   -25.24854139     0.10439254    22911.51      0.10439267    22911.54      2.8407
   30   -25.24854139     0.10439254    22911.51      0.10439267    22911.54      2.8407
   31   -25.24854138     0.10439255    22911.52      0.10439268    22911.54      2.8407
   32   -25.24854138     0.10439255    22911.52      0.10439268    22911.54      2.8407
   33   -25.24854138     0.10439255    22911.52      0.10439268    22911.54      2.8407
   34   -25.24687460     0.10605932    23277.33      0.10605946    23277.36      2.8860
   35   -25.24687460     0.10605932    23277.33      0.10605946    23277.36      2.8860
   36   -25.24687460     0.10605933    23277.33      0.10605946    23277.36      2.8860
   37   -25.24687460     0.10605933    23277.33      0.10605946    23277.36      2.8860
   38   -25.24687459     0.10605933    23277.33      0.10605946    23277.36      2.8860
   39   -25.24687459     0.10605933    23277.33      0.10605946    23277.36      2.8860
   40   -25.24687459     0.10605934    23277.33      0.10605947    23277.36      2.8860
   41   -25.24687459     0.10605934    23277.33      0.10605947    23277.36      2.8860
   42   -25.24687459     0.10605934    23277.33      0.10605947    23277.36      2.8860
   43   -25.23717433     0.11575960    25406.30      0.11575973    25406.32      3.1500
   44   -25.23717431     0.11575962    25406.30      0.11575975    25406.33      3.1500
   45   -25.23717428     0.11575965    25406.31      0.11575978    25406.33      3.1500
   46   -25.23717427     0.11575966    25406.31      0.11575979    25406.34      3.1500
   47   -25.23717425     0.11575967    25406.31      0.11575980    25406.34      3.1500
   48   -25.23649731     0.11643662    25554.88      0.11643675    25554.91      3.1684
   49   -25.23601376     0.11692017    25661.01      0.11692030    25661.04      3.1816
   50   -25.23601373     0.11692020    25661.02      0.11692033    25661.05      3.1816
   51   -25.23601372     0.11692021    25661.02      0.11692034    25661.05      3.1816
   52   -25.23558339     0.11735054    25755.47      0.11735067    25755.50      3.1933
   53   -25.23558339     0.11735054    25755.47      0.11735067    25755.50      3.1933
   54   -25.23558339     0.11735054    25755.47      0.11735067    25755.50      3.1933
   55   -25.23443445     0.11849947    26007.63      0.11849960    26007.66      3.2245
   56   -25.23443444     0.11849949    26007.63      0.11849962    26007.66      3.2245
   57   -25.23443442     0.11849951    26007.64      0.11849964    26007.66      3.2245
   58   -25.23443442     0.11849951    26007.64      0.11849964    26007.67      3.2245
   59   -25.23443441     0.11849952    26007.64      0.11849965    26007.67      3.2245
   60   -25.23006152     0.12287241    26967.38      0.12287254    26967.41      3.3435

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999944  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.09774695 -0.01505475  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.01505459  0.09774589  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00006680 -0.00000000  0.00000000  0.00000000  0.00000000 -0.09889935
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000322  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00006360 -0.00000000 -0.00000000  0.09889896  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000422 -0.00000000 -0.00000000  0.00613913  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00541871  0.00288586  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00288586 -0.00541871 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000442 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00613919
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000327  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.54771353 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000635 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.30471501 -0.00000000 -0.00000000  0.71211447  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.54769099 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40691632
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.63298602  0.50936179 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.55387620  0.00000000  0.00000000 -0.39097688 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00005138  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000687 -0.00006166 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00005102
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00003989
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00005841  0.00001033  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00002903 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018481
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00061136 -0.00000000  0.00000000 -0.00000000 -0.00013378 -0.00016625 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00002913 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.54807428 -0.00000000 -0.00000000  0.40578935  0.00000000

   2    1  |1 0>          -0.00000000  0.00000733 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.63230797  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002  0.00000000  0.00000000  0.00000000  0.12462682  0.80286284  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.54807508  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40577672

   5    1  |1 0>          -0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01365426  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00003658  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000347

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000779 -0.00005071 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00006798 -0.00001049  0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00006479

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000  0.00005359  0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00061134  0.00000000 -0.00000000  0.00000000  0.00021087 -0.00003273  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00002928  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018479

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00002927  0.00000000  0.00000000 -0.00018479 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.75761334  0.29350153  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.32843076  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.69451413

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.54770840 -0.00000000 -0.00000000  0.40687381  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000635  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.54773176 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.54016805 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.42142097

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00005139

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003766 -0.00003769 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000030 -0.00000000 -0.00000000  0.00005113  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003976  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003858  0.00005513  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00002904  0.00000000  0.00000000 -0.00018481 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00002914  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00061136  0.00000000  0.00000000  0.00000000 -0.00007709  0.00019899  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000 -0.00004848  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.09890498 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00007413 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004534
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000245
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00613900  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000405  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000262  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.40666715  0.43041176 -0.00000013  0.00000002  0.00000002  0.58969542  0.00000000 -0.00000000
                           0.00000004  0.00019848 -0.00000000 -0.00000001  0.00000000 -0.00000037 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000018 -0.60954574  0.00000009 -0.00000000  0.00000000  0.00000000  0.15318360
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000001  0.00000005  0.34186714 -0.00000005  0.00000000 -0.64493709  0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000003  0.00000000 -0.00000009 -0.57735015 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00006354 -0.00000000 -0.00000000  0.00000000  0.00000000  0.73405877
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00039769 -0.00000000  0.00000000  0.00000000  0.00000000  0.00016265
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00006096 -0.00029330  0.00000000 -0.00000000 -0.00000000 -0.00003657 -0.00000000  0.00000000
                           0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00027890 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00026989 -0.00000000 -0.00000000  0.00033483 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00051148 -0.00000000 -0.00000000  0.00012184 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00032685 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00002122 -0.00044842  0.00000000 -0.00000000 -0.00000000  0.00041587  0.00000000 -0.00000000
                          -0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000011 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00018482  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000021  0.70367650 -0.00000011  0.00000000 -0.00000000 -0.00000000 -0.19532606

   2    1  |1 0>          -0.00000000 -0.00035714  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.01756775  0.77445374 -0.00000023  0.00000003  0.00000003  0.00979204  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000003 -0.00000000  0.00000009  0.57735037  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000001 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003  0.00000011  0.71031186 -0.00000011 -0.00000000  0.16964469 -0.00000000

   5    1  |1 0>           0.00000008 -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000036  0.00000000 -0.00000000
                           0.81188667  0.00014325 -0.00000000  0.00000000 -0.00000000  0.57802188  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00005157  0.00001237 -0.00000000  0.00000000  0.00000000 -0.00042947 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00002722 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00054685

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00013968 -0.00000000  0.00000000 -0.00062830  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00042967  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000053 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00021579  0.00000000  0.00000000 -0.00002026 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00026801  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00029941

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000006  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000006

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000003  0.00000000 -0.00000009 -0.57734980 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000002 -0.00000009 -0.61529129  0.00000010  0.00000000 -0.16252609  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000011  0.36509290 -0.00000006  0.00000000  0.00000000  0.00000000  0.63209152

   4    1  |1 1>-          0.00000004 -0.00021381  0.00000000  0.00000001 -0.00000000 -0.00000035  0.00000000 -0.00000000
                           0.40661193  0.46364461 -0.00000014  0.00000002  0.00000002 -0.56396239 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00002575 -0.00000000 -0.00000000  0.72722867 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00039152  0.00000000 -0.00000000  0.00017700 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040807 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00006311 -0.00003201  0.00000000 -0.00000000 -0.00000000  0.00024576  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00025628 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00034407

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00050735  0.00000000 -0.00000000  0.00000000  0.00000000  0.00014120

  11    1  |1 1>-          0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001355 -0.00051528  0.00000000 -0.00000000 -0.00000000 -0.00036667 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00013450 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000011

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00018481 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99505154 -0.00006185 -0.00000000  0.00000000 -0.00000000  0.00632627  0.00000000 -0.00514775
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00006185  0.99505165 -0.00000000 -0.00000000 -0.00000000  0.00514776 -0.00000000  0.00632628
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000001  0.99505155  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99505099  0.00000001  0.00000000 -0.00000000 -0.00815612 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000001  0.99505159  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00099591  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00079757 -0.00059646  0.00000000 -0.00000000  0.00000000  0.08932963 -0.00000000 -0.00365230
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00099593  0.00000000  0.00000000  0.00000000  0.08940438  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000186 -0.00000000

  10    1  |0 0>          -0.00059646  0.00079757 -0.00000000 -0.00000000 -0.00000000 -0.00365216  0.00000000 -0.08932957
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00099592 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.04037124 -0.00000000 -0.00000000  0.00000000  0.00059835  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.07078213 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.04037124  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.06987627 -0.04045871 -0.00000000  0.00000000  0.00000000  0.00042487  0.00000000 -0.00111868
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.03885321  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00398656  0.00000000 -0.00000002 -0.00000007
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00475289 -0.00000000 -0.00000000 -0.00000001 -0.57938340 -0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001204  0.00000000

   8    1  |1 1>+         -0.00020069  0.00481765 -0.00000000 -0.00000000 -0.00000000 -0.35166098  0.00000003 -0.47098916
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00398274  0.00000000 -0.00000001 -0.00000002  0.00000005
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00309295 -0.00000000  0.00000000  0.00000002 -0.00000004
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00436404 -0.00148486  0.00000000 -0.00000000  0.00000000  0.52688973 -0.00000000 -0.19532999
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00168480  0.00000000  0.00000000  0.00000000  0.20537782  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000427 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00355195 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00205511 -0.00354939  0.00000000 -0.00000000  0.00000000  0.00527725 -0.00000000  0.00200430
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00355195  0.00000000  0.00000000  0.00000000  0.00488951  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04037124 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00174729 -0.00000000 -0.00000000  0.00000000  0.00002590  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00010046 -0.08074332  0.00000000  0.00000000  0.00000000 -0.00075638  0.00000000 -0.00092730

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.04037127  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.00000000  0.00000000  0.08073303  0.00000000  0.00000000 -0.00000000 -0.00119606 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001010  0.00000000
                           0.00000000  0.00000000  0.00398664  0.00000000  0.00000000  0.00000001  0.48596446  0.00000002

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00281952  0.00000000 -0.00000001 -0.00000005

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00023867  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000163  0.00398662 -0.00000000 -0.00000000 -0.00000000 -0.30654061  0.00000002 -0.37708451

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00534853  0.00000174  0.00000000 -0.00000000  0.00000000  0.50561284  0.00000001 -0.41164390

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00503705  0.00000000 -0.00000001 -0.00000002  0.00000006

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00418079  0.00000000 -0.00000002 -0.00000007

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00410139 -0.00000510 -0.00000000  0.00000000 -0.00000000 -0.00437433 -0.00000000  0.00356806

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00355196 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00355194  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.06997681 -0.04028467  0.00000000 -0.00000000  0.00000000 -0.00118125  0.00000000  0.00019139

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.06903493  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04037124 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.04037122  0.00000000  0.00000000 -0.00000000 -0.00059836 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.04188003  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00398657 -0.00000000  0.00000001  0.00000002 -0.00000005

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00244593  0.00334012 -0.00000000  0.00000000 -0.00000000 -0.48824765  0.00000002 -0.12766261

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001250  0.00000000
                           0.00000000  0.00000000  0.00493674  0.00000000  0.00000000  0.00000001  0.60179365  0.00000003

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00399036  0.00000000 -0.00000002 -0.00000007

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00308312  0.00000000 -0.00000002 -0.00000005

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000260  0.00000000
                           0.00000000  0.00000000  0.00102818  0.00000000  0.00000000  0.00000000  0.12533215  0.00000001

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00361596 -0.00377963  0.00000000  0.00000000  0.00000000 -0.05113640 -0.00000003  0.63558214

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00355195  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000
                           0.00000000  0.00000000  0.00355197  0.00000000  0.00000000  0.00000000  0.00488961  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00204627  0.00355449 -0.00000000 -0.00000000 -0.00000000 -0.00090287  0.00000000 -0.00557251

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00815608 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00815607 -0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000004 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000003  0.08940351  0.00000000  0.00000000  0.00000037 -0.00000000 -0.00000025 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000074  0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.08940396 -0.00000003 -0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000 -0.00000034
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00051814  0.00000000 -0.00000000 -0.00016399  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00104905 -0.00000000 -0.00000000 -0.00046683  0.00000000  0.00002975  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00059836 -0.00000000  0.00000000 -0.00023010  0.00000000  0.00000000  0.00000000 -0.00049236
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00057560 -0.00000000 -0.00000000 -0.00016649  0.00000000 -0.00051966 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000019  0.48597002 -0.00000000 -0.00000003 -0.44219450  0.00000001  0.37120850  0.00000019
                           0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000009 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000002 -0.00000002  0.34671440  0.00000001  0.00000000  0.19375419  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000093 -0.00000000  0.00000000  0.00000264  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000004 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.48550229  0.00000019 -0.00000001  0.38468995 -0.00000002  0.00000002  0.00000022 -0.43143823
                           0.00000007  0.00000000 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000004

  10    1  |1 1>+         -0.37702747 -0.00000015 -0.00000002  0.69463358 -0.00000004  0.00000002  0.00000007 -0.12917836
                          -0.00000005 -0.00000000 -0.00000000  0.00000002 -0.00000004  0.00000000 -0.00000000 -0.00000001

  11    1  |1 1>+          0.00000003 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000001  0.00000001  0.15435885 -0.00000002  0.00000002  0.80731049 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000041  0.00000000  0.00000000  0.00001100  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00488936 -0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000024
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000026  0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00059835  0.00000000  0.00000000  0.00054304 -0.00000000 -0.00002135 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00046865  0.00000000  0.00000000  0.00033552  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00059836 -0.00000000  0.00000000 -0.00053424  0.00000000 -0.00000000 -0.00000000  0.00009969

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00025449  0.00000000 -0.00000000 -0.00034595  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000088  0.00000000  0.00000000  0.00000647  0.00000000 -0.00000000
                           0.00000002  0.00000002  0.32847730  0.00000002 -0.00000001 -0.47480834  0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004 -0.00000000 -0.00000001 -0.00000000
                          -0.00000013  0.34370173  0.00000000  0.00000001  0.18949498 -0.00000000  0.71110976  0.00000036

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000007
                           0.02909188  0.00000001  0.00000000  0.14525238 -0.00000001 -0.00000001 -0.00000043  0.85288461

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003 -0.00000005  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000002

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000009 -0.00000000 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.61401595  0.00000024  0.00000001 -0.29097881  0.00000002 -0.00000001 -0.00000001  0.01260325

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004 -0.00000000  0.00000001  0.00000000
                          -0.00000020  0.50963815  0.00000000  0.00000001  0.22012521 -0.00000001 -0.49325195 -0.00000025

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00488898 -0.00000000 -0.00000000  0.00000037 -0.00000000  0.00000000 -0.00000000  0.00000016

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00488883  0.00000000  0.00000000  0.00000030 -0.00000000 -0.00000023 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00102316 -0.00000000 -0.00000000  0.00046339 -0.00000000  0.00000000  0.00000000 -0.00009806

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00059836  0.00000000  0.00000000  0.00011509 -0.00000000 -0.00053115 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00002925 -0.00000000  0.00000000  0.00054268 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00062045 -0.00000000  0.00000000 -0.00002700  0.00000000 -0.00000000 -0.00000000  0.00053990

   6    1  |1 1>-          0.00000007  0.00000000 -0.00000000  0.00000001 -0.00000003  0.00000000  0.00000000  0.00000002
                          -0.48596948 -0.00000019  0.00000001 -0.51354683  0.00000003 -0.00000001  0.00000013 -0.26382276

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000003  0.00000002

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000043 -0.00000000 -0.00000000 -0.00000398 -0.00000000  0.00000000
                           0.00000002  0.00000003 -0.16110703 -0.00000001  0.00000001  0.29170683 -0.00000000  0.00000001

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000010  0.00000000  0.00000001  0.00000000
                          -0.00000019  0.48643009 -0.00000000 -0.00000003 -0.46909958  0.00000001 -0.33538032 -0.00000017

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000014 -0.00000000 -0.00000000 -0.00000000
                          -0.00000015  0.37582911  0.00000000  0.00000004  0.70713903 -0.00000001 -0.02737080 -0.00000001

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000228  0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000
                           0.00000001  0.00000001  0.84977003  0.00000002 -0.00000000  0.01314108  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000006  0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000003

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00488932  0.00000000  0.00000000  0.00000018  0.00000000  0.00000021  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000026 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000045 -0.00000000 -0.00000000  0.00000039  0.00000000 -0.00000000  0.00000017  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000035 -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000048 -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000008 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000018
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000005  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00042967  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000002 -0.00000012 -0.55809287 -0.00000009  0.00000009 -0.00000000  0.00000000 -0.00000004
                          -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000001  0.52534248 -0.00000011  0.00000013  0.00000002  0.47731960  0.00000007  0.00000005
                          -0.00000000 -0.00002750  0.00000001  0.00000000  0.00000000  0.00000336  0.00000000 -0.00000000

   8    1  |1 1>+         -0.37475400  0.00000010  0.00000007 -0.40259673  0.00000002  0.00000007 -0.50161993  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000001 -0.00000001  0.00000002  0.00000001  0.12649985 -0.00000006  0.00000001  0.64205349
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007

  10    1  |1 1>+         -0.00000000 -0.00000003  0.00000008  0.00000003  0.50780828  0.00000004 -0.00000000 -0.31561954
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000003

  11    1  |1 1>+         -0.43919262  0.00000009  0.00000006 -0.35028142  0.00000002 -0.00000008  0.56171664  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000001  0.25289962 -0.00000005  0.00000006  0.00000003 -0.46684003 -0.00000007 -0.00000005
                           0.00000000 -0.00001324  0.00000001 -0.00000000  0.00000000 -0.00000328 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000041 -0.00000000  0.00000000  0.00000012
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000022 -0.00000000 -0.00000000  0.00000016 -0.00000000 -0.00000000  0.00000041 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000034 -0.00000000  0.00000000  0.00000000  0.00000026  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00042966  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00003334 -0.00000002  0.00000000 -0.00000000  0.00000107  0.00000000 -0.00000000
                           0.00000000  0.63676211 -0.00000014  0.00000016  0.00000005 -0.15199067 -0.00000002 -0.00000002

   7    1  |1 0>           0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000003  0.00000012  0.57740836  0.00000010 -0.00000009  0.00000000  0.00000000  0.00000001

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004
                           0.00000003 -0.00000002  0.00000005  0.00000002  0.29255099 -0.00000003  0.00000000  0.40626326

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57735328 -0.00000001 -0.00000000  0.02725235  0.00000000 -0.00000007  0.42822412  0.00000001

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00071295 -0.00000016 -0.00000010  0.63661746 -0.00000003  0.00000003 -0.32466174  0.00000001

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000004
                          -0.00000000 -0.00000004  0.00000009  0.00000003  0.60896105  0.00000006 -0.00000000 -0.40526639

  12    1  |1 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000007  0.30834656  0.00000006 -0.00000004 -0.00000001  0.00000001 -0.00000007

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000000 -0.00000067 -0.00000000  0.00000000 -0.00000001 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000044

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00042967 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000001  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000004
                          -0.00000001 -0.00000003  0.00000008  0.00000003  0.51933506 -0.00000003  0.00000000  0.39857364

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.54832831 -0.00000013 -0.00000009  0.54039207 -0.00000003 -0.00000006  0.37086489 -0.00000001

   8    1  |1 1>-         -0.00000000  0.00000054 -0.00000000 -0.00000000 -0.00000000 -0.00000509 -0.00000000  0.00000000
                          -0.00000000  0.01033005 -0.00000000  0.00000001 -0.00000002  0.72369079  0.00000010  0.00000007

   9    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000004  0.19164539  0.00000003 -0.00000003  0.00000001 -0.00000001  0.00000008

  10    1  |1 1>-          0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000011 -0.47257420 -0.00000008  0.00000007  0.00000000 -0.00000001  0.00000005

  11    1  |1 1>-          0.00000000 -0.00002641  0.00000001 -0.00000000  0.00000000 -0.00000060  0.00000000  0.00000000
                          -0.00000001 -0.50446443  0.00000011 -0.00000012 -0.00000004  0.08600500  0.00000001  0.00000001

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.18074146 -0.00000003 -0.00000001  0.13103712 -0.00000000 -0.00000000 -0.08080813  0.00000001

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000001

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000046  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000047 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000021 -0.00000000 -0.00000000  0.00000016 -0.00000000 -0.00000000  0.00000018 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00105723
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000001  0.00189370  0.00096964 -0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000006  0.00096965 -0.00189369  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00212758 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00212753  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00212757  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001  0.86868804  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000010  0.85632406 -0.14607069 -0.00000000  0.00000000 -0.00000000  0.00000544
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.86869142 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001744 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000020  0.14606878  0.85632620 -0.00000000  0.00000000  0.00000000  0.00002377
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.86868811 -0.00000001 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000005  0.00000042  0.00000102 -0.00000000 -0.00000000  0.00000000 -0.05910790
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221845 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00388950 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00221844 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000001  0.00240467  0.00372874 -0.00000000  0.00000000  0.00000000  0.00000012
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00213458 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.34220283  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03971769  0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.04735352 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000095 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000003  0.31230071  0.02009409 -0.04363604  0.00000000 -0.00000000 -0.00000000 -0.00000074
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000008 -0.00000001  0.00000000  0.00000000  0.03968032 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000004  0.00000000 -0.00000000 -0.00000000 -0.03081480  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000003  0.22480838 -0.04544389 -0.00664489  0.00000000 -0.00000000  0.00000000 -0.00000087
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.01678570  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000087 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.34549015 -0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000017  0.33525083 -0.21621565  0.00000000 -0.00000000 -0.00000000  0.57634023
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.34547422 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000694 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221840  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00009601 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000002 -0.00202684  0.00394688 -0.00000000  0.00000000  0.00000000  0.00000008

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00221843 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00443558  0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000080 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.03971939  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.07692301 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02809106 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000005 -0.00000001  0.00000000  0.00000000  0.00237818 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000007  0.49442260  0.01808559 -0.03536206  0.00000000 -0.00000000 -0.00000000 -0.00000075

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000003  0.24645864 -0.04742550 -0.02429948  0.00000000 -0.00000000  0.00000000 -0.00000084

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000005  0.00000000  0.00000000  0.00000000  0.05018419 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.59271838  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04165311 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000087 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000005 -0.35487396 -0.18224661  0.00000000 -0.00000000  0.00000000  0.57634198

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.34548193 -0.00000001 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000029 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.34547467  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00443151  0.00021814  0.00000000 -0.00000000  0.00000000 -0.00000004

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00379353 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221841 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00221844  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00230090 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000004 -0.00000001 -0.00000000 -0.00000000 -0.03971807  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.11404312  0.03685591 -0.01851637 -0.00000000 -0.00000000 -0.00000000 -0.00000011

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000099 -0.00000000  0.00000000
                          -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.04918509  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.62624975 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03975600 -0.00000000

  10    1  |1 1>-          0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.36534402 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03071665  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.01024397  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000010  0.73056695  0.01490709  0.04993735 -0.00000000  0.00000000  0.00000000  0.00000166

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000013  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.34549770 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000694  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.34548932 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000025  0.01961005  0.39842931 -0.00000000  0.00000000  0.00000000  0.57633931

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00424922  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00148879  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00450251
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000004  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000006  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00002445 -0.00000000 -0.00000000  0.00000044  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.46466518 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00001547 -0.00000047 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.14638223  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000911 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.48718500
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000058 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00002253 -0.00000046 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00001246 -0.00000000  0.00000000 -0.00000026 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00002259 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000046 -0.00000000 -0.00113634
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00147968 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00002292 -0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000067  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000034 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00646551 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000053  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.01835074
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000049  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.01425071
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.02123884  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000015  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.02049125 -0.00000000 -0.00000486  0.99979003  0.00000181  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000002  0.00000000 -0.00000000

  14    1  |1 1>+          0.70696140  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.01448989  0.00000001  0.61692432
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.54069743  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.70695414  0.01448902  0.00000007 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00025090  0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00002251 -0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00002604  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075399  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002255  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00113633

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000049  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000067  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000037  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00109962

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00606537 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02325531  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000012  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02320820

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000087  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000727 -0.00000831  0.00000001 -0.00000001 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.02049105  0.99979004  0.00000486 -0.00000032  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.67201992 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.70695520 -0.00000000  0.00000000  0.00000000 -0.00000003  0.01449011  0.00000001  0.61693603

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.70695096 -0.00000000  0.00000007 -0.01448928 -0.00000003  0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00223367  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001350  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00194313

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002262  0.00000000 -0.00000000  0.00000046  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00002260 -0.00000046 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002232 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00117855

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.01836874

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01572416 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000115  0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000109  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000089  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000026  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00996658  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000004 -0.00000000 -0.00000000
                           0.02049195  0.00000000 -0.00000000  0.00000032 -0.00000181  0.99979002 -0.00000000 -0.00000030

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70696566  0.00000000 -0.00000007  0.01448971  0.00000003  0.00000000 -0.00000001

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00025090  0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.70696239 -0.01448970 -0.00000007  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.13133518 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000002 -0.00000000 -0.00000000  0.00005932
                           0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00148877 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00424926  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00450253  0.00000000
                          -0.00000000 -0.00000000 -0.00000003 -0.00000000

   6    1  |0 0>           0.00000000  0.00450249  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000001 -0.48718521 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.14637941 -0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000001  0.00000000 -0.48717902 -0.00000000
                          -0.00000000 -0.00000000 -0.00000364 -0.00000000

  10    1  |0 0>          -0.46466095  0.00000001  0.00000001 -0.00000008
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000099 -0.00000000 -0.00000000  0.99825160
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00113633 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000

   2    1  |1 1>+          0.00000000  0.00199228  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00172491  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00109336 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.01836864  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.02189875  0.00000000
                          -0.00000000 -0.00000000 -0.00000016  0.00000000

   8    1  |1 1>+          0.02125495 -0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00019061  0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00776261 -0.00000000
                           0.00000000  0.00000000  0.00000006 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000039 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.46381270  0.00000001  0.00000001  0.03412586
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000001 -0.00000000  0.61694153  0.00000000
                           0.00000000  0.00000000  0.00000462  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00113632  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00004918 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00214388  0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00227193  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000014  0.00000000
                           0.00000000 -0.00000000  0.01836785  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01299081  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01733766 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00815454 -0.00000000 -0.00000000 -0.00000003

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01926303  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000007  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.23633899  0.00000000  0.00000001  0.03412575

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.61694498  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00041897  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00113633  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00113632  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01079844 -0.00000000 -0.00000000  0.00000002

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000017  0.00000000
                           0.00000000 -0.00000000  0.02274589  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01838584  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01420544  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000004  0.00000000
                           0.00000000 -0.00000000  0.00473736  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02194345  0.00000000  0.00000000 -0.00000003

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.61691522  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000462 -0.00000000
                           0.00000001 -0.00000000  0.61692360  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70017133 -0.00000001 -0.00000001  0.03412623


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.35293406     -0.00000013       -0.03      0.00000000        0.00      0.0000
     2   1    -25.30799700      0.04493692     9862.51      0.04493705     9862.54      1.2228
     3   1    -25.30799626      0.04493767     9862.68      0.04493780     9862.71      1.2228
     4   1    -25.30799622      0.04493771     9862.69      0.04493784     9862.72      1.2228
     5   1    -25.30720110      0.04573282    10037.19      0.04573295    10037.22      1.2445
     6   1    -25.30720110      0.04573283    10037.20      0.04573296    10037.22      1.2445
     7   1    -25.30720074      0.04573319    10037.27      0.04573332    10037.30      1.2445
     8   1    -25.30720068      0.04573325    10037.29      0.04573338    10037.32      1.2445
     9   1    -25.30719954      0.04573439    10037.54      0.04573452    10037.57      1.2445
    10   1    -25.30571439      0.04721954    10363.49      0.04721967    10363.52      1.2849
    11   1    -25.30571439      0.04721954    10363.49      0.04721967    10363.52      1.2849
    12   1    -25.30571439      0.04721954    10363.49      0.04721967    10363.52      1.2849
    13   1    -25.30571438      0.04721954    10363.49      0.04721967    10363.52      1.2849
    14   1    -25.30571371      0.04722022    10363.64      0.04722035    10363.67      1.2849
    15   1    -25.30571331      0.04722062    10363.73      0.04722075    10363.76      1.2849
    16   1    -25.30571329      0.04722064    10363.73      0.04722077    10363.76      1.2849
    17   1    -25.29550260      0.05743133    12604.72      0.05743146    12604.75      1.5628
    18   1    -25.29550251      0.05743142    12604.74      0.05743155    12604.77      1.5628
    19   1    -25.29550244      0.05743149    12604.75      0.05743162    12604.78      1.5628
    20   1    -25.29550244      0.05743149    12604.76      0.05743162    12604.78      1.5628
    21   1    -25.29550243      0.05743150    12604.76      0.05743163    12604.79      1.5628
    22   1    -25.24989468      0.10303925    22614.50      0.10303938    22614.53      2.8038
    23   1    -25.24989468      0.10303925    22614.50      0.10303938    22614.53      2.8038
    24   1    -25.24989467      0.10303925    22614.50      0.10303938    22614.53      2.8038
    25   1    -25.24989467      0.10303925    22614.50      0.10303939    22614.53      2.8038
    26   1    -25.24989467      0.10303926    22614.50      0.10303939    22614.53      2.8038
    27   1    -25.24854139      0.10439254    22911.51      0.10439267    22911.54      2.8407
    28   1    -25.24854139      0.10439254    22911.51      0.10439267    22911.54      2.8407
    29   1    -25.24854139      0.10439254    22911.51      0.10439267    22911.54      2.8407
    30   1    -25.24854139      0.10439254    22911.51      0.10439267    22911.54      2.8407
    31   1    -25.24854138      0.10439255    22911.52      0.10439268    22911.54      2.8407
    32   1    -25.24854138      0.10439255    22911.52      0.10439268    22911.54      2.8407
    33   1    -25.24854138      0.10439255    22911.52      0.10439268    22911.54      2.8407
    34   1    -25.24687460      0.10605932    23277.33      0.10605946    23277.36      2.8860
    35   1    -25.24687460      0.10605932    23277.33      0.10605946    23277.36      2.8860
    36   1    -25.24687460      0.10605933    23277.33      0.10605946    23277.36      2.8860
    37   1    -25.24687460      0.10605933    23277.33      0.10605946    23277.36      2.8860
    38   1    -25.24687459      0.10605933    23277.33      0.10605946    23277.36      2.8860
    39   1    -25.24687459      0.10605933    23277.33      0.10605946    23277.36      2.8860
    40   1    -25.24687459      0.10605934    23277.33      0.10605947    23277.36      2.8860
    41   1    -25.24687459      0.10605934    23277.33      0.10605947    23277.36      2.8860
    42   1    -25.24687459      0.10605934    23277.33      0.10605947    23277.36      2.8860
    43   1    -25.23717433      0.11575960    25406.30      0.11575973    25406.32      3.1500
    44   1    -25.23717431      0.11575962    25406.30      0.11575975    25406.33      3.1500
    45   1    -25.23717428      0.11575965    25406.31      0.11575978    25406.33      3.1500
    46   1    -25.23717427      0.11575966    25406.31      0.11575979    25406.34      3.1500
    47   1    -25.23717425      0.11575967    25406.31      0.11575980    25406.34      3.1500
    48   1    -25.23649731      0.11643662    25554.88      0.11643675    25554.91      3.1684
    49   1    -25.23601376      0.11692017    25661.01      0.11692030    25661.04      3.1816
    50   1    -25.23601373      0.11692020    25661.02      0.11692033    25661.05      3.1816
    51   1    -25.23601372      0.11692021    25661.02      0.11692034    25661.05      3.1816
    52   1    -25.23558339      0.11735054    25755.47      0.11735067    25755.50      3.1933
    53   1    -25.23558339      0.11735054    25755.47      0.11735067    25755.50      3.1933
    54   1    -25.23558339      0.11735054    25755.47      0.11735067    25755.50      3.1933
    55   1    -25.23443445      0.11849947    26007.63      0.11849960    26007.66      3.2245
    56   1    -25.23443444      0.11849949    26007.63      0.11849962    26007.66      3.2245
    57   1    -25.23443442      0.11849951    26007.64      0.11849964    26007.66      3.2245
    58   1    -25.23443442      0.11849951    26007.64      0.11849964    26007.67      3.2245
    59   1    -25.23443441      0.11849952    26007.64      0.11849965    26007.67      3.2245
    60   1    -25.23006152      0.12287241    26967.38      0.12287254    26967.41      3.3435

 E0 =    -25.35293393 is the energy of the lowest zeroth-order state
 E1 =    -25.35293406 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999944  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.09774695 -0.01505475  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.01505459  0.09774589  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00006680 -0.00000000  0.00000000  0.00000000  0.00000000 -0.09889935
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000322  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00006360 -0.00000000 -0.00000000  0.09889896  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000422 -0.00000000 -0.00000000  0.00613913  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00541871  0.00288586  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00288586 -0.00541871 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000442 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00613919
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000327  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.54771353 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000635 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.30471501 -0.00000000 -0.00000000  0.71211447  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.54769099 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40691632
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.63298602  0.50936179 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.55387620  0.00000000  0.00000000 -0.39097688 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00005138  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000687 -0.00006166 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00005102
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00003989
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00005841  0.00001033  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00002903 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018481
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00061136 -0.00000000  0.00000000 -0.00000000 -0.00013378 -0.00016625 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00002913 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.54807428 -0.00000000 -0.00000000  0.40578935  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000733 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.63230797  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002  0.00000000  0.00000000  0.00000000  0.12462682  0.80286284  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.54807508  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40577672

 33  1     5    1  |1 0>       -0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01365426  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00003658  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000347

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000779 -0.00005071 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00006798 -0.00001049  0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00006479

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000  0.00005359  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00061134  0.00000000 -0.00000000  0.00000000  0.00021087 -0.00003273  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00002928  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018479

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00002927  0.00000000  0.00000000 -0.00018479 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.75761334  0.29350153  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.32843076  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.69451413

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.54770840 -0.00000000 -0.00000000  0.40687381  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000635  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.54773176 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.54016805 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.42142097

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00005139

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003766 -0.00003769 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000030 -0.00000000 -0.00000000  0.00005113  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003976  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003858  0.00005513  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00002904  0.00000000  0.00000000 -0.00018481 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00002914  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00061136  0.00000000  0.00000000  0.00000000 -0.00007709  0.00019899  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000 -0.00004848  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.09890498 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00007413 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004534
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000245
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00613900  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000405  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000262  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.40666715  0.43041176 -0.00000013  0.00000002  0.00000002  0.58969542  0.00000000 -0.00000000
                                0.00000004  0.00019848 -0.00000000 -0.00000001  0.00000000 -0.00000037 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000018 -0.60954574  0.00000009 -0.00000000  0.00000000  0.00000000  0.15318360
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000001  0.00000005  0.34186714 -0.00000005  0.00000000 -0.64493709  0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000003  0.00000000 -0.00000009 -0.57735015 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00006354 -0.00000000 -0.00000000  0.00000000  0.00000000  0.73405877
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00039769 -0.00000000  0.00000000  0.00000000  0.00000000  0.00016265
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00006096 -0.00029330  0.00000000 -0.00000000 -0.00000000 -0.00003657 -0.00000000  0.00000000
                                0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00027890 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00026989 -0.00000000 -0.00000000  0.00033483 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00051148 -0.00000000 -0.00000000  0.00012184 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00032685 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00002122 -0.00044842  0.00000000 -0.00000000 -0.00000000  0.00041587  0.00000000 -0.00000000
                               -0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000011 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00018482  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000021  0.70367650 -0.00000011  0.00000000 -0.00000000 -0.00000000 -0.19532606

 30  1     2    1  |1 0>       -0.00000000 -0.00035714  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.01756775  0.77445374 -0.00000023  0.00000003  0.00000003  0.00979204  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000003 -0.00000000  0.00000009  0.57735037  0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000001 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003  0.00000011  0.71031186 -0.00000011 -0.00000000  0.16964469 -0.00000000

 33  1     5    1  |1 0>        0.00000008 -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000036  0.00000000 -0.00000000
                                0.81188667  0.00014325 -0.00000000  0.00000000 -0.00000000  0.57802188  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00005157  0.00001237 -0.00000000  0.00000000  0.00000000 -0.00042947 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00002722 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00054685

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00013968 -0.00000000  0.00000000 -0.00062830  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00042967  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000053 -0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00021579  0.00000000  0.00000000 -0.00002026 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00026801  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00029941

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000006  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000006

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000003  0.00000000 -0.00000009 -0.57734980 -0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000002 -0.00000009 -0.61529129  0.00000010  0.00000000 -0.16252609  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000011  0.36509290 -0.00000006  0.00000000  0.00000000  0.00000000  0.63209152

 48  1     4    1  |1 1>-       0.00000004 -0.00021381  0.00000000  0.00000001 -0.00000000 -0.00000035  0.00000000 -0.00000000
                                0.40661193  0.46364461 -0.00000014  0.00000002  0.00000002 -0.56396239 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00002575 -0.00000000 -0.00000000  0.72722867 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00039152  0.00000000 -0.00000000  0.00017700 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040807 -0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00006311 -0.00003201  0.00000000 -0.00000000 -0.00000000  0.00024576  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00025628 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00034407

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00050735  0.00000000 -0.00000000  0.00000000  0.00000000  0.00014120

 55  1    11    1  |1 1>-       0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001355 -0.00051528  0.00000000 -0.00000000 -0.00000000 -0.00036667 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00013450 -0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000011

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00018481 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99505154 -0.00006185 -0.00000000  0.00000000 -0.00000000  0.00632627  0.00000000 -0.00514775
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00006185  0.99505165 -0.00000000 -0.00000000 -0.00000000  0.00514776 -0.00000000  0.00632628
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000001  0.99505155  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.99505099  0.00000001  0.00000000 -0.00000000 -0.00815612 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000001  0.99505159  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00099591  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00079757 -0.00059646  0.00000000 -0.00000000  0.00000000  0.08932963 -0.00000000 -0.00365230
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00099593  0.00000000  0.00000000  0.00000000  0.08940438  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000186 -0.00000000

 10  1    10    1  |0 0>       -0.00059646  0.00079757 -0.00000000 -0.00000000 -0.00000000 -0.00365216  0.00000000 -0.08932957
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00099592 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.04037124 -0.00000000 -0.00000000  0.00000000  0.00059835  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.07078213 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.04037124  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.06987627 -0.04045871 -0.00000000  0.00000000  0.00000000  0.00042487  0.00000000 -0.00111868
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.03885321  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00398656  0.00000000 -0.00000002 -0.00000007
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00475289 -0.00000000 -0.00000000 -0.00000001 -0.57938340 -0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001204  0.00000000

 20  1     8    1  |1 1>+      -0.00020069  0.00481765 -0.00000000 -0.00000000 -0.00000000 -0.35166098  0.00000003 -0.47098916
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00398274  0.00000000 -0.00000001 -0.00000002  0.00000005
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00309295 -0.00000000  0.00000000  0.00000002 -0.00000004
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00436404 -0.00148486  0.00000000 -0.00000000  0.00000000  0.52688973 -0.00000000 -0.19532999
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00168480  0.00000000  0.00000000  0.00000000  0.20537782  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000427 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00355195 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00205511 -0.00354939  0.00000000 -0.00000000  0.00000000  0.00527725 -0.00000000  0.00200430
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00355195  0.00000000  0.00000000  0.00000000  0.00488951  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04037124 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00174729 -0.00000000 -0.00000000  0.00000000  0.00002590  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00010046 -0.08074332  0.00000000  0.00000000  0.00000000 -0.00075638  0.00000000 -0.00092730

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.04037127  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.00000000  0.00000000  0.08073303  0.00000000  0.00000000 -0.00000000 -0.00119606 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001010  0.00000000
                                0.00000000  0.00000000  0.00398664  0.00000000  0.00000000  0.00000001  0.48596446  0.00000002

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00281952  0.00000000 -0.00000001 -0.00000005

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00023867  0.00000000 -0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000163  0.00398662 -0.00000000 -0.00000000 -0.00000000 -0.30654061  0.00000002 -0.37708451

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00534853  0.00000174  0.00000000 -0.00000000  0.00000000  0.50561284  0.00000001 -0.41164390

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00503705  0.00000000 -0.00000001 -0.00000002  0.00000006

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00418079  0.00000000 -0.00000002 -0.00000007

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00410139 -0.00000510 -0.00000000  0.00000000 -0.00000000 -0.00437433 -0.00000000  0.00356806

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00355196 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00355194  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.06997681 -0.04028467  0.00000000 -0.00000000  0.00000000 -0.00118125  0.00000000  0.00019139

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.06903493  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04037124 -0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.04037122  0.00000000  0.00000000 -0.00000000 -0.00059836 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.04188003  0.00000000  0.00000000  0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00398657 -0.00000000  0.00000001  0.00000002 -0.00000005

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00244593  0.00334012 -0.00000000  0.00000000 -0.00000000 -0.48824765  0.00000002 -0.12766261

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001250  0.00000000
                                0.00000000  0.00000000  0.00493674  0.00000000  0.00000000  0.00000001  0.60179365  0.00000003

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00399036  0.00000000 -0.00000002 -0.00000007

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00308312  0.00000000 -0.00000002 -0.00000005

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000260  0.00000000
                                0.00000000  0.00000000  0.00102818  0.00000000  0.00000000  0.00000000  0.12533215  0.00000001

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00361596 -0.00377963  0.00000000  0.00000000  0.00000000 -0.05113640 -0.00000003  0.63558214

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00355195  0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000
                                0.00000000  0.00000000  0.00355197  0.00000000  0.00000000  0.00000000  0.00488961  0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00204627  0.00355449 -0.00000000 -0.00000000 -0.00000000 -0.00090287  0.00000000 -0.00557251


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00815608 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00815607 -0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000004 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000003  0.08940351  0.00000000  0.00000000  0.00000037 -0.00000000 -0.00000025 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000074  0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.08940396 -0.00000003 -0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000 -0.00000034
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00051814  0.00000000 -0.00000000 -0.00016399  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00104905 -0.00000000 -0.00000000 -0.00046683  0.00000000  0.00002975  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00059836 -0.00000000  0.00000000 -0.00023010  0.00000000  0.00000000  0.00000000 -0.00049236
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00057560 -0.00000000 -0.00000000 -0.00016649  0.00000000 -0.00051966 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000019  0.48597002 -0.00000000 -0.00000003 -0.44219450  0.00000001  0.37120850  0.00000019
                                0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000009 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000002 -0.00000002  0.34671440  0.00000001  0.00000000  0.19375419  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000093 -0.00000000  0.00000000  0.00000264  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000004 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.48550229  0.00000019 -0.00000001  0.38468995 -0.00000002  0.00000002  0.00000022 -0.43143823
                                0.00000007  0.00000000 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000004

 22  1    10    1  |1 1>+      -0.37702747 -0.00000015 -0.00000002  0.69463358 -0.00000004  0.00000002  0.00000007 -0.12917836
                               -0.00000005 -0.00000000 -0.00000000  0.00000002 -0.00000004  0.00000000 -0.00000000 -0.00000001

 23  1    11    1  |1 1>+       0.00000003 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000001  0.00000001  0.15435885 -0.00000002  0.00000002  0.80731049 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000041  0.00000000  0.00000000  0.00001100  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00488936 -0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000024
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000026  0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00059835  0.00000000  0.00000000  0.00054304 -0.00000000 -0.00002135 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00046865  0.00000000  0.00000000  0.00033552  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00059836 -0.00000000  0.00000000 -0.00053424  0.00000000 -0.00000000 -0.00000000  0.00009969

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00025449  0.00000000 -0.00000000 -0.00034595  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000088  0.00000000  0.00000000  0.00000647  0.00000000 -0.00000000
                                0.00000002  0.00000002  0.32847730  0.00000002 -0.00000001 -0.47480834  0.00000000 -0.00000001

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004 -0.00000000 -0.00000001 -0.00000000
                               -0.00000013  0.34370173  0.00000000  0.00000001  0.18949498 -0.00000000  0.71110976  0.00000036

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000007
                                0.02909188  0.00000001  0.00000000  0.14525238 -0.00000001 -0.00000001 -0.00000043  0.85288461

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003 -0.00000005  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000002

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000009 -0.00000000 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.61401595  0.00000024  0.00000001 -0.29097881  0.00000002 -0.00000001 -0.00000001  0.01260325

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004 -0.00000000  0.00000001  0.00000000
                               -0.00000020  0.50963815  0.00000000  0.00000001  0.22012521 -0.00000001 -0.49325195 -0.00000025

 41  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00488898 -0.00000000 -0.00000000  0.00000037 -0.00000000  0.00000000 -0.00000000  0.00000016

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00488883  0.00000000  0.00000000  0.00000030 -0.00000000 -0.00000023 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00102316 -0.00000000 -0.00000000  0.00046339 -0.00000000  0.00000000  0.00000000 -0.00009806

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00059836  0.00000000  0.00000000  0.00011509 -0.00000000 -0.00053115 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00002925 -0.00000000  0.00000000  0.00054268 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00062045 -0.00000000  0.00000000 -0.00002700  0.00000000 -0.00000000 -0.00000000  0.00053990

 50  1     6    1  |1 1>-       0.00000007  0.00000000 -0.00000000  0.00000001 -0.00000003  0.00000000  0.00000000  0.00000002
                               -0.48596948 -0.00000019  0.00000001 -0.51354683  0.00000003 -0.00000001  0.00000013 -0.26382276

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000003  0.00000002

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000043 -0.00000000 -0.00000000 -0.00000398 -0.00000000  0.00000000
                                0.00000002  0.00000003 -0.16110703 -0.00000001  0.00000001  0.29170683 -0.00000000  0.00000001

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000010  0.00000000  0.00000001  0.00000000
                               -0.00000019  0.48643009 -0.00000000 -0.00000003 -0.46909958  0.00000001 -0.33538032 -0.00000017

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000014 -0.00000000 -0.00000000 -0.00000000
                               -0.00000015  0.37582911  0.00000000  0.00000004  0.70713903 -0.00000001 -0.02737080 -0.00000001

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000228  0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000
                                0.00000001  0.00000001  0.84977003  0.00000002 -0.00000000  0.01314108  0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000006  0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000003

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00488932  0.00000000  0.00000000  0.00000018  0.00000000  0.00000021  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000026 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000045 -0.00000000 -0.00000000  0.00000039  0.00000000 -0.00000000  0.00000017  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000035 -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000048 -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000008 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000018
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000005  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00042967  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000002 -0.00000012 -0.55809287 -0.00000009  0.00000009 -0.00000000  0.00000000 -0.00000004
                               -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000001  0.52534248 -0.00000011  0.00000013  0.00000002  0.47731960  0.00000007  0.00000005
                               -0.00000000 -0.00002750  0.00000001  0.00000000  0.00000000  0.00000336  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.37475400  0.00000010  0.00000007 -0.40259673  0.00000002  0.00000007 -0.50161993  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000001 -0.00000001  0.00000002  0.00000001  0.12649985 -0.00000006  0.00000001  0.64205349
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007

 22  1    10    1  |1 1>+      -0.00000000 -0.00000003  0.00000008  0.00000003  0.50780828  0.00000004 -0.00000000 -0.31561954
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000003

 23  1    11    1  |1 1>+      -0.43919262  0.00000009  0.00000006 -0.35028142  0.00000002 -0.00000008  0.56171664  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000001  0.25289962 -0.00000005  0.00000006  0.00000003 -0.46684003 -0.00000007 -0.00000005
                                0.00000000 -0.00001324  0.00000001 -0.00000000  0.00000000 -0.00000328 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000041 -0.00000000  0.00000000  0.00000012
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000022 -0.00000000 -0.00000000  0.00000016 -0.00000000 -0.00000000  0.00000041 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000034 -0.00000000  0.00000000  0.00000000  0.00000026  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00042966  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00003334 -0.00000002  0.00000000 -0.00000000  0.00000107  0.00000000 -0.00000000
                                0.00000000  0.63676211 -0.00000014  0.00000016  0.00000005 -0.15199067 -0.00000002 -0.00000002

 35  1     7    1  |1 0>        0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000003  0.00000012  0.57740836  0.00000010 -0.00000009  0.00000000  0.00000000  0.00000001

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004
                                0.00000003 -0.00000002  0.00000005  0.00000002  0.29255099 -0.00000003  0.00000000  0.40626326

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57735328 -0.00000001 -0.00000000  0.02725235  0.00000000 -0.00000007  0.42822412  0.00000001

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00071295 -0.00000016 -0.00000010  0.63661746 -0.00000003  0.00000003 -0.32466174  0.00000001

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000004
                               -0.00000000 -0.00000004  0.00000009  0.00000003  0.60896105  0.00000006 -0.00000000 -0.40526639

 40  1    12    1  |1 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000007  0.30834656  0.00000006 -0.00000004 -0.00000001  0.00000001 -0.00000007

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000000 -0.00000067 -0.00000000  0.00000000 -0.00000001 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000044

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00042967 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000001  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000004
                               -0.00000001 -0.00000003  0.00000008  0.00000003  0.51933506 -0.00000003  0.00000000  0.39857364

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.54832831 -0.00000013 -0.00000009  0.54039207 -0.00000003 -0.00000006  0.37086489 -0.00000001

 52  1     8    1  |1 1>-      -0.00000000  0.00000054 -0.00000000 -0.00000000 -0.00000000 -0.00000509 -0.00000000  0.00000000
                               -0.00000000  0.01033005 -0.00000000  0.00000001 -0.00000002  0.72369079  0.00000010  0.00000007

 53  1     9    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000004  0.19164539  0.00000003 -0.00000003  0.00000001 -0.00000001  0.00000008

 54  1    10    1  |1 1>-       0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000011 -0.47257420 -0.00000008  0.00000007  0.00000000 -0.00000001  0.00000005

 55  1    11    1  |1 1>-       0.00000000 -0.00002641  0.00000001 -0.00000000  0.00000000 -0.00000060  0.00000000  0.00000000
                               -0.00000001 -0.50446443  0.00000011 -0.00000012 -0.00000004  0.08600500  0.00000001  0.00000001

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.18074146 -0.00000003 -0.00000001  0.13103712 -0.00000000 -0.00000000 -0.08080813  0.00000001

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000001

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000046  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000047 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000021 -0.00000000 -0.00000000  0.00000016 -0.00000000 -0.00000000  0.00000018 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00105723
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000001  0.00189370  0.00096964 -0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000006  0.00096965 -0.00189369  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00212758 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00212753  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00212757  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001  0.86868804  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000010  0.85632406 -0.14607069 -0.00000000  0.00000000 -0.00000000  0.00000544
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.86869142 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001744 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000020  0.14606878  0.85632620 -0.00000000  0.00000000  0.00000000  0.00002377
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.86868811 -0.00000001 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000005  0.00000042  0.00000102 -0.00000000 -0.00000000  0.00000000 -0.05910790
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221845 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00388950 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00221844 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000001  0.00240467  0.00372874 -0.00000000  0.00000000  0.00000000  0.00000012
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00213458 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.34220283  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03971769  0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.04735352 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000095 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000003  0.31230071  0.02009409 -0.04363604  0.00000000 -0.00000000 -0.00000000 -0.00000074
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000008 -0.00000001  0.00000000  0.00000000  0.03968032 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000004  0.00000000 -0.00000000 -0.00000000 -0.03081480  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000003  0.22480838 -0.04544389 -0.00664489  0.00000000 -0.00000000  0.00000000 -0.00000087
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.01678570  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000087 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.34549015 -0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000017  0.33525083 -0.21621565  0.00000000 -0.00000000 -0.00000000  0.57634023
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.34547422 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000694 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221840  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00009601 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000002 -0.00202684  0.00394688 -0.00000000  0.00000000  0.00000000  0.00000008

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00221843 -0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00443558  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000080 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.03971939  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.07692301 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02809106 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000005 -0.00000001  0.00000000  0.00000000  0.00237818 -0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000007  0.49442260  0.01808559 -0.03536206  0.00000000 -0.00000000 -0.00000000 -0.00000075

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000003  0.24645864 -0.04742550 -0.02429948  0.00000000 -0.00000000  0.00000000 -0.00000084

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000005  0.00000000  0.00000000  0.00000000  0.05018419 -0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.59271838  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04165311 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000087 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000005 -0.35487396 -0.18224661  0.00000000 -0.00000000  0.00000000  0.57634198

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.34548193 -0.00000001 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000029 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.34547467  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00443151  0.00021814  0.00000000 -0.00000000  0.00000000 -0.00000004

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00379353 -0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221841 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00221844  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00230090 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000004 -0.00000001 -0.00000000 -0.00000000 -0.03971807  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.11404312  0.03685591 -0.01851637 -0.00000000 -0.00000000 -0.00000000 -0.00000011

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000099 -0.00000000  0.00000000
                               -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.04918509  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.62624975 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03975600 -0.00000000

 54  1    10    1  |1 1>-       0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.36534402 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03071665  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.01024397  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000010  0.73056695  0.01490709  0.04993735 -0.00000000  0.00000000  0.00000000  0.00000166

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000013  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.34549770 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000694  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.34548932 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000025  0.01961005  0.39842931 -0.00000000  0.00000000  0.00000000  0.57633931


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00424922  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00148879  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00450251
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000004  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000006  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00002445 -0.00000000 -0.00000000  0.00000044  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.46466518 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00001547 -0.00000047 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.14638223  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000911 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.48718500
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000058 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00002253 -0.00000046 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00001246 -0.00000000  0.00000000 -0.00000026 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00002259 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000046 -0.00000000 -0.00113634
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00147968 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00002292 -0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000067  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000034 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00646551 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000053  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.01835074
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000049  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.01425071
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.02123884  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000015  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.02049125 -0.00000000 -0.00000486  0.99979003  0.00000181  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000002  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.70696140  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.01448989  0.00000001  0.61692432
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.54069743  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.70695414  0.01448902  0.00000007 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00025090  0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00002251 -0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00002604  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075399  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002255  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00113633

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000049  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000067  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000037  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00109962

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00606537 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02325531  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000012  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02320820

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000087  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000727 -0.00000831  0.00000001 -0.00000001 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.02049105  0.99979004  0.00000486 -0.00000032  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.67201992 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.70695520 -0.00000000  0.00000000  0.00000000 -0.00000003  0.01449011  0.00000001  0.61693603

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.70695096 -0.00000000  0.00000007 -0.01448928 -0.00000003  0.00000000 -0.00000001

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00223367  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001350  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00194313

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002262  0.00000000 -0.00000000  0.00000046  0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00002260 -0.00000046 -0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002232 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00117855

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.01836874

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01572416 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000115  0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000109  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000089  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000026  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00996658  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000004 -0.00000000 -0.00000000
                                0.02049195  0.00000000 -0.00000000  0.00000032 -0.00000181  0.99979002 -0.00000000 -0.00000030

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70696566  0.00000000 -0.00000007  0.01448971  0.00000003  0.00000000 -0.00000001

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00025090  0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.70696239 -0.01448970 -0.00000007  0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.13133518 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000002 -0.00000000 -0.00000000  0.00005932
                                0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00148877 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00424926  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00450253  0.00000000
                               -0.00000000 -0.00000000 -0.00000003 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00450249  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000001 -0.48718521 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.14637941 -0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000001  0.00000000 -0.48717902 -0.00000000
                               -0.00000000 -0.00000000 -0.00000364 -0.00000000

 10  1    10    1  |0 0>       -0.46466095  0.00000001  0.00000001 -0.00000008
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000099 -0.00000000 -0.00000000  0.99825160
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00113633 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00199228  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00172491  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00109336 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.01836864  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.02189875  0.00000000
                               -0.00000000 -0.00000000 -0.00000016  0.00000000

 20  1     8    1  |1 1>+       0.02125495 -0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00019061  0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00776261 -0.00000000
                                0.00000000  0.00000000  0.00000006 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000039 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.46381270  0.00000001  0.00000001  0.03412586
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000001 -0.00000000  0.61694153  0.00000000
                                0.00000000  0.00000000  0.00000462  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00113632  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00004918 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00214388  0.00000000  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00227193  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000014  0.00000000
                                0.00000000 -0.00000000  0.01836785  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01299081  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01733766 -0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00815454 -0.00000000 -0.00000000 -0.00000003

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01926303  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000007  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.23633899  0.00000000  0.00000001  0.03412575

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.61694498  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00041897  0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00113633  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00113632  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01079844 -0.00000000 -0.00000000  0.00000002

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000017  0.00000000
                                0.00000000 -0.00000000  0.02274589  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01838584  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01420544  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000004  0.00000000
                                0.00000000 -0.00000000  0.00473736  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02194345  0.00000000  0.00000000 -0.00000003

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.61691522  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000462 -0.00000000
                                0.00000001 -0.00000000  0.61692360  0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70017133 -0.00000001 -0.00000001  0.03412623



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.96%    0.02%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.96%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.98%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.98%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    9.29%    0.00%    0.00%   50.71%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.56%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   40.07%   25.94%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%   30.68%    0.00%    0.00%   15.29%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   30.04%    0.00%    0.00%   16.47%    0.00%
 30  1     2    1  |1 0>          0.00%   39.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.55%   64.46%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%   30.04%    0.00%    0.00%    0.00%    0.00%   16.47%
 33  1     5    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   57.40%    8.61%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%   10.79%    0.00%    0.00%    0.00%    0.00%   48.23%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.55%    0.00%
 48  1     4    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%   29.18%    0.00%    0.00%    0.00%    0.00%   17.76%
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
  5  1     5    1  |0 0>          0.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.54%   18.53%    0.00%    0.00%    0.00%   34.77%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%   37.15%    0.00%    0.00%    0.00%    0.00%    2.35%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   11.69%    0.00%    0.00%   41.59%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   53.88%
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
 29  1     1    1  |1 0>          0.00%    0.00%   49.52%    0.00%    0.00%    0.00%    0.00%    3.82%
 30  1     2    1  |1 0>          0.03%   59.98%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%   50.45%    0.00%    0.00%    2.88%    0.00%
 33  1     5    1  |1 0>         65.92%    0.00%    0.00%    0.00%    0.00%   33.41%    0.00%    0.00%
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
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   37.86%    0.00%    0.00%    2.64%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%   13.33%    0.00%    0.00%    0.00%    0.00%   39.95%
 48  1     4    1  |1 1>-        16.53%   21.50%    0.00%    0.00%    0.00%   31.81%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   52.89%    0.00%
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
  2  1     2    1  |0 0>         99.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%   99.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.01%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.01%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.01%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.80%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.80%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.80%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.50%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.49%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.57%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   12.37%    0.00%   22.18%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   27.76%    0.00%    3.82%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.22%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.65%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.62%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    9.40%    0.00%   14.22%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.56%    0.00%   16.95%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.49%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.48%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.84%    0.00%    1.63%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.22%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.57%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.26%    0.00%   40.40%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%   23.62%    0.00%    0.00%   19.55%    0.00%   13.78%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%   12.02%    0.00%    0.00%    3.75%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        23.57%    0.00%    0.00%   14.80%    0.00%    0.00%    0.00%   18.61%
 22  1    10    1  |1 1>+        14.21%    0.00%    0.00%   48.25%    0.00%    0.00%    0.00%    1.67%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    2.38%    0.00%    0.00%   65.18%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%   10.79%    0.00%    0.00%   22.54%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%   11.81%    0.00%    0.00%    3.59%    0.00%   50.57%    0.00%
 36  1     8    1  |1 0>          0.08%    0.00%    0.00%    2.11%    0.00%    0.00%    0.00%   72.74%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>         37.70%    0.00%    0.00%    8.47%    0.00%    0.00%    0.00%    0.02%
 40  1    12    1  |1 0>          0.00%   25.97%    0.00%    0.00%    4.85%    0.00%   24.33%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.62%    0.00%    0.00%   26.37%    0.00%    0.00%    0.00%    6.96%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    2.60%    0.00%    0.00%    8.51%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%   23.66%    0.00%    0.00%   22.01%    0.00%   11.25%    0.00%
 54  1    10    1  |1 1>-         0.00%   14.12%    0.00%    0.00%   50.00%    0.00%    0.07%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%   72.21%    0.00%    0.00%    0.02%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%   31.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%   27.60%    0.00%    0.00%    0.00%   22.78%    0.00%    0.00%
 20  1     8    1  |1 1>+        14.04%    0.00%    0.00%   16.21%    0.00%    0.00%   25.16%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.60%    0.00%    0.00%   41.22%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.79%    0.00%    0.00%    9.96%
 23  1    11    1  |1 1>+        19.29%    0.00%    0.00%   12.27%    0.00%    0.00%   31.55%    0.00%
 24  1    12    1  |1 1>+         0.00%    6.40%    0.00%    0.00%    0.00%   21.79%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%   40.55%    0.00%    0.00%    0.00%    2.31%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    8.56%    0.00%    0.00%   16.50%
 37  1     9    1  |1 0>         33.33%    0.00%    0.00%    0.07%    0.00%    0.00%   18.34%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%   40.53%    0.00%    0.00%   10.54%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   37.08%    0.00%    0.00%   16.42%
 40  1    12    1  |1 0>          0.00%    0.00%    9.51%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   26.97%    0.00%    0.00%   15.89%
 51  1     7    1  |1 1>-        30.07%    0.00%    0.00%   29.20%    0.00%    0.00%   13.75%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%   52.37%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    3.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%   22.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   25.45%    0.00%    0.00%    0.00%    0.74%    0.00%    0.00%
 56  1    12    1  |1 1>-         3.27%    0.00%    0.00%    1.72%    0.00%    0.00%    0.65%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   75.46%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   73.33%    2.13%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   75.46%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    2.13%   73.33%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%   75.46%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.35%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        11.71%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    9.75%    0.04%    0.19%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    5.05%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.94%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   11.24%    4.67%    0.00%    0.00%    0.00%   33.22%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   11.94%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%
 35  1     7    1  |1 0>          0.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%   24.45%    0.03%    0.13%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    6.07%    0.22%    0.06%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>         35.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   12.59%    3.32%    0.00%    0.00%    0.00%   33.22%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.94%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.94%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    1.30%    0.14%    0.03%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 53  1     9    1  |1 1>-        39.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%
 54  1    10    1  |1 1>-        13.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%   53.37%    0.02%    0.25%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.94%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   11.94%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.04%   15.87%    0.00%    0.00%    0.00%   33.22%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.59%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.14%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.73%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.04%    0.00%    0.00%   99.96%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+        49.98%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   38.06%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   29.24%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%   49.98%    0.02%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.04%   99.96%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   45.16%    0.00%
 43  1    15    1  |1 0>         49.98%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   38.06%
 44  1    16    1  |1 0>          0.00%   49.98%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 57  1    13    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%   49.98%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%   49.98%    0.02%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.72%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   23.73%    0.00%    0.00%
  8  1     8    1  |0 0>          2.14%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   23.73%    0.00%
 10  1    10    1  |0 0>         21.59%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   99.65%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.03%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.05%    0.00%
 20  1     8    1  |1 1>+         0.05%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.01%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+        21.51%    0.00%    0.00%    0.12%
 28  1    16    1  |1 1>+         0.00%    0.00%   38.06%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.03%    0.00%
 35  1     7    1  |1 0>          0.00%    0.02%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.03%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.01%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.04%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          5.59%    0.00%    0.00%    0.12%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%   38.06%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.05%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.03%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.02%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.05%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%   38.06%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%   38.06%    0.00%
 60  1    16    1  |1 1>-        49.02%    0.00%    0.00%    0.12%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      117.38       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       342.98    282.65      0.72     35.74     21.55      0.69      0.85      0.02      0.50
 REAL TIME  *       376.42 SEC
 DISK USED  *       149.43 MB (local),        2.40 GB (total)
 SF USED    *       761.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -25.230061520311

              CI              CI           MULTI           MULTI         RHF-SCF
    -25.21314283    -25.20933577    -25.00468829    -25.00495706    -25.09500683
 **********************************************************************************************************************************
 Molpro calculation terminated
