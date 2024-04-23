
 Working directory              : /wrk/irikura/molpro.1F42b6IfK7/
 Global scratch directory       : /wrk/irikura/molpro.1F42b6IfK7/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1F42b6IfK7/

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
 
                                                                                 ! first with uniform weights
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,12;
     wf,sym=1,spin=2;state,16;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Prep2 energies and &lt;L**2&gt; values
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,12;
       weight,15,1,1,1,1,1,1,1,1,1,1,1
     wf,sym=1,spin=2;state,16;
       weight,all,1
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Mar-24          TIME: 10:21:07  
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

 SORT1 READ     8662933. AND WROTE       47927. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      232328.  Node maximum:      235903. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.74      0.53
 REAL TIME  *         1.31 SEC
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
   3      -25.09500683      -0.00000000     0.61D-06     0.19D-04     2     0       0.01      0.02    diag
   4      -25.09500683      -0.00000000     0.26D-06     0.12D-04     3     0       0.00      0.02    diag
   5      -25.09500683      -0.00000000     0.45D-07     0.98D-06     4     0       0.00      0.02    diag
   6      -25.09500683      -0.00000000     0.12D-07     0.13D-06     0     0       0.01      0.03    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095006829040
  RHF One-electron energy             -41.272176595180
  RHF Two-electron energy              16.177169766140
  RHF Kinetic energy                    6.695468947860
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748058130725

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
 CPU TIMES  *         0.77      0.02      0.53
 REAL TIME  *         1.35 SEC
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.492D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.493D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 2 4   6 3 5 1 4 6 3 5 2 1   4 6 3 5 2 1 6 4 3 5   2 6 3 4 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.139D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.223D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 3   1 2 4 5 6 9 7 810 3   1 2 6 4 5 7 9 810 4   5 6 7 9 810 3 2 1 4
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
   1   12   22    5    -24.90463693     -25.04335263   -0.13871569    0.05826643 0.00033734 0.00000000  0.20E+01      0.28
   2    7   12    0    -25.01772332     -25.02465715   -0.00693383    0.07756821 0.00000852 0.00000000  0.44E+00      0.54
   3    7   12    0    -25.02470725     -25.02471074   -0.00000349    0.00134094 0.00000176 0.00000000  0.82E-02      0.78
   4    5   10    0    -25.02471074     -25.02471074   -0.00000000    0.00000216 0.00000000 0.00000000  0.30E-04      0.95

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.43E-08)
                       Final energy:    -25.02471074
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101318036219
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61943861
 One electron energy                           -41.24994525
 Two electron energy                            16.14862721
 Virial ratio                                    4.79206146
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061262058334
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546596
 One electron energy                           -41.50964141
 Two electron energy                            16.44837935
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061262058330
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546596
 One electron energy                           -41.50964140
 Two electron energy                            16.44837935
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061262058193
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061262058106
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964139
 Two electron energy                            16.44837933
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061262058070
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964139
 Two electron energy                            16.44837933
 Virial ratio                                    4.68251965
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004957062116
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308933
 Two electron energy                            16.90813227
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004957062111
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308933
 Two electron energy                            16.90813227
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
 !MCSCF STATE 9.1 Triplet Energy               -25.004957062093
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004957062091
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004957062088
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308935
 Two electron energy                            16.90813229
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004957062077
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065711
 One electron energy                           -41.91308936
 Two electron energy                            16.90813230
 Virial ratio                                    4.54647186
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984348024938
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874131
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984348024897
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
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.356245133932
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     2.643754842142
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999999997
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000009
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     6.633376984539
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     6.481333011203
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.205973647889
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.794058805221
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.518667742203
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     4.000000000148
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.366633413608
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.682004037216
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.317995981790
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.028144035735
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.905028509854
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.307336275163
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     8.692694996430
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     8.094970973624
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     3.999999999996
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.971856916388
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.961750828852
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.038249176069
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000003
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999999991
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     5.338478979726
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.613638478943
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     7.486690076948
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     2.513246198349
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.386361284173
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.999999999856
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     4.661509670004
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 2 5 4 3 1 1 5   6 2 3 4 5 6 2 3 4 1   5 3 6 2 4 1 3 5 4 6   2 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 9 710 5 8 6 4 1   2 3 9 710 5 6 8 4 7   9 810 4 5 6 1 2 3 7
                                        9 810 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52901     1  1  s    0.98124
    2.1     0.43189    -0.01823     1  2  s    1.01366
    3.1     0.31353     0.06705     1  1  d1-  0.92895
    4.1     0.31353     0.06705     1  1  d0   0.92895
    5.1     0.31353     0.06705     1  1  d2+  0.92895
    6.1     0.31353     0.06705     1  1  d1+  0.92895
    7.1     0.31353     0.06705     1  1  d2-  0.92895
    8.1     0.00045     0.20296     1  2  s    1.47324    1  3  s    3.36210    1  4  s   -3.74322    1  5  s   -0.52773
                                    1  6  s   -0.36182    1  7  s    0.28600
    1.2     2.00000    -0.83305     1  1  px   0.97936
    2.2     2.00000    -0.83305     1  1  py   0.97936
    3.2     2.00000    -0.83305     1  1  pz   0.97936
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97690632
 0000020       -0.09090651
 0200000       -0.09090651
 0020000       -0.09090651
 0002000       -0.09090651
 0000200       -0.09090651
 
 Energy:      -25.10131804
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 00aa000       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000198
 a0000a0        0.00000000      0.00000006      0.00000065     -0.00000104      0.99991821      0.00000000      0.00000000
 aa00000        0.00000000     -0.00000001     -0.00000029      0.99991821      0.00000104      0.00000000      0.00000000
 a000a00        0.99991821     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a0a0000        0.00000000      0.09777898      0.99512597      0.00000029     -0.00000065     -0.00000000     -0.00000000
 a00a000        0.00000000      0.99512597     -0.09777898     -0.00000002      0.00000000     -0.00000000     -0.00000000
 00a00a0        0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.95047863
 000a0a0       -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.13898948
 0a000a0        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.89127504      0.00000000
 000aa00       -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.15017575      0.00000001
 0a0a000       -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000018
 0a00a00        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.27797896
 0000aa0        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000016
 00a0a00       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.42787387      0.00000001
 0aa0000        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001
 
 Energy:      -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.00495706    -25.00495706

 State:              8               9              10              11              12              13              14
 00aa000        0.00000530     -0.00000136     -0.00001844      1.00000000      0.00000214      0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 aa00000       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0a0000       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a00a000        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00a00a0       -0.00000018     -0.00001086     -0.31078993     -0.00000762     -0.00000002      0.00000000     -0.00000000
 000a0a0       -0.00000008      0.00001473      0.42506696      0.00000756      0.00000000     -0.00000010      0.89442719
 0a000a0       -0.00000000      0.00000000     -0.00000000     -0.00000016      0.07502538      0.00000000     -0.00000000
 000aa00       -0.00000000      0.00000000     -0.00000001     -0.00000189      0.88172969     -0.00000000      0.00000000
 0a0a000        0.87494527     -0.18566305      0.00000654     -0.00000489     -0.00000000      0.44721360      0.00000005
 0a00a00       -0.00000016      0.00002946      0.85013393      0.00001512      0.00000001      0.00000005     -0.44721360
 0000aa0        0.39850379      0.80074636     -0.00002773     -0.00000102     -0.00000000     -0.44721360     -0.00000005
 00a0a00       -0.00000000      0.00000000     -0.00000000     -0.00000100      0.46575095     -0.00000000      0.00000000
 0aa0000       -0.27507362      0.56950374     -0.00001978      0.00000223      0.00000000      0.77459667      0.00000009
 
 Energy:      -25.00495706    -25.00495706    -25.00495706    -25.00495706    -25.00495706    -24.98434802    -24.98434802

 State:             15
 00aa000        0.00000000
 a0000a0       -0.00000000
 aa00000       -0.00000000
 a000a00        0.00000000
 a0a0000        0.00000000
 a00a000        0.00000000
 00a00a0        0.00000000
 000a0a0        0.00000000
 0a000a0        0.44721359
 000aa00       -0.44721360
 0a0a000        0.00000000
 0a00a00       -0.00000000
 0000aa0       -0.00000000
 00a0a00        0.77459667
 0aa0000       -0.00000000
 
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
 CPU TIMES  *         1.67      0.90      0.02      0.53
 REAL TIME  *         2.50 SEC
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 2 5 4 3 1 1 5   6 2 3 4 5 6 2 3 4 1   5 3 6 2 4 1 3 5 4 6   2 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 9 710 5 8 6 4 1   2 3 9 710 5 6 8 4 7   9 810 4 5 6 1 2 3 7
                                        9 810 4 6 5 1 2 3

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
   1    9   16    1    -25.01468573     -25.01760349   -0.00291776    0.00501178 0.00000490 0.00000000  0.71E+00      0.22
   2    7   12    0    -25.01766700     -25.01767590   -0.00000891    0.00217188 0.00000113 0.00000000  0.12E-01      0.46
   3    6   12    0    -25.01767591     -25.01767591   -0.00000000    0.00000284 0.00000001 0.00000000  0.64E-04      0.66

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.67E-09)
                       Final energy:    -25.01767591
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.100688875238
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61622780
 One electron energy                           -41.22767100
 Two electron energy                            16.12698212
 Virial ratio                                    4.79380663
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.044249490919
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518443
 Two electron energy                            16.55093494
 Virial ratio                                    4.64772336
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.044249490838
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518443
 Two electron energy                            16.55093494
 Virial ratio                                    4.64772336
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.044249490784
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518442
 Two electron energy                            16.55093493
 Virial ratio                                    4.64772336
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.044249490752
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518442
 Two electron energy                            16.55093493
 Virial ratio                                    4.64772336
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.044249490606
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.86572061
 One electron energy                           -41.59518442
 Two electron energy                            16.55093493
 Virial ratio                                    4.64772337
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.988828110747
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.55673559
 One electron energy                           -40.30113714
 Two electron energy                            15.31230903
 Virial ratio                                    4.81116911
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.978837858642
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489418
 One electron energy                           -41.62606356
 Two electron energy                            16.64722570
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.978837858567
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489418
 One electron energy                           -41.62606356
 Two electron energy                            16.64722570
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.978837858520
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489418
 One electron energy                           -41.62606357
 Two electron energy                            16.64722571
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.978837858482
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489418
 One electron energy                           -41.62606357
 Two electron energy                            16.64722571
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.978837858352
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.97489418
 One electron energy                           -41.62606357
 Two electron energy                            16.64722571
 Virial ratio                                    4.58124973
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061599896885
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977148
 One electron energy                           -41.55263840
 Two electron energy                            16.49103850
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061599896823
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977148
 One electron energy                           -41.55263839
 Two electron energy                            16.49103850
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061599896789
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977148
 One electron energy                           -41.55263839
 Two electron energy                            16.49103849
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061599896765
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977148
 One electron energy                           -41.55263839
 Two electron energy                            16.49103849
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061599896643
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82977147
 One electron energy                           -41.55263838
 Two electron energy                            16.49103848
 Virial ratio                                    4.66946390
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004688293436
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789411
 Two electron energy                            16.96320582
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004688293415
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789412
 Two electron energy                            16.96320583
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004688293396
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789412
 Two electron energy                            16.96320583
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004688293379
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789413
 Two electron energy                            16.96320584
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004688293370
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789413
 Two electron energy                            16.96320584
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004688293361
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789413
 Two electron energy                            16.96320584
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004688293351
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789414
 Two electron energy                            16.96320584
 Virial ratio                                    4.53194581
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.997852666199
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.50380733
 One electron energy                           -40.13908606
 Two electron energy                            15.14123339
 Virial ratio                                    4.84357214
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.983767194015
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957868
 One electron energy                           -41.96789412
 Two electron energy                            16.98412693
 Virial ratio                                    4.52899068
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.983767193953
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789413
 Two electron energy                            16.98412693
 Virial ratio                                    4.52899068
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.983767193848
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.07957869
 One electron energy                           -41.96789413
 Two electron energy                            16.98412694
 Virial ratio                                    4.52899068
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.258936329662
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.741066067388
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     4.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.965744220708
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.999999999999
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.034254815899
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.775121620789
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.224878319181
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.489767435910
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.010841895349
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     5.516486555775
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     4.000000000978
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.483513875312
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     6.510229799863
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.989157972236
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.716380819406
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.283616300375
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999999999997
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.336325703007
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000000007
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     2.663679228421
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     3.999999999995
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.209120076552
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000003
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.790879975323
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999998
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.981943016750
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     5.591853798422
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     6.468355104823
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     3.999999999095
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.531644490795
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.018056783289
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.408148720393
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.024682850932
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.975317632237
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000000003
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.697930076285
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.999999999994
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.302065955681
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000005
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.015758302660
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999998
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.984241705497
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000002
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     4.528289547340
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     6.397304306228
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.015158339402
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.999999999927
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.984841633893
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     5.471713416847
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.602693307371
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 2 6 5 4 1 6 3   5 2 4 1 6 3 5 2 4 1   3 6 5 2 4 1 5 6 3 4   2 5 6 4 3 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 1 3 2   1 3 7 9 5 810 6 4 2   1 3 7 9 5 810 6 4 7   9 510 8 6 4 2 1 3 7
                                        910 5 8 6 4 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.54469     1  1  s    0.98304
    2.1     0.48974    -0.03307     1  2  s    0.98163
    3.1     0.28353     0.06045     1  1  d2-  0.94190
    4.1     0.28353     0.06045     1  1  d0   0.94190
    5.1     0.28353     0.06045     1  1  d1-  0.94190
    6.1     0.28353     0.06045     1  1  d2+  0.94190
    7.1     0.28353     0.06045     1  1  d1+  0.94190
    8.1     0.09260     0.03995     1  2  s    0.77491    1  4  s    0.26175    1  8  s   -1.49561
    1.2     2.00000    -0.84787     1  1  py   0.98112
    2.2     2.00000    -0.84787     1  1  pz   0.98112
    3.2     2.00000    -0.84787     1  1  px   0.98112
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2000000        0.97005241      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.16198758
 b00000a       -0.09315476     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.65506408
 a00000b        0.09315476      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.65506408
 a00b000       -0.00000000      0.64238724      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 b00a000        0.00000000     -0.64238724     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 ab00000       -0.00000000     -0.00000000     -0.00000084      0.64238724      0.00000140      0.00000012      0.00000000
 ba00000        0.00000000      0.00000000      0.00000084     -0.64238724     -0.00000140     -0.00000012     -0.00000000
 b0000a0       -0.00000000     -0.00000000     -0.00000004      0.00000012      0.00000013     -0.64238724     -0.00000000
 a0000b0        0.00000000      0.00000000      0.00000004     -0.00000012     -0.00000013      0.64238724      0.00000000
 b0a0000        0.00000000      0.00000000     -0.64040218     -0.00000094      0.05046201      0.00000005      0.00000000
 a0b0000       -0.00000000     -0.00000000      0.64040218      0.00000094     -0.05046201     -0.00000005     -0.00000000
 a000b00        0.00000000      0.00000000      0.05046201     -0.00000133      0.64040218      0.00000013      0.00000000
 b000a00       -0.00000000     -0.00000000     -0.05046201      0.00000133     -0.64040218     -0.00000013     -0.00000000
 0ba0000        0.00000000     -0.00000000      0.00000029     -0.22332225     -0.00000049     -0.00000004      0.00000000
 0ab0000       -0.00000000      0.00000000     -0.00000029      0.22332225      0.00000049      0.00000004     -0.00000000
 0002000       -0.09101892      0.00000000     -0.09612354     -0.00000056      0.20157651      0.00000005     -0.08624193
 0000200       -0.09101892     -0.00000000      0.22263215      0.00000033     -0.01754283     -0.00000002     -0.08624192
 00a0b00        0.00000000      0.00000000      0.01754283     -0.00000046      0.22263215      0.00000005      0.00000000
 00b0a00       -0.00000000     -0.00000000     -0.01754283      0.00000046     -0.22263215     -0.00000005     -0.00000000
 0200000       -0.09101892     -0.00000000      0.22263215      0.00000033     -0.01754283     -0.00000002     -0.08624192
 0020000       -0.09101892      0.00000000     -0.22263215     -0.00000033      0.01754283      0.00000002     -0.08624192
 0b000a0        0.00000000      0.19340274     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0a000b0       -0.00000000     -0.19340274      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0000ab0       -0.00000000     -0.00000000     -0.00000001      0.00000004      0.00000004     -0.19340274      0.00000000
 0000ba0        0.00000000      0.00000000      0.00000001     -0.00000004     -0.00000004      0.19340274     -0.00000000
 000a0b0        0.00000000      0.00000000      0.00000025     -0.19340274     -0.00000042     -0.00000004      0.00000000
 000b0a0       -0.00000000     -0.00000000     -0.00000025      0.19340274      0.00000042      0.00000004     -0.00000000
 000ba00       -0.00000000     -0.19340274     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 000ab00        0.00000000      0.19340274      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0b0a000        0.00000000     -0.00000000      0.00000001     -0.00000004     -0.00000004      0.19340274     -0.00000000
 0a0b000       -0.00000000      0.00000000     -0.00000001      0.00000004      0.00000004     -0.19340274      0.00000000
 0000020       -0.09101892      0.00000000     -0.12650861      0.00000024     -0.18403369     -0.00000003     -0.08624192
 0000002       -0.01484891      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.27991745
 000b00a       -0.00000000     -0.00782205      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 000a00b        0.00000000      0.00782205     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0b0000a        0.00000000      0.00000000      0.00000001     -0.00782205     -0.00000002     -0.00000000      0.00000000
 0a0000b       -0.00000000     -0.00000000     -0.00000001      0.00782205      0.00000002      0.00000000     -0.00000000
 00000ab        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00782205     -0.00000000
 00000ba       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00782205      0.00000000
 00a00b0       -0.00000000     -0.00000000     -0.00000001      0.00000002      0.00000002     -0.11166112     -0.00000000
 00b00a0        0.00000000      0.00000000      0.00000001     -0.00000002     -0.00000002      0.11166112      0.00000000
 00ab000        0.00000000     -0.11166112      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 00ba000       -0.00000000      0.11166112     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 00a000b       -0.00000000     -0.00000000      0.00779788      0.00000001     -0.00061445     -0.00000000     -0.00000000
 00b000a        0.00000000      0.00000000     -0.00779788     -0.00000001      0.00061445      0.00000000      0.00000000
 0000b0a        0.00000000     -0.00000000     -0.00061445      0.00000002     -0.00779788     -0.00000000      0.00000000
 0000a0b       -0.00000000      0.00000000      0.00061445     -0.00000002      0.00779788      0.00000000     -0.00000000
 
 Energy:      -25.10068888    -25.04424949    -25.04424949    -25.04424949    -25.04424949    -25.04424949    -24.98882811

 State:              8               9              10              11              12
 2000000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b00000a       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a00000b        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00b000        0.28124017     -0.00000000     -0.00000000      0.00000000      0.00000000
 b00a000       -0.28124017      0.00000000      0.00000000     -0.00000000     -0.00000000
 ab00000       -0.00000000      0.00000029     -0.28124017     -0.00000023     -0.00000035
 ba00000        0.00000000     -0.00000029      0.28124017      0.00000023      0.00000035
 b0000a0        0.00000000      0.00000008      0.00000035      0.00000005     -0.28124017
 a0000b0       -0.00000000     -0.00000008     -0.00000035     -0.00000005      0.28124017
 b0a0000        0.00000000      0.25552917      0.00000036     -0.11747713      0.00000005
 a0b0000       -0.00000000     -0.25552917     -0.00000036      0.11747713     -0.00000005
 a000b00        0.00000000     -0.11747713      0.00000009     -0.25552917     -0.00000008
 b000a00       -0.00000000      0.11747713     -0.00000009      0.25552917      0.00000008
 0ba0000        0.00000000      0.00000047     -0.45760898     -0.00000038     -0.00000058
 0ab0000       -0.00000000     -0.00000047      0.45760898      0.00000038      0.00000058
 0002000       -0.00000000     -0.04234786     -0.00000042      0.45564528      0.00000007
 0000200        0.00000000      0.41577435      0.00000059     -0.19114833      0.00000009
 00a0b00       -0.00000000      0.19114831     -0.00000015      0.41577434      0.00000013
 00b0a00        0.00000000     -0.19114831      0.00000015     -0.41577434     -0.00000013
 0200000        0.00000000      0.41577434      0.00000059     -0.19114832      0.00000009
 0020000       -0.00000000     -0.41577430     -0.00000059      0.19114837     -0.00000009
 0b000a0       -0.39630105      0.00000000      0.00000000     -0.00000000      0.00000000
 0a000b0        0.39630105     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000ab0       -0.00000000     -0.00000011     -0.00000050     -0.00000007      0.39630105
 0000ba0        0.00000000      0.00000011      0.00000050      0.00000007     -0.39630105
 000a0b0        0.00000000      0.00000041     -0.39630102     -0.00000033     -0.00000050
 000b0a0       -0.00000000     -0.00000041      0.39630102      0.00000033      0.00000050
 000ba00        0.39630098     -0.00000000      0.00000000      0.00000000      0.00000000
 000ab00       -0.39630098      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0b0a000       -0.00000000      0.00000011      0.00000050      0.00000007     -0.39630096
 0a0b000        0.00000000     -0.00000011     -0.00000050     -0.00000007      0.39630096
 0000020       -0.00000000     -0.37342653     -0.00000017     -0.26449700     -0.00000015
 0000002        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 000b00a        0.23333130     -0.00000000      0.00000000      0.00000000     -0.00000000
 000a00b       -0.23333130      0.00000000     -0.00000000     -0.00000000      0.00000000
 0b0000a       -0.00000000      0.00000024     -0.23333129     -0.00000019     -0.00000029
 0a0000b        0.00000000     -0.00000024      0.23333129      0.00000019      0.00000029
 00000ab       -0.00000000      0.00000007      0.00000029      0.00000004     -0.23333128
 00000ba        0.00000000     -0.00000007     -0.00000029     -0.00000004      0.23333128
 00a00b0       -0.00000000     -0.00000007     -0.00000029     -0.00000004      0.22880450
 00b00a0        0.00000000      0.00000007      0.00000029      0.00000004     -0.22880450
 00ab000        0.22880447     -0.00000000     -0.00000000      0.00000000     -0.00000000
 00ba000       -0.22880447      0.00000000      0.00000000     -0.00000000      0.00000000
 00a000b        0.00000000      0.21200013      0.00000030     -0.09746506      0.00000004
 00b000a       -0.00000000     -0.21200013     -0.00000030      0.09746506     -0.00000004
 0000b0a        0.00000000     -0.09746506      0.00000007     -0.21200013     -0.00000006
 0000a0b       -0.00000000      0.09746506     -0.00000007      0.21200013      0.00000006
 
 Energy:      -24.97883786    -24.97883786    -24.97883786    -24.97883786    -24.97883786
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a00000a        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 00a0a00       -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000008      0.00000000
 a00a000        0.99849825     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 aa00000       -0.00000000      0.00000013      0.99849825     -0.00000043     -0.00000085     -0.00000000      0.00000000
 a0000a0       -0.00000000     -0.00000035      0.00000085      0.00000088      0.99849825     -0.00000000     -0.00000000
 0aa0000       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000028     -0.00000000
 a0a0000        0.00000000      0.99652948     -0.00000010      0.06267178      0.00000029      0.00000000      0.00000000
 a000a00        0.00000000     -0.06267178      0.00000043      0.99652948     -0.00000090     -0.00000000     -0.00000000
 0a00a00        0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000082      0.00000000
 0a000a0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.89321421
 000a0a0        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000164     -0.00000000
 0a0a000       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.06009490      0.00000000
 0000aa0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.87909219     -0.00000000
 000aa00       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.26839075
 00aa000       -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.36074199
 00a00a0       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.47284831     -0.00000000
 00000aa        0.00000000      0.00000002     -0.00000005     -0.00000005     -0.05478362      0.00000000      0.00000000
 0a0000a        0.00000000     -0.00000001     -0.05478362      0.00000002      0.00000005      0.00000000      0.00000000
 000a00a       -0.05478361     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000a0a       -0.00000000      0.00343855     -0.00000002     -0.05467560      0.00000005     -0.00000000      0.00000000
 00a000a       -0.00000000     -0.05467560      0.00000001     -0.00343855     -0.00000002      0.00000000      0.00000000
 
 Energy:      -25.06159990    -25.06159990    -25.06159990    -25.06159990    -25.06159990    -25.00468829    -25.00468829

 State:              8               9              10              11              12              13              14
 a00000a       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000      0.00000000
 00a0a00        0.00000002      1.00000000      0.00001932     -0.00000003     -0.00000256     -0.00000000     -0.00000000
 a00a000       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000       -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0aa0000        0.06155960     -0.00001929      0.99810341     -0.00000029      0.00000000      0.00000000     -0.00000000
 a0a0000        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 a000a00        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a00a00       -0.44636541     -0.00000052      0.02753029     -0.00000013      0.00000000     -0.00000000     -0.00000009
 0a000a0        0.00000000      0.00000012     -0.00000000      0.00000000      0.04656586     -0.00000000      0.00000000
 000a0a0        0.89273083      0.00000105     -0.05506058      0.00000026     -0.00000000      0.00000000     -0.00000005
 0a0a000       -0.00000013      0.00000003      0.00000028      0.89240607     -0.00000000     -0.00000000     -0.44721360
 0000aa0       -0.00000158     -0.00000008     -0.00000020     -0.16491489      0.00000000      0.00000000     -0.44721359
 000aa00       -0.00000000      0.00000218     -0.00000000      0.00000000      0.85320947     -0.00000000     -0.00000000
 00aa000       -0.00000000      0.00000133     -0.00000000      0.00000000      0.51948553     -0.00000000     -0.00000000
 00a00a0       -0.00000099     -0.00000003      0.00000005      0.42001724     -0.00000000      0.00000000      0.77459667
 00000aa        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0a0000a        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 000a00a        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000a0a        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 00a000a        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:      -25.00468829    -25.00468829    -25.00468829    -25.00468829    -25.00468829    -24.99785267    -24.98376719

 State:             15              16
 a00000a        0.00000000      0.00000000
 00a0a00       -0.00000000      0.00000000
 a00a000        0.00000000      0.00000000
 aa00000        0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000
 0aa0000        0.00000000     -0.00000000
 a0a0000        0.00000000     -0.00000000
 a000a00        0.00000000      0.00000000
 0a00a00        0.89442719      0.00000000
 0a000a0       -0.00000000     -0.44721359
 000a0a0        0.44721360     -0.00000000
 0a0a000       -0.00000005     -0.00000000
 0000aa0       -0.00000005      0.00000000
 000aa00        0.00000000     -0.44721360
 00aa000        0.00000000      0.77459667
 00a00a0        0.00000008      0.00000000
 00000aa        0.00000000     -0.00000000
 0a0000a        0.00000000      0.00000000
 000a00a       -0.00000000     -0.00000000
 0000a0a        0.00000000      0.00000000
 00a000a        0.00000000      0.00000000
 
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
 CPU TIMES  *         2.37      0.69      0.90      0.02      0.53
 REAL TIME  *         3.38 SEC
 DISK USED  *        33.11 MB (local),      600.09 MB (total)
 SF USED    *         9.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Prep2 energies and &lt;L**2&gt; values

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 2 6 5 4 1 6 3   5 2 4 1 6 3 5 2 4 1   3 6 5 2 4 1 5 6 3 4   2 5 6 4 3 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 1 3 2   1 3 7 9 5 810 6 4 2   1 3 7 9 5 810 6 4 7   9 510 8 6 4 2 1 3 7
                                        910 5 8 6 4 1 3 2

 Wavefunction dump at record             2142.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.35714   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381   0.02381   0.02381
 Weight factors for state symmetry  2:    0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    1309
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -25.04534690     -25.04558365   -0.00023675    0.02154273 0.00000217 0.00000000  0.43E-01      0.17
   2    6   12    0    -25.04558328     -25.04558328   -0.00000000    0.00006208 0.00000000 0.00000000  0.37E-03      0.36
   3    2    4    0    -25.04558328     -25.04558328    0.00000000    0.00000000 0.00000000 0.00000000  0.22E-07      0.45

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.57E-09)
                       Final energy:    -25.04558328
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101831037080
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.65659833
 One electron energy                           -41.27187475
 Two electron energy                            16.17004371
 Virial ratio                                    4.77096977
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.043857427075
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.89157252
 One electron energy                           -41.60606655
 Two electron energy                            16.56220913
 Virial ratio                                    4.63398301
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.043857427073
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.89157252
 One electron energy                           -41.60606655
 Two electron energy                            16.56220913
 Virial ratio                                    4.63398301
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.043857427023
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.89157252
 One electron energy                           -41.60606655
 Two electron energy                            16.56220912
 Virial ratio                                    4.63398301
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.043857426959
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.89157252
 One electron energy                           -41.60606655
 Two electron energy                            16.56220912
 Virial ratio                                    4.63398301
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.043857426891
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.89157252
 One electron energy                           -41.60606655
 Two electron energy                            16.56220912
 Virial ratio                                    4.63398301
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.989546278567
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.60609838
 One electron energy                           -40.38205776
 Two electron energy                            15.39251148
 Virial ratio                                    4.78279959
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.978345631225
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.99087042
 One electron energy                           -41.61615390
 Two electron energy                            16.63780827
 Virial ratio                                    4.57299508
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.978345631201
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.99087042
 One electron energy                           -41.61615391
 Two electron energy                            16.63780827
 Virial ratio                                    4.57299508
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.978345631182
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.99087042
 One electron energy                           -41.61615390
 Two electron energy                            16.63780827
 Virial ratio                                    4.57299508
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.978345631082
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.99087042
 One electron energy                           -41.61615391
 Two electron energy                            16.63780828
 Virial ratio                                    4.57299508
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.978345631020
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.99087042
 One electron energy                           -41.61615391
 Two electron energy                            16.63780828
 Virial ratio                                    4.57299508
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061351086747
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85757081
 One electron energy                           -41.56922279
 Two electron energy                            16.50787170
 Virial ratio                                    4.65455229
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061351086737
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85757081
 One electron energy                           -41.56922279
 Two electron energy                            16.50787170
 Virial ratio                                    4.65455229
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061351086691
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85757081
 One electron energy                           -41.56922278
 Two electron energy                            16.50787170
 Virial ratio                                    4.65455229
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061351086644
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85757081
 One electron energy                           -41.56922278
 Two electron energy                            16.50787169
 Virial ratio                                    4.65455229
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061351086588
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.85757081
 One electron energy                           -41.56922277
 Two electron energy                            16.50787169
 Virial ratio                                    4.65455229
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004210029075
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.94884604
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004210029063
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.94884604
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004210029063
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.94884604
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004210029059
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.94884604
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004210029047
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305608
 Two electron energy                            16.94884605
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004210029039
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305608
 Two electron energy                            16.94884605
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004210029032
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305608
 Two electron energy                            16.94884605
 Virial ratio                                    4.52491081
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.999600213660
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.54881074
 One electron energy                           -40.20527655
 Two electron energy                            15.20567634
 Virial ratio                                    4.81742597
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.983548264494
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.96950781
 Virial ratio                                    4.52199807
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.983548264448
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305607
 Two electron energy                            16.96950781
 Virial ratio                                    4.52199807
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.983548264371
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.09357239
 One electron energy                           -41.95305608
 Two electron energy                            16.96950782
 Virial ratio                                    4.52199807
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2142.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999981
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.022235777153
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000011
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.977768129062
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.216848974635
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.999999999447
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000000000
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000001
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     2.783152182241
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.081631622119
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000014
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.918368758377
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.437313071136
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000006
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     7.699786356844
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.397142313133
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.562686928864
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     2.300211602629
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.602860117878
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999995
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000002
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.977927829064
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999999995
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.022068321990
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.797835932445
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000007
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000000000
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     4.000000000000
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     3.202163064003
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.920532297900
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999999972
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.079467341545
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.575115295021
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000002
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.091399209091
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     8.117821966634
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     6.424884704979
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.908601950000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     1.882183119233
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000005
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000017
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999836393782
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.999999999994
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000163548948
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.985315092920
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000546
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     4.000000000000
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000000000
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.014684753756
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.997836079981
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     4.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000014
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.002163900079
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.987571633843
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999999992
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.208814434065
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.485035720233
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.012428366157
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     8.791186447371
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     6.514956762889
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>    -0.000000000000
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 5 4 6 3 1 5 6   3 4 2 1 5 6 3 4 2 1   5 3 6 4 2 1 3 5 4 6   2 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 7 9 510 8 6 4 1   2 3 7 910 5 6 8 4 9   7 810 4 6 5 1 2 3 9
                                        7 810 4 5 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.56422     1  1  s    0.98903
    2.1     0.96278    -0.07209     1  2  s    1.01638
    3.1     0.19472     0.06044     1  1  d0   0.91515
    4.1     0.19472     0.06044     1  1  d2+  0.91515
    5.1     0.19472     0.06044     1  1  d1+  0.91515
    6.1     0.19472     0.06044     1  1  d1-  0.91515
    7.1     0.19472     0.06044     1  1  d2-  0.91515
    8.1     0.06361     0.03851     1  2  s    0.73167    1  4  s    0.27446    1  8  s   -1.42448
    1.2     2.00000    -0.86367     1  1  px   0.98747
    2.2     2.00000    -0.86367     1  1  py   0.98747
    3.2     2.00000    -0.86367     1  1  pz   0.98747
 
 Natural orbital dump (state averaged) at molpro section 2142.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2000000        0.97760763     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.07416753
 b00000a       -0.02679000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.67607120
 a00000b        0.02679000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.67607120
 a000b00        0.00000000      0.63998346      0.00000154      0.00000005     -0.00000062      0.00000008      0.00000000
 b000a00       -0.00000000     -0.63998346     -0.00000154     -0.00000005      0.00000062     -0.00000008     -0.00000000
 a0000b0        0.00000000     -0.00000005     -0.00000007      0.63998346      0.00000000      0.00000000      0.00000000
 b0000a0       -0.00000000      0.00000005      0.00000007     -0.63998346     -0.00000000     -0.00000000     -0.00000000
 a00b000       -0.00000000      0.00000062      0.00000012      0.00000000      0.63998346     -0.00000153     -0.00000000
 b00a000        0.00000000     -0.00000062     -0.00000012     -0.00000000     -0.63998346      0.00000153      0.00000000
 b0a0000        0.00000000      0.00000154     -0.63997037     -0.00000007      0.00000013      0.00409297     -0.00000000
 a0b0000       -0.00000000     -0.00000154      0.63997037      0.00000007     -0.00000013     -0.00409297      0.00000000
 ba00000       -0.00000000      0.00000009     -0.00409297      0.00000000     -0.00000153     -0.63997037     -0.00000000
 ab00000        0.00000000     -0.00000009      0.00409297     -0.00000000      0.00000153      0.63997037      0.00000000
 0b000a0       -0.00000000      0.00000002      0.00000002     -0.22587053      0.00000000      0.00000000      0.00000000
 0a000b0        0.00000000     -0.00000002     -0.00000002      0.22587053     -0.00000000     -0.00000000     -0.00000000
 0200000       -0.09185646      0.00000003     -0.00144454     -0.00000000     -0.00000054     -0.22586591     -0.09014640
 0000020       -0.09185646     -0.00000003      0.00144454      0.00000000      0.00000054      0.22586591     -0.09014640
 0ab0000       -0.00000000     -0.00000054      0.22586591      0.00000002     -0.00000004     -0.00144454     -0.00000000
 0ba0000        0.00000000      0.00000054     -0.22586591     -0.00000002      0.00000004      0.00144454      0.00000000
 0020000       -0.09185646     -0.00000003      0.00144454      0.00000000      0.00000054      0.22586591     -0.09014640
 0002000       -0.09185646      0.00000049     -0.19632789     -0.00000002     -0.00000023     -0.11168195     -0.09014640
 000a0b0       -0.00000000     -0.19560962     -0.00000047     -0.00000002      0.00000019     -0.00000002      0.00000000
 000b0a0        0.00000000      0.19560962      0.00000047      0.00000002     -0.00000019      0.00000002     -0.00000000
 00ba000       -0.00000000      0.00000019      0.00000004      0.00000000      0.19560962     -0.00000047      0.00000000
 00ab000        0.00000000     -0.00000019     -0.00000004     -0.00000000     -0.19560962      0.00000047     -0.00000000
 0000ba0       -0.00000000      0.00000019      0.00000004      0.00000000      0.19560962     -0.00000047     -0.00000000
 0000ab0        0.00000000     -0.00000019     -0.00000004     -0.00000000     -0.19560962      0.00000047      0.00000000
 000ba00        0.00000000     -0.00000002     -0.00000002      0.19560962      0.00000000      0.00000000     -0.00000000
 000ab00       -0.00000000      0.00000002      0.00000002     -0.19560962     -0.00000000     -0.00000000      0.00000000
 00b0a00       -0.00000000     -0.19560962     -0.00000047     -0.00000002      0.00000019     -0.00000002      0.00000000
 00a0b00        0.00000000      0.19560962      0.00000047      0.00000002     -0.00000019      0.00000002     -0.00000000
 0000200       -0.09185646     -0.00000046      0.19488335      0.00000002     -0.00000031     -0.11418396     -0.09014640
 0000a0b       -0.00000000     -0.03377202     -0.00000008     -0.00000000      0.00000003     -0.00000000     -0.00000000
 0000b0a        0.00000000      0.03377202      0.00000008      0.00000000     -0.00000003      0.00000000      0.00000000
 00000ba        0.00000000     -0.00000000     -0.00000000      0.03377202     -0.00000000      0.00000000      0.00000000
 00000ab       -0.00000000      0.00000000      0.00000000     -0.03377202      0.00000000     -0.00000000     -0.00000000
 000b00a       -0.00000000      0.00000003      0.00000001      0.00000000      0.03377202     -0.00000008     -0.00000000
 000a00b        0.00000000     -0.00000003     -0.00000001     -0.00000000     -0.03377202      0.00000008      0.00000000
 00b000a        0.00000000     -0.00000008      0.03377133      0.00000000     -0.00000001     -0.00021599      0.00000000
 00a000b       -0.00000000      0.00000008     -0.03377133     -0.00000000      0.00000001      0.00021599     -0.00000000
 0a0000b       -0.00000000      0.00000000     -0.00021599      0.00000000     -0.00000008     -0.03377133     -0.00000000
 0b0000a        0.00000000     -0.00000000      0.00021599     -0.00000000      0.00000008      0.03377133      0.00000000
 0b0a000       -0.00000000      0.00000011      0.00000002      0.00000000      0.11293527     -0.00000027     -0.00000000
 0a0b000        0.00000000     -0.00000011     -0.00000002     -0.00000000     -0.11293527      0.00000027      0.00000000
 0a00b00       -0.00000000     -0.11293526     -0.00000027     -0.00000001      0.00000011     -0.00000001      0.00000000
 0b00a00        0.00000000      0.11293526      0.00000027      0.00000001     -0.00000011      0.00000001     -0.00000000
 0000002       -0.02568811     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.19930576
 
 Energy:      -25.10183104    -25.04385743    -25.04385743    -25.04385743    -25.04385743    -25.04385743    -24.98954628

 State:              8               9              10              11              12
 2000000       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 b00000a       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a00000b        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a000b00        0.00000587     -0.26895426      0.00000013      0.00000002      0.00000026
 b000a00       -0.00000587      0.26895426     -0.00000013     -0.00000002     -0.00000026
 a0000b0       -0.00000006     -0.00000013     -0.26895426      0.00000000      0.00000000
 b0000a0        0.00000006      0.00000013      0.26895426     -0.00000000     -0.00000000
 a00b000        0.00000012      0.00000002     -0.00000000      0.26895426     -0.00000015
 b00a000       -0.00000012     -0.00000002      0.00000000     -0.26895426      0.00000015
 b0a0000        0.26846011      0.00000588     -0.00000006     -0.00000011      0.01629611
 a0b0000       -0.26846011     -0.00000588      0.00000006      0.00000011     -0.01629611
 ba00000        0.01629611      0.00000010     -0.00000000     -0.00000016     -0.26846011
 ab00000       -0.01629611     -0.00000010      0.00000000      0.00000016      0.26846011
 0b000a0       -0.00000010     -0.00000023     -0.45681637      0.00000000     -0.00000000
 0a000b0        0.00000010      0.00000023      0.45681637     -0.00000000      0.00000000
 0200000       -0.02767878     -0.00000016      0.00000000      0.00000027      0.45597709
 0000020        0.02767880      0.00000016     -0.00000000     -0.00000027     -0.45597705
 0ab0000        0.45597705      0.00000999     -0.00000010     -0.00000019      0.02767881
 0ba0000       -0.45597705     -0.00000999      0.00000010      0.00000019     -0.02767881
 0020000        0.02767880      0.00000016     -0.00000001     -0.00000027     -0.45597700
 0002000       -0.40872710     -0.00000873      0.00000009      0.00000030      0.20401795
 000a0b0        0.00000864     -0.39561458      0.00000020      0.00000003      0.00000038
 000b0a0       -0.00000864      0.39561458     -0.00000020     -0.00000003     -0.00000038
 00ba000       -0.00000018     -0.00000003      0.00000000     -0.39561456      0.00000023
 00ab000        0.00000018      0.00000003     -0.00000000      0.39561456     -0.00000023
 0000ba0       -0.00000018     -0.00000002      0.00000000     -0.39561454      0.00000023
 0000ab0        0.00000018      0.00000002     -0.00000000      0.39561454     -0.00000023
 000ba00        0.00000008      0.00000020      0.39561454      0.00000000      0.00000000
 000ab00       -0.00000008     -0.00000020     -0.39561454     -0.00000000     -0.00000000
 00b0a00        0.00000864     -0.39561453      0.00000020      0.00000003      0.00000038
 00a0b00       -0.00000864      0.39561453     -0.00000020     -0.00000003     -0.00000038
 0000200        0.38104827      0.00000857     -0.00000008     -0.00000003      0.25195901
 0000a0b       -0.00000546      0.24994310     -0.00000012     -0.00000002     -0.00000024
 0000b0a        0.00000546     -0.24994310      0.00000012      0.00000002      0.00000024
 00000ba       -0.00000005     -0.00000012     -0.24994310      0.00000000      0.00000000
 00000ab        0.00000005      0.00000012      0.24994310     -0.00000000     -0.00000000
 000b00a        0.00000011      0.00000002     -0.00000000      0.24994310     -0.00000014
 000a00b       -0.00000011     -0.00000002      0.00000000     -0.24994310      0.00000014
 00b000a       -0.24948388     -0.00000546      0.00000005      0.00000010     -0.01514421
 00a000b        0.24948388      0.00000546     -0.00000005     -0.00000010      0.01514421
 0a0000b        0.01514421      0.00000009     -0.00000000     -0.00000015     -0.24948388
 0b0000a       -0.01514421     -0.00000009      0.00000000      0.00000015      0.24948388
 0b0a000       -0.00000010     -0.00000001      0.00000000     -0.22840821      0.00000013
 0a0b000        0.00000010      0.00000001     -0.00000000      0.22840821     -0.00000013
 0a00b00        0.00000499     -0.22840819      0.00000011      0.00000001      0.00000022
 0b00a00       -0.00000499      0.22840819     -0.00000011     -0.00000001     -0.00000022
 0000002        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:      -24.97834563    -24.97834563    -24.97834563    -24.97834563    -24.97834563
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 a00000a       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0aa0000        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000
 a00a000       -0.00000000      0.00000293     -0.00000000      0.99995787      0.00000124     -0.00000000     -0.00000000
 a0000a0        0.00000000      0.00000000      0.99995787     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00        0.99995787     -0.00000003     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000       -0.00000000      0.02325800     -0.00000000     -0.00000131      0.99968735     -0.00000000     -0.00000000
 a0a0000        0.00000003      0.99968735     -0.00000000     -0.00000290     -0.02325800     -0.00000000     -0.00000000
 0a000a0        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.99844525     -0.00000008
 00a00a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.02492826      0.00000061
 000aa00       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.04985653     -0.00000122
 00a0a00       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 000a0a0       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0000aa0       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0a00a00       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a0a000       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00aa000        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:      -25.06135109    -25.06135109    -25.06135109    -25.06135109    -25.06135109    -25.00421003    -25.00421003

 State:              8               9              10              11              12              13              14
 a00000a       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 0aa0000        0.00000000     -0.00000000      0.00000137      0.00000000      0.00000000     -0.00000000     -0.00000000
 a00a000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0000a0        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0a0000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0a000a0        0.00000000      0.00000000      0.05574129     -0.00000000     -0.00000000      0.00000000      0.00000000
 00a00a0       -0.00000000     -0.00000000     -0.44651829     -0.00000000     -0.00000000     -0.00000000      0.00000000
 000aa00        0.00000000      0.00000000      0.89303658     -0.00000000     -0.00000000      0.00000000      0.00000000
 00a0a00       -0.00000020      0.06066505     -0.00000000      0.00000276      0.89236750     -0.00000000     -0.00000095
 000a0a0       -0.00001407      0.84886485     -0.00000000     -0.00000301     -0.28183056      0.00000000     -0.00000095
 0000aa0       -0.42628647     -0.00000500      0.00000000      0.78630773     -0.00000219      0.00000000      0.44721360
 0a00a00        0.00000824     -0.52511733      0.00000000      0.00000015     -0.35249367     -0.00000000     -0.00000165
 0a0a000        0.62414684      0.00000991     -0.00000000     -0.10217985     -0.00000022      0.00000000      0.77459667
 00aa000        0.65476756      0.00001217     -0.00000000      0.60932704     -0.00000256      0.00000000     -0.44721360
 
 Energy:      -25.00421003    -25.00421003    -25.00421003    -25.00421003    -25.00421003    -24.99960021    -24.98354826

 State:             15              16
 a00000a        0.00000000      0.00000000
 0aa0000       -0.00000000      0.00000000
 a00a000       -0.00000000     -0.00000000
 a0000a0       -0.00000000      0.00000000
 a000a00        0.00000000     -0.00000000
 aa00000       -0.00000000     -0.00000000
 a0a0000       -0.00000000     -0.00000000
 0a000a0       -0.00000000     -0.00000000
 00a00a0       -0.00000000      0.89442719
 000aa00       -0.00000000      0.44721359
 00a0a00        0.44721360      0.00000000
 000a0a0        0.44721360      0.00000000
 0000aa0        0.00000095      0.00000000
 0a00a00        0.77459667     -0.00000000
 0a0a000        0.00000165     -0.00000000
 00aa000       -0.00000095      0.00000000
 
 Energy:      -24.98354826    -24.98354826
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7        1.89       700     1000      520     2100     2140     2141     2142   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.94      0.56      0.69      0.90      0.02      0.53
 REAL TIME  *         4.11 SEC
 DISK USED  *        33.82 MB (local),      611.43 MB (total)
 SF USED    *         9.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10183104   -0.0
    -25.04385743    6.0
    -25.04385743    6.0
    -25.04385743    6.0
    -25.04385743    6.0
    -25.04385743    6.0
    -24.98954628   -0.0
    -24.97834563    6.0
    -24.97834563    6.0
    -24.97834563    6.0
    -24.97834563    6.0
    -24.97834563    6.0
    -25.06135109    6.0
    -25.06135109    6.0
    -25.06135109    6.0
    -25.06135109    6.0
    -25.06135109    6.0
    -25.00421003   12.0
    -25.00421003   12.0
    -25.00421003   12.0
    -25.00421003   12.0
    -25.00421003   12.0
    -25.00421003   12.0
    -25.00421003   12.0
    -24.99960021   -0.0
    -24.98354826    2.0
    -24.98354826    2.0
    -24.98354826    2.0
                                                  


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

 Molecular orbitals read from record     2142.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.10183104
     2       -25.04385743
     3       -25.04385743
     4       -25.04385743
     5       -25.04385743
     6       -25.04385743
     7       -24.98954628
     8       -24.97834563
     9       -24.97834563
    10       -24.97834563
    11       -24.97834563
    12       -24.97834563

 Number of blocks in overlap matrix:   225   Smallest eigenvalue:  0.82D+00
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
    1     1     1     1.00000000     0.00000000   -25.10183104     0.00000000    -0.22991075  0.43D-01  0.62D-01     0.33
    1     2     2     1.00000000     0.00000000   -25.04385743     0.00000000    -0.23483759  0.44D-01  0.67D-01     0.33
    1     3     3     1.00000000     0.00000000   -25.04385743     0.00000000    -0.23462482  0.43D-01  0.67D-01     0.33
    1     4     4     1.00000000     0.00000000   -25.04385743    -0.00000000    -0.23491826  0.44D-01  0.67D-01     0.33
    1     5     5     1.00000000     0.00000000   -25.04385743     0.00000000    -0.23477562  0.44D-01  0.67D-01     0.33
    1     6     6     1.00000000     0.00000000   -25.04385743    -0.00000000    -0.23444447  0.43D-01  0.67D-01     0.33
    1     7     7     1.00000000     0.00000000   -24.98954628    -0.00000000    -0.21523164  0.44D-01  0.54D-01     0.33
    1     8     8     1.00000000     0.00000000   -24.97834563     0.00000000    -0.24389527  0.45D-01  0.86D-01     0.33
    1     9     9     1.00000000     0.00000000   -24.97834563     0.00000000    -0.24422261  0.45D-01  0.86D-01     0.33
    1    10    10     1.00000000     0.00000000   -24.97834563    -0.00000000    -0.24425519  0.45D-01  0.86D-01     0.33
    1    11    11     1.00000000     0.00000000   -24.97834563    -0.00000000    -0.24420218  0.45D-01  0.86D-01     0.33
    1    12    12     1.00000000     0.00000000   -24.97834563    -0.00000000    -0.24354084  0.45D-01  0.86D-01     0.33
    2     1     1     1.08553131    -0.22152435   -25.32335539    -0.22152435    -0.00657277  0.19D-02  0.14D-02     2.96
    2     2     2     1.09012677    -0.22133240   -25.26518983    -0.22133240    -0.00608840  0.17D-02  0.14D-02     2.96
    2     3     3     1.09016103    -0.22129605   -25.26515348    -0.22129605    -0.00613168  0.17D-02  0.14D-02     2.96
    2     4     4     1.09016561    -0.22126123   -25.26511865    -0.22126123    -0.00617124  0.18D-02  0.14D-02     2.96
    2     5     5     1.09015601    -0.22125410   -25.26511152    -0.22125410    -0.00617813  0.18D-02  0.14D-02     2.96
    2     6     6     1.09015471    -0.22124528   -25.26510271    -0.22124528    -0.00618627  0.18D-02  0.14D-02     2.96
    2     7     7     1.09977892    -0.21383091   -25.20337719    -0.21383091    -0.00651745  0.18D-02  0.18D-02     2.96
    2     8     8     1.09923084    -0.22497098   -25.20331661    -0.22497098    -0.00656965  0.18D-02  0.18D-02     2.96
    2     9     9     1.08514867    -0.22496928   -25.20331491    -0.22496928    -0.00581939  0.20D-02  0.14D-02     2.96
    2    10    10     1.09977886    -0.22491841   -25.20326405    -0.22491841    -0.00666298  0.19D-02  0.18D-02     2.96
    2    11    11     1.09979122    -0.22491128   -25.20325691    -0.22491128    -0.00667156  0.19D-02  0.18D-02     2.96
    2    12    12     1.09979403    -0.22491046   -25.20325609    -0.22491046    -0.00667227  0.19D-02  0.18D-02     2.96
    3     1     1     1.08714421    -0.22821056   -25.33004160    -0.00668621    -0.00025821  0.56D-04  0.82D-04     5.41
    3     2     2     1.09256203    -0.22767194   -25.27152937    -0.00633954    -0.00023264  0.71D-04  0.68D-04     5.41
    3     3     3     1.09255759    -0.22766919   -25.27152662    -0.00637314    -0.00023622  0.72D-04  0.69D-04     5.41
    3     4     4     1.09254601    -0.22766659   -25.27152402    -0.00640536    -0.00023904  0.73D-04  0.70D-04     5.41
    3     5     5     1.09254452    -0.22766619   -25.27152361    -0.00641209    -0.00023939  0.74D-04  0.70D-04     5.41
    3     6     6     1.09254692    -0.22766618   -25.27152361    -0.00642090    -0.00023950  0.74D-04  0.70D-04     5.41
    3     7     7     1.10088492    -0.22057867   -25.21012494    -0.00674775    -0.00024780  0.47D-04  0.12D-03     5.41
    3     8     8     1.10090956    -0.23177592   -25.21012155    -0.00680494    -0.00025258  0.47D-04  0.12D-03     5.41
    3     9     9     1.10091983    -0.23177403   -25.21011966    -0.00680476    -0.00025533  0.47D-04  0.12D-03     5.41
    3    10    10     1.10091296    -0.23177335   -25.21011898    -0.00685493    -0.00025584  0.48D-04  0.12D-03     5.41
    3    11    11     1.10091153    -0.23177332   -25.21011895    -0.00686204    -0.00025582  0.48D-04  0.12D-03     5.41
    3    12    12     1.08367040    -0.23083104   -25.20917667    -0.00592058    -0.00023261  0.61D-04  0.71D-04     5.41
    4     1     1     1.08890618    -0.22848916   -25.33032020    -0.00027860    -0.00001822  0.75D-05  0.59D-05     7.88
    4     2     2     1.09481839    -0.22794279   -25.27180022    -0.00027085    -0.00002299  0.16D-04  0.52D-05     7.88
    4     3     3     1.09481430    -0.22794240   -25.27179982    -0.00027320    -0.00002338  0.16D-04  0.53D-05     7.88
    4     4     4     1.09481030    -0.22794202   -25.27179945    -0.00027543    -0.00002372  0.16D-04  0.53D-05     7.88
    4     5     5     1.09480872    -0.22794201   -25.27179944    -0.00027582    -0.00002371  0.16D-04  0.53D-05     7.88
    4     6     6     1.09480886    -0.22794199   -25.27179941    -0.00027580    -0.00002373  0.16D-04  0.53D-05     7.88
    4     7     7     1.10334529    -0.22087056   -25.21041684    -0.00029189    -0.00002630  0.10D-04  0.15D-04     7.88
    4     8     8     1.10332272    -0.23207112   -25.21041676    -0.00029520    -0.00002634  0.10D-04  0.15D-04     7.88
    4     9     9     1.10330641    -0.23207111   -25.21041675    -0.00029708    -0.00002635  0.11D-04  0.15D-04     7.88
    4    10    10     1.10330510    -0.23207104   -25.21041667    -0.00029769    -0.00002639  0.11D-04  0.15D-04     7.88
    4    11    11     1.10330488    -0.23207102   -25.21041665    -0.00029770    -0.00002641  0.11D-04  0.15D-04     7.88
    4    12    12     1.08501799    -0.23107573   -25.20942136    -0.00024469    -0.00001394  0.64D-05  0.49D-05     7.88
    5     1     1     1.08958184    -0.22851107   -25.33034211    -0.00002192    -0.00000173  0.60D-06  0.59D-06    10.31
    5     2     2     1.09594542    -0.22797409   -25.27183151    -0.00003130    -0.00000277  0.13D-05  0.63D-06    10.31
    5     3     3     1.09593818    -0.22797400   -25.27183143    -0.00003161    -0.00000283  0.14D-05  0.63D-06    10.31
    5     4     4     1.09593428    -0.22797395   -25.27183137    -0.00003193    -0.00000287  0.14D-05  0.63D-06    10.31
    5     5     5     1.09593437    -0.22797395   -25.27183137    -0.00003194    -0.00000287  0.14D-05  0.63D-06    10.31
    5     6     6     1.09593449    -0.22797394   -25.27183137    -0.00003196    -0.00000288  0.14D-05  0.63D-06    10.31
    5     7     7     1.10470307    -0.22090680   -25.21045307    -0.00003624    -0.00000378  0.73D-06  0.21D-05    10.31
    5     8     8     1.10469805    -0.23210741   -25.21045304    -0.00003629    -0.00000377  0.73D-06  0.21D-05    10.31
    5     9     9     1.10469313    -0.23210740   -25.21045303    -0.00003629    -0.00000375  0.71D-06  0.21D-05    10.31
    5    10    10     1.10469297    -0.23210739   -25.21045302    -0.00003636    -0.00000376  0.71D-06  0.21D-05    10.31
    5    11    11     1.10469300    -0.23210739   -25.21045302    -0.00003637    -0.00000376  0.72D-06  0.21D-05    10.31
    5    12    12     1.08542210    -0.23109294   -25.20943857    -0.00001721    -0.00000162  0.62D-06  0.86D-06    10.31
    6     1     1     1.08975156    -0.22851303   -25.33034407    -0.00000196    -0.00000015  0.32D-07  0.53D-07    12.74
    6     2     2     1.09615150    -0.22797750   -25.27183492    -0.00000341    -0.00000025  0.12D-06  0.50D-07    12.74
    6     3     3     1.09615121    -0.22797748   -25.27183491    -0.00000348    -0.00000026  0.13D-06  0.53D-07    12.74
    6     4     4     1.09615096    -0.22797747   -25.27183490    -0.00000352    -0.00000027  0.13D-06  0.54D-07    12.74
    6     5     5     1.09615097    -0.22797747   -25.27183490    -0.00000353    -0.00000027  0.13D-06  0.54D-07    12.74
    6     6     6     1.09615096    -0.22797747   -25.27183490    -0.00000353    -0.00000027  0.13D-06  0.54D-07    12.74
    6     7     7     1.10498758    -0.22091158   -25.21045785    -0.00000478    -0.00000047  0.13D-06  0.27D-06    12.74
    6     8     8     1.10498588    -0.23211221   -25.21045784    -0.00000480    -0.00000048  0.14D-06  0.27D-06    12.74
    6     9     9     1.10498430    -0.23211221   -25.21045784    -0.00000481    -0.00000048  0.14D-06  0.28D-06    12.74
    6    10    10     1.10498397    -0.23211221   -25.21045784    -0.00000481    -0.00000048  0.14D-06  0.28D-06    12.74
    6    11    11     1.10498399    -0.23211221   -25.21045784    -0.00000481    -0.00000048  0.14D-06  0.28D-06    12.74
    6    12    12     1.08554351    -0.23109516   -25.20944079    -0.00000222    -0.00000025  0.62D-07  0.13D-06    12.74
    7     1     1     1.08979181    -0.22851319   -25.33034422    -0.00000015    -0.00000001  0.48D-08  0.33D-08    15.18
    7     2     2     1.09618614    -0.22797778   -25.27183521    -0.00000028    -0.00000003  0.21D-07  0.52D-08    15.18
    7     3     3     1.09618547    -0.22797778   -25.27183520    -0.00000029    -0.00000003  0.23D-07  0.56D-08    15.18
    7     4     4     1.09618521    -0.22797777   -25.27183520    -0.00000030    -0.00000003  0.23D-07  0.58D-08    15.18
    7     5     5     1.09618523    -0.22797777   -25.27183520    -0.00000030    -0.00000003  0.23D-07  0.58D-08    15.18
    7     6     6     1.09618520    -0.22797777   -25.27183520    -0.00000030    -0.00000003  0.23D-07  0.58D-08    15.18
    7     7     7     1.10506415    -0.22091216   -25.21045844    -0.00000059    -0.00000008  0.20D-07  0.50D-07    15.18
    7     8     8     1.10506382    -0.23211281   -25.21045844    -0.00000060    -0.00000008  0.21D-07  0.50D-07    15.18
    7     9     9     1.10506366    -0.23211281   -25.21045844    -0.00000060    -0.00000008  0.22D-07  0.50D-07    15.18
    7    10    10     1.10506362    -0.23211281   -25.21045844    -0.00000060    -0.00000008  0.22D-07  0.50D-07    15.18
    7    11    11     1.10506362    -0.23211281   -25.21045844    -0.00000060    -0.00000008  0.22D-07  0.50D-07    15.18
    7    12    12     1.08557671    -0.23109547   -25.20944110    -0.00000032    -0.00000004  0.23D-07  0.14D-07    15.18
    8     1     1     1.08979420    -0.22851319   -25.33034422    -0.00000000    -0.00000001  0.51D-08  0.27D-08    17.43
    8     2     2     1.09620507    -0.22797781   -25.27183524    -0.00000003    -0.00000000  0.24D-08  0.82D-09    17.43
    8     3     3     1.09620470    -0.22797781   -25.27183524    -0.00000004    -0.00000000  0.27D-08  0.86D-09    17.43
    8     4     4     1.09620450    -0.22797781   -25.27183524    -0.00000004    -0.00000000  0.29D-08  0.88D-09    17.43
    8     5     5     1.09620451    -0.22797781   -25.27183524    -0.00000004    -0.00000000  0.28D-08  0.88D-09    17.43
    8     6     6     1.09620450    -0.22797781   -25.27183524    -0.00000004    -0.00000000  0.29D-08  0.88D-09    17.43
    8     7     7     1.10510002    -0.22091227   -25.21045854    -0.00000010    -0.00000001  0.41D-08  0.82D-08    17.43
    8     8     8     1.10510001    -0.23211291   -25.21045854    -0.00000010    -0.00000002  0.45D-08  0.82D-08    17.43
    8     9     9     1.10510008    -0.23211291   -25.21045854    -0.00000010    -0.00000002  0.47D-08  0.82D-08    17.43
    8    10    10     1.10510005    -0.23211291   -25.21045854    -0.00000010    -0.00000002  0.47D-08  0.82D-08    17.43
    8    11    11     1.10510005    -0.23211291   -25.21045854    -0.00000010    -0.00000002  0.47D-08  0.82D-08    17.43
    8    12    12     1.08557846    -0.23109552   -25.20944115    -0.00000005    -0.00000000  0.76D-09  0.11D-08    17.43
    9     1     1     1.08979420    -0.22851319   -25.33034422    -0.00000000    -0.00000001  0.51D-08  0.27D-08    18.62
    9     2     2     1.09620555    -0.22797781   -25.27183524    -0.00000000    -0.00000000  0.24D-08  0.81D-09    18.62
    9     3     3     1.09620502    -0.22797781   -25.27183524    -0.00000000    -0.00000000  0.27D-08  0.85D-09    18.62
    9     4     4     1.09620476    -0.22797781   -25.27183524    -0.00000000    -0.00000000  0.28D-08  0.87D-09    18.62
    9     5     5     1.09620477    -0.22797781   -25.27183524    -0.00000000    -0.00000000  0.28D-08  0.87D-09    18.62
    9     6     6     1.09620476    -0.22797781   -25.27183524    -0.00000000    -0.00000000  0.29D-08  0.87D-09    18.62
    9     7     7     1.10512349    -0.22091228   -25.21045856    -0.00000002    -0.00000000  0.20D-09  0.47D-09    18.62
    9     8     8     1.10512378    -0.23211293   -25.21045856    -0.00000002    -0.00000000  0.23D-09  0.47D-09    18.62
    9     9     9     1.10512346    -0.23211293   -25.21045856    -0.00000002    -0.00000000  0.24D-09  0.48D-09    18.62
    9    10    10     1.10512358    -0.23211293   -25.21045856    -0.00000002    -0.00000000  0.24D-09  0.48D-09    18.62
    9    11    11     1.10512346    -0.23211293   -25.21045856    -0.00000002    -0.00000000  0.24D-09  0.48D-09    18.62
    9    12    12     1.08557845    -0.23109552   -25.20944115    -0.00000000    -0.00000000  0.76D-09  0.11D-08    18.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.7%
 S   3.5%   7.8%
 P   1.4%  17.5%  16.3%

 Initialization:   0.9%
 Other:           46.8%

 Total CPU:       18.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222           0.9347739   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                       0.0000000  -0.0000000  -0.1174432
 2/00000\222           0.0894609   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000   0.0000000   0.9047927
 2/00\000222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.8945250   0.2855294  -0.0000000  -0.0000000
                      -0.0000000   0.0000000   0.0000000
 2/000\00222           0.0000000   0.0000000   0.0000000   0.8945250  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                       0.0000000   0.2855292   0.0000000
 2/0000\0222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.8945250  -0.0000000  -0.0000000  -0.0000000  -0.2855292
                       0.0000000   0.0000000  -0.0000000
 2/0\0000222          -0.0000000   0.0204646   0.8942907  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0287818  -0.0000000
                      -0.2840748  -0.0000000   0.0000000
 2/\00000222           0.0000000   0.8942904  -0.0204646  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.2840748   0.0000000
                       0.0287818  -0.0000000  -0.0000000
 20/000\0222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.2460157   0.0000000   0.0000000  -0.0000000   0.6500024
                      -0.0000000  -0.0000000  -0.0000000
 20/\0000222          -0.0000000   0.0056283   0.2459512  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0655212   0.0000000
                       0.6466910   0.0000000   0.0000000
 2000/\00222          -0.0000000   0.0000000   0.0000000   0.0000000  -0.2130559  -0.0000000  -0.0000000   0.0000000  -0.5629187
                       0.0000000  -0.0000000  -0.0000000
 2000/0\0222           0.0000000  -0.0000000  -0.0000000  -0.2130559   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      -0.0000000   0.5629187  -0.0000000
 20000/\0222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2130559   0.5629186  -0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000000
 200/0\00222          -0.0000000   0.0000000  -0.0000000   0.2130559   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                      -0.0000000  -0.5629186   0.0000000
 200/\000222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2130559   0.5629185  -0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000000
 20000020222          -0.0774506   0.1739140  -0.0039798   0.0000000   0.0000000   0.0000000  -0.0000000   0.4572801   0.0000000
                      -0.0463305   0.0000000  -0.0875514
 20200000222          -0.0774507  -0.1739140   0.0039798   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.4572800   0.0000000
                       0.0463305   0.0000000  -0.0875513
 20020000222          -0.0774507   0.1739139  -0.0039798  -0.0000000  -0.0000000   0.0000000   0.0000000   0.4572800  -0.0000000
                      -0.0463305  -0.0000000  -0.0875513
 20000200222          -0.0774506  -0.0835104   0.1526039   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1885165   0.0000000
                       0.4191820  -0.0000000  -0.0875514
 20002000222          -0.0774506  -0.0904035  -0.1486241  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2687635  -0.0000000
                      -0.3728515   0.0000000  -0.0875514
 20/0\000222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.1230079   0.3250013   0.0000000  -0.0000000
                      -0.0000000  -0.0000000   0.0000000
 20/00\00222           0.0000000   0.0000000   0.0000000  -0.1230079  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                       0.0000000   0.3250013   0.0000000
 2000/00\222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0374070  -0.2821167   0.0000000   0.0000000
                      -0.0000000   0.0000000   0.0000000
 200000/\222           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0374070   0.0000000   0.0000000  -0.0000000   0.2821167
                      -0.0000000  -0.0000000  -0.0000000
 20000/0\222          -0.0000000   0.0000000  -0.0000000  -0.0374070  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                      -0.0000000  -0.2821167   0.0000000
 200/000\222          -0.0000000  -0.0008558  -0.0373973  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0284378   0.0000000
                       0.2806797   0.0000000   0.0000000
 20/0000\222           0.0000000  -0.0373976   0.0008558   0.0000000   0.0000000   0.0000000   0.0000000   0.2806797   0.0000000
                      -0.0284378  -0.0000000   0.0000000
 20000002222          -0.0146703   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      -0.0000000   0.0000000   0.2113157

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\000000222  17.1    -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0515415  -0.0000000   0.0000000   0.0000000   0.0226350
                       0.0000000   0.0000000  -0.0000000
 2\000000222  16.1    -0.0000000  -0.0000000  -0.0000000  -0.0515414   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                       0.0000000  -0.0226350  -0.0000000
 2\000000222  18.1     0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0515413  -0.0226291  -0.0000000   0.0000000
                      -0.0000000   0.0000000  -0.0000000
 2\000000222  19.1     0.0000001  -0.0515324   0.0011792   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0225195  -0.0000000
                      -0.0022816  -0.0000000  -0.0000001
 2\000000222  15.1    -0.0000000  -0.0011792  -0.0515295   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0022816   0.0000000
                       0.0225198   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.953180   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.048190   -0.000000    0.000000    0.000000
             0.000000    0.000000
 2          -0.000000    0.000000    0.027775   -0.000000   -0.000000    0.948513    0.000000   -0.006281   -0.000000   -0.000000
             0.000000   -0.075064
 3           0.000000   -0.000000    0.948514    0.000000   -0.000000   -0.027775   -0.000000   -0.075064    0.000000    0.000000
             0.000000    0.006281
 4           0.000000    0.948920    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.075327   -0.000000
             0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.948920   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.075327
             0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.948920    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.075327    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.091453   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.943193    0.000000
 8          -0.000000    0.000000    0.009800   -0.000000   -0.000000    0.090926   -0.000000    0.151731    0.000000   -0.000000
            -0.000000    0.930908
 9          -0.000000    0.000000   -0.000000    0.091453   -0.000000    0.000000    0.000000    0.000000    0.000000    0.943193
            -0.000000    0.000000
 10          0.000000   -0.000000    0.090926    0.000000   -0.000000   -0.009800   -0.000000    0.930908    0.000000   -0.000000
            -0.000000   -0.151731
 11         -0.000000   -0.091453   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.943193   -0.000000
            -0.000000    0.000000
 12         -0.045751    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955370    0.000000   -0.000000   -0.000000
            -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954397   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.001272
 2          -0.000000    0.951869    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.008258   -0.000000   -0.000646
            -0.000000   -0.000000
 3           0.000000    0.000000    0.951869    0.000000    0.000000   -0.000000   -0.000000    0.000646    0.000000    0.008258
            -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.951869    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.008284   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.951869    0.000000    0.000000    0.000000    0.008284    0.000000
            -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.951869   -0.008283   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.008283    0.947580   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 8           0.000000    0.008258    0.000646    0.000000    0.000000   -0.000000   -0.000000    0.947580    0.000000    0.000000
            -0.000000    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.008284    0.000000   -0.000000    0.000000    0.947580   -0.000000
            -0.000000    0.000000
 10         -0.000000   -0.000646    0.008258   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.947580
             0.000000   -0.000000
 11         -0.000000   -0.000000   -0.000000   -0.008284   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.947580   -0.000000
 12          0.001272   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.956464


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95318005 (fixed)   0.95499411 (relaxed)   0.95439660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00739023   -0.01295835   -0.14844203
 Singles      0.03223168   -0.06723516   -0.06795146
 Pairs        0.05822612    0.00000001   -0.01211970
 Total        1.09784804   -0.08019351   -0.22851319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.10155966
 Nuclear energy                         0.00000000
 Kinetic energy                         6.90292843
 One electron energy                  -41.26722727
 Two electron energy                   15.93688305
 Virial quotient                       -3.66950700
 Correlation energy                    -0.22878457
 !MRCI STATE 1.1 Energy               -25.330344224545

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35273035 (Davidson, fixed reference)
 Cluster corrected energies           -25.35241615 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35273035 (Davidson, rotated reference)

 Cluster corrected energies           -25.34933733 (Pople, fixed reference)
 Cluster corrected energies           -25.34905533 (Pople, relaxed reference)
 Cluster corrected energies           -25.34933733 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94851343 (fixed)   0.95262275 (relaxed)   0.95186901 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682417   -0.01080280   -0.16315668
 Singles      0.03547391   -0.06415592   -0.06545696
 Pairs        0.06138816    0.01469613    0.00063584
 Total        1.10368624   -0.06026258   -0.22797781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04335236
 Nuclear energy                         0.00000000
 Kinetic energy                         7.09073845
 One electron energy                  -41.55460298
 Two electron energy                   16.28276774
 Virial quotient                       -3.56406253
 Correlation energy                    -0.22848288
 !MRCI STATE 2.1 Energy               -25.271835238615

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29552577 (Davidson, fixed reference)
 Cluster corrected energies           -25.29512687 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29552577 (Davidson, rotated reference)

 Cluster corrected energies           -25.29200557 (Pople, fixed reference)
 Cluster corrected energies           -25.29164519 (Pople, relaxed reference)
 Cluster corrected energies           -25.29200557 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.94851364 (fixed)   0.95262299 (relaxed)   0.95186922 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682419   -0.01080279   -0.14872713
 Singles      0.03547341   -0.06415590   -0.06545689
 Pairs        0.06138814   -0.00122966   -0.01379379
 Total        1.10368574   -0.07618836   -0.22797781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04335236
 Nuclear energy                         0.00000000
 Kinetic energy                         7.09073705
 One electron energy                  -41.55459882
 Two electron energy                   16.28276358
 Virial quotient                       -3.56406324
 Correlation energy                    -0.22848288
 !MRCI STATE 3.1 Energy               -25.271835238321

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29552565 (Davidson, fixed reference)
 Cluster corrected energies           -25.29512675 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29552565 (Davidson, rotated reference)

 Cluster corrected energies           -25.29200546 (Pople, fixed reference)
 Cluster corrected energies           -25.29164508 (Pople, relaxed reference)
 Cluster corrected energies           -25.29200546 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94892031 (fixed)   0.95262310 (relaxed)   0.95186933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682420   -0.01080279   -0.14984132
 Singles      0.03547314   -0.06415589   -0.06545685
 Pairs        0.06138814    0.00000000   -0.01267965
 Total        1.10368549   -0.07495869   -0.22797781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04335236
 Nuclear energy                         0.00000000
 Kinetic energy                         7.09073645
 One electron energy                  -41.55459698
 Two electron energy                   16.28276174
 Virial quotient                       -3.56406354
 Correlation energy                    -0.22848288
 !MRCI STATE 4.1 Energy               -25.271835238089

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29552560 (Davidson, fixed reference)
 Cluster corrected energies           -25.29512669 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29552560 (Davidson, rotated reference)

 Cluster corrected energies           -25.29200541 (Pople, fixed reference)
 Cluster corrected energies           -25.29164502 (Pople, relaxed reference)
 Cluster corrected energies           -25.29200541 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94892030 (fixed)   0.95262309 (relaxed)   0.95186933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682420   -0.01080279   -0.14984130
 Singles      0.03547318   -0.06415591   -0.06545686
 Pairs        0.06138812   -0.00000000   -0.01267966
 Total        1.10368550   -0.07495871   -0.22797781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04335236
 Nuclear energy                         0.00000000
 Kinetic energy                         7.09073653
 One electron energy                  -41.55459719
 Two electron energy                   16.28276195
 Virial quotient                       -3.56406350
 Correlation energy                    -0.22848288
 !MRCI STATE 5.1 Energy               -25.271835238062

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29552560 (Davidson, fixed reference)
 Cluster corrected energies           -25.29512669 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29552560 (Davidson, rotated reference)

 Cluster corrected energies           -25.29200542 (Pople, fixed reference)
 Cluster corrected energies           -25.29164502 (Pople, relaxed reference)
 Cluster corrected energies           -25.29200542 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94892031 (fixed)   0.95262310 (relaxed)   0.95186933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682420   -0.01080279   -0.14984133
 Singles      0.03547311   -0.06415587   -0.06545684
 Pairs        0.06138817   -0.00000000   -0.01267964
 Total        1.10368548   -0.07495866   -0.22797781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.04335236
 Nuclear energy                         0.00000000
 Kinetic energy                         7.09073639
 One electron energy                  -41.55459680
 Two electron energy                   16.28276157
 Virial quotient                       -3.56406357
 Correlation energy                    -0.22848288
 !MRCI STATE 6.1 Energy               -25.271835238018

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29552560 (Davidson, fixed reference)
 Cluster corrected energies           -25.29512669 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29552560 (Davidson, rotated reference)

 Cluster corrected energies           -25.29200541 (Pople, fixed reference)
 Cluster corrected energies           -25.29164502 (Pople, relaxed reference)
 Cluster corrected energies           -25.29200541 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94319274 (fixed)   0.94894538 (relaxed)   0.94757984 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00776105   -0.00985214   -0.14506344
 Singles      0.03243545   -0.06106958   -0.06126855
 Pairs        0.07350390   -0.00000000   -0.01458029
 Total        1.11370040   -0.07092172   -0.22091228
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97885070
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19314149
 One electron energy                  -41.61395426
 Two electron energy                   16.40349570
 Virial quotient                       -3.50479114
 Correlation energy                    -0.23160786
 !MRCI STATE 7.1 Energy               -25.210458563001

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23679247 (Davidson, fixed reference)
 Cluster corrected energies           -25.23605064 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23679247 (Davidson, rotated reference)

 Cluster corrected energies           -25.23301451 (Pople, fixed reference)
 Cluster corrected energies           -25.23233707 (Pople, relaxed reference)
 Cluster corrected energies           -25.23301451 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93090817 (fixed)   0.94894525 (relaxed)   0.94757971 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00776106   -0.00985215   -0.01316737
 Singles      0.03243606   -0.06106963   -0.06159489
 Pairs        0.07350359   -0.15818023   -0.15735068
 Total        1.11370071   -0.22910202   -0.23211293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97885070
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19314420
 One electron energy                  -41.61396462
 Two electron energy                   16.40350606
 Virial quotient                       -3.50478982
 Correlation energy                    -0.23160786
 !MRCI STATE 8.1 Energy               -25.210458562990

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23679254 (Davidson, fixed reference)
 Cluster corrected energies           -25.23605071 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23679254 (Davidson, rotated reference)

 Cluster corrected energies           -25.23301457 (Pople, fixed reference)
 Cluster corrected energies           -25.23233713 (Pople, relaxed reference)
 Cluster corrected energies           -25.23301457 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94319273 (fixed)   0.94894539 (relaxed)   0.94757985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00776105   -0.00985215   -0.15519859
 Singles      0.03243599   -0.06106965   -0.06159492
 Pairs        0.07350334   -0.00000000   -0.01531942
 Total        1.11370038   -0.07092179   -0.23211293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97885070
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19314214
 One electron energy                  -41.61395702
 Two electron energy                   16.40349846
 Virial quotient                       -3.50479082
 Correlation energy                    -0.23160786
 !MRCI STATE 9.1 Energy               -25.210458562920

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23679246 (Davidson, fixed reference)
 Cluster corrected energies           -25.23605064 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23679246 (Davidson, rotated reference)

 Cluster corrected energies           -25.23301450 (Pople, fixed reference)
 Cluster corrected energies           -25.23233706 (Pople, relaxed reference)
 Cluster corrected energies           -25.23301450 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93090825 (fixed)   0.94894534 (relaxed)   0.94757980 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00776105   -0.00985215   -0.17834857
 Singles      0.03243601   -0.06106963   -0.06159491
 Pairs        0.07350344    0.02578215    0.00783055
 Total        1.11370050   -0.04513963   -0.23211293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97885070
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19314303
 One electron energy                  -41.61396030
 Two electron energy                   16.40350174
 Virial quotient                       -3.50479039
 Correlation energy                    -0.23160786
 !MRCI STATE 10.1 Energy              -25.210458562912

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23679249 (Davidson, fixed reference)
 Cluster corrected energies           -25.23605067 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23679249 (Davidson, rotated reference)

 Cluster corrected energies           -25.23301453 (Pople, fixed reference)
 Cluster corrected energies           -25.23233709 (Pople, relaxed reference)
 Cluster corrected energies           -25.23301453 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.94319273 (fixed)   0.94894539 (relaxed)   0.94757985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00776105   -0.00985215   -0.15519859
 Singles      0.03243599   -0.06106964   -0.06159492
 Pairs        0.07350334   -0.00000000   -0.01531942
 Total        1.11370038   -0.07092179   -0.23211293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.97885070
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19314228
 One electron energy                  -41.61395736
 Two electron energy                   16.40349879
 Virial quotient                       -3.50479076
 Correlation energy                    -0.23160786
 !MRCI STATE 11.1 Energy              -25.210458562880

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23679246 (Davidson, fixed reference)
 Cluster corrected energies           -25.23605064 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23679246 (Davidson, rotated reference)

 Cluster corrected energies           -25.23301450 (Pople, fixed reference)
 Cluster corrected energies           -25.23233706 (Pople, relaxed reference)
 Cluster corrected energies           -25.23301450 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95536962 (fixed)   0.95677756 (relaxed)   0.95646362 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00693600   -0.01317720   -0.15271292
 Singles      0.03449280   -0.06576667   -0.06745792
 Pairs        0.05167923   -0.00000001   -0.01092468
 Total        1.09310803   -0.07894388   -0.23109552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98981766
 Nuclear energy                         0.00000000
 Kinetic energy                         6.86125648
 One electron energy                  -40.32547257
 Two electron energy                   15.11603142
 Virial quotient                       -3.67417269
 Correlation energy                    -0.21962350
 !MRCI STATE 12.1 Energy              -25.209441153916

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.22988986 (Davidson, fixed reference)
 Cluster corrected energies           -25.22973235 (Davidson, relaxed reference)
 Cluster corrected energies           -25.22988986 (Davidson, rotated reference)

 Cluster corrected energies           -25.22674121 (Pople, fixed reference)
 Cluster corrected energies           -25.22660056 (Pople, relaxed reference)
 Cluster corrected energies           -25.22674121 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       8       44.27       700     1000      520     2100     2140     2141     2142     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        24.09     21.13      0.56      0.69      0.90      0.02      0.53
 REAL TIME  *        30.27 SEC
 DISK USED  *        76.20 MB (local),        1.26 GB (total)
 SF USED    *       433.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.35273035  AU                              
 SETTING HLSDIAG(2)     =       -25.29552577  AU                              
 SETTING HLSDIAG(3)     =       -25.29552565  AU                              
 SETTING HLSDIAG(4)     =       -25.29552560  AU                              
 SETTING HLSDIAG(5)     =       -25.29552560  AU                              
 SETTING HLSDIAG(6)     =       -25.29552560  AU                              
 SETTING HLSDIAG(7)     =       -25.23679247  AU                              
 SETTING HLSDIAG(8)     =       -25.23679254  AU                              
 SETTING HLSDIAG(9)     =       -25.23679246  AU                              
 SETTING HLSDIAG(10)    =       -25.23679249  AU                              
 SETTING HLSDIAG(11)    =       -25.23679246  AU                              
 SETTING HLSDIAG(12)    =       -25.22988986  AU                              


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

 Molecular orbitals read from record     2142.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06135109
     2       -25.06135109
     3       -25.06135109
     4       -25.06135109
     5       -25.06135109
     6       -25.00421003
     7       -25.00421003
     8       -25.00421003
     9       -25.00421003
    10       -25.00421003
    11       -25.00421003
    12       -25.00421003
    13       -24.99960021
    14       -24.98354826
    15       -24.98354826
    16       -24.98354826

 Number of blocks in overlap matrix:   289   Smallest eigenvalue:  0.10D+01
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
    1     1     1     1.00000000     0.00000000   -25.06135109    -0.00000000    -0.23078401  0.43D-01  0.58D-01     0.43
    1     2     2     1.00000000     0.00000000   -25.06135109     0.00000000    -0.23075689  0.43D-01  0.58D-01     0.43
    1     3     3     1.00000000     0.00000000   -25.06135109    -0.00000000    -0.23075655  0.43D-01  0.58D-01     0.43
    1     4     4     1.00000000     0.00000000   -25.06135109     0.00000000    -0.23077772  0.43D-01  0.58D-01     0.43
    1     5     5     1.00000000     0.00000000   -25.06135109    -0.00000000    -0.23076324  0.43D-01  0.58D-01     0.43
    1     6     6     1.00000000     0.00000000   -25.00421003     0.00000000    -0.23770118  0.41D-01  0.64D-01     0.43
    1     7     7     1.00000000     0.00000000   -25.00421003    -0.00000000    -0.23768682  0.41D-01  0.64D-01     0.43
    1     8     8     1.00000000     0.00000000   -25.00421003    -0.00000000    -0.23751785  0.41D-01  0.64D-01     0.43
    1     9     9     1.00000000     0.00000000   -25.00421003     0.00000000    -0.23755854  0.41D-01  0.64D-01     0.43
    1    10    10     1.00000000     0.00000000   -25.00421003    -0.00000000    -0.23755308  0.41D-01  0.64D-01     0.43
    1    11    11     1.00000000     0.00000000   -25.00421003    -0.00000000    -0.23760722  0.41D-01  0.64D-01     0.43
    1    12    12     1.00000000     0.00000000   -25.00421003    -0.00000000    -0.23757364  0.41D-01  0.64D-01     0.43
    1    13    13     1.00000000     0.00000000   -24.99960021     0.00000000    -0.20819126  0.39D-01  0.47D-01     0.43
    1    14    14     1.00000000     0.00000000   -24.98354826    -0.00000000    -0.24512780  0.44D-01  0.74D-01     0.43
    1    15    15     1.00000000     0.00000000   -24.98354826    -0.00000000    -0.24514112  0.44D-01  0.74D-01     0.43
    1    16    16     1.00000000     0.00000000   -24.98354826    -0.00000000    -0.24499525  0.44D-01  0.74D-01     0.43
    2     1     1     1.08128256    -0.21825239   -25.27960348    -0.21825239    -0.00564587  0.17D-02  0.10D-02     4.88
    2     2     2     1.08127488    -0.21824883   -25.27959992    -0.21824883    -0.00564819  0.17D-02  0.10D-02     4.88
    2     3     3     1.08129996    -0.21824687   -25.27959796    -0.21824687    -0.00565122  0.17D-02  0.10D-02     4.88
    2     4     4     1.08129016    -0.21824305   -25.27959413    -0.21824305    -0.00565336  0.17D-02  0.10D-02     4.88
    2     5     5     1.08128808    -0.21823945   -25.27959054    -0.21823945    -0.00565693  0.17D-02  0.10D-02     4.88
    2     6     6     1.08182056    -0.21764366   -25.22185369    -0.21764366    -0.00576057  0.19D-02  0.12D-02     4.88
    2     7     7     1.08181725    -0.21764307   -25.22185310    -0.21764307    -0.00576121  0.19D-02  0.12D-02     4.88
    2     8     8     1.08181869    -0.21764159   -25.22185162    -0.21764159    -0.00576238  0.19D-02  0.12D-02     4.88
    2     9     9     1.08182023    -0.21763043   -25.22184046    -0.21763043    -0.00577612  0.19D-02  0.12D-02     4.88
    2    10    10     1.08182023    -0.21762948   -25.22183951    -0.21762948    -0.00577697  0.19D-02  0.12D-02     4.88
    2    11    11     1.08184186    -0.21760869   -25.22181871    -0.21760869    -0.00580233  0.19D-02  0.12D-02     4.88
    2    12    12     1.08183194    -0.21760575   -25.22181578    -0.21760575    -0.00580433  0.19D-02  0.12D-02     4.88
    2    13    13     1.07765385    -0.21160118   -25.21120139    -0.21160118    -0.00454060  0.14D-02  0.74D-03     4.88
    2    14    14     1.08868393    -0.22213444   -25.20568271    -0.22213444    -0.00684251  0.25D-02  0.16D-02     4.88
    2    15    15     1.08875248    -0.22209750   -25.20564577    -0.22209750    -0.00688435  0.26D-02  0.16D-02     4.88
    2    16    16     1.08875020    -0.22209435   -25.20564261    -0.22209435    -0.00688760  0.26D-02  0.16D-02     4.88
    3     1     1     1.08361426    -0.22422811   -25.28557920    -0.00597572    -0.00017797  0.49D-04  0.37D-04     9.21
    3     2     2     1.08361999    -0.22422785   -25.28557894    -0.00597902    -0.00017825  0.49D-04  0.37D-04     9.21
    3     3     3     1.08361145    -0.22422774   -25.28557882    -0.00598086    -0.00017816  0.49D-04  0.37D-04     9.21
    3     4     4     1.08361447    -0.22422759   -25.28557867    -0.00598454    -0.00017827  0.49D-04  0.37D-04     9.21
    3     5     5     1.08361450    -0.22422754   -25.28557863    -0.00598809    -0.00017830  0.49D-04  0.37D-04     9.21
    3     6     6     1.08357022    -0.22366542   -25.22787545    -0.00602176    -0.00016606  0.35D-04  0.40D-04     9.21
    3     7     7     1.08356998    -0.22366522   -25.22787525    -0.00602214    -0.00016630  0.35D-04  0.40D-04     9.21
    3     8     8     1.08356945    -0.22366518   -25.22787521    -0.00602359    -0.00016631  0.35D-04  0.40D-04     9.21
    3     9     9     1.08356822    -0.22366504   -25.22787507    -0.00603461    -0.00016664  0.35D-04  0.40D-04     9.21
    3    10    10     1.08356817    -0.22366501   -25.22787504    -0.00603552    -0.00016667  0.35D-04  0.40D-04     9.21
    3    11    11     1.08357733    -0.22366472   -25.22787475    -0.00605604    -0.00016755  0.35D-04  0.40D-04     9.21
    3    12    12     1.08357297    -0.22366443   -25.22787446    -0.00605868    -0.00016771  0.35D-04  0.40D-04     9.21
    3    13    13     1.08041698    -0.21648392   -25.21608413    -0.00488274    -0.00013953  0.32D-04  0.32D-04     9.21
    3    14    14     1.09003066    -0.22917679   -25.21272505    -0.00704234    -0.00024603  0.41D-04  0.96D-04     9.21
    3    15    15     1.09005432    -0.22917547   -25.21272374    -0.00707797    -0.00024811  0.42D-04  0.97D-04     9.21
    3    16    16     1.09005404    -0.22917543   -25.21272370    -0.00708109    -0.00024814  0.42D-04  0.97D-04     9.21
    4     1     1     1.08499785    -0.22444161   -25.28579269    -0.00021350    -0.00001560  0.15D-04  0.15D-05    13.62
    4     2     2     1.08499754    -0.22444157   -25.28579266    -0.00021373    -0.00001562  0.15D-04  0.15D-05    13.62
    4     3     3     1.08499830    -0.22444157   -25.28579266    -0.00021384    -0.00001562  0.15D-04  0.15D-05    13.62
    4     4     4     1.08499860    -0.22444155   -25.28579264    -0.00021396    -0.00001564  0.15D-04  0.15D-05    13.62
    4     5     5     1.08499853    -0.22444155   -25.28579263    -0.00021401    -0.00001564  0.15D-04  0.15D-05    13.62
    4     6     6     1.08451243    -0.22385847   -25.22806850    -0.00019305    -0.00001224  0.13D-04  0.12D-05    13.62
    4     7     7     1.08451165    -0.22385845   -25.22806848    -0.00019324    -0.00001226  0.13D-04  0.12D-05    13.62
    4     8     8     1.08451321    -0.22385844   -25.22806847    -0.00019325    -0.00001223  0.13D-04  0.12D-05    13.62
    4     9     9     1.08451326    -0.22385843   -25.22806846    -0.00019339    -0.00001223  0.13D-04  0.12D-05    13.62
    4    10    10     1.08451511    -0.22385840   -25.22806843    -0.00019339    -0.00001223  0.13D-04  0.12D-05    13.62
    4    11    11     1.08451419    -0.22385837   -25.22806840    -0.00019364    -0.00001225  0.13D-04  0.12D-05    13.62
    4    12    12     1.08451424    -0.22385836   -25.22806839    -0.00019393    -0.00001225  0.13D-04  0.12D-05    13.62
    4    13    13     1.08139902    -0.21663775   -25.21623797    -0.00015384    -0.00000730  0.54D-05  0.14D-05    13.62
    4    14    14     1.09176719    -0.22947226   -25.21302053    -0.00029548    -0.00002555  0.17D-04  0.12D-04    13.62
    4    15    15     1.09176713    -0.22947226   -25.21302052    -0.00029678    -0.00002555  0.17D-04  0.12D-04    13.62
    4    16    16     1.09176464    -0.22947222   -25.21302049    -0.00029679    -0.00002548  0.17D-04  0.12D-04    13.62
    5     1     1     1.08580239    -0.22446297   -25.28581405    -0.00002136    -0.00000166  0.71D-06  0.31D-06    17.93
    5     2     2     1.08580223    -0.22446296   -25.28581405    -0.00002139    -0.00000166  0.71D-06  0.31D-06    17.93
    5     3     3     1.08580210    -0.22446296   -25.28581405    -0.00002139    -0.00000166  0.71D-06  0.31D-06    17.93
    5     4     4     1.08580223    -0.22446296   -25.28581405    -0.00002141    -0.00000166  0.71D-06  0.31D-06    17.93
    5     5     5     1.08580216    -0.22446296   -25.28581405    -0.00002141    -0.00000166  0.71D-06  0.31D-06    17.93
    5     6     6     1.08501887    -0.22387415   -25.22808418    -0.00001568    -0.00000113  0.44D-06  0.24D-06    17.93
    5     7     7     1.08501977    -0.22387415   -25.22808418    -0.00001570    -0.00000113  0.43D-06  0.24D-06    17.93
    5     8     8     1.08501977    -0.22387415   -25.22808418    -0.00001572    -0.00000113  0.43D-06  0.24D-06    17.93
    5     9     9     1.08501901    -0.22387415   -25.22808418    -0.00001572    -0.00000113  0.44D-06  0.24D-06    17.93
    5    10    10     1.08502042    -0.22387415   -25.22808418    -0.00001575    -0.00000114  0.43D-06  0.24D-06    17.93
    5    11    11     1.08502021    -0.22387414   -25.22808417    -0.00001578    -0.00000114  0.43D-06  0.24D-06    17.93
    5    12    12     1.08502021    -0.22387414   -25.22808417    -0.00001578    -0.00000114  0.43D-06  0.24D-06    17.93
    5    13    13     1.08178745    -0.21664650   -25.21624672    -0.00000875    -0.00000054  0.26D-06  0.14D-06    17.93
    5    14    14     1.09283022    -0.22950711   -25.21305538    -0.00003485    -0.00000331  0.81D-06  0.17D-05    17.93
    5    15    15     1.09283012    -0.22950711   -25.21305538    -0.00003486    -0.00000331  0.81D-06  0.17D-05    17.93
    5    16    16     1.09283110    -0.22950711   -25.21305538    -0.00003489    -0.00000330  0.79D-06  0.17D-05    17.93
    6     1     1     1.08590210    -0.22446505   -25.28581614    -0.00000208    -0.00000012  0.56D-07  0.20D-07    22.26
    6     2     2     1.08590185    -0.22446505   -25.28581614    -0.00000209    -0.00000012  0.56D-07  0.20D-07    22.26
    6     3     3     1.08590186    -0.22446505   -25.28581614    -0.00000209    -0.00000012  0.56D-07  0.20D-07    22.26
    6     4     4     1.08590191    -0.22446505   -25.28581614    -0.00000209    -0.00000012  0.56D-07  0.20D-07    22.26
    6     5     5     1.08590202    -0.22446505   -25.28581614    -0.00000209    -0.00000012  0.56D-07  0.20D-07    22.26
    6     6     6     1.08505539    -0.22387553   -25.22808556    -0.00000137    -0.00000008  0.25D-07  0.20D-07    22.26
    6     7     7     1.08505538    -0.22387553   -25.22808556    -0.00000137    -0.00000008  0.25D-07  0.20D-07    22.26
    6     8     8     1.08505533    -0.22387553   -25.22808556    -0.00000137    -0.00000008  0.26D-07  0.20D-07    22.26
    6     9     9     1.08505539    -0.22387553   -25.22808556    -0.00000137    -0.00000008  0.26D-07  0.20D-07    22.26
    6    10    10     1.08505549    -0.22387553   -25.22808556    -0.00000138    -0.00000008  0.25D-07  0.20D-07    22.26
    6    11    11     1.08505546    -0.22387553   -25.22808556    -0.00000138    -0.00000008  0.26D-07  0.20D-07    22.26
    6    12    12     1.08505547    -0.22387553   -25.22808556    -0.00000138    -0.00000008  0.25D-07  0.20D-07    22.26
    6    13    13     1.08187120    -0.21664721   -25.21624742    -0.00000071    -0.00000005  0.29D-07  0.11D-07    22.26
    6    14    14     1.09300141    -0.22951129   -25.21305955    -0.00000417    -0.00000040  0.11D-06  0.26D-06    22.26
    6    15    15     1.09300140    -0.22951129   -25.21305955    -0.00000417    -0.00000040  0.11D-06  0.26D-06    22.26
    6    16    16     1.09300128    -0.22951129   -25.21305955    -0.00000417    -0.00000040  0.11D-06  0.26D-06    22.26
    7     1     1     1.08592688    -0.22446519   -25.28581628    -0.00000014    -0.00000001  0.90D-08  0.17D-08    26.59
    7     2     2     1.08592683    -0.22446519   -25.28581628    -0.00000014    -0.00000001  0.90D-08  0.17D-08    26.59
    7     3     3     1.08592688    -0.22446519   -25.28581628    -0.00000014    -0.00000001  0.90D-08  0.17D-08    26.59
    7     4     4     1.08592683    -0.22446519   -25.28581628    -0.00000014    -0.00000001  0.90D-08  0.17D-08    26.59
    7     5     5     1.08592680    -0.22446519   -25.28581628    -0.00000014    -0.00000001  0.90D-08  0.17D-08    26.59
    7     6     6     1.08505850    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7     7     7     1.08505851    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7     8     8     1.08505851    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7     9     9     1.08505851    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7    10    10     1.08505851    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7    11    11     1.08505849    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7    12    12     1.08505849    -0.22387562   -25.22808564    -0.00000009    -0.00000001  0.69D-08  0.17D-08    26.59
    7    13    13     1.08188000    -0.21664727   -25.21624749    -0.00000007    -0.00000001  0.50D-08  0.75D-09    26.59
    7    14    14     1.09307415    -0.22951181   -25.21306008    -0.00000053    -0.00000008  0.17D-07  0.48D-07    26.59
    7    15    15     1.09307415    -0.22951181   -25.21306008    -0.00000053    -0.00000008  0.17D-07  0.48D-07    26.59
    7    16    16     1.09307415    -0.22951181   -25.21306008    -0.00000053    -0.00000008  0.17D-07  0.48D-07    26.59
    8     1     1     1.08593920    -0.22446520   -25.28581629    -0.00000001    -0.00000000  0.71D-09  0.22D-09    29.10
    8     2     2     1.08593918    -0.22446520   -25.28581629    -0.00000001    -0.00000000  0.71D-09  0.22D-09    29.10
    8     3     3     1.08593920    -0.22446520   -25.28581629    -0.00000001    -0.00000000  0.71D-09  0.22D-09    29.10
    8     4     4     1.08593919    -0.22446520   -25.28581629    -0.00000001    -0.00000000  0.71D-09  0.22D-09    29.10
    8     5     5     1.08593918    -0.22446520   -25.28581629    -0.00000001    -0.00000000  0.71D-09  0.22D-09    29.10
    8     6     6     1.08505850    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8     7     7     1.08505851    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8     8     8     1.08505851    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8     9     9     1.08505850    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8    10    10     1.08505851    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8    11    11     1.08505849    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8    12    12     1.08505849    -0.22387562   -25.22808564    -0.00000000    -0.00000001  0.69D-08  0.17D-08    29.10
    8    13    13     1.08188000    -0.21664727   -25.21624749    -0.00000000    -0.00000001  0.50D-08  0.75D-09    29.10
    8    14    14     1.09312741    -0.22951193   -25.21306019    -0.00000011    -0.00000001  0.24D-08  0.16D-08    29.10
    8    15    15     1.09312741    -0.22951193   -25.21306019    -0.00000011    -0.00000001  0.24D-08  0.16D-08    29.10
    8    16    16     1.09312726    -0.22951193   -25.21306019    -0.00000011    -0.00000001  0.24D-08  0.16D-08    29.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   3.5%   9.5%
 P   1.3%  19.4%  14.7%

 Initialization:   0.7%
 Other:           46.0%

 Total CPU:       29.1 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                      -0.0000000  -0.0000000  -0.0000000   0.9583716   0.0000000   0.0000000  -0.0000000
 20//0000222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9579970  -0.0000000  -0.0000000   0.0000000
                      -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/000/00222           0.0000000   0.9569777  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                       0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/00/000222          -0.0000000   0.0000000  -0.0000000   0.9569777  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                       0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2/0000/0222           0.0000000   0.0000000   0.9569777   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2//00000222           0.0050723  -0.0000000   0.0000000   0.0000000   0.9569643   0.0000000  -0.0000000   0.0000000   0.0000000
                       0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/0/0000222           0.9569643  -0.0000000  -0.0000000   0.0000000  -0.0050723  -0.0000000   0.0000000   0.0000000  -0.0000000
                       0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 20/000/0222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9503649
                       0.1206846   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 200/00/0222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0539718
                      -0.4250161  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.8534164
 2000//00222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1079436
                       0.8500322   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.4267081
 200/0/00222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.7695626  -0.0000000   0.0000000
                      -0.0000000   0.3768024  -0.0000000  -0.0000000   0.0000000   0.4267081   0.0000000
 20/0/000222          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0002940  -0.0000000
                       0.0000000   0.0000000   0.6058904   0.0000000   0.7390802  -0.0000000  -0.0000000
 20/00/00222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1225914   0.0000000   0.0000000
                       0.0000000  -0.5933588   0.0000000  -0.0000000  -0.0000000   0.7390802  -0.0000000
 20000//0222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6776607  -0.0000000
                      -0.0000000   0.0000000  -0.5243878  -0.0000000   0.4267081   0.0000000   0.0000000
 200//000222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.6771514   0.0000000
                       0.0000000   0.0000000   0.5250452   0.0000000  -0.4267081   0.0000000  -0.0000000
 2000/0/0222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5572280  -0.0000000   0.0000000
                      -0.0000000   0.6509252   0.0000000   0.0000000  -0.0000000   0.4267081   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222  20.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                       0.0000000  -0.0000000  -0.0000000  -0.0544890  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.956669    0.000000   -0.000000   -0.017184   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.956823   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.956823   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.956823    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.017184   -0.000000   -0.000000    0.956669    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957997    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.361955    0.000000
            -0.000000    0.886987    0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.154326   -0.000000   -0.000000
             0.945485   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9           0.000000    0.000000   -0.000000    0.000000    0.000000    0.955613    0.000000    0.000000    0.000000   -0.067536
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10          0.000000    0.000000   -0.000000    0.000000    0.000000    0.067536   -0.000000    0.000000   -0.000000    0.955613
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.886987    0.000000
             0.000000    0.361955   -0.000000   -0.000000    0.000000   -0.000000
 12          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.945485    0.000000   -0.000000
            -0.154326   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 13          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.958372   -0.000000   -0.000000    0.000000
 14          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.954148   -0.000000    0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.954148   -0.000000
 16         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.954148

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956823   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.956823   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.956823    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.956823    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.956823   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957997   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957997   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.957997    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957997   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 10         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.957997
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.957997    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.957997    0.000000    0.000000    0.000000   -0.000000
 13         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.958372   -0.000000   -0.000000    0.000000
 14          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.954148    0.000000    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.954148   -0.000000
 16          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954148


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95666911 (fixed)   0.95705824 (relaxed)   0.95682344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584458   -0.01099251   -0.14791808
 Singles      0.03412994   -0.06420825   -0.06579726
 Pairs        0.05231153    0.00000000   -0.01074985
 Total        1.09228606   -0.07520075   -0.22446520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06135109
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07556427
 One electron energy                  -41.54900369
 Two electron energy                   16.26318740
 Virial quotient                       -3.57368194
 Correlation energy                    -0.22446520
 !MRCI STATE 1.1 Energy               -25.285816290257

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30653130 (Davidson, fixed reference)
 Cluster corrected energies           -25.30641101 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30653130 (Davidson, rotated reference)

 Cluster corrected energies           -25.30207563 (Pople, fixed reference)
 Cluster corrected energies           -25.30197702 (Pople, relaxed reference)
 Cluster corrected energies           -25.30207563 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95682344 (fixed)   0.95705825 (relaxed)   0.95682344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584458   -0.01099251   -0.14791808
 Singles      0.03412994   -0.06420826   -0.06579727
 Pairs        0.05231152    0.00000000   -0.01074986
 Total        1.09228604   -0.07520077   -0.22446520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06135109
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07556427
 One electron energy                  -41.54900367
 Two electron energy                   16.26318738
 Virial quotient                       -3.57368195
 Correlation energy                    -0.22446520
 !MRCI STATE 2.1 Energy               -25.285816290257

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30653130 (Davidson, fixed reference)
 Cluster corrected energies           -25.30641100 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30653130 (Davidson, rotated reference)

 Cluster corrected energies           -25.30207563 (Pople, fixed reference)
 Cluster corrected energies           -25.30197701 (Pople, relaxed reference)
 Cluster corrected energies           -25.30207563 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95682344 (fixed)   0.95705824 (relaxed)   0.95682344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584458   -0.01099251   -0.14791808
 Singles      0.03412994   -0.06420825   -0.06579726
 Pairs        0.05231154   -0.00000000   -0.01074986
 Total        1.09228605   -0.07520076   -0.22446520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06135109
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07556428
 One electron energy                  -41.54900368
 Two electron energy                   16.26318739
 Virial quotient                       -3.57368194
 Correlation energy                    -0.22446520
 !MRCI STATE 3.1 Energy               -25.285816290213

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30653130 (Davidson, fixed reference)
 Cluster corrected energies           -25.30641101 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30653130 (Davidson, rotated reference)

 Cluster corrected energies           -25.30207563 (Pople, fixed reference)
 Cluster corrected energies           -25.30197701 (Pople, relaxed reference)
 Cluster corrected energies           -25.30207563 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95682344 (fixed)   0.95705825 (relaxed)   0.95682344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584458   -0.01099251   -0.14791808
 Singles      0.03412994   -0.06420825   -0.06579727
 Pairs        0.05231152   -0.00000000   -0.01074986
 Total        1.09228604   -0.07520076   -0.22446520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06135109
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07556426
 One electron energy                  -41.54900367
 Two electron energy                   16.26318738
 Virial quotient                       -3.57368195
 Correlation energy                    -0.22446520
 !MRCI STATE 4.1 Energy               -25.285816290171

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30653130 (Davidson, fixed reference)
 Cluster corrected energies           -25.30641100 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30653130 (Davidson, rotated reference)

 Cluster corrected energies           -25.30207563 (Pople, fixed reference)
 Cluster corrected energies           -25.30197701 (Pople, relaxed reference)
 Cluster corrected energies           -25.30207563 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95666912 (fixed)   0.95705825 (relaxed)   0.95682344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584458   -0.01099251   -0.14791808
 Singles      0.03412994   -0.06420825   -0.06579726
 Pairs        0.05231152   -0.00000000   -0.01074986
 Total        1.09228604   -0.07520076   -0.22446520
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06135109
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07556425
 One electron energy                  -41.54900360
 Two electron energy                   16.26318731
 Virial quotient                       -3.57368196
 Correlation energy                    -0.22446520
 !MRCI STATE 5.1 Energy               -25.285816290116

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30653130 (Davidson, fixed reference)
 Cluster corrected energies           -25.30641100 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30653130 (Davidson, rotated reference)

 Cluster corrected energies           -25.30207563 (Pople, fixed reference)
 Cluster corrected energies           -25.30197701 (Pople, relaxed reference)
 Cluster corrected energies           -25.30207563 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95799698 (fixed)   0.95799698 (relaxed)   0.95799698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852273   -0.15074762
 Singles      0.02953247   -0.06055868   -0.06164705
 Pairs        0.05588295    0.00000000   -0.01148094
 Total        1.08961161   -0.06908140   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588138
 One electron energy                  -41.83904473
 Two electron energy                   16.61095909
 Virial quotient                       -3.48171386
 Correlation energy                    -0.22387562
 !MRCI STATE 6.1 Energy               -25.228085644245

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814750 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814750 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814750 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381191 (Pople, fixed reference)
 Cluster corrected energies           -25.24381191 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381191 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.88698747 (fixed)   0.95799698 (relaxed)   0.95799698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852272   -0.15074760
 Singles      0.02953249   -0.06055870   -0.06164705
 Pairs        0.05588295    0.00000000   -0.01148096
 Total        1.08961162   -0.06908142   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588144
 One electron energy                  -41.83904487
 Two electron energy                   16.61095922
 Virial quotient                       -3.48171383
 Correlation energy                    -0.22387562
 !MRCI STATE 7.1 Energy               -25.228085644243

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814750 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814750 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814750 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381192 (Pople, fixed reference)
 Cluster corrected energies           -25.24381192 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381192 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94548486 (fixed)   0.95799698 (relaxed)   0.95799698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852272   -0.15074761
 Singles      0.02953249   -0.06055870   -0.06164705
 Pairs        0.05588295   -0.00000000   -0.01148096
 Total        1.08961161   -0.06908142   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588144
 One electron energy                  -41.83904488
 Two electron energy                   16.61095923
 Virial quotient                       -3.48171383
 Correlation energy                    -0.22387562
 !MRCI STATE 8.1 Energy               -25.228085644242

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814750 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814750 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814750 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381192 (Pople, fixed reference)
 Cluster corrected energies           -25.24381192 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381192 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95561343 (fixed)   0.95799698 (relaxed)   0.95799698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852273   -0.15074763
 Singles      0.02953247   -0.06055868   -0.06164705
 Pairs        0.05588296    0.00000001   -0.01148094
 Total        1.08961161   -0.06908140   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588144
 One electron energy                  -41.83904477
 Two electron energy                   16.61095913
 Virial quotient                       -3.48171383
 Correlation energy                    -0.22387562
 !MRCI STATE 9.1 Energy               -25.228085644227

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814750 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814750 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814750 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381191 (Pople, fixed reference)
 Cluster corrected energies           -25.24381191 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381191 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95561343 (fixed)   0.95799698 (relaxed)   0.95799698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852272   -0.15074755
 Singles      0.02953250   -0.06055871   -0.06164706
 Pairs        0.05588293   -0.00000005   -0.01148101
 Total        1.08961161   -0.06908148   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588139
 One electron energy                  -41.83904479
 Two electron energy                   16.61095915
 Virial quotient                       -3.48171386
 Correlation energy                    -0.22387562
 !MRCI STATE 10.1 Energy              -25.228085644221

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814750 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814750 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814750 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381191 (Pople, fixed reference)
 Cluster corrected energies           -25.24381191 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381191 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.88698748 (fixed)   0.95799699 (relaxed)   0.95799699 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852272   -0.15074759
 Singles      0.02953247   -0.06055871   -0.06164706
 Pairs        0.05588294    0.00000000   -0.01148097
 Total        1.08961159   -0.06908143   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588121
 One electron energy                  -41.83904413
 Two electron energy                   16.61095849
 Virial quotient                       -3.48171394
 Correlation energy                    -0.22387562
 !MRCI STATE 11.1 Energy              -25.228085644174

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814749 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814749 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814749 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381191 (Pople, fixed reference)
 Cluster corrected energies           -25.24381191 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381191 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94548487 (fixed)   0.95799699 (relaxed)   0.95799699 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00419618   -0.00852272   -0.15074759
 Singles      0.02953247   -0.06055872   -0.06164706
 Pairs        0.05588294   -0.00000000   -0.01148097
 Total        1.08961159   -0.06908144   -0.22387562
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00421003
 Nuclear energy                         0.00000000
 Kinetic energy                         7.24588117
 One electron energy                  -41.83904408
 Two electron energy                   16.61095843
 Virial quotient                       -3.48171396
 Correlation energy                    -0.22387562
 !MRCI STATE 12.1 Energy              -25.228085644172

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24814749 (Davidson, fixed reference)
 Cluster corrected energies           -25.24814749 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24814749 (Davidson, rotated reference)

 Cluster corrected energies           -25.24381191 (Pople, fixed reference)
 Cluster corrected energies           -25.24381191 (Pople, relaxed reference)
 Cluster corrected energies           -25.24381191 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95837164 (fixed)   0.95837164 (relaxed)   0.95837164 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00635916   -0.01335701   -0.14018411
 Singles      0.03506099   -0.06539814   -0.06704330
 Pairs        0.04733970   -0.00000000   -0.00941987
 Total        1.08875985   -0.07875515   -0.21664727
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99960021
 Nuclear energy                         0.00000000
 Kinetic energy                         6.83540937
 One electron energy                  -40.23046685
 Two electron energy                   15.01421936
 Virial quotient                       -3.68906179
 Correlation energy                    -0.21664727
 !MRCI STATE 13.1 Energy              -25.216247487371

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23547707 (Davidson, fixed reference)
 Cluster corrected energies           -25.23547707 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23547707 (Davidson, rotated reference)

 Cluster corrected energies           -25.23131512 (Pople, fixed reference)
 Cluster corrected energies           -25.23131512 (Pople, relaxed reference)
 Cluster corrected energies           -25.23131512 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95414841 (fixed)   0.95414841 (relaxed)   0.95414841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484101   -0.00962565   -0.15445402
 Singles      0.02913597   -0.06096772   -0.06159427
 Pairs        0.06444228    0.00000000   -0.01346363
 Total        1.09841926   -0.07059337   -0.22951193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98354826
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23936025
 One electron energy                  -41.80139278
 Two electron energy                   16.58833259
 Virial quotient                       -3.48277463
 Correlation energy                    -0.22951193
 !MRCI STATE 14.1 Energy              -25.213060190465

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23564858 (Davidson, fixed reference)
 Cluster corrected energies           -25.23564858 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23564858 (Davidson, rotated reference)

 Cluster corrected energies           -25.23084265 (Pople, fixed reference)
 Cluster corrected energies           -25.23084265 (Pople, relaxed reference)
 Cluster corrected energies           -25.23084265 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95414841 (fixed)   0.95414841 (relaxed)   0.95414841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484101   -0.00962565   -0.15445402
 Singles      0.02913597   -0.06096772   -0.06159427
 Pairs        0.06444227    0.00000000   -0.01346363
 Total        1.09841926   -0.07059337   -0.22951193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98354826
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23936026
 One electron energy                  -41.80139280
 Two electron energy                   16.58833261
 Virial quotient                       -3.48277462
 Correlation energy                    -0.22951193
 !MRCI STATE 15.1 Energy              -25.213060190454

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23564858 (Davidson, fixed reference)
 Cluster corrected energies           -25.23564858 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23564858 (Davidson, rotated reference)

 Cluster corrected energies           -25.23084265 (Pople, fixed reference)
 Cluster corrected energies           -25.23084265 (Pople, relaxed reference)
 Cluster corrected energies           -25.23084265 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95414848 (fixed)   0.95414848 (relaxed)   0.95414848 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484101   -0.00962565   -0.00977470
 Singles      0.02913590   -0.06096773   -0.06159429
 Pairs        0.06444219   -0.15891854   -0.15814294
 Total        1.09841910   -0.22951193   -0.22951193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98354826
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23935988
 One electron energy                  -41.80139092
 Two electron energy                   16.58833073
 Virial quotient                       -3.48277480
 Correlation energy                    -0.22951193
 !MRCI STATE 16.1 Energy              -25.213060190454

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23564855 (Davidson, fixed reference)
 Cluster corrected energies           -25.23564855 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23564855 (Davidson, rotated reference)

 Cluster corrected energies           -25.23084262 (Pople, fixed reference)
 Cluster corrected energies           -25.23084262 (Pople, relaxed reference)
 Cluster corrected energies           -25.23084262 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       9      118.09       700     1000      520     2100     2140     2141     2142     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        59.73     35.64     21.13      0.56      0.69      0.90      0.02      0.53
 REAL TIME  *        73.75 SEC
 DISK USED  *       150.02 MB (local),        2.41 GB (total)
 SF USED    *       761.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.30653130  AU                              
 SETTING HLSDIAG(14)    =       -25.30653130  AU                              
 SETTING HLSDIAG(15)    =       -25.30653130  AU                              
 SETTING HLSDIAG(16)    =       -25.30653130  AU                              
 SETTING HLSDIAG(17)    =       -25.30653130  AU                              
 SETTING HLSDIAG(18)    =       -25.24814750  AU                              
 SETTING HLSDIAG(19)    =       -25.24814750  AU                              
 SETTING HLSDIAG(20)    =       -25.24814750  AU                              
 SETTING HLSDIAG(21)    =       -25.24814750  AU                              
 SETTING HLSDIAG(22)    =       -25.24814750  AU                              
 SETTING HLSDIAG(23)    =       -25.24814749  AU                              
 SETTING HLSDIAG(24)    =       -25.24814749  AU                              
 SETTING HLSDIAG(25)    =       -25.23547707  AU                              
 SETTING HLSDIAG(26)    =       -25.23564858  AU                              
 SETTING HLSDIAG(27)    =       -25.23564858  AU                              
 SETTING HLSDIAG(28)    =       -25.23564855  AU                              


        HLSDIAG
    -25.35273035
    -25.29552577
    -25.29552565
    -25.29552560
    -25.29552560
    -25.29552560
    -25.23679247
    -25.23679254
    -25.23679246
    -25.23679249
    -25.23679246
    -25.22988986
    -25.30653130
    -25.30653130
    -25.30653130
    -25.30653130
    -25.30653130
    -25.24814750
    -25.24814750
    -25.24814750
    -25.24814750
    -25.24814750
    -25.24814749
    -25.24814749
    -25.23547707
    -25.23564858
    -25.23564858
    -25.23564855
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       9      118.09       700     1000      520     2100     2140     2141     2142     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        60.50      0.74     35.64     21.13      0.56      0.69      0.90      0.02      0.53
 REAL TIME  *        74.60 SEC
 DISK USED  *       150.13 MB (local),        2.41 GB (total)
 SF USED    *       761.16 MB
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

 Original energies:    -25.330344    -25.271835    -25.271835    -25.271835    -25.271835    -25.271835    -25.210459    -25.210459
                       -25.210459    -25.210459    -25.210459    -25.209441
 Replaced energies:    -25.352730    -25.295526    -25.295526    -25.295526    -25.295526    -25.295526    -25.236792    -25.236793
                       -25.236792    -25.236792    -25.236792    -25.229890

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.285816    -25.285816    -25.285816    -25.285816    -25.285816    -25.228086    -25.228086    -25.228086
                       -25.228086    -25.228086    -25.228086    -25.228086    -25.216247    -25.213060    -25.213060    -25.213060
 Replaced energies:    -25.306531    -25.306531    -25.306531    -25.306531    -25.306531    -25.248147    -25.248147    -25.248147
                       -25.248147    -25.248147    -25.248147    -25.248147    -25.235477    -25.235649    -25.235649    -25.235649



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.35273035

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12554.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12554.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12554.99       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12554.99       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12554.99       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25445.42       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25445.41       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25445.42       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25445.42
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      70.74      27.05       0.00      -0.00       0.00
                            0.00       0.00       0.00      72.05      -0.00       0.00       0.00      -0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     -71.40       0.00       0.00      -0.00      27.30      -0.00
                            0.00    -125.26     -68.55       0.00      -0.00      -0.00      -0.00      49.79       0.00      22.39

   15   3.1  1.0  1.0       0.00       0.00       0.00      71.40       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     -71.40     -27.30       0.00       0.00      -0.00

   16   4.1  1.0  1.0      -0.00     122.00     -74.21       0.00       0.00      -0.00      -0.00     -44.29       0.00      31.92
                            0.00      -0.00      -0.00      -0.00      71.40       0.00      -0.00      -0.00     -27.30       0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00    -124.04     -47.42       0.00       0.00      -0.00
                            0.00       0.00      -0.00     123.28       0.00       0.00       0.00       0.00      -0.00      -0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00     -27.71      87.88      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00     -27.71       0.00      -0.00       0.00       0.00      -0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00      35.01       0.00       0.00      -0.00     111.02      -0.00
                            0.00      -6.86     -31.31      -0.00       0.00      -0.00      -0.00     -29.44       0.00     -97.31

   20   8.1  1.0  1.0      -0.00       0.79      33.93       0.00      -0.00       0.00      -0.00      10.90       0.00     107.09
                            0.00      -0.00       0.00      -0.00      33.93       0.00       0.00       0.00     107.61      -0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00     -30.19      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      24.78     -78.60       0.00       0.00      -0.00

   22  10.1  1.0  1.0      -0.00       0.00      -0.00      17.80      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      24.78     -78.60       0.00       0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00      -0.00       0.00       1.71      -0.00       0.00      -0.00       5.44       0.00
                            0.00     -29.36      16.12       0.00       0.00      -0.00       0.00     -88.85       0.00      58.24

   24  12.1  1.0  1.0       0.00     -30.55      -8.05       0.00      -0.00      -0.00       0.00     -98.57      -0.00     -17.89
                            0.00       0.00      -0.00       0.00       8.78      -0.00       0.00       0.00      27.84      -0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0     -10.94     -19.70     -32.39      -0.00       0.00      -0.00      -0.00     -85.29      -0.00    -118.32
                            0.00      -0.00      -0.00       0.00      32.84       0.00       0.00      -0.00     126.31      -0.00

   27  15.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00     -32.84      -0.00      -0.00       0.00    -126.31      -0.00
                           10.94      18.20     -33.26       0.00      -0.00       0.00       0.00      59.82      -0.00    -133.02

   28  16.1  1.0  1.0      -0.00      -0.00      -0.00      32.84       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      32.84    -126.31       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     201.93       0.00      -0.00      -0.00     -77.21      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00    -100.97     -38.60       0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.62    -201.88       0.00      -0.00      -0.00      -0.00       7.78       0.00      76.82

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     100.97      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -1.07      -0.00      -0.00      -0.00       0.41      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      39.19       0.00       0.00      -0.00     124.28      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      10.03     -31.81       0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.02      -0.00      -0.00       0.00      -0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -7.51     -38.71       0.00       0.00       0.00       0.00     -33.32      -0.00    -120.54

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      52.03      -6.13       0.00       0.00       0.00       0.00     162.98       0.00     -32.25

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      48.54    -153.95       0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      49.57      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -46.44       0.00      -0.00      -0.00       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      46.44    -178.63       0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.47     -53.61       1.23      -0.00      -0.00      -0.00      -0.00    -205.22       0.00      20.79

   45   1.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00      70.74      27.05       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -72.05       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     -71.40       0.00       0.00      -0.00      27.30      -0.00
                           -0.00     125.26      68.55      -0.00       0.00       0.00       0.00     -49.79      -0.00     -22.39

   47   3.1  1.0 -1.0       0.00       0.00       0.00      71.40       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      71.40      27.30      -0.00      -0.00       0.00

   48   4.1  1.0 -1.0      -0.00     122.00     -74.21       0.00       0.00      -0.00      -0.00     -44.29       0.00      31.92
                           -0.00       0.00       0.00       0.00     -71.40      -0.00       0.00       0.00      27.30      -0.00

   49   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00    -124.04     -47.42       0.00       0.00      -0.00
                           -0.00      -0.00       0.00    -123.28      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     -27.71      87.88      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      27.71      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00       0.00      35.01       0.00       0.00      -0.00     111.02      -0.00
                           -0.00       6.86      31.31       0.00      -0.00       0.00       0.00      29.44      -0.00      97.31

   52   8.1  1.0 -1.0      -0.00       0.79      33.93       0.00      -0.00       0.00      -0.00      10.90       0.00     107.09
                           -0.00       0.00      -0.00       0.00     -33.93      -0.00      -0.00      -0.00    -107.61       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00     -30.19      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     -24.78      78.60      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0      -0.00       0.00      -0.00      17.80      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -24.78      78.60      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00      -0.00       0.00       1.71      -0.00       0.00      -0.00       5.44       0.00
                           -0.00      29.36     -16.12      -0.00      -0.00       0.00      -0.00      88.85      -0.00     -58.24

   56  12.1  1.0 -1.0       0.00     -30.55      -8.05       0.00      -0.00      -0.00       0.00     -98.57      -0.00     -17.89
                           -0.00      -0.00       0.00      -0.00      -8.78       0.00      -0.00      -0.00     -27.84       0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0     -10.94     -19.70     -32.39      -0.00       0.00      -0.00      -0.00     -85.29      -0.00    -118.32
                           -0.00       0.00       0.00      -0.00     -32.84      -0.00      -0.00       0.00    -126.31       0.00

   59  15.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00     -32.84      -0.00      -0.00       0.00    -126.31      -0.00
                          -10.94     -18.20      33.26      -0.00       0.00      -0.00      -0.00     -59.82       0.00     133.02

   60  16.1  1.0 -1.0      -0.00      -0.00      -0.00      32.84       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -32.84     126.31      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00     122.00      -0.00       0.00      -0.00       0.79
                            0.00       0.00      -0.00     125.26      -0.00       0.00      -0.00       0.00       6.86       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00     -74.21       0.00       0.00       0.00      33.93
                            0.00       0.00      -0.00      68.55      -0.00       0.00       0.00      -0.00      31.31      -0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00      71.40       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00     -72.05      -0.00      -0.00       0.00    -123.28      27.71       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00     -71.40       0.00       0.00       0.00       0.00      35.01      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -71.40      -0.00      -0.00      -0.00     -33.93

    6   6.1  0.0  0.0       0.00       0.00      70.74       0.00       0.00      -0.00    -124.04     -27.71       0.00       0.00
                            0.00       0.00      -0.00       0.00      71.40      -0.00      -0.00       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      27.05       0.00       0.00      -0.00     -47.42      87.88       0.00      -0.00
                            0.00       0.00      -0.00       0.00      27.30       0.00      -0.00      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00     -44.29       0.00      -0.00      -0.00      10.90
                            0.00       0.00       0.00     -49.79      -0.00       0.00      -0.00      -0.00      29.44      -0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00      27.30      -0.00       0.00       0.00      -0.00     111.02       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      27.30       0.00       0.00      -0.00    -107.61

   10  10.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      31.92      -0.00      -0.00      -0.00     107.09
                            0.00       0.00      -0.00     -22.39       0.00      -0.00       0.00      -0.00      97.31       0.00

   11  11.1  0.0  0.0   25445.42       0.00      -0.00      -0.00      27.30      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00     -27.55      -0.00      -0.00       0.00     -47.14     -87.88      -0.00       0.00

   12  12.1  0.0  0.0       0.00   26960.37       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00   10139.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           27.55       0.00      -0.00      -0.00    -195.97      -0.00       0.00      -0.00      -0.00      -0.00

   14   2.1  1.0  1.0      -0.00       0.00       0.00   10139.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      97.99      -0.00       0.00       0.00      -0.00

   15   3.1  1.0  1.0      27.30       0.00       0.00       0.00   10139.52       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     195.97       0.00      -0.00      -0.00      -1.04       4.62      -0.00      -0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   10139.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -97.99       0.00      -0.00      -0.00      -0.00       1.18      -0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   10139.52       0.00       0.00       0.00
                           47.14       0.00      -0.00       0.00       1.04       0.00      -0.00      -0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28       0.00       0.00
                           87.88       0.00       0.00      -0.00      -4.62       0.00       0.00      -0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28       0.00
                            0.00       0.00       0.00      -0.00       0.00      -1.18      -0.00      -0.00      -0.00     263.41

   20   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -263.41      -0.00

   21   9.1  1.0  1.0      95.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.59       0.00      -0.00      -0.00       0.76     177.88      -0.00       0.00

   22  10.1  1.0  1.0     -56.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.55      -0.00       0.00      -0.00      -6.15      22.59      -0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -5.72       0.00      -0.00      -0.00     -54.38

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -5.84       0.00      -0.00      -0.00      -0.00      18.01       0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00     -34.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.53      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   27  15.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      34.72      -0.00       0.00      -0.00       0.53      -0.00      -0.00       0.00      -0.00

   28  16.1  1.0  1.0    -126.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.62       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00     -68.65       0.00      -0.00       0.00       4.00
                           -0.00      -0.00       0.00      69.92      -0.00       0.00       0.00       0.00       3.71      -0.00

   30   2.1  1.0  0.0       0.00       0.00      -0.00      -0.00      69.29      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     -69.92      -0.00      -0.00       0.00    -119.64       3.27      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00     -69.29       0.00      -0.00      -0.00      -0.00       4.13      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -69.29       0.00      -0.00       0.00      -4.00

   32   4.1  1.0  0.0       0.00       0.00      68.65       0.00       0.00      -0.00    -120.38      -3.27      -0.00       0.00
                           38.60       0.00      -0.00      -0.00      69.29       0.00      -0.00      -0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00     120.38       0.00       0.00      -0.00      -0.02
                           -0.00       0.00      -0.00     119.64      -0.00       0.00       0.00       0.00       0.70       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00       3.27      -0.00       0.00      -0.00     -77.59
                           -0.00       0.00      -0.00      -3.27       0.00       0.00      -0.00      -0.00     -96.32       0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00       0.00      -4.13       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -3.71       0.00      -0.00      -0.00      -0.70      96.32       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00      -4.00      -0.00       0.00      -0.00       0.02      77.59       0.00      -0.00
                            0.08       0.00       0.00      -0.00       4.00       0.00      -0.00      -0.00      -0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       3.56      -0.00      -0.00      -0.00       0.00     -59.27      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       2.92       0.00      -0.00      -0.00      77.08

   38  10.1  1.0  0.0       0.00       0.00      -0.00      -2.10      -0.00      -0.00      -0.00       0.00      24.15      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       2.92      -0.00       0.00       0.00       9.71

   39  11.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.20       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.80       0.00       0.00      -0.00      -3.51      82.45      -0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       1.05      -0.00       0.00       0.00       3.57     100.27      -0.00       0.00
                         -157.20       0.00      -0.00      -0.00       1.04      -0.00       0.00      -0.00       0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.38      -0.00       0.00       0.00      -0.22      -0.00      -0.00       0.00
                          178.63      -0.00      -0.00       0.00      -0.38      -0.00      -0.00       0.00      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.38       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.38       0.00      -0.00       0.00      -0.22       0.00      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.38      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      49.10      -0.00      -0.00      -0.00      -0.38      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.55      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      27.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -47.14      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.88      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      95.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0     -56.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00     -34.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -34.72      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0    -126.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00     -10.94      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00     -10.94       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     -30.55      -0.00     -19.70      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      29.36      -0.00       0.00       0.00     -18.20       0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00      -0.00      -0.00      -8.05       0.00     -32.39      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -16.12       0.00      -0.00       0.00      33.26       0.00       0.00       0.00

    4   4.1  0.0  0.0     -30.19      17.80       0.00       0.00      -0.00      -0.00      -0.00      32.84       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    5   5.1  0.0  0.0      -0.00      -0.00       1.71      -0.00       0.00       0.00     -32.84       0.00       0.00       0.00
                            0.00       0.00      -0.00      -8.78       0.00     -32.84       0.00       0.00    -201.93      -0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          -24.78     -24.78       0.00       0.00      -0.00      -0.00      -0.00     -32.84      -0.00     100.97

    7   7.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           78.60      78.60      -0.00      -0.00       0.00      -0.00      -0.00     126.31       0.00      38.60

    8   8.1  0.0  0.0       0.00      -0.00      -0.00     -98.57       0.00     -85.29       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      88.85      -0.00      -0.00       0.00     -59.82      -0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00      -0.00       5.44      -0.00       0.00      -0.00    -126.31      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -27.84      -0.00    -126.31       0.00      -0.00      77.21      -0.00

   10  10.1  0.0  0.0       0.00      -0.00       0.00     -17.89      -0.00    -118.32      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -58.24       0.00      -0.00       0.00     133.02       0.00       0.00       0.00

   11  11.1  0.0  0.0      95.75     -56.46       0.00       0.00      -0.00       0.00       0.00    -126.31       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   12  12.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00     -34.72      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00     -34.72       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -4.59      -0.55      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      69.92

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       5.84      -0.00       0.53      -0.00      -0.00     -69.92       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      69.29
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -68.65      -0.00
                            0.00       0.00       5.72       0.00      -0.00      -0.00      -0.53       0.00      -0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.76       6.15      -0.00       0.00      -0.00       0.00       0.00       0.62      -0.00     119.64

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                         -177.88     -22.59       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -3.27

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00     -18.01      -0.00       0.00      -0.00      -0.00      -3.71       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.00       0.00
                           -0.00      -0.00      54.38      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   21   9.1  1.0  1.0   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.56
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   22  10.1  1.0  1.0       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.10
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -87.83       0.00      -0.00       0.00      -0.00       1.80       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00      -1.05       0.00
                            0.00      -0.00      87.83       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25734.12       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -1.45      -0.00      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25696.48       0.00       0.00       0.38       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00     -99.49       0.00      -0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25696.48       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      99.49       0.00      -0.00       0.38       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25696.48       0.00      -0.38
                           -0.00      -0.00       0.00      -0.00       1.45      -0.00       0.00       0.00      -0.00      -0.00

   29   1.1  1.0  0.0      -0.00       0.00       0.00      -1.05       0.00       0.38       0.00       0.00   10139.52       0.00
                           -0.00       0.00      -1.80       0.00       0.00       0.00      -0.38       0.00       0.00       0.00

   30   2.1  1.0  0.0      -3.56       2.10       0.00       0.00       0.00       0.00      -0.00      -0.38       0.00   10139.52
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.20      -0.00      -0.00      -0.00       0.38       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.04       0.00       0.38       0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -2.92      -2.92       0.00       0.00      -0.00       0.00      -0.00       0.38      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00      -3.57      -0.00       0.22      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       3.51      -0.00       0.00       0.00       0.22       0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00      -0.00      -0.00    -100.27       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -82.45       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0      59.27     -24.15      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                          -77.08      -9.71      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      93.81      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00    -118.96       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0      -0.00      -0.00     165.21      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     141.43      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0     -93.81    -165.21       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          118.96    -141.43      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       1.02       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       1.02      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -1.02       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     -70.35      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      70.35       0.00       0.00
                            0.00       0.00       0.00       0.00      -1.02       0.00      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00     -70.35      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      70.35      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      69.92

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -69.92      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      68.65       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     119.64

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.27

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.71       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.56
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.80       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.05      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.38      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.38       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.62      -0.00       0.00       0.00      -0.00       0.00       7.51     -52.03      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          201.88      -0.00      -0.00      -0.00      -0.00      -0.00      38.71       6.13      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -100.97       0.00      -0.00       0.00       0.02      -0.00      -0.00      -0.00     -49.57

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.07     -39.19       0.00       0.00      -0.00      -0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -10.03       0.00      -0.00      -0.00     -48.54      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      31.81      -0.00      -0.00      -0.00     153.95       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.78       0.00       0.00       0.00      -0.00       0.00      33.32    -162.98      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.41    -124.28      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -76.82      -0.00       0.00       0.00       0.00      -0.00     120.54      32.25      -0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -38.60       0.00       0.00       0.00      -0.08       0.00       0.00       0.00     157.20

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00      68.65      -0.00       0.00      -0.00      -4.00       0.00      -0.00      -0.00       1.05
                           -0.00       0.00       0.00       0.00       3.71      -0.00      -0.00       0.00      -1.80       0.00

   14   2.1  1.0  1.0     -69.29       0.00      -0.00      -0.00       0.00      -0.00       3.56      -2.10      -0.00      -0.00
                           -0.00       0.00    -119.64       3.27      -0.00       0.00       0.00       0.00      -0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00      -4.13       0.00      -0.00      -0.00      -0.20       0.00
                            0.00     -69.29       0.00      -0.00       0.00      -4.00      -0.00      -0.00      -0.00      -1.04

   16   4.1  1.0  1.0      -0.00      -0.00     120.38       3.27       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           69.29      -0.00      -0.00      -0.00       0.00      -0.00      -2.92      -2.92       0.00       0.00

   17   5.1  1.0  1.0      -0.00    -120.38       0.00      -0.00       0.00       0.02      -0.00      -0.00      -0.00       3.57
                           -0.00       0.00      -0.00       0.00       0.70       0.00      -0.00       0.00       3.51      -0.00

   18   6.1  1.0  1.0      -0.00      -3.27       0.00       0.00       0.00      77.59       0.00       0.00       0.00     100.27
                            0.00       0.00      -0.00       0.00     -96.32       0.00       0.00      -0.00     -82.45       0.00

   19   7.1  1.0  1.0       4.13      -0.00      -0.00      -0.00       0.00       0.00     -59.27      24.15       0.00      -0.00
                           -0.00      -0.00      -0.70      96.32      -0.00       0.00       0.00      -0.00       0.00      -0.00

   20   8.1  1.0  1.0      -0.00       0.00      -0.02     -77.59      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            4.00       0.00      -0.00      -0.00      -0.00      -0.00     -77.08      -9.71      -0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00      -0.00      59.27       0.00       0.00      -0.00     -93.81       0.00
                            0.00       2.92       0.00      -0.00      -0.00      77.08      -0.00      -0.00       0.00    -118.96

   22  10.1  1.0  1.0       0.00       0.00       0.00      -0.00     -24.15       0.00       0.00      -0.00    -165.21       0.00
                            0.00       2.92      -0.00       0.00       0.00       9.71       0.00      -0.00      -0.00     141.43

   23  11.1  1.0  1.0       0.20      -0.00       0.00      -0.00      -0.00      -0.00      93.81     165.21       0.00      -0.00
                            0.00      -0.00      -3.51      82.45      -0.00       0.00      -0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00      -0.00      -3.57    -100.27       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            1.04      -0.00       0.00      -0.00       0.00      -0.00     118.96    -141.43      -0.00       0.00

   25  13.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   26  14.1  1.0  1.0      -0.00      -0.00       0.22       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.38      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.38      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.22       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.38      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10139.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10139.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10139.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22953.28       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22953.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00     -68.65       0.00      -0.00       0.00       4.00      -0.00       0.00       0.00      -1.05
                           -0.00       0.00       0.00       0.00       3.71      -0.00      -0.00       0.00      -1.80       0.00

   46   2.1  1.0 -1.0      69.29      -0.00       0.00       0.00      -0.00       0.00      -3.56       2.10       0.00       0.00
                           -0.00       0.00    -119.64       3.27      -0.00       0.00       0.00       0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       4.13      -0.00       0.00       0.00       0.20      -0.00
                           -0.00     -69.29       0.00      -0.00       0.00      -4.00      -0.00      -0.00      -0.00      -1.04

   48   4.1  1.0 -1.0       0.00      -0.00    -120.38      -3.27      -0.00       0.00       0.00       0.00      -0.00      -0.00
                           69.29       0.00      -0.00      -0.00       0.00      -0.00      -2.92      -2.92       0.00       0.00

   49   5.1  1.0 -1.0       0.00     120.38       0.00       0.00      -0.00      -0.02       0.00       0.00       0.00      -3.57
                           -0.00       0.00       0.00       0.00       0.70       0.00      -0.00       0.00       3.51      -0.00

   50   6.1  1.0 -1.0       0.00       3.27      -0.00       0.00      -0.00     -77.59      -0.00      -0.00      -0.00    -100.27
                            0.00       0.00      -0.00      -0.00     -96.32       0.00       0.00      -0.00     -82.45       0.00

   51   7.1  1.0 -1.0      -4.13       0.00       0.00       0.00       0.00      -0.00      59.27     -24.15      -0.00       0.00
                           -0.00      -0.00      -0.70      96.32       0.00       0.00       0.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -0.00       0.02      77.59       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            4.00       0.00      -0.00      -0.00      -0.00       0.00     -77.08      -9.71      -0.00       0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     -59.27      -0.00       0.00       0.00      93.81      -0.00
                            0.00       2.92       0.00      -0.00      -0.00      77.08       0.00      -0.00       0.00    -118.96

   54  10.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      24.15      -0.00      -0.00      -0.00     165.21      -0.00
                            0.00       2.92      -0.00       0.00       0.00       9.71       0.00       0.00      -0.00     141.43

   55  11.1  1.0 -1.0      -0.20       0.00      -0.00       0.00       0.00       0.00     -93.81    -165.21       0.00       0.00
                            0.00      -0.00      -3.51      82.45      -0.00       0.00      -0.00       0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       3.57     100.27      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            1.04      -0.00       0.00      -0.00       0.00      -0.00     118.96    -141.43      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.22      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.38      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   59  15.1  1.0 -1.0      -0.38       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.22       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.38      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00     -15.47       0.00       0.00      -0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     122.00      -0.00       0.00
                           -0.00      -0.00       0.00      53.61       0.00    -125.26       0.00      -0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -74.21       0.00       0.00
                           -0.00       0.00      -0.00      -1.23       0.00     -68.55       0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      71.40       0.00       0.00      -0.00
                           -0.00      46.44      -0.00       0.00      72.05       0.00       0.00      -0.00     123.28     -27.71

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -71.40       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      71.40       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      70.74       0.00       0.00      -0.00    -124.04     -27.71
                            0.00       0.00     -46.44       0.00       0.00      -0.00     -71.40       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      27.05       0.00       0.00      -0.00     -47.42      87.88
                           -0.00       0.00     178.63       0.00       0.00      -0.00     -27.30      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -44.29       0.00      -0.00
                           -0.00      -0.00      -0.00     205.22      -0.00      49.79       0.00      -0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      27.30      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -27.30      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      31.92      -0.00      -0.00
                            0.00      -0.00       0.00     -20.79       0.00      22.39      -0.00       0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      27.30      -0.00      -0.00      -0.00
                            0.00    -178.63      -0.00       0.00      27.55       0.00       0.00      -0.00      47.14      87.88

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00     -49.10       0.00      -0.00      -0.00      -0.00       0.00       0.00

   13   1.1  1.0  1.0      -0.00      -0.38      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00       0.38       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00      -0.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.38       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00      -1.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       1.02       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -70.35       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00      -0.00       0.00     -70.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00      70.35      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      70.35      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      68.65      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      69.92      -0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -69.29       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00     -69.92       0.00      -0.00       0.00    -119.64       3.27

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      69.29       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.29       0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00     -68.65      -0.00      -0.00      -0.00     120.38       3.27
                            0.00       0.00       0.00       0.00      -0.00      -0.00      69.29      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -120.38       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     119.64      -0.00       0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -3.27       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -3.27       0.00       0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       4.13      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -3.71       0.00      -0.00      -0.00      -0.70      96.32

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       4.00       0.00      -0.00       0.00      -0.02     -77.59
                            0.00       0.00       0.00       0.00       0.00      -0.00       4.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -3.56       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.92       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.10       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       2.92      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.20      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       1.80       0.00       0.00      -0.00      -3.51      82.45

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -1.05       0.00      -0.00      -0.00      -3.57    -100.27
                            0.00       0.00       0.00       0.00      -0.00      -0.00       1.04      -0.00       0.00      -0.00

   41  13.1  1.0  0.0   25734.12       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00   25696.48       0.00       0.00       0.38       0.00      -0.00      -0.00       0.22       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.38      -0.00      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00   25696.48       0.00       0.00      -0.00       0.38      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.38       0.00      -0.00       0.00      -0.22       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   25696.48       0.00      -0.38       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.38      -0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.38       0.00       0.00   10139.52       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.38       0.00       0.00       0.00     195.97       0.00      -0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00      -0.00      -0.38       0.00   10139.52       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     -97.99       0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00       0.38       0.00       0.00       0.00   10139.52       0.00       0.00       0.00
                            0.00       0.38       0.00       0.00    -195.97      -0.00       0.00       0.00       1.04      -4.62

   48   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   10139.52       0.00       0.00
                           -0.00       0.00      -0.00       0.38      -0.00      97.99      -0.00       0.00       0.00       0.00

   49   5.1  1.0 -1.0      -0.00       0.22      -0.00      -0.00       0.00       0.00       0.00       0.00   10139.52       0.00
                            0.00       0.00       0.22       0.00       0.00      -0.00      -1.04      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   22953.28
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       4.62      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       1.18       0.00       0.00

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -4.59      -0.00       0.00       0.00      -0.76    -177.88

   54  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.55       0.00      -0.00       0.00       6.15     -22.59

   55  11.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       5.72      -0.00       0.00

   56  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       5.84      -0.00       0.00       0.00       0.00

   57  13.1  1.0 -1.0      -0.00       1.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.02      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -1.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -70.35      -0.00       0.53       0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0      -0.00       0.00       0.00      70.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.02       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.53       0.00       0.00

   60  16.1  1.0 -1.0       0.00      -0.00     -70.35      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      70.35      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.62      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -10.94      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      10.94      -0.00

    2   2.1  0.0  0.0      -0.00       0.79       0.00       0.00       0.00     -30.55      -0.00     -19.70      -0.00      -0.00
                           -6.86      -0.00       0.00      -0.00     -29.36       0.00      -0.00      -0.00      18.20      -0.00

    3   3.1  0.0  0.0       0.00      33.93       0.00      -0.00      -0.00      -8.05       0.00     -32.39      -0.00      -0.00
                          -31.31       0.00      -0.00      -0.00      16.12      -0.00       0.00      -0.00     -33.26      -0.00

    4   4.1  0.0  0.0       0.00       0.00     -30.19      17.80       0.00       0.00      -0.00      -0.00      -0.00      32.84
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0      35.01      -0.00      -0.00      -0.00       1.71      -0.00       0.00       0.00     -32.84       0.00
                            0.00      33.93      -0.00      -0.00       0.00       8.78      -0.00      32.84      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      24.78      24.78      -0.00      -0.00       0.00       0.00       0.00      32.84

    7   7.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00     -78.60     -78.60       0.00       0.00      -0.00       0.00       0.00    -126.31

    8   8.1  0.0  0.0      -0.00      10.90       0.00      -0.00      -0.00     -98.57       0.00     -85.29       0.00      -0.00
                          -29.44       0.00       0.00       0.00     -88.85       0.00       0.00      -0.00      59.82       0.00

    9   9.1  0.0  0.0     111.02       0.00       0.00      -0.00       5.44      -0.00       0.00      -0.00    -126.31      -0.00
                            0.00     107.61       0.00       0.00       0.00      27.84       0.00     126.31      -0.00       0.00

   10  10.1  0.0  0.0      -0.00     107.09       0.00      -0.00       0.00     -17.89      -0.00    -118.32      -0.00      -0.00
                          -97.31      -0.00      -0.00      -0.00      58.24      -0.00       0.00      -0.00    -133.02      -0.00

   11  11.1  0.0  0.0      -0.00      -0.00      95.75     -56.46       0.00       0.00      -0.00       0.00       0.00    -126.31
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     -34.72      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      34.72      -0.00

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

   29   1.1  1.0  0.0      -0.00      -4.00       0.00      -0.00      -0.00       1.05      -0.00      -0.38      -0.00      -0.00
                            3.71      -0.00      -0.00       0.00      -1.80       0.00       0.00       0.00      -0.38       0.00

   30   2.1  1.0  0.0       0.00      -0.00       3.56      -2.10      -0.00      -0.00      -0.00      -0.00       0.00       0.38
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0      -4.13       0.00      -0.00      -0.00      -0.20       0.00       0.00       0.00      -0.38      -0.00
                            0.00      -4.00      -0.00      -0.00      -0.00      -1.04       0.00       0.38       0.00       0.00

   32   4.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -2.92      -2.92       0.00       0.00      -0.00       0.00      -0.00       0.38

   33   5.1  1.0  0.0       0.00       0.02      -0.00      -0.00      -0.00       3.57       0.00      -0.22       0.00       0.00
                            0.70       0.00      -0.00       0.00       3.51      -0.00       0.00       0.00       0.22       0.00

   34   6.1  1.0  0.0       0.00      77.59       0.00       0.00       0.00     100.27      -0.00      -0.00      -0.00       0.00
                          -96.32       0.00       0.00      -0.00     -82.45       0.00       0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00     -59.27      24.15       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00     -77.08      -9.71      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   37   9.1  1.0  0.0      59.27       0.00       0.00      -0.00     -93.81       0.00       0.00       0.00      -0.00       0.00
                           -0.00      77.08      -0.00      -0.00       0.00    -118.96       0.00       0.00      -0.00      -0.00

   38  10.1  1.0  0.0     -24.15       0.00       0.00      -0.00    -165.21       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       9.71       0.00      -0.00      -0.00     141.43      -0.00      -0.00      -0.00       0.00

   39  11.1  1.0  0.0      -0.00      -0.00      93.81     165.21       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   40  12.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00     118.96    -141.43      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.02      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       1.02      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       1.02       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     -70.35

   43  15.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -70.35
                           -0.00       0.00       0.00       0.00       0.00       0.00      -1.02       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      70.35      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      70.35      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       4.59       0.55       0.00       0.00      -0.00       0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -5.84       0.00      -0.53       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.18       0.00      -0.00      -0.00      -5.72      -0.00       0.00       0.00       0.53      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.76      -6.15       0.00      -0.00       0.00      -0.00      -0.00      -0.62

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     177.88      22.59      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -263.41      -0.00      -0.00      -0.00      18.01       0.00      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          263.41       0.00       0.00       0.00     -54.38       0.00       0.00       0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00       0.00
                            0.00      54.38       0.00       0.00       0.00      87.83      -0.00       0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   22953.28       0.00       0.00       0.00       0.00
                          -18.01      -0.00      -0.00       0.00     -87.83      -0.00       0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25734.12       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       1.45

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25696.48       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      99.49      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25696.48       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -99.49      -0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25696.48
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -1.45       0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.35273035 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12554.953       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12554.979       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12554.991       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12554.991       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12554.991       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25445.422       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25445.407
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000     100.040      38.249       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000    -100.968       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000     100.968       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000     172.528    -104.943       0.000       0.000      -0.000      -0.000     -62.633
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000    -175.415     -67.068       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000     -39.186     124.275      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000      49.508       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       1.119      47.986       0.000      -0.000       0.000      -0.000      15.410
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000     -42.698      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000      25.176      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000      -0.000       0.000       2.425      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000     -43.198     -11.383       0.000      -0.000      -0.000       0.000    -139.398
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            -15.471     -27.866     -45.812      -0.000       0.000      -0.000      -0.000    -120.614
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000     -46.438      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000      46.437       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     201.933       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000    -100.968     -38.604       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.620    -201.884       0.000      -0.000      -0.000      -0.000       7.783

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     100.968      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -1.070      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      39.187       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      10.029     -31.806       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.024      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -7.511     -38.713       0.000       0.000       0.000       0.000     -33.325

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      52.028      -6.129       0.000       0.000       0.000       0.000     162.984

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      48.542    -153.945       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      49.567      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -46.438       0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      46.438    -178.631       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.470     -53.607       1.227      -0.000      -0.000      -0.000      -0.000    -205.215

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     101.894      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -177.148     -96.941       0.000      -0.000      -0.000      -0.000      70.416

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000    -100.968     -38.604       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     100.968       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     174.344       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -39.186       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -9.701     -44.283      -0.000       0.000      -0.000      -0.000     -41.628

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      47.987       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      35.050    -111.158       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      35.049    -111.152       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -41.528      22.802       0.000       0.000      -0.000       0.000    -125.659

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      12.415      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      46.438       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.471      25.741     -47.039       0.000      -0.000       0.000       0.000      84.601

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      46.437    -178.631       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     172.528
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000    -104.943
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     100.968       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      -0.000    -100.968       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000     100.040       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      38.249       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000     -62.633
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25445.424       0.000       0.000       0.000      -0.000      38.605      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25445.417       0.000       0.000       0.000      -0.000       0.000      45.148
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25445.424       0.000      -0.000      -0.000      38.605      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26960.369       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000   10139.519       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             38.605      -0.000      -0.000       0.000       0.000   10139.519       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      38.605       0.000       0.000       0.000   10139.519       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      45.148      -0.000       0.000       0.000       0.000       0.000   10139.519
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            157.008      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     151.443      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000     135.412      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000     -79.841      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              7.690       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000     -25.303       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000    -167.325       0.000     -49.101       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+           -178.631      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000    -178.631       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              -77.208      -0.000      -0.000      -0.000       0.000      98.886      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000     -98.886       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      76.816       0.000       0.000       0.000       0.000       0.000     -97.988

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000      38.605       0.000      -0.000      -0.000      97.988       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.409      -0.000      -0.000       0.000      -0.000     169.198      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              124.275      -0.000      -0.000       0.000      -0.000      -4.619       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000      -5.250       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.076       0.000       0.000      -0.000       5.657       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000    -120.539      -0.000       0.000       0.000      -0.000       0.000       4.132

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000     -32.249      -0.000      -0.000      -0.000      -0.000       0.000       4.131

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       2.549       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000    -157.197       0.000      -0.000      -0.000       1.464      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     178.631      -0.000      -0.000       0.000      -0.535      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.533       0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      20.792      -0.000      49.101      -0.000      -0.000      -0.000      -0.535

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      38.959       0.000      -0.000      -0.000    -195.973      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      31.668       0.000      -0.000       0.000      -0.000      -0.000      97.988

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     195.973       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -38.605       0.000      -0.000      -0.000       0.000     -97.988       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      66.659       0.000      -0.000       0.000       1.039       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     124.275       0.000       0.000      -0.000      -4.619       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -137.611       0.000       0.000       0.000      -0.000       0.000      -1.182

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              152.186      -0.000      -0.000       0.000       0.000       0.003       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       4.587       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.549      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      82.369      -0.000      -0.000       0.000      -0.000       0.000      -5.722

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               39.373      -0.000      -0.000       0.000       0.000      -5.843       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              178.631      -0.000       0.000       0.000       0.000      -0.535      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -188.117       0.000      49.101      -0.000       0.000      -0.000       0.535

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.003       0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000       0.000      -0.000       1.119       0.000       0.000       0.000     -43.198
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000      47.986       0.000      -0.000      -0.000     -11.383
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000       0.000       0.000     -42.698      25.176       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      49.508      -0.000      -0.000      -0.000       2.425      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -175.415     -39.186       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>             -67.068     124.275       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000      -0.000      -0.000      15.410       0.000      -0.000      -0.000    -139.398
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000      -0.000     157.008       0.000       0.000      -0.000       7.690      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000      -0.000      -0.000     151.443       0.000      -0.000       0.000     -25.303
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000      -0.000      -0.000      -0.000     135.412     -79.841       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10139.520       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   22953.282       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   22953.281       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   22953.282       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   22953.282       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   22953.282       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22953.283       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22953.283
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       5.250      -0.000      -0.000       0.000      -2.549       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -169.198       4.619      -0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -5.657      -0.000      -0.000      -0.000      -1.464

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -4.132      -4.131       0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.996       0.000      -0.000       0.000       4.969      -0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000    -136.215       0.000       0.000      -0.000    -116.608       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.996     136.215       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -109.011     -13.735      -0.000       0.000

    9    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000     109.011       0.000      -0.000       0.000    -168.240

   10    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      13.735       0.000       0.000      -0.000     200.008

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -4.969     116.608      -0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000     168.240    -200.008      -0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.001       0.001       0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.312       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -4.587      -0.549      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.003      -0.000       0.000       0.000       5.843

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.039       4.619      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.182      -0.000       0.000       0.000       5.722       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.756       6.151      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    -177.881     -22.589       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     263.410       0.000       0.000       0.000     -18.012

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -263.410      -0.000      -0.000      -0.000      54.378      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.756     177.881      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.151      22.589      -0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -54.378      -0.000      -0.000      -0.000     -87.827

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      18.012       0.000       0.000      -0.000      87.827       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.618       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000     -15.471      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>              -0.000     -27.866      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       4.620      -0.000

    3    1  |0 0>               0.000     -45.812      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     201.884      -0.000

    4    1  |0 0>              -0.000      -0.000      -0.000      46.437       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -100.968

    5    1  |0 0>               0.000       0.000     -46.438       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -201.933      -0.000       0.000       0.000

    6    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     100.968       0.000       0.000

    7    1  |0 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      38.604       0.000      -0.000

    8    1  |0 0>               0.000    -120.614       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -7.783       0.000

    9    1  |0 0>               0.000      -0.000    -178.631      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      77.208      -0.000      -0.000       0.000

   10    1  |0 0>              -0.000    -167.325      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -76.816      -0.000

   11    1  |0 0>              -0.000       0.000       0.000    -178.631       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -38.605

   12    1  |0 0>               0.000     -49.101      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      98.886      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     -98.886       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -97.988

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      97.988       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     169.198      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -4.619       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -5.250       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       5.657       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       4.132

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       4.131

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.549       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       1.464      -0.000

   13    1  |1 1>+          25734.120       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>+              0.000   25696.476       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.535      -0.000

   15    1  |1 1>+              0.000       0.000   25696.476       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.533       0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000   25696.484       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.535

    1    1  |1 0>               0.000       0.000       0.000       0.000   10139.519       0.000       0.000       0.000
                                0.000       0.000      -0.533       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000   10139.519       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000   10139.519       0.000
                                0.000       0.535       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000   10139.519
                               -0.000       0.000      -0.000       0.535      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.312       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       1.448      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -99.489      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -1.448       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      99.489      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      97.087
                                0.000      -0.000       0.000       0.003      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000     -97.988       0.000
                               -0.000       0.535      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      97.988       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000     -97.087      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.535       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -170.237
                               -0.000       0.000       0.000       0.618       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -4.619
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       5.836      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       5.658       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -5.033       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       2.967       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.286      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -1.485       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -1.448      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.537       0.000      -0.000      -0.000
                                0.000      -0.000     -99.490       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.535      -0.000
                                0.000      99.490       0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.535       0.000       0.000
                                1.448      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       7.511     -52.028      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      38.713       6.129      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.024      -0.000      -0.000      -0.000     -49.567

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.070     -39.187       0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -10.029       0.000      -0.000      -0.000     -48.542      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      31.806      -0.000      -0.000      -0.000     153.945       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      33.325    -162.984      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.409    -124.275      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     120.539      32.249      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.076       0.000       0.000       0.000     157.197

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       5.250      -0.000      -0.000       0.000      -2.549       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -169.198       4.619      -0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -5.657      -0.000      -0.000      -0.000      -1.464

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -4.132      -4.131       0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.996       0.000      -0.000       0.000       4.969      -0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000    -136.215       0.000       0.000      -0.000    -116.608       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.996     136.215       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -109.011     -13.735      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000     109.011       0.000      -0.000       0.000    -168.240

   10    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      13.735       0.000       0.000      -0.000     200.008

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -4.969     116.608      -0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000     168.240    -200.008      -0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.001       0.001       0.000      -0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.312       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10139.520       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   22953.282       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   22953.281       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   22953.282       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   22953.282       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22953.282       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22953.283       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22953.283
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000       0.000      -0.000      -5.658       0.000      -0.000      -0.000       1.485
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000      -0.000       0.000      -0.000       5.033      -2.967      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000      -5.836       0.000      -0.000      -0.000      -0.286       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-            170.237       4.619       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000      -0.000       0.000       0.028      -0.000      -0.000      -0.000       5.052
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000     109.736       0.000       0.000       0.000     141.810
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-             -0.000      -0.000       0.000       0.000     -83.821      34.146       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-             -0.028    -109.736      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000      -0.000      83.821       0.000       0.000      -0.000    -132.665       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000      -0.000     -34.146       0.000       0.000       0.000    -233.640       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000      -0.000     132.665     233.640       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-             -5.052    -141.810       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>-             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.306       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000       0.001       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 1>-             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -15.470      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      53.607      -0.000     177.148      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -1.227      -0.000      96.941      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      46.438      -0.000       0.000    -101.894      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000    -100.968

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -46.438       0.000      -0.000       0.000     100.968      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     178.631       0.000      -0.000       0.000      38.604       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     205.215       0.000     -70.416      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      38.605

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -20.792      -0.000     -31.668       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -178.631      -0.000       0.000     -38.959      -0.000      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -49.101      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.533       0.000      -0.000      -0.000    -195.973      -0.000

    2    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      97.988

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.535       0.000       0.000     195.973       0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.535       0.000     -97.988       0.000      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.312       0.000      -0.000       0.000       1.039       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -4.619       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -1.182

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.003       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001      -0.000      -0.000       4.587       0.000      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -0.000       0.000       0.549      -0.000       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -5.722

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -5.843       0.000      -0.000

   13    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       1.448      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -99.489       0.000      -0.535      -0.000       0.000

   15    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -1.448       0.000       0.000       0.000      -0.000       0.000      -0.000       0.535

   16    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      99.489      -0.000       0.000      -0.003       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -97.087
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      97.988      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -97.988       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      97.087       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     170.237
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       4.619
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -5.836       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -5.658      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       5.033      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -2.967      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.286       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       1.485      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 0>           25734.120       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000   25696.476       0.000       0.000      -0.537      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   25696.476       0.000      -0.000       0.000      -0.535       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   25696.484      -0.000       0.535      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.000      -0.537      -0.000      -0.000   10139.519       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000      -0.000       0.000       0.535       0.000   10139.519       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000      -0.535      -0.000       0.000       0.000   10139.519       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000   10139.519
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -0.306       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000      -0.001      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -1.448      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              1.448       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000      -0.000       0.000     -99.489       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000       0.000      99.489       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       9.701       0.000      -0.000       0.000      41.528      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      44.283      -0.000       0.000       0.000     -22.802       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -174.344      39.186       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -47.987       0.000       0.000      -0.000     -12.415

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -35.050     -35.049       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     111.158     111.152      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      41.628      -0.000      -0.000      -0.000     125.659      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -152.186      -0.000      -0.000      -0.000     -39.373

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     137.611       0.000       0.000       0.000     -82.369       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -66.659    -124.275      -0.000       0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -4.587      -0.549      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.003      -0.000       0.000       0.000       5.843

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.039       4.619      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.182      -0.000       0.000       0.000       5.722       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.756       6.151      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    -177.881     -22.589       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     263.410       0.000       0.000       0.000     -18.012

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -263.410      -0.000      -0.000      -0.000      54.378      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.756     177.881      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.151      22.589      -0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -54.378      -0.000      -0.000      -0.000     -87.827

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      18.012       0.000       0.000      -0.000      87.827       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.618       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       5.658      -0.000       0.000       0.000      -1.485
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -5.033       2.967       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       5.836      -0.000       0.000       0.000       0.286      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>            -170.237      -4.619      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.028       0.000       0.000       0.000      -5.052
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000    -109.736      -0.000      -0.000      -0.000    -141.810
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000      83.821     -34.146      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.028     109.736       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000       0.000     -83.821      -0.000       0.000       0.000     132.665      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>              -0.000       0.000      34.146      -0.000      -0.000       0.000     233.640      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000    -132.665    -233.640       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>               5.052     141.810      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 0>              -0.306      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.001      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10139.520       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   22953.282       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   22953.281       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   22953.282       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   22953.282       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22953.282       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22953.283       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22953.283
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
                                0.000      -0.000     -15.471       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000     -25.741       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      47.039       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -46.438       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -46.437

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     178.631

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     -84.601      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -178.631       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     188.117       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     -49.101       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.003

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.535      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.535       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.618

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -1.448

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000     -99.490       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      99.490       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                                1.448      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.537       0.000       0.000
                                0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.535
                               -0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.535       0.000
                                0.000      -0.000      -0.000      -0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.306      -0.000      -0.000
                                0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000

   10    1  |1 0>              -0.000       0.000       0.001       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       1.448       0.000      -0.000
                               -0.000      -0.000       0.000       0.000

   14    1  |1 0>              -1.448       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.000       0.000      99.489
                                0.000       0.000      -0.000       0.000

   16    1  |1 0>               0.000      -0.000     -99.489       0.000
                                0.000       0.000       0.000       0.000

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

   13    1  |1 1>-          25734.120       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25696.476       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25696.476       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   25696.484
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.35273047    -0.00000013       -0.03      0.00000000        0.00      0.0000
    2   -25.30787070     0.04485965     9845.56      0.04485978     9845.58      1.2207
    3   -25.30787070     0.04485965     9845.56      0.04485978     9845.58      1.2207
    4   -25.30787069     0.04485965     9845.56      0.04485978     9845.58      1.2207
    5   -25.30709022     0.04564013    10016.85      0.04564026    10016.88      1.2419
    6   -25.30709022     0.04564013    10016.85      0.04564026    10016.88      1.2419
    7   -25.30709021     0.04564013    10016.85      0.04564026    10016.88      1.2419
    8   -25.30709021     0.04564013    10016.85      0.04564026    10016.88      1.2419
    9   -25.30709021     0.04564013    10016.85      0.04564026    10016.88      1.2419
   10   -25.30563840     0.04709195    10335.49      0.04709208    10335.52      1.2814
   11   -25.30563840     0.04709195    10335.49      0.04709208    10335.52      1.2814
   12   -25.30563840     0.04709195    10335.49      0.04709208    10335.52      1.2814
   13   -25.30563839     0.04709195    10335.49      0.04709208    10335.52      1.2814
   14   -25.30563839     0.04709195    10335.49      0.04709208    10335.52      1.2814
   15   -25.30563839     0.04709195    10335.49      0.04709208    10335.52      1.2814
   16   -25.30563839     0.04709195    10335.49      0.04709208    10335.52      1.2814
   17   -25.29542043     0.05730992    12578.07      0.05731004    12578.10      1.5595
   18   -25.29542032     0.05731003    12578.10      0.05731016    12578.13      1.5595
   19   -25.29542026     0.05731008    12578.11      0.05731021    12578.14      1.5595
   20   -25.29542026     0.05731008    12578.11      0.05731021    12578.14      1.5595
   21   -25.29542026     0.05731009    12578.11      0.05731022    12578.14      1.5595
   22   -25.24988200     0.10284835    22572.60      0.10284848    22572.63      2.7986
   23   -25.24988200     0.10284835    22572.60      0.10284848    22572.63      2.7986
   24   -25.24988199     0.10284835    22572.60      0.10284848    22572.63      2.7986
   25   -25.24988199     0.10284836    22572.60      0.10284848    22572.63      2.7986
   26   -25.24988199     0.10284836    22572.60      0.10284848    22572.63      2.7986
   27   -25.24855597     0.10417438    22863.63      0.10417451    22863.66      2.8347
   28   -25.24855597     0.10417438    22863.63      0.10417451    22863.66      2.8347
   29   -25.24855596     0.10417438    22863.63      0.10417451    22863.66      2.8347
   30   -25.24855596     0.10417438    22863.63      0.10417451    22863.66      2.8347
   31   -25.24855596     0.10417438    22863.63      0.10417451    22863.66      2.8347
   32   -25.24855596     0.10417438    22863.63      0.10417451    22863.66      2.8347
   33   -25.24855596     0.10417439    22863.63      0.10417451    22863.66      2.8347
   34   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   35   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   36   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   37   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   38   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   39   -25.24692201     0.10580834    23222.25      0.10580847    23222.27      2.8792
   40   -25.24692200     0.10580834    23222.25      0.10580847    23222.27      2.8792
   41   -25.24692200     0.10580834    23222.25      0.10580847    23222.27      2.8792
   42   -25.24692200     0.10580834    23222.25      0.10580847    23222.28      2.8792
   43   -25.23730854     0.11542181    25332.16      0.11542194    25332.19      3.1408
   44   -25.23730851     0.11542184    25332.17      0.11542197    25332.19      3.1408
   45   -25.23730848     0.11542186    25332.17      0.11542199    25332.20      3.1408
   46   -25.23730848     0.11542187    25332.17      0.11542199    25332.20      3.1408
   47   -25.23730848     0.11542187    25332.17      0.11542200    25332.20      3.1408
   48   -25.23657751     0.11615284    25492.60      0.11615296    25492.63      3.1607
   49   -25.23610203     0.11662831    25596.96      0.11662844    25596.98      3.1736
   50   -25.23610201     0.11662833    25596.96      0.11662846    25596.99      3.1736
   51   -25.23610201     0.11662833    25596.96      0.11662846    25596.99      3.1736
   52   -25.23547693     0.11725342    25734.15      0.11725355    25734.18      3.1906
   53   -25.23547693     0.11725342    25734.15      0.11725355    25734.18      3.1906
   54   -25.23547693     0.11725342    25734.15      0.11725355    25734.18      3.1906
   55   -25.23457164     0.11815870    25932.84      0.11815883    25932.87      3.2153
   56   -25.23457164     0.11815870    25932.84      0.11815883    25932.87      3.2153
   57   -25.23457164     0.11815871    25932.84      0.11815884    25932.87      3.2153
   58   -25.23457163     0.11815872    25932.84      0.11815884    25932.87      3.2153
   59   -25.23457163     0.11815872    25932.84      0.11815885    25932.87      3.2153
   60   -25.22986741     0.12286293    26965.30      0.12286306    26965.33      3.3433

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999945  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.09633725  0.01119441  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01119424  0.09633579  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000020 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.09698323
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.09698322 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00006031  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00598373 -0.00117423 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00609785  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000379 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00117423 -0.00598373 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00609785
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000332  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000021  0.54939186 -0.00000003  0.00000001 -0.00000001  0.00000000  0.00000009
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000004 -0.00000003 -0.54772261 -0.00000001  0.00000002 -0.40631545 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000 -0.00025266  0.00000000

   3    1  |1 1>+         -0.00000000  0.54772323  0.00000021 -0.00000004 -0.00000000  0.00000001 -0.00000002  0.40631507
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000002  0.00000000 -0.00000000 -0.00000000  0.73838456  0.33935088  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000012  0.31331897 -0.00000001 -0.00000001  0.00000001 -0.00000001 -0.00000016
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00007143 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000640  0.00006894  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00006162
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003635
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000348 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001  0.00000000 -0.00000000  0.00000000  0.00006000 -0.00002349 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00060676  0.00000000  0.00000000 -0.00000000 -0.00008441  0.00018368  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00003100 -0.00000000  0.00000000 -0.00017506 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000

  16    1  |1 1>+          0.00000000  0.00003101  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00017505
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00050531  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00335223  0.00000002 -0.00000004  0.81262141  0.00000004

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000021  0.54772170 -0.00000003 -0.00000001  0.00000001 -0.00000000 -0.00000009

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.07530549  0.80913597  0.00000004 -0.00000002

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.54772174 -0.00000021  0.00000004 -0.00000000  0.00000001 -0.00000002  0.40631741

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000030  0.00000000 -0.00000000  0.00000268 -0.00000000
                           0.00000000  0.00000004  0.00000003  0.63244651 -0.00000000  0.00000000 -0.00430719 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00005654 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000431 -0.00005673 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00007553 -0.00000012  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007152

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00003101  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00017507

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00003100  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00060675  0.00000000 -0.00000000 -0.00000000 -0.00020128  0.00001873  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.54603960  0.00000021 -0.00000004 -0.00000000  0.00000001 -0.00000002  0.41003985

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.66307909  0.46978378  0.00000004 -0.00000002

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000021 -0.54772324  0.00000003 -0.00000001  0.00000001 -0.00000000 -0.00000009

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000  0.00000000 -0.00025266  0.00000000
                          -0.00000000 -0.00000004 -0.00000003 -0.54772266  0.00000001 -0.00000002  0.40631546  0.00000002

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.31912522 -0.00000012  0.00000002 -0.00000000  0.00000002 -0.00000004  0.70159713

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005654

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000654 -0.00006507 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00006924 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00006329  0.00002574 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001789 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00003100  0.00000000 -0.00000000  0.00017506  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00060676  0.00000000  0.00000000  0.00000000  0.00011686  0.00016494  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00003101 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000002 -0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.09698319  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00609778  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.40257945  0.71812267  0.00000045  0.00000002  0.00000004  0.00000001  0.00000006 -0.13730584
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000001 -0.52570400 -0.00000011  0.00000301  0.50692086  0.00000016
                          -0.00000000 -0.00000000  0.00000000  0.00011111 -0.00000000 -0.00000007  0.00021316  0.00000002

   3    1  |1 1>+          0.00000009  0.00000043 -0.69403978 -0.00000005  0.00000025  0.22724874 -0.00000141  0.00000003
                          -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000

   4    1  |1 1>+          0.00000001  0.00000003  0.00000001  0.00000003  0.57735037 -0.00000060  0.00000016  0.00000033
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.70590440  0.03929344  0.00000001  0.00000007  0.00000035  0.00000004  0.00000027 -0.63026638
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001

   6    1  |1 1>+         -0.00005654 -0.00023717 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00035357
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00017472  0.00000000 -0.00000000 -0.00012510 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000005 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026056  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00027520 -0.00000000  0.00000000  0.00025120 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00006843 -0.00000000  0.00000000  0.00055644 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00043526  0.00000000 -0.00000000 -0.00046637 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000 -0.00000020 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00033672  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00012121 -0.00000000  0.00000001 -0.00002792 -0.00000000
                           0.00000001  0.00000000 -0.00000003 -0.57352463  0.00000001  0.00000021  0.06640108 -0.00000004

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001
                           0.40631740 -0.04976656 -0.00000002 -0.00000008 -0.00000041 -0.00000005 -0.00000031  0.72859884

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000003 -0.00000001 -0.00000003 -0.57734950  0.00000060 -0.00000016 -0.00000033

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000007  0.00000011 -0.00000000
                           0.00000009 -0.00000003  0.04652289 -0.00000026  0.00000076  0.72881311 -0.00000460  0.00000005

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00001831  0.00000000  0.00000011 -0.00032368 -0.00000002
                          -0.00000000 -0.00000001  0.00000003  0.08665278 -0.00000021  0.00000488  0.76972953  0.00000034

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00042327  0.00000000  0.00000000  0.00004596 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001447  0.00062688  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000035

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00063730 -0.00000000 -0.00000000 -0.00004079  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00042236  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005363  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00007004 -0.00011471 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00021677

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00001387 -0.00000000  0.00000000  0.00021240 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00017507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000001  0.00000003  0.00000000  0.00000000  0.00000001  0.00000002  0.00000000
                           0.00000009 -0.00000045  0.71707726 -0.00000008  0.00000013  0.13381015 -0.00000087 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00000003  0.00000001  0.00000003  0.57735046 -0.00000060  0.00000016  0.00000033

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.40631507  0.69302136  0.00000044 -0.00000002 -0.00000016 -0.00000001 -0.00000009  0.23033580

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00013151  0.00000000  0.00000006 -0.00016076 -0.00000001
                           0.00000000 -0.00000001  0.00000004  0.62225036 -0.00000013  0.00000263  0.38227984  0.00000023

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000009  0.00000000
                           0.00000016  0.00000003 -0.04409152  0.00000023 -0.00000066 -0.63188904  0.00000399 -0.00000004

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00023875 -0.00000000  0.00000000  0.00035251 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00032343 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00025931 -0.00000000 -0.00000000 -0.00002840  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00005057 -0.00028527 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00038104

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00005060 -0.00000041 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00047600

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00027688 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000023 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00027821 -0.00000000  0.00000000  0.00055468  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00017505 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99524092 -0.00002484  0.00000000  0.00000000  0.00000000  0.00053526 -0.00000000  0.00804695
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00002484  0.99524107 -0.00000000 -0.00000000  0.00000000  0.00804696  0.00000000 -0.00053527
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.99524114 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.99524114 -0.00000000  0.00000000 -0.00000000  0.00806477  0.00000000
                           0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.99524115 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00097015 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00096721  0.00007566  0.00000000  0.00000000  0.00000000 -0.01279534  0.00000000 -0.08792380
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00097016 -0.00000000  0.00000000  0.00000001 -0.08884893 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000049 -0.00000000

  10    1  |0 0>          -0.00007566  0.00096721 -0.00000000 -0.00000000  0.00000000 -0.08792322 -0.00000001  0.01279529
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00097016  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.03922586 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.03958995  0.00000000 -0.00000000  0.00000000 -0.00058973 -0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.03958995 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.06764856 -0.04115034  0.00000000  0.00000000 -0.00000000 -0.00054468 -0.00000000  0.00104608
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.06878049  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00394208  0.00000000 -0.00000001 -0.00000004
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00498043  0.00000000 -0.00000000 -0.00000007  0.61400154  0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000336  0.00000000

   8    1  |1 1>+         -0.00011268 -0.00482733  0.00000000  0.00000000 -0.00000000  0.59473879  0.00000007 -0.02565266
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00429534 -0.00000000  0.00000001  0.00000001 -0.00000007
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00253264  0.00000000 -0.00000000 -0.00000001  0.00000004
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00024391  0.00000000 -0.00000000 -0.00000000  0.03007346  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000

  12    1  |1 1>+          0.00434571  0.00114497  0.00000000  0.00000000  0.00000000 -0.17642209  0.00000000 -0.52519613
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00210898  0.00346705  0.00000000 -0.00000000  0.00000000 -0.00492346 -0.00000000 -0.00256352
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00351445 -0.00000000  0.00000000  0.00000000 -0.00480734 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00351443  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.07917863 -0.00000000  0.00000000 -0.00000000  0.00117939  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.03958993  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00181347 -0.07915961  0.00000000  0.00000000 -0.00000000 -0.00117829 -0.00000000  0.00005134

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.03958994 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00041968  0.00000000 -0.00000000  0.00000000 -0.00000625 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000266 -0.00000000
                           0.00000000 -0.00000000 -0.00394211  0.00000000 -0.00000000 -0.00000005  0.48599193  0.00000002

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00100890 -0.00000000  0.00000000  0.00000001

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000243 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00075566  0.00389444  0.00000000 -0.00000000  0.00000000 -0.48523842 -0.00000005 -0.06107685

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00523395  0.00061665 -0.00000000 -0.00000000 -0.00000000 -0.03301090 -0.00000003  0.64888521

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00488328 -0.00000000  0.00000002  0.00000005

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00498642  0.00000000 -0.00000001 -0.00000001  0.00000008

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00351445 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00351445 -0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00405703 -0.00009294  0.00000000  0.00000000  0.00000000 -0.00024162  0.00000000 -0.00554573

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.03995278 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.06946203 -0.03800936 -0.00000000  0.00000000 -0.00000000 -0.00063360 -0.00000000 -0.00099475

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.03958993  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.03958995 -0.00000000  0.00000000 -0.00000000  0.00058973  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.06836084 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00394208 -0.00000000  0.00000001  0.00000001 -0.00000006

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00097603  0.00445477  0.00000000 -0.00000000  0.00000000 -0.55597657 -0.00000006 -0.08359683

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000326 -0.00000000
                           0.00000000 -0.00000000 -0.00482746  0.00000000 -0.00000000 -0.00000006  0.59514249  0.00000003

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00352599 -0.00000000  0.00000001  0.00000003

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00352584 -0.00000000  0.00000001  0.00000003

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00417759 -0.00229391  0.00000000  0.00000000 -0.00000000  0.24798681  0.00000005 -0.53266544

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000084 -0.00000000
                           0.00000000 -0.00000000 -0.00124891  0.00000000 -0.00000000 -0.00000002  0.15397234  0.00000001

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                           0.00000000 -0.00000000 -0.00351445  0.00000000 -0.00000000 -0.00000000  0.00480734  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00194801  0.00355999 -0.00000000 -0.00000000  0.00000000 -0.00468186 -0.00000000  0.00298202

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00351443 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00806477  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00806477 -0.00000000 -0.00000001  0.00000004  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000004  0.08884885  0.00000000  0.00000008  0.00000012  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.08884913  0.00000004  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00058430 -0.00000000 -0.00049438 -0.00021509 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00042248
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007

   3    1  |1 1>+          0.00058973  0.00000000  0.00053763 -0.00000000  0.00000000 -0.00000000 -0.00003107 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00042575 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00102451  0.00000000  0.00007382 -0.00045979 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000021 -0.48599254 -0.00000013 -0.41908875  0.39711152  0.00000018 -0.00000001 -0.00000017
                          -0.00000000  0.00000001  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000004  0.00000003

   7    1  |1 1>+          0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000011  0.00000007  0.00000021 -0.25247088
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000001  0.00004115

   8    1  |1 1>+          0.00000001  0.00000000  0.00000000  0.00000000 -0.00000016  0.35333098 -0.00000004  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.52954438 -0.00000023  0.27363396 -0.00000009  0.00000001  0.00000004  0.42477458  0.00000035
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000003 -0.00000002

  10    1  |1 1>+          0.31222603  0.00000013 -0.10333096  0.00000003  0.00000001  0.00000008  0.75322460  0.00000062
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000006 -0.00000004

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000023 -0.00000016 -0.00000044  0.52530594
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000003 -0.00008561

  12    1  |1 1>+          0.00000007  0.00000004  0.00000000  0.00000001 -0.00000020  0.45660672 -0.00000005  0.00000014
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000007
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00480736  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00042571

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00058973 -0.00000000 -0.00008221  0.00053220  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00042576  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00058973  0.00000000  0.00010432 -0.00000000 -0.00000000 -0.00000000 -0.00052831 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000787

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000003  0.00009409
                           0.00000001 -0.00000001 -0.00000001  0.00000000  0.00000025 -0.00000017 -0.00000047  0.57732326

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000  0.00000002 -0.00000001
                          -0.00000005  0.12438148  0.00000026  0.82925537  0.18719686  0.00000007 -0.00000000 -0.00000008

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000001
                          -0.00029860 -0.00000000  0.84964725 -0.00000027  0.00000001  0.00000001  0.16762652  0.00000015

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000026  0.57275161 -0.00000006  0.00000017

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000009 -0.00000005  0.00000000  0.00000000 -0.00000003  0.07273201 -0.00000001  0.00000002

  11    1  |1 0>          -0.00000000  0.00000002 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000002
                          -0.00000026  0.60202229 -0.00000007 -0.21632843  0.25264037  0.00000012 -0.00000000 -0.00000011

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000002  0.00000001
                           0.61473677  0.00000026 -0.05550851  0.00000002  0.00000000  0.00000003  0.28328779  0.00000023

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00480752 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00480748 -0.00000000 -0.00000003  0.00000005  0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00059513  0.00000000 -0.00048594  0.00000000 -0.00000000 -0.00000000 -0.00023066 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00042576 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00058972 -0.00000000 -0.00053586  0.00005345  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00042896

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00101826  0.00000000 -0.00008777  0.00000000  0.00000000  0.00000000  0.00045879  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000003  0.00000002
                          -0.48599254 -0.00000021 -0.43527574  0.00000014  0.00000000  0.00000005  0.37929947  0.00000031

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000020 -0.43859199  0.00000005 -0.00000013

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000002 -0.00005765
                           0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000015  0.00000011  0.00000029 -0.35375392

   9    1  |1 1>-         -0.00000000  0.00000001  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000006  0.00000005
                          -0.00000019  0.43469728 -0.00000008 -0.26390266 -0.58906979 -0.00000026  0.00000001  0.00000025

  10    1  |1 1>-         -0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000006 -0.00000005
                          -0.00000019  0.43467283 -0.00000005 -0.14232707  0.62962597  0.00000028 -0.00000001 -0.00000027

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000007  0.00000004 -0.00000000 -0.00000000  0.00000017 -0.37545932  0.00000004 -0.00000011

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000002  0.00007323
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000013 -0.00000036  0.44929675

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00480734 -0.00000000 -0.00000004  0.00000002  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000004  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000009 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000004 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000035  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00033394 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000001 -0.00000047  0.65226502  0.00000015 -0.00000001 -0.00000000 -0.00000004  0.05587435
                          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.14555762 -0.00000005  0.00000001  0.00000010  0.73145611 -0.00000012  0.00145072 -0.00000001
                          -0.00000007  0.00000000 -0.00000000  0.00000000  0.00042985  0.00000000 -0.00000351 -0.00000000

   8    1  |1 1>+         -0.00000000  0.60982725  0.00000043  0.00000008  0.00000006  0.07695716 -0.00000005  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000006  0.00000011 -0.57168741  0.00000006 -0.00000005  0.00000003  0.00000031
                           0.00000000 -0.00000000 -0.00000001  0.00000015 -0.00000000  0.00000000  0.00000001 -0.00000000

  10    1  |1 1>+         -0.00000001  0.00000002  0.00000005 -0.13655826  0.00000004  0.00000001  0.00000001 -0.00000049
                           0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000001  0.00000001

  11    1  |1 1>+         -0.68735536 -0.00000002 -0.00000002 -0.00000002  0.02007808 -0.00000037 -0.50027948 -0.00000012
                          -0.00000032 -0.00000000 -0.00000000  0.00000000  0.00001180 -0.00000000  0.00121027 -0.00000000

  12    1  |1 1>+         -0.00000000  0.17095404  0.00000013  0.00000004 -0.00000009 -0.57815471  0.00000038  0.00000004
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000008  0.00000000  0.00000011  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000721  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000003  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00057111 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00012463 -0.00000000  0.00149832 -0.00000000
                           0.00567070  0.00000004  0.00000002  0.00000001 -0.21207582  0.00000049  0.61934835  0.00000015

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000037  0.51148228  0.00000012 -0.00000001 -0.00000001 -0.00000002  0.00909426

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000006 -0.00000011  0.49713624 -0.00000006  0.00000003 -0.00000003 -0.00000004

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.04352523  0.00000004 -0.00000003  0.00000011  0.65438540 -0.00000048 -0.00000008

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.40982514  0.00000031  0.00000003  0.00000002 -0.02853593 -0.00000006 -0.00000005

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000006  0.09793204  0.00000001  0.00000001  0.00000008 -0.00000017  0.71723614

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001  0.00000002
                          -0.00000000 -0.00000002 -0.00000005  0.07795362 -0.00000004 -0.00000002 -0.00000000  0.00000064

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000021

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00032558 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000017 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000007 -0.00000015  0.63348570 -0.00000009  0.00000003 -0.00000003  0.00000016

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.62425081  0.00000044  0.00000009  0.00000003 -0.09347002  0.00000007  0.00000002

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00036775  0.00000000 -0.00085942  0.00000000
                          -0.00381710  0.00000003 -0.00000002 -0.00000010 -0.62576658 -0.00000016 -0.35525367 -0.00000008

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000040  0.54247358  0.00000013 -0.00000001 -0.00000004  0.00000006 -0.31398618

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00000001  0.00000006 -0.09522577 -0.00000001 -0.00000000 -0.00000007  0.00000015 -0.61950008

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.19835642  0.00000016 -0.00000002  0.00000009  0.47121495 -0.00000040 -0.00000009

  12    1  |1 1>-         -0.00000033  0.00000000  0.00000000 -0.00000000 -0.00009835  0.00000000 -0.00118495  0.00000000
                           0.71155346 -0.00000003 -0.00000002 -0.00000000  0.16735747 -0.00000039 -0.48981112 -0.00000012

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000004 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00104936
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000002 -0.00203382  0.00019180  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001 -0.00019180 -0.00203390  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00204293  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00204294  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00204292  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.87538048  0.00000000  0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000013  0.87527436 -0.01394579 -0.00000000  0.00000000 -0.00000000 -0.00001431
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.87537886 -0.00000011  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000816  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000006  0.01394539  0.87526949 -0.00000000 -0.00000000  0.00000000  0.00000150
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000011  0.87537989  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000003  0.00000063 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.05784515
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00219816  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00221858 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000

   3    1  |1 1>+          0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221858  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000001 -0.00355772  0.00265165  0.00000000 -0.00000000  0.00000000  0.00000006
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00385435 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000002 -0.00000002  0.00000000  0.00000000  0.03970295  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000003  0.00000001 -0.00000000  0.00000000 -0.00000000  0.05016055 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000047  0.00000000  0.00000000

   8    1  |1 1>+          0.00000002 -0.37431619  0.00569349  0.04829797 -0.00000000 -0.00000000  0.00000000  0.00000013
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.36767318 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.04326100  0.00000000
                          -0.00000048 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.55231777 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02550739  0.00000000
                           0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00245684 -0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000003  0.34436675 -0.04465796 -0.00737333  0.00000000 -0.00000000  0.00000000  0.00000060
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000070 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000023  0.23250627  0.31194780 -0.00000000 -0.00000000 -0.00000000  0.57638366
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.33694029 -0.00000004  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000314  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004  0.33693321  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00443709  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221856 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00051755  0.00440688 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221858  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002352 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000
                          -0.00000001  0.00000006 -0.00000000  0.00000000 -0.00000000  0.03970293 -0.00000001 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000002 -0.00000000 -0.00000000 -0.01016136 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.05344110  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002431 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003 -0.02689363 -0.01125870 -0.03833502  0.00000000  0.00000000 -0.00000000  0.00000014

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.63276356  0.05189948 -0.01113102 -0.00000000  0.00000000 -0.00000000 -0.00000112

  11    1  |1 0>           0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000063  0.00000005 -0.00000000 -0.00000000 -0.04918202 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000096  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.72776249  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.05022087 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000023  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000004 -0.33694473 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.33694402  0.00000000  0.00000001 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000014  0.38639258 -0.04537843 -0.00000000  0.00000000 -0.00000000 -0.57638238

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00223891 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00407527  0.00175524 -0.00000000  0.00000000 -0.00000000 -0.00000006

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00221856 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00221858  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00383087 -0.00000000

   6    1  |1 1>-          0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.16512820  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000001  0.03970305  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.30093397 -0.01399804 -0.04374609  0.00000000  0.00000000 -0.00000000  0.00000025

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00000000
                          -0.00000002 -0.00000004 -0.00000000  0.00000000 -0.00000000  0.04861986 -0.00000001  0.00000000

   9    1  |1 1>-         -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000030 -0.00000004 -0.00000000 -0.00000000 -0.03551235 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000054 -0.00000004 -0.00000000 -0.00000000 -0.03551052 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.49962455 -0.03972111  0.02695135  0.00000000 -0.00000000  0.00000000  0.00000056

  12    1  |1 1>-          0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000  0.00000000
                           0.00000001 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.01257881 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000064  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000314  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.33694039  0.00000004 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000023 -0.15390729  0.35732880 -0.00000000 -0.00000000  0.00000000 -0.57638361

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.33693243  0.00000000  0.00000001 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00081398 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00440974 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00448424
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000004  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00001199 -0.00000000 -0.00000043  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.12244005 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001 -0.47516270
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.45911275 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000  0.00001199  0.00000000  0.00000040  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00002405  0.00000000 -0.00000036  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00002401 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000036  0.00000000 -0.00109768
                          -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00002398  0.00000000  0.00000036  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00078147  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00001381  0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000045 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.02241149
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.02145382 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000040  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000014 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000 -0.00109771
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00861708  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.01492543  0.00000001  0.99988860 -0.00015730  0.00000251  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002  0.00000001  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.67079214  0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.70702791  0.00000000 -0.00000000 -0.00000003 -0.00000008  0.01055433 -0.00000001  0.62163956
                           0.00037894  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000052  0.00000000 -0.00000010

  16    1  |1 1>+          0.00000000 -0.00000066  0.70702444 -0.00000166 -0.01055365 -0.00000008 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000015 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00219531

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00002404  0.00000000 -0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00216741 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00002404 -0.00000000 -0.00000035 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002771  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000 -0.00001164

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01773928

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000011  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.01785067  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00154709 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000072  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000073 -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000800  0.00000000  0.00000000 -0.00000001 -0.00000004  0.00004916  0.00000000  0.00000000
                          -0.01492599 -0.00000000  0.00000000 -0.00000251 -0.00000722  0.99988860  0.00000000 -0.00000007

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000066  0.70703160 -0.00000166 -0.01055411 -0.00000008  0.00000000  0.00000001

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.70703153  0.00000066 -0.01055418  0.00000166 -0.00000003 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.11411638  0.00000003

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00002391  0.00000000  0.00000036  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00138595 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00002398 -0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002401 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000035 -0.00000000  0.00109768

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00001406 -0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000044  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02051046  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.02172312

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000035  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000027  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00673840  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00562015

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000006 -0.00000004 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.01492544  0.00015730  0.99988860  0.00000723 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00037894 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000052  0.00000000 -0.00000010
                           0.70702790  0.00000000 -0.00000000 -0.00000003 -0.00000008  0.01055420  0.00000001 -0.62163951

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.55667791 -0.00000001

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.70702450 -0.00000066  0.01055357 -0.00000166  0.00000003 -0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00005748
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00440972 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00081398 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00448424  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00448424 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000001 -0.47515973  0.00000004  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.45910381 -0.00000001 -0.00000001 -0.00000004
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000002  0.00000000 -0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.12244182 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000001 -0.00000004 -0.47516077 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000066  0.00000000 -0.00000000  0.99832557
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00108756  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00109767  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00205150  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00190697 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.01773895  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00344504 -0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.01932863 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.01139639 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.01829468  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000002  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.25551155  0.00000001  0.00000001 -0.03339681
                           0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000002 -0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000001  0.00000005  0.62164748  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00109765 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00034901 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00109767  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00454005 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00001083  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00016234  0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.02366464 -0.00000000 -0.00000000 -0.00000001

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.02197412 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.02243834  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000005 -0.62163308 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.62163354 -0.00000005 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.70868845  0.00000001  0.00000001  0.03339708

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00110773  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00170249 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00109766 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00189536  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.01773905  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00067963  0.00000000  0.00000000  0.00000001

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01586658 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01586569 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02036022  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000006 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002  0.00000000 -0.00000001  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.45316364 -0.00000000 -0.00000001  0.03339680

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.62164783 -0.00000005 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.35273047     -0.00000013       -0.03      0.00000000        0.00      0.0000
     2   1    -25.30787070      0.04485965     9845.56      0.04485978     9845.58      1.2207
     3   1    -25.30787070      0.04485965     9845.56      0.04485978     9845.58      1.2207
     4   1    -25.30787069      0.04485965     9845.56      0.04485978     9845.58      1.2207
     5   1    -25.30709022      0.04564013    10016.85      0.04564026    10016.88      1.2419
     6   1    -25.30709022      0.04564013    10016.85      0.04564026    10016.88      1.2419
     7   1    -25.30709021      0.04564013    10016.85      0.04564026    10016.88      1.2419
     8   1    -25.30709021      0.04564013    10016.85      0.04564026    10016.88      1.2419
     9   1    -25.30709021      0.04564013    10016.85      0.04564026    10016.88      1.2419
    10   1    -25.30563840      0.04709195    10335.49      0.04709208    10335.52      1.2814
    11   1    -25.30563840      0.04709195    10335.49      0.04709208    10335.52      1.2814
    12   1    -25.30563840      0.04709195    10335.49      0.04709208    10335.52      1.2814
    13   1    -25.30563839      0.04709195    10335.49      0.04709208    10335.52      1.2814
    14   1    -25.30563839      0.04709195    10335.49      0.04709208    10335.52      1.2814
    15   1    -25.30563839      0.04709195    10335.49      0.04709208    10335.52      1.2814
    16   1    -25.30563839      0.04709195    10335.49      0.04709208    10335.52      1.2814
    17   1    -25.29542043      0.05730992    12578.07      0.05731004    12578.10      1.5595
    18   1    -25.29542032      0.05731003    12578.10      0.05731016    12578.13      1.5595
    19   1    -25.29542026      0.05731008    12578.11      0.05731021    12578.14      1.5595
    20   1    -25.29542026      0.05731008    12578.11      0.05731021    12578.14      1.5595
    21   1    -25.29542026      0.05731009    12578.11      0.05731022    12578.14      1.5595
    22   1    -25.24988200      0.10284835    22572.60      0.10284848    22572.63      2.7986
    23   1    -25.24988200      0.10284835    22572.60      0.10284848    22572.63      2.7986
    24   1    -25.24988199      0.10284835    22572.60      0.10284848    22572.63      2.7986
    25   1    -25.24988199      0.10284836    22572.60      0.10284848    22572.63      2.7986
    26   1    -25.24988199      0.10284836    22572.60      0.10284848    22572.63      2.7986
    27   1    -25.24855597      0.10417438    22863.63      0.10417451    22863.66      2.8347
    28   1    -25.24855597      0.10417438    22863.63      0.10417451    22863.66      2.8347
    29   1    -25.24855596      0.10417438    22863.63      0.10417451    22863.66      2.8347
    30   1    -25.24855596      0.10417438    22863.63      0.10417451    22863.66      2.8347
    31   1    -25.24855596      0.10417438    22863.63      0.10417451    22863.66      2.8347
    32   1    -25.24855596      0.10417438    22863.63      0.10417451    22863.66      2.8347
    33   1    -25.24855596      0.10417439    22863.63      0.10417451    22863.66      2.8347
    34   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    35   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    36   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    37   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    38   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    39   1    -25.24692201      0.10580834    23222.25      0.10580847    23222.27      2.8792
    40   1    -25.24692200      0.10580834    23222.25      0.10580847    23222.27      2.8792
    41   1    -25.24692200      0.10580834    23222.25      0.10580847    23222.27      2.8792
    42   1    -25.24692200      0.10580834    23222.25      0.10580847    23222.28      2.8792
    43   1    -25.23730854      0.11542181    25332.16      0.11542194    25332.19      3.1408
    44   1    -25.23730851      0.11542184    25332.17      0.11542197    25332.19      3.1408
    45   1    -25.23730848      0.11542186    25332.17      0.11542199    25332.20      3.1408
    46   1    -25.23730848      0.11542187    25332.17      0.11542199    25332.20      3.1408
    47   1    -25.23730848      0.11542187    25332.17      0.11542200    25332.20      3.1408
    48   1    -25.23657751      0.11615284    25492.60      0.11615296    25492.63      3.1607
    49   1    -25.23610203      0.11662831    25596.96      0.11662844    25596.98      3.1736
    50   1    -25.23610201      0.11662833    25596.96      0.11662846    25596.99      3.1736
    51   1    -25.23610201      0.11662833    25596.96      0.11662846    25596.99      3.1736
    52   1    -25.23547693      0.11725342    25734.15      0.11725355    25734.18      3.1906
    53   1    -25.23547693      0.11725342    25734.15      0.11725355    25734.18      3.1906
    54   1    -25.23547693      0.11725342    25734.15      0.11725355    25734.18      3.1906
    55   1    -25.23457164      0.11815870    25932.84      0.11815883    25932.87      3.2153
    56   1    -25.23457164      0.11815870    25932.84      0.11815883    25932.87      3.2153
    57   1    -25.23457164      0.11815871    25932.84      0.11815884    25932.87      3.2153
    58   1    -25.23457163      0.11815872    25932.84      0.11815884    25932.87      3.2153
    59   1    -25.23457163      0.11815872    25932.84      0.11815885    25932.87      3.2153
    60   1    -25.22986741      0.12286293    26965.30      0.12286306    26965.33      3.3433

 E0 =    -25.35273035 is the energy of the lowest zeroth-order state
 E1 =    -25.35273047 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999945  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.09633725  0.01119441  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01119424  0.09633579  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000020 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.09698323
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.09698322 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00006031  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00598373 -0.00117423 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00609785  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000379 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00117423 -0.00598373 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00609785
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000332  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000021  0.54939186 -0.00000003  0.00000001 -0.00000001  0.00000000  0.00000009
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000004 -0.00000003 -0.54772261 -0.00000001  0.00000002 -0.40631545 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000 -0.00025266  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.54772323  0.00000021 -0.00000004 -0.00000000  0.00000001 -0.00000002  0.40631507
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000002  0.00000000 -0.00000000 -0.00000000  0.73838456  0.33935088  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000012  0.31331897 -0.00000001 -0.00000001  0.00000001 -0.00000001 -0.00000016
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00007143 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000640  0.00006894  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00006162
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003635
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000348 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000001  0.00000000 -0.00000000  0.00000000  0.00006000 -0.00002349 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00060676  0.00000000  0.00000000 -0.00000000 -0.00008441  0.00018368  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00003100 -0.00000000  0.00000000 -0.00017506 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00003101  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00017505
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00050531  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00335223  0.00000002 -0.00000004  0.81262141  0.00000004

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000021  0.54772170 -0.00000003 -0.00000001  0.00000001 -0.00000000 -0.00000009

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000000  0.07530549  0.80913597  0.00000004 -0.00000002

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.54772174 -0.00000021  0.00000004 -0.00000000  0.00000001 -0.00000002  0.40631741

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000030  0.00000000 -0.00000000  0.00000268 -0.00000000
                                0.00000000  0.00000004  0.00000003  0.63244651 -0.00000000  0.00000000 -0.00430719 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00005654 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000431 -0.00005673 -0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00007553 -0.00000012  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007152

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00003101  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00017507

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00003100  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00060675  0.00000000 -0.00000000 -0.00000000 -0.00020128  0.00001873  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.54603960  0.00000021 -0.00000004 -0.00000000  0.00000001 -0.00000002  0.41003985

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.66307909  0.46978378  0.00000004 -0.00000002

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000021 -0.54772324  0.00000003 -0.00000001  0.00000001 -0.00000000 -0.00000009

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000  0.00000000 -0.00025266  0.00000000
                               -0.00000000 -0.00000004 -0.00000003 -0.54772266  0.00000001 -0.00000002  0.40631546  0.00000002

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.31912522 -0.00000012  0.00000002 -0.00000000  0.00000002 -0.00000004  0.70159713

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005654

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000654 -0.00006507 -0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00006924 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00006329  0.00002574 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001789 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00003100  0.00000000 -0.00000000  0.00017506  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00060676  0.00000000  0.00000000  0.00000000  0.00011686  0.00016494  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00003101 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000002 -0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.09698319  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00609778  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.40257945  0.71812267  0.00000045  0.00000002  0.00000004  0.00000001  0.00000006 -0.13730584
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000001 -0.52570400 -0.00000011  0.00000301  0.50692086  0.00000016
                               -0.00000000 -0.00000000  0.00000000  0.00011111 -0.00000000 -0.00000007  0.00021316  0.00000002

 15  1     3    1  |1 1>+       0.00000009  0.00000043 -0.69403978 -0.00000005  0.00000025  0.22724874 -0.00000141  0.00000003
                               -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000

 16  1     4    1  |1 1>+       0.00000001  0.00000003  0.00000001  0.00000003  0.57735037 -0.00000060  0.00000016  0.00000033
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70590440  0.03929344  0.00000001  0.00000007  0.00000035  0.00000004  0.00000027 -0.63026638
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001

 18  1     6    1  |1 1>+      -0.00005654 -0.00023717 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00035357
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00017472  0.00000000 -0.00000000 -0.00012510 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000005 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026056  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00027520 -0.00000000  0.00000000  0.00025120 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00006843 -0.00000000  0.00000000  0.00055644 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00043526  0.00000000 -0.00000000 -0.00046637 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000 -0.00000020 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00033672  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00012121 -0.00000000  0.00000001 -0.00002792 -0.00000000
                                0.00000001  0.00000000 -0.00000003 -0.57352463  0.00000001  0.00000021  0.06640108 -0.00000004

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001
                                0.40631740 -0.04976656 -0.00000002 -0.00000008 -0.00000041 -0.00000005 -0.00000031  0.72859884

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000003 -0.00000001 -0.00000003 -0.57734950  0.00000060 -0.00000016 -0.00000033

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000007  0.00000011 -0.00000000
                                0.00000009 -0.00000003  0.04652289 -0.00000026  0.00000076  0.72881311 -0.00000460  0.00000005

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00001831  0.00000000  0.00000011 -0.00032368 -0.00000002
                               -0.00000000 -0.00000001  0.00000003  0.08665278 -0.00000021  0.00000488  0.76972953  0.00000034

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00042327  0.00000000  0.00000000  0.00004596 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001447  0.00062688  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000035

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00063730 -0.00000000 -0.00000000 -0.00004079  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00042236  0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005363  0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00007004 -0.00011471 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00021677

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00001387 -0.00000000  0.00000000  0.00021240 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00017507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000001  0.00000003  0.00000000  0.00000000  0.00000001  0.00000002  0.00000000
                                0.00000009 -0.00000045  0.71707726 -0.00000008  0.00000013  0.13381015 -0.00000087 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00000003  0.00000001  0.00000003  0.57735046 -0.00000060  0.00000016  0.00000033

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.40631507  0.69302136  0.00000044 -0.00000002 -0.00000016 -0.00000001 -0.00000009  0.23033580

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00013151  0.00000000  0.00000006 -0.00016076 -0.00000001
                                0.00000000 -0.00000001  0.00000004  0.62225036 -0.00000013  0.00000263  0.38227984  0.00000023

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000009  0.00000000
                                0.00000016  0.00000003 -0.04409152  0.00000023 -0.00000066 -0.63188904  0.00000399 -0.00000004

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00023875 -0.00000000  0.00000000  0.00035251 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00032343 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00025931 -0.00000000 -0.00000000 -0.00002840  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00005057 -0.00028527 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00038104

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00005060 -0.00000041 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00047600

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00027688 -0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000023 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00027821 -0.00000000  0.00000000  0.00055468  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00017505 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99524092 -0.00002484  0.00000000  0.00000000  0.00000000  0.00053526 -0.00000000  0.00804695
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00002484  0.99524107 -0.00000000 -0.00000000  0.00000000  0.00804696  0.00000000 -0.00053527
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.99524114 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.99524114 -0.00000000  0.00000000 -0.00000000  0.00806477  0.00000000
                                0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001  0.99524115 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00097015 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00096721  0.00007566  0.00000000  0.00000000  0.00000000 -0.01279534  0.00000000 -0.08792380
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00097016 -0.00000000  0.00000000  0.00000001 -0.08884893 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000049 -0.00000000

 10  1    10    1  |0 0>       -0.00007566  0.00096721 -0.00000000 -0.00000000  0.00000000 -0.08792322 -0.00000001  0.01279529
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00097016  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.03922586 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.03958995  0.00000000 -0.00000000  0.00000000 -0.00058973 -0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.03958995 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.06764856 -0.04115034  0.00000000  0.00000000 -0.00000000 -0.00054468 -0.00000000  0.00104608
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.06878049  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00394208  0.00000000 -0.00000001 -0.00000004
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00498043  0.00000000 -0.00000000 -0.00000007  0.61400154  0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000336  0.00000000

 20  1     8    1  |1 1>+      -0.00011268 -0.00482733  0.00000000  0.00000000 -0.00000000  0.59473879  0.00000007 -0.02565266
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00429534 -0.00000000  0.00000001  0.00000001 -0.00000007
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00253264  0.00000000 -0.00000000 -0.00000001  0.00000004
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00024391  0.00000000 -0.00000000 -0.00000000  0.03007346  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000

 24  1    12    1  |1 1>+       0.00434571  0.00114497  0.00000000  0.00000000  0.00000000 -0.17642209  0.00000000 -0.52519613
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00210898  0.00346705  0.00000000 -0.00000000  0.00000000 -0.00492346 -0.00000000 -0.00256352
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00351445 -0.00000000  0.00000000  0.00000000 -0.00480734 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00351443  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.07917863 -0.00000000  0.00000000 -0.00000000  0.00117939  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.03958993  0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00181347 -0.07915961  0.00000000  0.00000000 -0.00000000 -0.00117829 -0.00000000  0.00005134

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.03958994 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00041968  0.00000000 -0.00000000  0.00000000 -0.00000625 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000266 -0.00000000
                                0.00000000 -0.00000000 -0.00394211  0.00000000 -0.00000000 -0.00000005  0.48599193  0.00000002

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00100890 -0.00000000  0.00000000  0.00000001

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000243 -0.00000000  0.00000000  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00075566  0.00389444  0.00000000 -0.00000000  0.00000000 -0.48523842 -0.00000005 -0.06107685

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00523395  0.00061665 -0.00000000 -0.00000000 -0.00000000 -0.03301090 -0.00000003  0.64888521

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00488328 -0.00000000  0.00000002  0.00000005

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00498642  0.00000000 -0.00000001 -0.00000001  0.00000008

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00351445 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00351445 -0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00405703 -0.00009294  0.00000000  0.00000000  0.00000000 -0.00024162  0.00000000 -0.00554573

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.03995278 -0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.06946203 -0.03800936 -0.00000000  0.00000000 -0.00000000 -0.00063360 -0.00000000 -0.00099475

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.03958993  0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.03958995 -0.00000000  0.00000000 -0.00000000  0.00058973  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.06836084 -0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00394208 -0.00000000  0.00000001  0.00000001 -0.00000006

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00097603  0.00445477  0.00000000 -0.00000000  0.00000000 -0.55597657 -0.00000006 -0.08359683

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000326 -0.00000000
                                0.00000000 -0.00000000 -0.00482746  0.00000000 -0.00000000 -0.00000006  0.59514249  0.00000003

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00352599 -0.00000000  0.00000001  0.00000003

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00352584 -0.00000000  0.00000001  0.00000003

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00417759 -0.00229391  0.00000000  0.00000000 -0.00000000  0.24798681  0.00000005 -0.53266544

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000084 -0.00000000
                                0.00000000 -0.00000000 -0.00124891  0.00000000 -0.00000000 -0.00000002  0.15397234  0.00000001

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                                0.00000000 -0.00000000 -0.00351445  0.00000000 -0.00000000 -0.00000000  0.00480734  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00194801  0.00355999 -0.00000000 -0.00000000  0.00000000 -0.00468186 -0.00000000  0.00298202

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00351443 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00806477  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00806477 -0.00000000 -0.00000001  0.00000004  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000004  0.08884885  0.00000000  0.00000008  0.00000012  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.08884913  0.00000004  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00058430 -0.00000000 -0.00049438 -0.00021509 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00042248
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007

 15  1     3    1  |1 1>+       0.00058973  0.00000000  0.00053763 -0.00000000  0.00000000 -0.00000000 -0.00003107 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00042575 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00102451  0.00000000  0.00007382 -0.00045979 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000021 -0.48599254 -0.00000013 -0.41908875  0.39711152  0.00000018 -0.00000001 -0.00000017
                               -0.00000000  0.00000001  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000004  0.00000003

 19  1     7    1  |1 1>+       0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000011  0.00000007  0.00000021 -0.25247088
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000001  0.00004115

 20  1     8    1  |1 1>+       0.00000001  0.00000000  0.00000000  0.00000000 -0.00000016  0.35333098 -0.00000004  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.52954438 -0.00000023  0.27363396 -0.00000009  0.00000001  0.00000004  0.42477458  0.00000035
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000003 -0.00000002

 22  1    10    1  |1 1>+       0.31222603  0.00000013 -0.10333096  0.00000003  0.00000001  0.00000008  0.75322460  0.00000062
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000006 -0.00000004

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000023 -0.00000016 -0.00000044  0.52530594
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000003 -0.00008561

 24  1    12    1  |1 1>+       0.00000007  0.00000004  0.00000000  0.00000001 -0.00000020  0.45660672 -0.00000005  0.00000014
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000007
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00480736  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00042571

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00058973 -0.00000000 -0.00008221  0.00053220  0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00042576  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00058973  0.00000000  0.00010432 -0.00000000 -0.00000000 -0.00000000 -0.00052831 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000787

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000003  0.00009409
                                0.00000001 -0.00000001 -0.00000001  0.00000000  0.00000025 -0.00000017 -0.00000047  0.57732326

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000  0.00000002 -0.00000001
                               -0.00000005  0.12438148  0.00000026  0.82925537  0.18719686  0.00000007 -0.00000000 -0.00000008

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000001
                               -0.00029860 -0.00000000  0.84964725 -0.00000027  0.00000001  0.00000001  0.16762652  0.00000015

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000001 -0.00000026  0.57275161 -0.00000006  0.00000017

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000009 -0.00000005  0.00000000  0.00000000 -0.00000003  0.07273201 -0.00000001  0.00000002

 39  1    11    1  |1 0>       -0.00000000  0.00000002 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000002
                               -0.00000026  0.60202229 -0.00000007 -0.21632843  0.25264037  0.00000012 -0.00000000 -0.00000011

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000002  0.00000001
                                0.61473677  0.00000026 -0.05550851  0.00000002  0.00000000  0.00000003  0.28328779  0.00000023

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00480752 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00480748 -0.00000000 -0.00000003  0.00000005  0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00059513  0.00000000 -0.00048594  0.00000000 -0.00000000 -0.00000000 -0.00023066 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00042576 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00058972 -0.00000000 -0.00053586  0.00005345  0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00042896

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00101826  0.00000000 -0.00008777  0.00000000  0.00000000  0.00000000  0.00045879  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000003  0.00000002
                               -0.48599254 -0.00000021 -0.43527574  0.00000014  0.00000000  0.00000005  0.37929947  0.00000031

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000020 -0.43859199  0.00000005 -0.00000013

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000002 -0.00005765
                                0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000015  0.00000011  0.00000029 -0.35375392

 53  1     9    1  |1 1>-      -0.00000000  0.00000001  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000006  0.00000005
                               -0.00000019  0.43469728 -0.00000008 -0.26390266 -0.58906979 -0.00000026  0.00000001  0.00000025

 54  1    10    1  |1 1>-      -0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000006 -0.00000005
                               -0.00000019  0.43467283 -0.00000005 -0.14232707  0.62962597  0.00000028 -0.00000001 -0.00000027

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000007  0.00000004 -0.00000000 -0.00000000  0.00000017 -0.37545932  0.00000004 -0.00000011

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000002  0.00007323
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000013 -0.00000036  0.44929675

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00480734 -0.00000000 -0.00000004  0.00000002  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000004  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000009 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000004 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000035  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00033394 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000001 -0.00000047  0.65226502  0.00000015 -0.00000001 -0.00000000 -0.00000004  0.05587435
                               -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.14555762 -0.00000005  0.00000001  0.00000010  0.73145611 -0.00000012  0.00145072 -0.00000001
                               -0.00000007  0.00000000 -0.00000000  0.00000000  0.00042985  0.00000000 -0.00000351 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.60982725  0.00000043  0.00000008  0.00000006  0.07695716 -0.00000005  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000006  0.00000011 -0.57168741  0.00000006 -0.00000005  0.00000003  0.00000031
                                0.00000000 -0.00000000 -0.00000001  0.00000015 -0.00000000  0.00000000  0.00000001 -0.00000000

 22  1    10    1  |1 1>+      -0.00000001  0.00000002  0.00000005 -0.13655826  0.00000004  0.00000001  0.00000001 -0.00000049
                                0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000001  0.00000001

 23  1    11    1  |1 1>+      -0.68735536 -0.00000002 -0.00000002 -0.00000002  0.02007808 -0.00000037 -0.50027948 -0.00000012
                               -0.00000032 -0.00000000 -0.00000000  0.00000000  0.00001180 -0.00000000  0.00121027 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.17095404  0.00000013  0.00000004 -0.00000009 -0.57815471  0.00000038  0.00000004
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000008  0.00000000  0.00000011  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000721  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000003  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00057111 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00012463 -0.00000000  0.00149832 -0.00000000
                                0.00567070  0.00000004  0.00000002  0.00000001 -0.21207582  0.00000049  0.61934835  0.00000015

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000037  0.51148228  0.00000012 -0.00000001 -0.00000001 -0.00000002  0.00909426

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000006 -0.00000011  0.49713624 -0.00000006  0.00000003 -0.00000003 -0.00000004

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.04352523  0.00000004 -0.00000003  0.00000011  0.65438540 -0.00000048 -0.00000008

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.40982514  0.00000031  0.00000003  0.00000002 -0.02853593 -0.00000006 -0.00000005

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000006  0.09793204  0.00000001  0.00000001  0.00000008 -0.00000017  0.71723614

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001  0.00000002
                               -0.00000000 -0.00000002 -0.00000005  0.07795362 -0.00000004 -0.00000002 -0.00000000  0.00000064

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000021

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00032558 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001  0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000017 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000007 -0.00000015  0.63348570 -0.00000009  0.00000003 -0.00000003  0.00000016

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.62425081  0.00000044  0.00000009  0.00000003 -0.09347002  0.00000007  0.00000002

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00036775  0.00000000 -0.00085942  0.00000000
                               -0.00381710  0.00000003 -0.00000002 -0.00000010 -0.62576658 -0.00000016 -0.35525367 -0.00000008

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000040  0.54247358  0.00000013 -0.00000001 -0.00000004  0.00000006 -0.31398618

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00000001  0.00000006 -0.09522577 -0.00000001 -0.00000000 -0.00000007  0.00000015 -0.61950008

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.19835642  0.00000016 -0.00000002  0.00000009  0.47121495 -0.00000040 -0.00000009

 56  1    12    1  |1 1>-      -0.00000033  0.00000000  0.00000000 -0.00000000 -0.00009835  0.00000000 -0.00118495  0.00000000
                                0.71155346 -0.00000003 -0.00000002 -0.00000000  0.16735747 -0.00000039 -0.48981112 -0.00000012

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000013 -0.00000000 -0.00000004 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00104936
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000002 -0.00203382  0.00019180  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000001 -0.00019180 -0.00203390  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00204293  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00204294  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00204292  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.87538048  0.00000000  0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000013  0.87527436 -0.01394579 -0.00000000  0.00000000 -0.00000000 -0.00001431
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.87537886 -0.00000011  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000816  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000006  0.01394539  0.87526949 -0.00000000 -0.00000000  0.00000000  0.00000150
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000011  0.87537989  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000003  0.00000063 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.05784515
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00219816  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00221858 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221858  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000001 -0.00355772  0.00265165  0.00000000 -0.00000000  0.00000000  0.00000006
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00385435 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000002 -0.00000002  0.00000000  0.00000000  0.03970295  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000003  0.00000001 -0.00000000  0.00000000 -0.00000000  0.05016055 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000047  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000002 -0.37431619  0.00569349  0.04829797 -0.00000000 -0.00000000  0.00000000  0.00000013
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.36767318 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001  0.04326100  0.00000000
                               -0.00000048 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.55231777 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02550739  0.00000000
                                0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00245684 -0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000003  0.34436675 -0.04465796 -0.00737333  0.00000000 -0.00000000  0.00000000  0.00000060
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000070 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000023  0.23250627  0.31194780 -0.00000000 -0.00000000 -0.00000000  0.57638366
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.33694029 -0.00000004  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000314  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004  0.33693321  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00443709  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00221856 -0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00051755  0.00440688 -0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00221858  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002352 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000
                               -0.00000001  0.00000006 -0.00000000  0.00000000 -0.00000000  0.03970293 -0.00000001 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000002 -0.00000000 -0.00000000 -0.01016136 -0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.05344110  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002431 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003 -0.02689363 -0.01125870 -0.03833502  0.00000000  0.00000000 -0.00000000  0.00000014

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.63276356  0.05189948 -0.01113102 -0.00000000  0.00000000 -0.00000000 -0.00000112

 39  1    11    1  |1 0>        0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000063  0.00000005 -0.00000000 -0.00000000 -0.04918202 -0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000096  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.72776249  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.05022087 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000023  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000004 -0.33694473 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.33694402  0.00000000  0.00000001 -0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000014  0.38639258 -0.04537843 -0.00000000  0.00000000 -0.00000000 -0.57638238

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00223891 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00407527  0.00175524 -0.00000000  0.00000000 -0.00000000 -0.00000006

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00221856 -0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00221858  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00383087 -0.00000000

 50  1     6    1  |1 1>-       0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.16512820  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000001  0.03970305  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.30093397 -0.01399804 -0.04374609  0.00000000  0.00000000 -0.00000000  0.00000025

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000 -0.00000000
                               -0.00000002 -0.00000004 -0.00000000  0.00000000 -0.00000000  0.04861986 -0.00000001  0.00000000

 53  1     9    1  |1 1>-      -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000030 -0.00000004 -0.00000000 -0.00000000 -0.03551235 -0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000054 -0.00000004 -0.00000000 -0.00000000 -0.03551052 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.49962455 -0.03972111  0.02695135  0.00000000 -0.00000000  0.00000000  0.00000056

 56  1    12    1  |1 1>-       0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000  0.00000000
                                0.00000001 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.01257881 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000064  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000314  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.33694039  0.00000004 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000023 -0.15390729  0.35732880 -0.00000000 -0.00000000  0.00000000 -0.57638361

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.33693243  0.00000000  0.00000001 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00081398 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00440974 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00448424
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000004  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00001199 -0.00000000 -0.00000043  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.12244005 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001 -0.47516270
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.45911275 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000  0.00001199  0.00000000  0.00000040  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00002405  0.00000000 -0.00000036  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00002401 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000036  0.00000000 -0.00109768
                               -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00002398  0.00000000  0.00000036  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00078147  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00001381  0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000045 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.02241149
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.02145382 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000040  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000014 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000 -0.00109771
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00861708  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.01492543  0.00000001  0.99988860 -0.00015730  0.00000251  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002  0.00000001  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.67079214  0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.70702791  0.00000000 -0.00000000 -0.00000003 -0.00000008  0.01055433 -0.00000001  0.62163956
                                0.00037894  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000052  0.00000000 -0.00000010

 28  1    16    1  |1 1>+       0.00000000 -0.00000066  0.70702444 -0.00000166 -0.01055365 -0.00000008 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000015 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00219531

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00002404  0.00000000 -0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00216741 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00002404 -0.00000000 -0.00000035 -0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002771  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000 -0.00001164

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01773928

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000011  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.01785067  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00154709 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000072  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000073 -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000800  0.00000000  0.00000000 -0.00000001 -0.00000004  0.00004916  0.00000000  0.00000000
                               -0.01492599 -0.00000000  0.00000000 -0.00000251 -0.00000722  0.99988860  0.00000000 -0.00000007

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000066  0.70703160 -0.00000166 -0.01055411 -0.00000008  0.00000000  0.00000001

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.70703153  0.00000066 -0.01055418  0.00000166 -0.00000003 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.11411638  0.00000003

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00002391  0.00000000  0.00000036  0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00138595 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00002398 -0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002401 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000035 -0.00000000  0.00109768

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00001406 -0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000044  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02051046  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.02172312

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000035  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000027  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00673840  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00562015

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000006 -0.00000004 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.01492544  0.00015730  0.99988860  0.00000723 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00037894 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000052  0.00000000 -0.00000010
                                0.70702790  0.00000000 -0.00000000 -0.00000003 -0.00000008  0.01055420  0.00000001 -0.62163951

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.55667791 -0.00000001

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.70702450 -0.00000066  0.01055357 -0.00000166  0.00000003 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00005748
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00440972 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00081398 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00448424  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00448424 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000001 -0.47515973  0.00000004  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.45910381 -0.00000001 -0.00000001 -0.00000004
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000002  0.00000000 -0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.12244182 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000001 -0.00000004 -0.47516077 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000066  0.00000000 -0.00000000  0.99832557
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00108756  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00109767  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00205150  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00190697 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.01773895  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00344504 -0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.01932863 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.01139639 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.01829468  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000002  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.25551155  0.00000001  0.00000001 -0.03339681
                                0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000002 -0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000001  0.00000005  0.62164748  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00109765 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00034901 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00109767  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00454005 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00001083  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00016234  0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.02366464 -0.00000000 -0.00000000 -0.00000001

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.02197412 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.02243834  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000005 -0.62163308 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.62163354 -0.00000005 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.70868845  0.00000001  0.00000001  0.03339708

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00110773  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00170249 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00109766 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00189536  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.01773905  0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00067963  0.00000000  0.00000000  0.00000001

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01586658 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01586569 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02036022  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000006 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002  0.00000000 -0.00000001  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.45316364 -0.00000000 -0.00000001  0.03339680

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.62164783 -0.00000005 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.93%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.93%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.94%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.94%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.51%    0.00%
 15  1     3    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.51%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   54.52%   11.52%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    9.82%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.04%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.57%   65.47%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.51%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   40.00%    0.00%    0.00%    0.00%    0.00%
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
 45  1     1    1  |1 1>-         0.00%   29.82%    0.00%    0.00%    0.00%    0.00%    0.00%   16.81%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   43.97%   22.07%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.51%    0.00%
 49  1     5    1  |1 1>-         0.00%   10.18%    0.00%    0.00%    0.00%    0.00%    0.00%   49.22%
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
  6  1     6    1  |0 0>          0.94%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.21%   51.57%    0.00%    0.00%    0.00%    0.00%    0.00%    1.89%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   27.64%    0.00%    0.00%   25.70%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%   48.17%    0.00%    0.00%    5.16%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+        49.83%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%   39.72%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   32.89%    0.00%    0.00%    0.44%    0.00%
 30  1     2    1  |1 0>         16.51%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%   53.09%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.22%    0.00%    0.00%   53.12%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.75%    0.00%    0.00%   59.25%    0.00%
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
 45  1     1    1  |1 1>-         0.00%    0.00%   51.42%    0.00%    0.00%    1.79%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-        16.51%   48.03%    0.00%    0.00%    0.00%    0.00%    0.00%    5.31%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%   38.72%    0.00%    0.00%   14.61%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.19%    0.00%    0.00%   39.93%    0.00%    0.00%
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
  2  1     2    1  |0 0>         99.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |0 0>          0.00%   99.05%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.05%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.05%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.05%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.77%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.79%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.77%    0.00%    0.02%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.46%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.47%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.70%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   35.37%    0.00%    0.07%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    3.11%    0.00%   27.58%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.63%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.62%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.55%    0.00%    0.37%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%   42.11%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.48%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.47%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.91%    0.00%    0.70%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.42%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.15%    0.00%   28.37%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.37%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%   23.62%    0.00%   17.56%   15.77%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.37%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   12.48%    0.00%    0.00%
 21  1     9    1  |1 1>+        28.04%    0.00%    7.49%    0.00%    0.00%    0.00%   18.04%    0.00%
 22  1    10    1  |1 1>+         9.75%    0.00%    1.07%    0.00%    0.00%    0.00%   56.73%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.59%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   20.85%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 35  1     7    1  |1 0>          0.00%    1.55%    0.00%   68.77%    3.50%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%   72.19%    0.00%    0.00%    0.00%    2.81%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.80%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%   36.24%    0.00%    4.68%    6.38%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>         37.79%    0.00%    0.31%    0.00%    0.00%    0.00%    8.03%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.62%    0.00%   18.95%    0.00%    0.00%    0.00%   14.39%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   19.24%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   12.51%
 53  1     9    1  |1 1>-         0.00%   18.90%    0.00%    6.96%   34.70%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   18.89%    0.00%    2.03%   39.64%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   14.10%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.19%
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
 18  1     6    1  |1 1>+         0.00%    0.00%   42.54%    0.00%    0.00%    0.00%    0.00%    0.31%
 19  1     7    1  |1 1>+         2.12%    0.00%    0.00%    0.00%   53.50%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%   37.19%    0.00%    0.00%    0.00%    0.59%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   32.68%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    1.86%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+        47.25%    0.00%    0.00%    0.00%    0.04%    0.00%   25.03%    0.00%
 24  1    12    1  |1 1>+         0.00%    2.92%    0.00%    0.00%    0.00%   33.43%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.50%    0.00%   38.36%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%   26.16%    0.00%    0.00%    0.00%    0.00%    0.01%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   24.71%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.19%    0.00%    0.00%    0.00%   42.82%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%   16.80%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.96%    0.00%    0.00%    0.00%    0.00%   51.44%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.61%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   40.13%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   38.97%    0.00%    0.00%    0.00%    0.87%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   39.16%    0.00%   12.62%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%   29.43%    0.00%    0.00%    0.00%    0.00%    9.86%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.91%    0.00%    0.00%    0.00%    0.00%   38.38%
 55  1    11    1  |1 1>-         0.00%    3.93%    0.00%    0.00%    0.00%   22.20%    0.00%    0.00%
 56  1    12    1  |1 1>-        50.63%    0.00%    0.00%    0.00%    2.80%    0.00%   23.99%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   76.63%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   76.61%    0.02%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   76.63%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.02%   76.61%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   76.63%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%   14.01%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        13.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.19%    0.00%
 22  1    10    1  |1 1>+        30.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%   11.86%    0.20%    0.01%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    5.41%    9.73%    0.00%    0.00%    0.00%   33.22%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   11.35%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.35%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.07%    0.01%    0.15%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%   40.04%    0.27%    0.01%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>         52.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.35%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.35%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%   14.93%    0.21%    0.00%    0.00%    0.00%   33.22%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         2.73%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%
 51  1     7    1  |1 1>-         0.00%    9.06%    0.02%    0.19%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   24.96%    0.16%    0.07%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   11.35%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    2.37%   12.77%    0.00%    0.00%    0.00%   33.22%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.35%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.50%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.58%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.08%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.02%    0.00%   99.98%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   45.00%    0.00%
 27  1    15    1  |1 1>+        49.99%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   38.64%
 28  1    16    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.01%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%   99.98%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   49.99%    0.00%    0.01%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%   49.99%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.30%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.02%    0.00%   99.98%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-        49.99%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   38.64%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.99%    0.00%
 60  1    16    1  |1 1>-         0.00%   49.99%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   22.58%    0.00%    0.00%
  8  1     8    1  |0 0>         21.08%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          1.50%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   22.58%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   99.67%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.03%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.04%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.01%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.03%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         6.53%    0.00%    0.00%    0.11%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%   38.64%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.06%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.05%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.05%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   38.64%    0.00%
 43  1    15    1  |1 0>          0.00%   38.64%    0.00%    0.00%
 44  1    16    1  |1 0>         50.22%    0.00%    0.00%    0.11%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.03%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.03%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.03%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.04%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-        20.54%    0.00%    0.00%    0.11%
 60  1    16    1  |1 1>-         0.00%   38.64%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       32.00       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       9      118.09       700     1000      520     2100     2140     2141     2142     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       343.19    282.69      0.74     35.64     21.13      0.56      0.69      0.90      0.02      0.53
 REAL TIME  *       376.80 SEC
 DISK USED  *       150.13 MB (local),        2.41 GB (total)
 SF USED    *       761.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -25.229867412283

              CI              CI           MULTI           MULTI           MULTI         RHF-SCF
    -25.21306019    -25.20944115    -25.00421003    -25.00468829    -25.00495706    -25.09500683
 **********************************************************************************************************************************
 Molpro calculation terminated
