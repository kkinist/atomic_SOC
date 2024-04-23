
 Working directory              : /wrk/irikura/molpro.k0bwbGzKr6/
 Global scratch directory       : /wrk/irikura/molpro.k0bwbGzKr6/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.k0bwbGzKr6/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.00 sec
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
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
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
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 15:30:08  
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

     13.107 MB (compressed) written to integral file ( 20.0%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     312474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     312474      RECORD LENGTH: 524288

 Memory used in sort:       0.87 MW

 SORT1 READ     8662933. AND WROTE       63341. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      311578.  Node maximum:      314862. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.61      0.37
 REAL TIME  *         1.07 SEC
 DISK USED  *        29.04 MB (local),      402.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -25.09500683     -25.09500683     0.00D+00     0.10D+00     0     0       0.02      0.02    start
   2      -25.09500683      -0.00000000     0.15D-05     0.30D-04     1     0       0.00      0.02    diag
   3      -25.09500683      -0.00000000     0.61D-06     0.19D-04     2     0       0.00      0.02    diag
   4      -25.09500683      -0.00000000     0.26D-06     0.12D-04     3     0       0.01      0.03    diag
   5      -25.09500683      -0.00000000     0.45D-07     0.98D-06     4     0       0.00      0.03    diag
   6      -25.09500683      -0.00000000     0.12D-07     0.13D-06     0     0       0.00      0.03    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095006829040
  RHF One-electron energy             -41.272176595190
  RHF Two-electron energy              16.177169766149
  RHF Kinetic energy                    6.695468947862
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

              2       4        2.68       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.66      0.04      0.37
 REAL TIME  *         1.13 SEC
 DISK USED  *        31.70 MB (local),      434.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      76 (  30  46 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.998D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.998D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 2 4   6 3 5 1 4 6 3 5 2 1   4 6 3 5 2 1 6 4 3 5   2 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.203D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 3   1 2 4 5 6 7 9 810 3   1 2 6 4 5 7 9 810 5   4 6 7 9 810 3 1 2 4
                                        5 610 8 9 7 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    749
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5    -24.90463693     -25.04335263   -0.13871569    0.05826643 0.00033734 0.00000000  0.20E+01      0.34
   2    7   12    0    -25.01772332     -25.02465715   -0.00693383    0.07756821 0.00000852 0.00000000  0.44E+00      0.63
   3    7   12    0    -25.02470725     -25.02471074   -0.00000349    0.00134094 0.00000176 0.00000000  0.82E-02      0.92
   4    5   10    0    -25.02471074     -25.02471074   -0.00000000    0.00000216 0.00000000 0.00000000  0.30E-04      1.13

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.75E-11)
                       Final energy:    -25.02471074
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101318036221
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.61943861
 One electron energy                           -41.24994525
 Two electron energy                            16.14862721
 Virial ratio                                    4.79206146
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061262058207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061262058207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061262058207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061262058207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061262058207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80546595
 One electron energy                           -41.50964140
 Two electron energy                            16.44837934
 Virial ratio                                    4.68251964
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004957062097
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004957062097
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004957062096
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004957062096
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004957062096
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004957062096
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004957062096
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.90813228
 Virial ratio                                    4.54647187
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984348024883
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05065710
 One electron energy                           -41.91308934
 Two electron energy                            16.92874132
 Virial ratio                                    4.54354887
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984348024883
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
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999997506059
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     4.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000951217430
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.999051276511
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999272983833
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.063178374017
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     5.001913233884
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.936821625983
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     5.996100377726
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     5.002713404557
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000002494860
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999999984
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999049084774
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.000948420382
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000727038144
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     5.002643004863
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.063269444988
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     4.997356995137
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     5.989783692993
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.946219823875
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000015126
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999984874
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999999082
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000016
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999697796
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000000303107
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999978023
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     6.934178621120
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     6.934817321128
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.065821378880
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.014115929281
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.051066771568
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999984874
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000015126
 
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
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52901     1  1  s    0.98124
    2.1     0.43189    -0.01823     1  2  s    1.01366
    3.1     0.31353     0.06705     1  1  d2-  0.92895
    4.1     0.31353     0.06705     1  1  d2+  0.92895
    5.1     0.31353     0.06705     1  1  d1-  0.92895
    6.1     0.31353     0.06705     1  1  d1+  0.92895
    7.1     0.31353     0.06705     1  1  d0   0.92895
    8.1     0.00045     0.20296     1  2  s    1.47324    1  3  s    3.36210    1  4  s   -3.74322    1  5  s   -0.52773
                                    1  6  s   -0.36182    1  7  s    0.28600
    1.2     2.00000    -0.83305     1  1  pz   0.97936
    2.2     2.00000    -0.83305     1  1  py   0.97936
    3.2     2.00000    -0.83305     1  1  px   0.97936
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.657D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.657D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.535D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.535D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.143D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.531D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.532D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.681D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.681D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.603D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.603D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.359D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.359D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.249D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.256D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.434D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.434D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.556D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.556D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 6 4 2 1 1 3   5 4 6 2 6 4 3 5 2 1   4 6 3 5 2 1 4 6 3 5   2 4 6 3 5 2 1 1
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.407D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.407D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.248D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.680D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.680D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.662D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.234D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.234D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.892D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.892D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.724D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.343D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.343D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.143D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.522D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.522D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.636D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.636D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.159D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.159D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.202D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.568D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.568D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.757D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.265D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.264D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.120D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.120D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.251D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.250D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.203D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.347D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.347D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.115D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.114D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 7 9 5 4 6 810 2   1 3 6 7 9 4 5 810 4   5 7 9 6 810 1 2 3 4
                                        5 6 810 7 9 3 1 2
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97690632
 0200000       -0.09090651
 0020000       -0.09090651
 0002000       -0.09090651
 0000200       -0.09090651
 0000020       -0.09090651
 
 Energy:      -25.10131804
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 0a000a0        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 00a00a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      1.00000000
 aa00000        0.99991821     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a0a0000        0.00000000      0.99991821      0.00000127      0.00000001     -0.00000000      0.00000000     -0.00000000
 a0000a0        0.00000000      0.00000000      0.00241678     -0.00004059      0.99991529     -0.00000000     -0.00000000
 a000a00        0.00000000     -0.00000000     -0.00912646      0.99987656      0.00006265      0.00000000     -0.00000000
 a00a000       -0.00000000     -0.00000127      0.99987364      0.00912659     -0.00241631     -0.00000000      0.00000000
 0aa0000        0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000023      0.00000000
 000aa00       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000046     -0.00000000
 00aa000        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00001389
 00a0a00        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000037
 0000aa0        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000065
 000a0a0        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00001369
 0a00a00        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00003761
 0a0a000        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000149
 
 Energy:      -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.06126206    -25.00495706    -25.00495706

 State:              8               9              10              11              12              13              14
 0a000a0       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000051      0.00000000      0.00000000
 00a00a0       -0.00003433      0.00002489      0.00000022      0.00000015      0.00000000     -0.00000000      0.00000000
 aa00000        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0000a0       -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a000a00        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0aa0000        0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.44721360      0.00000000     -0.00000000
 000aa00       -0.00000001      0.00000001      0.00000000      0.00000002      0.89442719     -0.00000000      0.00000000
 00aa000        0.27519369     -0.18352547      0.00265903      0.83101129     -0.00000001     -0.01799935     -0.44685123
 00a0a00       -0.18341236     -0.27543217      0.83095696     -0.00274899      0.00000000      0.44685123     -0.01799935
 0000aa0       -0.17834619     -0.26717582     -0.54479949      0.00179879      0.00000000      0.77396904     -0.03117579
 000a0a0       -0.26733215      0.17827201      0.00188617      0.54474678     -0.00000002      0.03117579      0.77396904
 0a00a00        0.73822656     -0.49230166     -0.00060792     -0.11251781      0.00000001      0.01799935      0.44685123
 0a0a000        0.49231702      0.73819426      0.11266343     -0.00036661      0.00000000      0.44685123     -0.01799935
 
 Energy:      -25.00495706    -25.00495706    -25.00495706    -25.00495706    -25.00495706    -24.98434802    -24.98434802

 State:             15
 0a000a0       -0.00000000
 00a00a0       -0.00000000
 aa00000        0.00000000
 a0a0000        0.00000000
 a0000a0        0.00000000
 a000a00        0.00000000
 a00a000        0.00000000
 0aa0000        0.89442719
 000aa00        0.44721360
 00aa000       -0.00000000
 00a0a00       -0.00000000
 0000aa0       -0.00000000
 000a0a0        0.00000000
 0a00a00        0.00000000
 0a0a000       -0.00000000
 
 Energy:      -24.98434802
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        5.20       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.71      1.04      0.04      0.37
 REAL TIME  *         2.45 SEC
 DISK USED  *        37.10 MB (local),      499.16 MB (total)
 SF USED    *         9.05 MB
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
                                                  
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      73 (  30  43 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 6 4 2 1 1 3   5 4 6 2 6 4 3 5 2 1   4 6 3 5 2 1 4 6 3 5   2 4 6 3 5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 7 9 5 4 6 810 2   1 3 6 7 9 4 5 810 4   5 7 9 6 810 1 2 3 4
                                        5 6 810 7 9 3 1 2

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  514  ( 16 closed/active, 159 closed/virtual, 0 active/active, 339 active/virtual )
 Total number of variables:    1594
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    7    -25.01470549     -25.02611156   -0.01140607    0.00489644 0.00001702 0.00000000  0.16E+01      0.44
   2    9   16    0    -25.02483706     -25.02551257   -0.00067551    0.00429132 0.00000065 0.00000000  0.28E+00      0.86
   3    5   10    0    -25.02551369     -25.02551372   -0.00000004    0.00001920 0.00000000 0.00000000  0.20E-02      1.12
   4    2    4    0    -25.02551372     -25.02551372    0.00000000    0.00000000 0.00000000 0.00000000  0.68E-07      1.27

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.32E-10)
                       Final energy:    -25.02551372
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.116001438167
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62016070
 One electron energy                           -41.16193693
 Two electron energy                            16.04593549
 Virial ratio                                    4.79386583
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054167728939
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81583186
 One electron energy                           -41.40976739
 Two electron energy                            16.35559966
 Virial ratio                                    4.67587819
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054167728939
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81583186
 One electron energy                           -41.40976739
 Two electron energy                            16.35559966
 Virial ratio                                    4.67587819
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054167728939
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81583186
 One electron energy                           -41.40976739
 Two electron energy                            16.35559966
 Virial ratio                                    4.67587819
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054167728936
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81583186
 One electron energy                           -41.40976739
 Two electron energy                            16.35559966
 Virial ratio                                    4.67587819
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054167728936
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81583186
 One electron energy                           -41.40976739
 Two electron energy                            16.35559966
 Virial ratio                                    4.67587819
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.999912787842
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96682130
 One electron energy                           -41.58703397
 Two electron energy                            16.58712118
 Virial ratio                                    4.58842458
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.999912787842
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96682130
 One electron energy                           -41.58703397
 Two electron energy                            16.58712118
 Virial ratio                                    4.58842458
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.999912787840
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96682130
 One electron energy                           -41.58703397
 Two electron energy                            16.58712118
 Virial ratio                                    4.58842458
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.999912787840
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96682130
 One electron energy                           -41.58703397
 Two electron energy                            16.58712118
 Virial ratio                                    4.58842458
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.999912787840
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96682130
 One electron energy                           -41.58703397
 Two electron energy                            16.58712118
 Virial ratio                                    4.58842458
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.992753800947
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.71299501
 One electron energy                           -40.76534742
 Two electron energy                            15.77259362
 Virial ratio                                    4.72304072
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061106893455
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83192937
 One electron energy                           -41.52113660
 Two electron energy                            16.46002970
 Virial ratio                                    4.66823273
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061106893455
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83192937
 One electron energy                           -41.52113660
 Two electron energy                            16.46002970
 Virial ratio                                    4.66823273
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061106893455
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83192937
 One electron energy                           -41.52113660
 Two electron energy                            16.46002970
 Virial ratio                                    4.66823273
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061106893455
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83192937
 One electron energy                           -41.52113660
 Two electron energy                            16.46002970
 Virial ratio                                    4.66823273
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061106893455
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83192937
 One electron energy                           -41.52113660
 Two electron energy                            16.46002970
 Virial ratio                                    4.66823273
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004391358106
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004391358106
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004391358105
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004391358105
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004391358105
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004391358105
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004391358105
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06277508
 One electron energy                           -41.88664864
 Two electron energy                            16.88225729
 Virial ratio                                    4.54030690
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.000154684973
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92691760
 One electron energy                           -41.47278384
 Two electron energy                            16.47262916
 Virial ratio                                    4.60913123
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000154684973
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92691760
 One electron energy                           -41.47278384
 Two electron energy                            16.47262916
 Virial ratio                                    4.60913123
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000154684973
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92691760
 One electron energy                           -41.47278384
 Two electron energy                            16.47262916
 Virial ratio                                    4.60913123
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.998488389560
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.53233181
 One electron energy                           -40.17512277
 Two electron energy                            15.17663438
 Virial ratio                                    4.82688588
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.000059727391
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999992256958
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000007740798
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000002243
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.999940272609
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000353772353
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000774
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.363569442321
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.636430556905
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     2.999646227647
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999996
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.314506652033
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.685480544171
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.000012803801
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999993905235
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999998455896
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.045879906236
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     5.173154024527
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.821776080754
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     3.959191532587
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     6.000006094765
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.998319426690
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.001680573310
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.999940271420
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000007740795
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999992258653
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000553
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000059728580
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999646269360
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000007795
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.636430553406
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.363569438799
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.000353730640
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000004
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.685493391082
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.314535976705
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.999970632208
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000006094767
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000843903
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     5.182868085805
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.046874123623
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.958159794091
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     4.812097152579
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     5.999993905233
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.001680573310
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.998319426690
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000001189
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000002247
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000549
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999997204
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999999998811
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.999999958287
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999999991431
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000004272
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000004297
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.000000041713
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999956885
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999983479124
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000016563991
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999998
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000700201
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     6.771252007959
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     6.779971851850
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.220064125156
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.228711314834
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000002
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>    -0.000000000000
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
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>    -0.000000000000
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
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.55778     1  1  s    0.98808
    2.1     0.45184    -0.03373     1  2  s    1.01271
    3.1     0.25837     0.05515     1  1  d2-  0.90712
    4.1     0.25837     0.05515     1  1  d2+  0.90712
    5.1     0.25837     0.05515     1  1  d1+  0.90712
    6.1     0.25837     0.05515     1  1  d1-  0.90712
    7.1     0.25837     0.05515     1  1  d0   0.90712
    8.1     0.06356     0.03966     1  2  s    0.73172    1  3  s    0.31492    1  8  s   -1.49729
    1.2     2.00000    -0.85954     1  1  pz   0.98512
    2.2     2.00000    -0.85954     1  1  py   0.98512
    3.2     2.00000    -0.85954     1  1  px   0.98512
    4.2     0.06425     0.05066     1  2  pz   1.03088
    5.2     0.06425     0.05066     1  2  py   1.03088
    6.2     0.06425     0.05066     1  2  px   1.03088
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.219D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.434D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.230D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.230D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.244D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.705D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.808D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.352D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 4 6 2 1 5 3   6 4 2 1 4 6 5 3 2 1   4 6 5 3 2 1 4 6 3 5   2 4 6 3 5 2 1 1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.199D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.199D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.636D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.639D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.602D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.382D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.373D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.383D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.246D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.251D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.251D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.683D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.679D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.667D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.638D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.625D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.625D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.917D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.917D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.524D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.524D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.458D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.457D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.204D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.286D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.286D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.160D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.160D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 2   1 3 9 7 5 4 6 810 2   1 3 6 7 9 4 5 810 5   4 9 7 6 810 2 1 3 5
                                        4 6 810 7 9 3 2 1
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.95520067      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 b0a0000 000      0.00000000     -0.00000774      0.00000000     -0.00000000      0.00000000     -0.64607885      0.04291671
 a0b0000 000     -0.00000000      0.00000774     -0.00000000      0.00000000     -0.00000000      0.64607885     -0.04291671
 a0000b0 000     -0.00000000      0.64607885      0.00000000      0.00000000      0.00000000     -0.00000774     -0.00000152
 b0000a0 000      0.00000000     -0.64607885     -0.00000000     -0.00000000     -0.00000000      0.00000774      0.00000152
 ab00000 000      0.00000000      0.00000000      0.00003094      0.00000216      0.64607885      0.00000000     -0.00000000
 ba00000 000     -0.00000000     -0.00000000     -0.00003094     -0.00000216     -0.64607885     -0.00000000      0.00000000
 b000a00 000      0.00000000      0.00000000      0.00432674     -0.64606436      0.00000195      0.00000000     -0.00000000
 a000b00 000     -0.00000000     -0.00000000     -0.00432674      0.64606436     -0.00000195     -0.00000000      0.00000000
 a00b000 000      0.00000000      0.00000000      0.64606436      0.00432674     -0.00003095      0.00000000      0.00000000
 b00a000 000     -0.00000000     -0.00000000     -0.64606436     -0.00432674      0.00003095     -0.00000000     -0.00000000
 b00000a 000     -0.02854649     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a00000b 000      0.02854649      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0200000 000     -0.04564518      0.12766128      0.00000000     -0.00000000      0.00000000     -0.00000153      0.00001658
 0020000 000     -0.04564518      0.12766128      0.00000000      0.00000000      0.00000000     -0.00000153      0.00001658
 00a00b0 000      0.00000000      0.00000153     -0.00000000     -0.00000000     -0.00000000      0.12766128      0.46942251
 00b00a0 000     -0.00000000     -0.00000153      0.00000000      0.00000000      0.00000000     -0.12766128     -0.46942251
 0000020 000     -0.04564518     -0.12766128     -0.00000000      0.00000000      0.00000000      0.00000153     -0.00001658
 0b000a0 000     -0.00000000     -0.00000000     -0.00000611     -0.00000043     -0.12766128     -0.00000000     -0.00000000
 0a000b0 000      0.00000000      0.00000000      0.00000611      0.00000043      0.12766128      0.00000000      0.00000000
 0002000 000     -0.04564518     -0.06383197     -0.00000000      0.00000000      0.00000000     -0.11055715     -0.40654011
 000ab00 000     -0.00000000     -0.00000000     -0.00000529     -0.00000037     -0.11055792     -0.00000000     -0.00000000
 000ba00 000      0.00000000      0.00000000      0.00000529      0.00000037      0.11055792      0.00000000      0.00000000
 0000200 000     -0.04564518     -0.06382932      0.00000000     -0.00000000     -0.00000000      0.11055868      0.40652353
 0b0a000 000     -0.00000000     -0.00000000     -0.00074040      0.11055544     -0.00000033     -0.00000000     -0.00000000
 0a0b000 000      0.00000000      0.00000000      0.00074040     -0.11055544      0.00000033      0.00000000      0.00000000
 00b0a00 000      0.00000000      0.00000000      0.00074040     -0.11055544      0.00000033      0.00000000      0.00000000
 00a0b00 000     -0.00000000     -0.00000000     -0.00074040      0.11055544     -0.00000033     -0.00000000     -0.00000000
 0a00b00 000     -0.00000000     -0.00000000     -0.11055544     -0.00074040      0.00000530     -0.00000000      0.00000000
 0b00a00 000      0.00000000      0.00000000      0.11055544      0.00074040     -0.00000530      0.00000000     -0.00000000
 00ba000 000      0.00000000      0.00000000      0.11055544      0.00074040     -0.00000530      0.00000000     -0.00000000
 00ab000 000     -0.00000000     -0.00000000     -0.11055544     -0.00074040      0.00000530     -0.00000000      0.00000000
 0000000 200     -0.15834883     -0.26618506      0.00000000      0.00000000     -0.00000000      0.00000319      0.00001315
 0000000 020     -0.15834883      0.13309529     -0.00000000      0.00000000     -0.00000000      0.23052143     -0.32249995
 0000000 0ba      0.00000000      0.00000000      0.00001104      0.00000077      0.23052303      0.00000000     -0.00000000
 0000000 0ab     -0.00000000     -0.00000000     -0.00001104     -0.00000077     -0.23052303     -0.00000000      0.00000000
 0000000 002     -0.15834883      0.13308977     -0.00000000     -0.00000000     -0.00000000     -0.23052462      0.32248679
 0000000 ba0     -0.00000000     -0.00000000     -0.00154379      0.23051786     -0.00000070     -0.00000000      0.00000000
 0000000 ab0      0.00000000      0.00000000      0.00154379     -0.23051786      0.00000070      0.00000000     -0.00000000
 0000000 b0a      0.00000000      0.00000000      0.23051786      0.00154379     -0.00001104      0.00000000      0.00000000
 0000000 a0b     -0.00000000     -0.00000000     -0.23051786     -0.00154379      0.00001104     -0.00000000     -0.00000000
 0000ba0 000     -0.00000000     -0.00000000     -0.00042747      0.06382921     -0.00000019     -0.00000000     -0.00000000
 0000ab0 000      0.00000000      0.00000000      0.00042747     -0.06382921      0.00000019      0.00000000      0.00000000
 000a0b0 000     -0.00000000     -0.00000000     -0.06382921     -0.00042747      0.00000306     -0.00000000      0.00000000
 000b0a0 000      0.00000000      0.00000000      0.06382921      0.00042747     -0.00000306      0.00000000     -0.00000000
 0000002 000     -0.01792772      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00a000b 000      0.00000000     -0.00000036      0.00000000     -0.00000000     -0.00000000     -0.03034467      0.09236109
 00b000a 000     -0.00000000      0.00000036     -0.00000000      0.00000000      0.00000000      0.03034467     -0.09236109
 00000ab 000     -0.00000000     -0.03034467     -0.00000000     -0.00000000      0.00000000      0.00000036      0.00000326
 00000ba 000      0.00000000      0.03034467      0.00000000      0.00000000     -0.00000000     -0.00000036     -0.00000326
 0a0000b 000     -0.00000000     -0.00000000     -0.00000145     -0.00000010     -0.03034467     -0.00000000      0.00000000
 0b0000a 000      0.00000000      0.00000000      0.00000145      0.00000010      0.03034467      0.00000000     -0.00000000
 0000a0b 000      0.00000000      0.00000000      0.00020322     -0.03034399      0.00000009      0.00000000     -0.00000000
 0000b0a 000     -0.00000000     -0.00000000     -0.00020322      0.03034399     -0.00000009     -0.00000000      0.00000000
 000b00a 000      0.00000000      0.00000000      0.03034399      0.00020322     -0.00000145      0.00000000      0.00000000
 000a00b 000     -0.00000000     -0.00000000     -0.03034399     -0.00020322      0.00000145     -0.00000000     -0.00000000
 
 Energy:        -25.11600144    -25.05416773    -25.05416773    -25.05416773    -25.05416773    -25.05416773    -24.99991279

 State:                8               9              10              11              12
 2000000 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00261857
 b0a0000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000152      0.00000000
 a0b0000 000      0.00000000      0.00000000      0.00000000      0.00000152     -0.00000000
 a0000b0 000      0.00000000      0.00000000      0.00000000     -0.04291671     -0.00000000
 b0000a0 000     -0.00000000     -0.00000000     -0.00000000      0.04291671      0.00000000
 ab00000 000     -0.04291671     -0.00000162     -0.00000368     -0.00000000     -0.00000000
 ba00000 000      0.04291671      0.00000162      0.00000368      0.00000000      0.00000000
 b000a00 000      0.00000100     -0.04234140      0.00700354     -0.00000000     -0.00000000
 a000b00 000     -0.00000100      0.04234140     -0.00700354      0.00000000      0.00000000
 a00b000 000     -0.00000389      0.00700354      0.04234140     -0.00000000     -0.00000000
 b00a000 000      0.00000389     -0.00700354     -0.04234140      0.00000000      0.00000000
 b00000a 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.56234716
 a00000b 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.56234716
 0200000 000     -0.00000000     -0.00000000      0.00000000      0.46942251     -0.22404216
 0020000 000      0.00000000      0.00000000     -0.00000000      0.46942251     -0.22404216
 00a00b0 000     -0.00000000     -0.00000000     -0.00000000     -0.00001658     -0.00000000
 00b00a0 000      0.00000000      0.00000000      0.00000000      0.00001658      0.00000000
 0000020 000     -0.00000000     -0.00000000     -0.00000000     -0.46942251     -0.22404216
 0b000a0 000     -0.46942251     -0.00001770     -0.00004022     -0.00000000      0.00000000
 0a000b0 000      0.46942251      0.00001770      0.00004022      0.00000000     -0.00000000
 0002000 000      0.00000000      0.00000000      0.00000000     -0.23469689     -0.22404216
 000ab00 000     -0.40653182     -0.00001533     -0.00003483     -0.00000000      0.00000000
 000ba00 000      0.40653182      0.00001533      0.00003483      0.00000000     -0.00000000
 0000200 000     -0.00000000     -0.00000000      0.00000000     -0.23472562     -0.22404216
 0b0a000 000      0.00000944     -0.40108217      0.06634162      0.00000000      0.00000000
 0a0b000 000     -0.00000944      0.40108217     -0.06634162     -0.00000000     -0.00000000
 00b0a00 000     -0.00000944      0.40108217     -0.06634162     -0.00000000     -0.00000000
 00a0b00 000      0.00000944     -0.40108217      0.06634162      0.00000000      0.00000000
 0a00b00 000     -0.00003686      0.06634162      0.40108217     -0.00000000      0.00000000
 0b00a00 000      0.00003686     -0.06634162     -0.40108217      0.00000000     -0.00000000
 00ba000 000      0.00003686     -0.06634162     -0.40108217     -0.00000000     -0.00000000
 00ab000 000     -0.00003686      0.06634162      0.40108217      0.00000000      0.00000000
 0000000 200      0.00000000      0.00000000      0.00000000      0.37238327      0.17449532
 0000000 020      0.00000000      0.00000000      0.00000000     -0.18618024      0.17449532
 0000000 0ba     -0.32249337     -0.00001216     -0.00002763     -0.00000000     -0.00000000
 0000000 0ab      0.32249337      0.00001216      0.00002763      0.00000000      0.00000000
 0000000 002     -0.00000000     -0.00000000     -0.00000000     -0.18620303      0.17449532
 0000000 ba0     -0.00000749      0.31817028     -0.05262745     -0.00000000      0.00000000
 0000000 ab0      0.00000749     -0.31817028      0.05262745      0.00000000     -0.00000000
 0000000 b0a     -0.00002924      0.05262745      0.31817028      0.00000000     -0.00000000
 0000000 a0b      0.00002924     -0.05262745     -0.31817028     -0.00000000      0.00000000
 0000ba0 000      0.00000545     -0.23156490      0.03830235      0.00000000      0.00000000
 0000ab0 000     -0.00000545      0.23156490     -0.03830235     -0.00000000     -0.00000000
 000a0b0 000     -0.00002128      0.03830235      0.23156490      0.00000000      0.00000000
 000b0a0 000      0.00002128     -0.03830235     -0.23156490     -0.00000000     -0.00000000
 0000002 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.15875828
 00a000b 000     -0.00000000     -0.00000000      0.00000000     -0.00000326     -0.00000000
 00b000a 000      0.00000000      0.00000000     -0.00000000      0.00000326      0.00000000
 00000ab 000     -0.00000000     -0.00000000     -0.00000000      0.09236109     -0.00000000
 00000ba 000      0.00000000      0.00000000      0.00000000     -0.09236109      0.00000000
 0a0000b 000      0.09236109      0.00000348      0.00000791      0.00000000      0.00000000
 0b0000a 000     -0.09236109     -0.00000348     -0.00000791     -0.00000000     -0.00000000
 0000a0b 000      0.00000214     -0.09112297      0.01507234      0.00000000     -0.00000000
 0000b0a 000     -0.00000214      0.09112297     -0.01507234     -0.00000000      0.00000000
 000b00a 000     -0.00000838      0.01507234      0.09112297      0.00000000     -0.00000000
 000a00b 000      0.00000838     -0.01507234     -0.09112297     -0.00000000      0.00000000
 
 Energy:        -24.99991279    -24.99991279    -24.99991279    -24.99991279    -24.99275380
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a000a0 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 aa00000 000      0.00000000      0.00000000      0.00000000      0.99999999     -0.00000000     -0.00000000      0.00000000
 a0a0000 000      0.99999999      0.00000105      0.00000001     -0.00000000     -0.00000000      0.00000000     -0.00000000
 00a00a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.99999993
 a0000a0 000     -0.00000000      0.00035494      0.00255832      0.00000000      0.99999666     -0.00000000      0.00000000
 a00a000 000     -0.00000105      0.99995964      0.00897547      0.00000000     -0.00037789      0.00000000     -0.00000000
 a000a00 000     -0.00000000     -0.00897641      0.99995644     -0.00000000     -0.00255503      0.00000000      0.00000000
 000aa00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000069     -0.00000000
 0a0a000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00003267
 0a00a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000682
 00a0a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00031129
 00aa000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00001954
 0aa0000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000035     -0.00000000
 0000aa0 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00019859
 000a0a0 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000735
 0000000 0aa     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 aa0     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 a0a     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:        -25.06110689    -25.06110689    -25.06110689    -25.06110689    -25.06110689    -25.00439136    -25.00439136

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0a000a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000078     -0.00000000     -0.00000000
 aa00000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a0a0000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 00a00a0 000     -0.00000976      0.00000160      0.00001955      0.00037068      0.00000000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a00a000 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 000aa00 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.89442719     -0.00000000      0.00000000
 0a0a000 000      0.00000058      0.88968506      0.00003669     -0.09198092      0.00000000     -0.00040599      0.36873707
 0a00a00 000      0.88961109      0.00000971      0.09269351      0.00013656      0.00000000      0.36873707      0.00040599
 00a0a00 000     -0.00009777      0.31148142     -0.00032955      0.83843850      0.00000000      0.00040599     -0.36873707
 00aa000 000     -0.31215293     -0.00000391      0.83818880      0.00029450      0.00000000      0.36873707      0.00040599
 0aa0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.44721360     -0.00000000      0.00000000
 0000aa0 000     -0.00005678     -0.33382603     -0.00021145      0.53717790     -0.00000000     -0.00070319      0.63867135
 000a0a0 000     -0.33339563     -0.00000335     -0.53744515     -0.00024887     -0.00000000      0.63867135      0.00070319
 0000000 0aa     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 aa0     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00062299      0.56583004
 0000000 a0a     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.56583004      0.00062299
 
 Energy:        -25.00439136    -25.00439136    -25.00439136    -25.00439136    -25.00439136    -25.00015468    -25.00015468

 State:               15              16
 a00000a 000     -0.00000000      1.00000000
 0a000a0 000      0.00000000      0.00000000
 aa00000 000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000      0.00000000
 00a00a0 000      0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000
 000aa00 000     -0.36873730     -0.00000000
 0a0a000 000      0.00000000      0.00000000
 0a00a00 000      0.00000000      0.00000000
 00a0a00 000     -0.00000000      0.00000000
 00aa000 000      0.00000000      0.00000000
 0aa0000 000      0.73747460     -0.00000000
 0000aa0 000      0.00000000      0.00000000
 000a0a0 000      0.00000000      0.00000000
 0000000 0aa     -0.56583039     -0.00000000
 0000000 aa0     -0.00000000     -0.00000000
 0000000 a0a      0.00000000      0.00000000
 
 Energy:        -25.00015468    -24.99848839
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       6        7.99       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.89      1.17      1.04      0.04      0.37
 REAL TIME  *         3.98 SEC
 DISK USED  *        41.61 MB (local),      553.29 MB (total)
 SF USED    *        14.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11600144   -0.0
    -25.05416773    6.0
    -25.05416773    6.0
    -25.05416773    6.0
    -25.05416773    6.0
    -25.05416773    6.0
    -24.99991279    6.0
    -24.99991279    6.0
    -24.99991279    6.0
    -24.99991279    6.0
    -24.99991279    6.0
    -24.99275380   -0.0
    -25.06110689    6.0
    -25.06110689    6.0
    -25.06110689    6.0
    -25.06110689    6.0
    -25.06110689    6.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00439136   12.0
    -25.00015468    2.0
    -25.00015468    2.0
    -25.00015468    2.0
    -24.99848839   -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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
 Number of external orbitals:      73 (  30  43 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11600144
     2       -25.05416773
     3       -25.05416773
     4       -25.05416773
     5       -25.05416773
     6       -25.05416773
     7       -24.99991279
     8       -24.99991279
     9       -24.99991279
    10       -24.99991279
    11       -24.99991279
    12       -24.99275380

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.65D+00
 Number of N-2 electron functions:     273
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        233627
 Number of doubly external configurations:        366887
 Total number of contracted configurations:       608365
 Total number of uncontracted configurations:    1785599

 Diagonal Coupling coefficients finished.               Storage: 4225901 words, CPU-Time:      0.72 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  277462 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11600144     0.00000000    -0.20793980  0.38D-01  0.42D-01     1.33
    1     2     2     1.00000000     0.00000000   -25.05416773     0.00000000    -0.21998617  0.46D-01  0.48D-01     1.33
    1     3     3     1.00000000     0.00000000   -25.05416773    -0.00000000    -0.22010633  0.46D-01  0.48D-01     1.33
    1     4     4     1.00000000     0.00000000   -25.05416773    -0.00000000    -0.22018025  0.47D-01  0.48D-01     1.33
    1     5     5     1.00000000     0.00000000   -25.05416773     0.00000000    -0.21995994  0.46D-01  0.48D-01     1.33
    1     6     6     1.00000000     0.00000000   -25.05416773     0.00000000    -0.21992936  0.46D-01  0.48D-01     1.33
    1     7     7     1.00000000     0.00000000   -24.99991279     0.00000000    -0.22504794  0.42D-01  0.56D-01     1.33
    1     8     8     1.00000000     0.00000000   -24.99991279    -0.00000000    -0.22543838  0.42D-01  0.56D-01     1.33
    1     9     9     1.00000000     0.00000000   -24.99991279     0.00000000    -0.22548899  0.42D-01  0.56D-01     1.33
    1    10    10     1.00000000     0.00000000   -24.99991279     0.00000000    -0.22549023  0.42D-01  0.56D-01     1.33
    1    11    11     1.00000000     0.00000000   -24.99991279     0.00000000    -0.22458912  0.41D-01  0.55D-01     1.33
    1    12    12     1.00000000     0.00000000   -24.99275380     0.00000000    -0.21576809  0.47D-01  0.48D-01     1.33
    2     1     1     1.06958732    -0.21432781   -25.33032925    -0.21432781    -0.00548211  0.18D-02  0.77D-03     8.30
    2     2     2     1.07878004    -0.21593577   -25.27010350    -0.21593577    -0.00565849  0.19D-02  0.92D-03     8.30
    2     3     3     1.07883035    -0.21593159   -25.27009932    -0.21593159    -0.00566609  0.19D-02  0.92D-03     8.30
    2     4     4     1.07872016    -0.21592912   -25.27009684    -0.21592912    -0.00565503  0.19D-02  0.91D-03     8.30
    2     5     5     1.07885661    -0.21590486   -25.27007259    -0.21590486    -0.00569357  0.19D-02  0.93D-03     8.30
    2     6     6     1.07886121    -0.21589436   -25.27006209    -0.21589436    -0.00570410  0.19D-02  0.93D-03     8.30
    2     7     7     1.07883680    -0.21507033   -25.21498312    -0.21507033    -0.00562774  0.20D-02  0.11D-02     8.30
    2     8     8     1.07892967    -0.21495584   -25.21486863    -0.21495584    -0.00577141  0.22D-02  0.11D-02     8.30
    2     9     9     1.07899463    -0.21488550   -25.21479829    -0.21488550    -0.00586134  0.23D-02  0.11D-02     8.30
    2    10    10     1.07899839    -0.21487393   -25.21478672    -0.21487393    -0.00587975  0.23D-02  0.11D-02     8.30
    2    11    11     1.07900333    -0.21487359   -25.21478638    -0.21487359    -0.00588073  0.23D-02  0.11D-02     8.30
    2    12    12     1.07839706    -0.21477444   -25.20752825    -0.21477444    -0.00656332  0.26D-02  0.11D-02     8.30
    3     1     1     1.07219620    -0.22003328   -25.33603472    -0.00570547    -0.00020906  0.63D-04  0.33D-04    15.30
    3     2     2     1.08113631    -0.22184712   -25.27601485    -0.00591136    -0.00022157  0.79D-04  0.41D-04    15.30
    3     3     3     1.08115288    -0.22184503   -25.27601276    -0.00591344    -0.00022405  0.79D-04  0.42D-04    15.30
    3     4     4     1.08115875    -0.22184378   -25.27601151    -0.00591467    -0.00022558  0.80D-04  0.42D-04    15.30
    3     5     5     1.08115902    -0.22184312   -25.27601085    -0.00593826    -0.00022607  0.80D-04  0.42D-04    15.30
    3     6     6     1.08115995    -0.22184311   -25.27601084    -0.00594875    -0.00022611  0.80D-04  0.42D-04    15.30
    3     7     7     1.07957154    -0.22084762   -25.22076040    -0.00577729    -0.00020756  0.54D-04  0.54D-04    15.30
    3     8     8     1.07957867    -0.22083926   -25.22075205    -0.00588342    -0.00021786  0.57D-04  0.57D-04    15.30
    3     9     9     1.07957619    -0.22083459   -25.22074738    -0.00594909    -0.00022412  0.57D-04  0.59D-04    15.30
    3    10    10     1.07957788    -0.22083458   -25.22074737    -0.00596065    -0.00022420  0.57D-04  0.59D-04    15.30
    3    11    11     1.07957649    -0.22083445   -25.22074723    -0.00596085    -0.00022399  0.57D-04  0.59D-04    15.30
    3    12    12     1.07780872    -0.22121186   -25.21396566    -0.00643742    -0.00028143  0.71D-04  0.70D-04    15.30
    4     1     1     1.07299561    -0.22025552   -25.33625696    -0.00022224    -0.00001394  0.94D-05  0.17D-05    22.08
    4     2     2     1.08286987    -0.22210688   -25.27627461    -0.00025975    -0.00002240  0.21D-04  0.23D-05    22.08
    4     3     3     1.08286475    -0.22210659   -25.27627432    -0.00026156    -0.00002259  0.21D-04  0.24D-05    22.08
    4     4     4     1.08286314    -0.22210637   -25.27627409    -0.00026258    -0.00002278  0.21D-04  0.24D-05    22.08
    4     5     5     1.08286200    -0.22210624   -25.27627397    -0.00026312    -0.00002285  0.21D-04  0.24D-05    22.08
    4     6     6     1.08286163    -0.22210619   -25.27627392    -0.00026308    -0.00002288  0.21D-04  0.24D-05    22.08
    4     7     7     1.08057288    -0.22107455   -25.22098734    -0.00022693    -0.00001579  0.13D-04  0.24D-05    22.08
    4     8     8     1.08057193    -0.22107453   -25.22098732    -0.00023527    -0.00001580  0.13D-04  0.24D-05    22.08
    4     9     9     1.08057216    -0.22107437   -25.22098715    -0.00023978    -0.00001592  0.13D-04  0.24D-05    22.08
    4    10    10     1.08059334    -0.22107423   -25.22098702    -0.00023965    -0.00001563  0.13D-04  0.23D-05    22.08
    4    11    11     1.08058204    -0.22107420   -25.22098699    -0.00023975    -0.00001583  0.13D-04  0.23D-05    22.08
    4    12    12     1.07856512    -0.22149938   -25.21425318    -0.00028752    -0.00001718  0.10D-04  0.30D-05    22.08
    5     1     1     1.07335231    -0.22027196   -25.33627340    -0.00001644    -0.00000123  0.67D-06  0.17D-06    28.88
    5     2     2     1.08382984    -0.22213823   -25.27630595    -0.00003135    -0.00000311  0.15D-05  0.45D-06    28.88
    5     3     3     1.08382674    -0.22213815   -25.27630588    -0.00003156    -0.00000316  0.16D-05  0.45D-06    28.88
    5     4     4     1.08382335    -0.22213808   -25.27630581    -0.00003171    -0.00000322  0.16D-05  0.45D-06    28.88
    5     5     5     1.08382282    -0.22213806   -25.27630579    -0.00003182    -0.00000323  0.16D-05  0.45D-06    28.88
    5     6     6     1.08382264    -0.22213806   -25.27630579    -0.00003186    -0.00000324  0.16D-05  0.45D-06    28.88
    5     7     7     1.08098757    -0.22109428   -25.22100707    -0.00001973    -0.00000157  0.89D-06  0.25D-06    28.88
    5     8     8     1.08098728    -0.22109428   -25.22100707    -0.00001975    -0.00000157  0.89D-06  0.25D-06    28.88
    5     9     9     1.08098791    -0.22109427   -25.22100706    -0.00001990    -0.00000158  0.89D-06  0.25D-06    28.88
    5    10    10     1.08099113    -0.22109418   -25.22100697    -0.00001995    -0.00000163  0.92D-06  0.26D-06    28.88
    5    11    11     1.08099642    -0.22109412   -25.22100691    -0.00001992    -0.00000167  0.91D-06  0.27D-06    28.88
    5    12    12     1.07873954    -0.22151971   -25.21427351    -0.00002032    -0.00000171  0.13D-05  0.29D-06    28.88
    6     1     1     1.07343187    -0.22027342   -25.33627486    -0.00000146    -0.00000010  0.36D-07  0.15D-07    35.43
    6     2     2     1.08399356    -0.22214206   -25.27630979    -0.00000383    -0.00000031  0.17D-06  0.42D-07    35.43
    6     3     3     1.08399285    -0.22214205   -25.27630978    -0.00000390    -0.00000031  0.18D-06  0.43D-07    35.43
    6     4     4     1.08399219    -0.22214204   -25.27630977    -0.00000396    -0.00000032  0.18D-06  0.45D-07    35.43
    6     5     5     1.08399159    -0.22214204   -25.27630977    -0.00000397    -0.00000033  0.18D-06  0.45D-07    35.43
    6     6     6     1.08399170    -0.22214204   -25.27630977    -0.00000398    -0.00000032  0.18D-06  0.45D-07    35.43
    6     7     7     1.08104597    -0.22109618   -25.22100897    -0.00000190    -0.00000013  0.43D-07  0.28D-07    35.43
    6     8     8     1.08104608    -0.22109618   -25.22100897    -0.00000189    -0.00000013  0.43D-07  0.29D-07    35.43
    6     9     9     1.08104612    -0.22109618   -25.22100896    -0.00000191    -0.00000013  0.43D-07  0.29D-07    35.43
    6    10    10     1.08104703    -0.22109617   -25.22100895    -0.00000199    -0.00000014  0.45D-07  0.31D-07    35.43
    6    11    11     1.08104873    -0.22109616   -25.22100895    -0.00000204    -0.00000014  0.45D-07  0.32D-07    35.43
    6    12    12     1.07874681    -0.22152183   -25.21427563    -0.00000212    -0.00000019  0.62D-07  0.45D-07    35.43
    7     1     1     1.07344776    -0.22027353   -25.33627497    -0.00000011    -0.00000001  0.46D-08  0.11D-08    42.01
    7     2     2     1.08403622    -0.22214241   -25.27631014    -0.00000035    -0.00000003  0.29D-07  0.47D-08    42.01
    7     3     3     1.08403575    -0.22214241   -25.27631013    -0.00000036    -0.00000003  0.29D-07  0.49D-08    42.01
    7     4     4     1.08403506    -0.22214240   -25.27631013    -0.00000037    -0.00000004  0.30D-07  0.51D-08    42.01
    7     5     5     1.08403495    -0.22214240   -25.27631013    -0.00000037    -0.00000004  0.30D-07  0.51D-08    42.01
    7     6     6     1.08403488    -0.22214240   -25.27631013    -0.00000037    -0.00000004  0.30D-07  0.51D-08    42.01
    7     7     7     1.08105606    -0.22109632   -25.22100911    -0.00000014    -0.00000001  0.11D-07  0.21D-08    42.01
    7     8     8     1.08105612    -0.22109632   -25.22100911    -0.00000014    -0.00000001  0.11D-07  0.21D-08    42.01
    7     9     9     1.08105609    -0.22109632   -25.22100911    -0.00000014    -0.00000001  0.11D-07  0.21D-08    42.01
    7    10    10     1.08105659    -0.22109632   -25.22100911    -0.00000015    -0.00000001  0.12D-07  0.23D-08    42.01
    7    11    11     1.08105736    -0.22109632   -25.22100910    -0.00000016    -0.00000001  0.12D-07  0.25D-08    42.01
    7    12    12     1.07875282    -0.22152204   -25.21427584    -0.00000021    -0.00000002  0.17D-07  0.44D-08    42.01
    8     1     1     1.07344944    -0.22027353   -25.33627497    -0.00000000    -0.00000000  0.23D-08  0.76D-09    48.18
    8     2     2     1.08405696    -0.22214245   -25.27631018    -0.00000004    -0.00000001  0.30D-08  0.80D-09    48.18
    8     3     3     1.08405675    -0.22214245   -25.27631018    -0.00000004    -0.00000001  0.32D-08  0.81D-09    48.18
    8     4     4     1.08405647    -0.22214245   -25.27631018    -0.00000004    -0.00000001  0.34D-08  0.82D-09    48.18
    8     5     5     1.08405645    -0.22214245   -25.27631018    -0.00000004    -0.00000001  0.34D-08  0.83D-09    48.18
    8     6     6     1.08405644    -0.22214245   -25.27631018    -0.00000004    -0.00000001  0.34D-08  0.83D-09    48.18
    8     7     7     1.08105868    -0.22109633   -25.22100912    -0.00000001    -0.00000000  0.99D-09  0.43D-09    48.18
    8     8     8     1.08105869    -0.22109633   -25.22100912    -0.00000001    -0.00000000  0.99D-09  0.43D-09    48.18
    8     9     9     1.08105870    -0.22109633   -25.22100912    -0.00000001    -0.00000000  0.10D-08  0.44D-09    48.18
    8    10    10     1.08105880    -0.22109633   -25.22100912    -0.00000002    -0.00000000  0.11D-08  0.47D-09    48.18
    8    11    11     1.08105895    -0.22109633   -25.22100912    -0.00000002    -0.00000000  0.11D-08  0.50D-09    48.18
    8    12    12     1.07875026    -0.22152207   -25.21427587    -0.00000003    -0.00000000  0.85D-09  0.40D-09    48.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.6%
 S   6.2%  25.6%
 P   1.0%  19.9%  14.8%

 Initialization:   1.7%
 Other:           20.2%

 Total CPU:       48.2 seconds
 =====================================



 gnormi=  0.93157624  gnorms=  0.03102647  gnormp=  0.03739729  gnorm=  1.00000000
 ecorri= -0.20520159  ecorrs= -0.00683518  ecorrp= -0.00823677  ecorr= -0.22027353

 gnormi=  0.92246075  gnorms=  0.03652799  gnormp=  0.04101126  gnorm=  1.00000000
 ecorri= -0.20491769  ecorrs= -0.00811522  ecorrp= -0.00910954  ecorr= -0.22214245

 gnormi=  0.92246093  gnorms=  0.03652776  gnormp=  0.04101130  gnorm=  1.00000000
 ecorri= -0.20491773  ecorrs= -0.00811522  ecorrp= -0.00910950  ecorr= -0.22214245

 gnormi=  0.92246117  gnorms=  0.03652750  gnormp=  0.04101133  gnorm=  1.00000000
 ecorri= -0.20491778  ecorrs= -0.00811521  ecorrp= -0.00910946  ecorr= -0.22214245

 gnormi=  0.92246118  gnorms=  0.03652750  gnormp=  0.04101132  gnorm=  1.00000000
 ecorri= -0.20491779  ecorrs= -0.00811518  ecorrp= -0.00910948  ecorr= -0.22214245

 gnormi=  0.92246120  gnorms=  0.03652750  gnormp=  0.04101130  gnorm=  1.00000000
 ecorri= -0.20491779  ecorrs= -0.00811517  ecorrp= -0.00910949  ecorr= -0.22214245

 gnormi=  0.92501917  gnorms=  0.02925737  gnormp=  0.04572345  gnorm=  1.00000000
 ecorri= -0.20451835  ecorrs= -0.00646914  ecorrp= -0.01010885  ecorr= -0.22109633

 gnormi=  0.92501915  gnorms=  0.02925738  gnormp=  0.04572347  gnorm=  1.00000000
 ecorri= -0.20451834  ecorrs= -0.00646914  ecorrp= -0.01010885  ecorr= -0.22109633

 gnormi=  0.92501915  gnorms=  0.02925736  gnormp=  0.04572349  gnorm=  1.00000000
 ecorri= -0.20451834  ecorrs= -0.00646913  ecorrp= -0.01010886  ecorr= -0.22109633

 gnormi=  0.92501906  gnorms=  0.02925738  gnormp=  0.04572356  gnorm=  1.00000000
 ecorri= -0.20451832  ecorrs= -0.00646914  ecorrp= -0.01010887  ecorr= -0.22109633

 gnormi=  0.92501893  gnorms=  0.02925745  gnormp=  0.04572361  gnorm=  1.00000000
 ecorri= -0.20451829  ecorrs= -0.00646916  ecorrp= -0.01010887  ecorr= -0.22109633

 gnormi=  0.92699862  gnorms=  0.03208860  gnormp=  0.04091278  gnorm=  1.00000000
 ecorri= -0.20535065  ecorrs= -0.00710863  ecorrp= -0.00906278  ecorr= -0.22152207

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9213412   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000  -0.0658786
 2/000\00222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.8865974  -0.0000000   0.1176146
                         -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/00\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.8865974   0.0000000   0.1176146   0.0000000
                         -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/\00000222000           0.0000000   0.0000000   0.0000000   0.8865974  -0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.1176147   0.0000000   0.0000000   0.0000000
 2/0000\0222000           0.0000000   0.8864561   0.0158355  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.0082483   0.1173247   0.0000000
 2/0\0000222000           0.0000000  -0.0158355   0.8864560   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000000  -0.1173249  -0.0082484   0.0000000
 2/00000\222000           0.0932120   0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0000002  -0.0000001   0.7443870
 20/000\0222000           0.0000000   0.0000000  -0.0000000   0.1900206   0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.6386369  -0.0000000  -0.0000000   0.0000000
 200/00\0222000          -0.0000002  -0.0033940   0.1899898  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.6370690   0.0447881   0.0000002
 200/0\00222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.1645625  -0.0000000  -0.5530772
                          0.0000000  -0.0000000  -0.0000000  -0.0000000
 2000/\00222000           0.0000000   0.0000000  -0.0000000  -0.1645626  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.5530769  -0.0000000  -0.0000000   0.0000000
 20/00\00222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1645626   0.0000000   0.5530769  -0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 200/\000222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.1645626   0.0000000   0.5530766  -0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 20/0\000222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1645627  -0.0000000   0.5530762
                         -0.0000000   0.0000000   0.0000000  -0.0000000
 20020000222000          -0.0528487   0.1343432   0.0023999   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                          0.0000000   0.0316700  -0.4504730  -0.2166783
 20200000222000          -0.0528487   0.1343432   0.0023999   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000   0.0316699  -0.4504730  -0.2166783
 20000020222000          -0.0528495  -0.1343432  -0.0023999   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.0316698   0.4504709  -0.2166773
 20000000222/0\          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2560955  -0.0000000  -0.4212694  -0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 20000000222/\0           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2560955  -0.0000000  -0.4212694
                         -0.0000000  -0.0000000  -0.0000000  -0.0000000
 200000002220/\          -0.0000000  -0.0000000   0.0000000  -0.2560955   0.0000000   0.0000000   0.0000000   0.0000000
                          0.4212692   0.0000000  -0.0000000  -0.0000000
 20002000222000          -0.0528481  -0.0650931  -0.1175449   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000  -0.4059523   0.1978107  -0.2166790
 20000200222000          -0.0528478  -0.0692498   0.1151450   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000   0.3742829   0.2526643  -0.2166793
 20000000222200          -0.1281548  -0.2090669  -0.0037348   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000000   0.0241225  -0.3431184   0.1791598
 20000/\0222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0950104  -0.0000000   0.3193170
                         -0.0000000  -0.0000000  -0.0000000   0.0000000
 2000/0\0222000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0950104  -0.0000000   0.3193167  -0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000000
 20000000222020          -0.1281549   0.1012991   0.1829250  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.3092103   0.1506687   0.1791598
 20000000222002          -0.1281549   0.1077679  -0.1791903  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                          0.0000000   0.2850877   0.1924499   0.1791598
 20000002222000          -0.0099755   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000   0.0000001  -0.0000001   0.1686286
 2000/00\222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0152025   0.0000000  -0.1178568   0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000
 20000/0\222000          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0152025  -0.0000000  -0.1178567
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 20/0000\222000           0.0000000  -0.0000000  -0.0000000  -0.0152024  -0.0000000   0.0000000  -0.0000000   0.0000000
                          0.1178562  -0.0000000  -0.0000000   0.0000000
 200000/\222000          -0.0000001  -0.0152005  -0.0002715  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0082655  -0.1175684   0.0000002
 200/000\222000          -0.0000000   0.0002715  -0.0152003  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000   0.1175672   0.0082654   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956949   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.067073
 2          -0.000000    0.954158   -0.000000    0.000000    0.000000   -0.013682   -0.000362   -0.000000   -0.000000   -0.000000
            -0.048162    0.000000
 3          -0.000000    0.013682   -0.000000    0.000000    0.000000    0.954158    0.048162    0.000000   -0.000000    0.000000
            -0.000362   -0.000000
 4          -0.000000   -0.000000    0.000000    0.000000    0.954256    0.000000   -0.000000    0.048164    0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000    0.954256   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.048164   -0.000000
             0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.954256   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.048164
             0.000000   -0.000000
 7          -0.000000    0.000000    0.048084   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.956607    0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.048084    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.956607
            -0.000000    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000   -0.048084   -0.000000   -0.000000    0.956607   -0.000000   -0.000000
            -0.000000   -0.000000
 10         -0.000000   -0.003203    0.000000   -0.000000    0.000000   -0.047977    0.954895    0.000000   -0.000000    0.000000
            -0.057216    0.000000
 11         -0.000000    0.047977   -0.000000   -0.000000    0.000000   -0.003203    0.057216    0.000000    0.000000    0.000000
             0.954895    0.000000
 12         -0.071556   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.955107

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959293   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.002303
 2          -0.000000    0.955471    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000005
            -0.000099   -0.000000
 3           0.000000    0.000000    0.955471    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000099
             0.000005   -0.000000
 4          -0.000000    0.000000    0.000000    0.955471   -0.000000    0.000000    0.000000    0.000000    0.000099   -0.000000
            -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.955471   -0.000000   -0.000099   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.955471    0.000000   -0.000099    0.000000    0.000000
            -0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000099    0.000000    0.957815    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000099    0.000000    0.957815    0.000000    0.000000
             0.000000   -0.000000
 9           0.000000    0.000000   -0.000000    0.000099    0.000000    0.000000    0.000000    0.000000    0.957815    0.000000
             0.000000    0.000000
 10         -0.000000    0.000005    0.000099   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.957815
            -0.000000    0.000000
 11         -0.000000   -0.000099    0.000005   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.957815    0.000000
 12         -0.002303   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.957781


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95694855 (fixed)   0.95963194 (relaxed)   0.95929348 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01231441   -0.01996215   -0.12895356
 Singles      0.03371548   -0.06978237   -0.07105199
 Pairs        0.04063845   -0.01307395   -0.02026799
 Total        1.08666834   -0.10281847   -0.22027353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11535696
 Nuclear energy                         0.00000000
 Kinetic energy                         6.90068579
 One electron energy                  -41.22145658
 Two electron energy                   15.88518161
 Virial quotient                       -3.67155899
 Correlation energy                    -0.22091801
 !MRCI STATE 1.1 Energy               -25.336274971633

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35542157 (Davidson, fixed reference)
 Cluster corrected energies           -25.35525226 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35542157 (Davidson, rotated reference)

 Cluster corrected energies           -25.35241091 (Pople, fixed reference)
 Cluster corrected energies           -25.35226086 (Pople, relaxed reference)
 Cluster corrected energies           -25.35241091 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95415781 (fixed)   0.95658725 (relaxed)   0.95547059 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01044633   -0.01462823   -0.14095666
 Singles      0.04001207   -0.07006172   -0.07207625
 Pairs        0.04492298    0.00000000   -0.00910953
 Total        1.09538138   -0.08468995   -0.22214245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05403043
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06937851
 One electron energy                  -41.46220486
 Two electron energy                   16.18589468
 Virial quotient                       -3.57546426
 Correlation energy                    -0.22227975
 !MRCI STATE 2.1 Energy               -25.276310177509

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29751153 (Davidson, fixed reference)
 Cluster corrected energies           -25.29694341 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29751153 (Davidson, rotated reference)

 Cluster corrected energies           -25.29427147 (Pople, fixed reference)
 Cluster corrected energies           -25.29376338 (Pople, relaxed reference)
 Cluster corrected energies           -25.29427147 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95415793 (fixed)   0.95658735 (relaxed)   0.95547071 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01044628   -0.01462822   -0.14095673
 Singles      0.04001182   -0.07006167   -0.07207622
 Pairs        0.04492301    0.00000000   -0.00910950
 Total        1.09538111   -0.08468990   -0.22214245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05403043
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06937812
 One electron energy                  -41.46220282
 Two electron energy                   16.18589264
 Virial quotient                       -3.57546445
 Correlation energy                    -0.22227975
 !MRCI STATE 3.1 Energy               -25.276310177276

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29751147 (Davidson, fixed reference)
 Cluster corrected energies           -25.29694336 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29751147 (Davidson, rotated reference)

 Cluster corrected energies           -25.29427142 (Pople, fixed reference)
 Cluster corrected energies           -25.29376334 (Pople, relaxed reference)
 Cluster corrected energies           -25.29427142 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95425616 (fixed)   0.95658747 (relaxed)   0.95547085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01044624   -0.01462822   -0.14095680
 Singles      0.04001152   -0.07006163   -0.07207619
 Pairs        0.04492302    0.00000000   -0.00910946
 Total        1.09538078   -0.08468985   -0.22214245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05403043
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06937751
 One electron energy                  -41.46220036
 Two electron energy                   16.18589019
 Virial quotient                       -3.57546476
 Correlation energy                    -0.22227975
 !MRCI STATE 4.1 Energy               -25.276310176978

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29751139 (Davidson, fixed reference)
 Cluster corrected energies           -25.29694329 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29751139 (Davidson, rotated reference)

 Cluster corrected energies           -25.29427135 (Pople, fixed reference)
 Cluster corrected energies           -25.29376328 (Pople, relaxed reference)
 Cluster corrected energies           -25.29427135 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95425617 (fixed)   0.95658748 (relaxed)   0.95547086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01044624   -0.01462822   -0.14095678
 Singles      0.04001152   -0.07006165   -0.07207619
 Pairs        0.04492301    0.00000000   -0.00910948
 Total        1.09538076   -0.08468987   -0.22214245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05403043
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06937757
 One electron energy                  -41.46220033
 Two electron energy                   16.18589016
 Virial quotient                       -3.57546473
 Correlation energy                    -0.22227975
 !MRCI STATE 5.1 Energy               -25.276310176949

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29751139 (Davidson, fixed reference)
 Cluster corrected energies           -25.29694329 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29751139 (Davidson, rotated reference)

 Cluster corrected energies           -25.29427135 (Pople, fixed reference)
 Cluster corrected energies           -25.29376328 (Pople, relaxed reference)
 Cluster corrected energies           -25.29427135 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95425618 (fixed)   0.95658749 (relaxed)   0.95547087 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01044623   -0.01462822   -0.14095677
 Singles      0.04001152   -0.07006167   -0.07207619
 Pairs        0.04492299    0.00000000   -0.00910949
 Total        1.09538074   -0.08468988   -0.22214245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05403043
 Nuclear energy                         0.00000000
 Kinetic energy                         7.06937757
 One electron energy                  -41.46220029
 Two electron energy                   16.18589012
 Virial quotient                       -3.57546473
 Correlation energy                    -0.22227975
 !MRCI STATE 6.1 Energy               -25.276310176936

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29751138 (Davidson, fixed reference)
 Cluster corrected energies           -25.29694329 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29751138 (Davidson, rotated reference)

 Cluster corrected energies           -25.29427135 (Pople, fixed reference)
 Cluster corrected energies           -25.29376327 (Pople, relaxed reference)
 Cluster corrected energies           -25.29427135 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95660722 (fixed)   0.95861481 (relaxed)   0.95781494 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829479   -0.01224066   -0.14440331
 Singles      0.03189129   -0.06552695   -0.06658418
 Pairs        0.04983975    0.00000000   -0.01010885
 Total        1.09002582   -0.07776760   -0.22109633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00005009
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15766163
 One electron energy                  -41.49067669
 Two electron energy                   16.26966757
 Virial quotient                       -3.52363809
 Correlation energy                    -0.22095904
 !MRCI STATE 7.1 Energy               -25.221009121105

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24090114 (Davidson, fixed reference)
 Cluster corrected energies           -25.24049938 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24090114 (Davidson, rotated reference)

 Cluster corrected energies           -25.23780709 (Pople, fixed reference)
 Cluster corrected energies           -25.23744986 (Pople, relaxed reference)
 Cluster corrected energies           -25.23780709 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95660721 (fixed)   0.95861480 (relaxed)   0.95781493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829479   -0.01224066   -0.14440330
 Singles      0.03189130   -0.06552695   -0.06658418
 Pairs        0.04983976   -0.00000000   -0.01010885
 Total        1.09002585   -0.07776760   -0.22109633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00005009
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15766159
 One electron energy                  -41.49067657
 Two electron energy                   16.26966745
 Virial quotient                       -3.52363811
 Correlation energy                    -0.22095904
 !MRCI STATE 8.1 Energy               -25.221009121101

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24090115 (Davidson, fixed reference)
 Cluster corrected energies           -25.24049938 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24090115 (Davidson, rotated reference)

 Cluster corrected energies           -25.23780710 (Pople, fixed reference)
 Cluster corrected energies           -25.23744987 (Pople, relaxed reference)
 Cluster corrected energies           -25.23780710 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95660720 (fixed)   0.95861480 (relaxed)   0.95781492 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829482   -0.01224066   -0.14440331
 Singles      0.03189128   -0.06552695   -0.06658417
 Pairs        0.04983978    0.00000000   -0.01010886
 Total        1.09002588   -0.07776760   -0.22109633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00005008
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15766184
 One electron energy                  -41.49067738
 Two electron energy                   16.26966826
 Virial quotient                       -3.52363798
 Correlation energy                    -0.22095904
 !MRCI STATE 9.1 Energy               -25.221009121058

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24090115 (Davidson, fixed reference)
 Cluster corrected energies           -25.24049938 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24090115 (Davidson, rotated reference)

 Cluster corrected energies           -25.23780710 (Pople, fixed reference)
 Cluster corrected energies           -25.23744987 (Pople, relaxed reference)
 Cluster corrected energies           -25.23780710 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95489455 (fixed)   0.95861475 (relaxed)   0.95781489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829476   -0.01224065   -0.14440327
 Singles      0.03189130   -0.06552698   -0.06658421
 Pairs        0.04983986    0.00000001   -0.01010886
 Total        1.09002593   -0.07776762   -0.22109633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00005008
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15765962
 One electron energy                  -41.49066960
 Two electron energy                   16.26966048
 Virial quotient                       -3.52363907
 Correlation energy                    -0.22095904
 !MRCI STATE 10.1 Energy              -25.221009120816

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24090116 (Davidson, fixed reference)
 Cluster corrected energies           -25.24049940 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24090116 (Davidson, rotated reference)

 Cluster corrected energies           -25.23780711 (Pople, fixed reference)
 Cluster corrected energies           -25.23744989 (Pople, relaxed reference)
 Cluster corrected energies           -25.23780711 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95489451 (fixed)   0.95861469 (relaxed)   0.95781486 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829469   -0.01224065   -0.14440319
 Singles      0.03189138   -0.06552703   -0.06658427
 Pairs        0.04983993   -0.00000000   -0.01010887
 Total        1.09002600   -0.07776768   -0.22109633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00005009
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15765690
 One electron energy                  -41.49066064
 Two electron energy                   16.26965152
 Virial quotient                       -3.52364041
 Correlation energy                    -0.22095904
 !MRCI STATE 11.1 Energy              -25.221009120680

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24090118 (Davidson, fixed reference)
 Cluster corrected energies           -25.24049943 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24090118 (Davidson, rotated reference)

 Cluster corrected energies           -25.23780713 (Pople, fixed reference)
 Cluster corrected energies           -25.23744991 (Pople, relaxed reference)
 Cluster corrected energies           -25.23780713 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95510716 (fixed)   0.95808663 (relaxed)   0.95778114 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01052375   -0.01746762   -0.01882031
 Singles      0.03497987   -0.06889375   -0.07030795
 Pairs        0.04459914   -0.13444348   -0.13239380
 Total        1.09010275   -0.22080485   -0.22152207
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99339828
 Nuclear energy                         0.00000000
 Kinetic energy                         6.94676318
 One electron energy                  -40.66361670
 Two electron energy                   15.44934083
 Virial quotient                       -3.62964380
 Correlation energy                    -0.22087759
 !MRCI STATE 12.1 Energy              -25.214275867303

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23417755 (Davidson, fixed reference)
 Cluster corrected energies           -25.23402402 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23417755 (Davidson, rotated reference)

 Cluster corrected energies           -25.23108277 (Pople, fixed reference)
 Cluster corrected energies           -25.23094617 (Pople, relaxed reference)
 Cluster corrected energies           -25.23108277 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7       66.04       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        62.76     59.86      1.17      1.04      0.04      0.37
 REAL TIME  *        68.85 SEC
 DISK USED  *        99.66 MB (local),        1.22 GB (total)
 SF USED    *       610.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.35542157  AU                              
 SETTING HLSDIAG(2)     =       -25.29751153  AU                              
 SETTING HLSDIAG(3)     =       -25.29751147  AU                              
 SETTING HLSDIAG(4)     =       -25.29751139  AU                              
 SETTING HLSDIAG(5)     =       -25.29751139  AU                              
 SETTING HLSDIAG(6)     =       -25.29751138  AU                              
 SETTING HLSDIAG(7)     =       -25.24090114  AU                              
 SETTING HLSDIAG(8)     =       -25.24090115  AU                              
 SETTING HLSDIAG(9)     =       -25.24090115  AU                              
 SETTING HLSDIAG(10)    =       -25.24090116  AU                              
 SETTING HLSDIAG(11)    =       -25.24090118  AU                              
 SETTING HLSDIAG(12)    =       -25.23417755  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

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
 Number of external orbitals:      73 (  30  43 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06110689
     2       -25.06110689
     3       -25.06110689
     4       -25.06110689
     5       -25.06110689
     6       -25.00439136
     7       -25.00439136
     8       -25.00439136
     9       -25.00439136
    10       -25.00439136
    11       -25.00439136
    12       -25.00439136
    13       -25.00015468
    14       -25.00015468
    15       -25.00015468
    16       -24.99848839

 Number of blocks in overlap matrix:   329   Smallest eigenvalue:  0.67D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        349068
 Number of doubly external configurations:        453338
 Total number of contracted configurations:       814244
 Total number of uncontracted configurations:    2631580

 Diagonal Coupling coefficients finished.               Storage: 6335310 words, CPU-Time:      1.44 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  293851 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06110689     0.00000000    -0.22491161  0.50D-01  0.48D-01     2.39
    1     2     2     1.00000000     0.00000000   -25.06110689     0.00000000    -0.22492682  0.50D-01  0.48D-01     2.39
    1     3     3     1.00000000     0.00000000   -25.06110689    -0.00000000    -0.22493053  0.50D-01  0.48D-01     2.39
    1     4     4     1.00000000     0.00000000   -25.06110689    -0.00000000    -0.22492325  0.50D-01  0.48D-01     2.39
    1     5     5     1.00000000     0.00000000   -25.06110689     0.00000000    -0.22491321  0.50D-01  0.48D-01     2.39
    1     6     6     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23355659  0.46D-01  0.58D-01     2.39
    1     7     7     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23355985  0.46D-01  0.58D-01     2.39
    1     8     8     1.00000000     0.00000000   -25.00439136    -0.00000000    -0.23347429  0.46D-01  0.58D-01     2.39
    1     9     9     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23346837  0.46D-01  0.58D-01     2.39
    1    10    10     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23339925  0.45D-01  0.58D-01     2.39
    1    11    11     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23339001  0.45D-01  0.58D-01     2.39
    1    12    12     1.00000000     0.00000000   -25.00439136     0.00000000    -0.23341993  0.45D-01  0.58D-01     2.39
    1    13    13     1.00000000     0.00000000   -25.00015468     0.00000000    -0.22248389  0.41D-01  0.54D-01     2.39
    1    14    14     1.00000000     0.00000000   -25.00015468     0.00000000    -0.22247136  0.41D-01  0.54D-01     2.39
    1    15    15     1.00000000     0.00000000   -25.00015468     0.00000000    -0.22238514  0.41D-01  0.54D-01     2.39
    1    16    16     1.00000000     0.00000000   -24.99848839     0.00000000    -0.20371582  0.47D-01  0.39D-01     2.39
    2     1     1     1.07956676    -0.21830718   -25.27941408    -0.21830718    -0.00605372  0.21D-02  0.90D-03    16.04
    2     2     2     1.07956861    -0.21830158   -25.27940847    -0.21830158    -0.00605911  0.21D-02  0.90D-03    16.04
    2     3     3     1.07958436    -0.21829848   -25.27940538    -0.21829848    -0.00606112  0.21D-02  0.90D-03    16.04
    2     4     4     1.07957045    -0.21829840   -25.27940530    -0.21829840    -0.00606130  0.21D-02  0.90D-03    16.04
    2     5     5     1.07958296    -0.21829587   -25.27940277    -0.21829587    -0.00606344  0.21D-02  0.90D-03    16.04
    2     6     6     1.08110958    -0.21767149   -25.22206285    -0.21767149    -0.00553506  0.19D-02  0.99D-03    16.04
    2     7     7     1.08113628    -0.21766976   -25.22206112    -0.21766976    -0.00553629  0.19D-02  0.99D-03    16.04
    2     8     8     1.08110987    -0.21766971   -25.22206107    -0.21766971    -0.00553704  0.19D-02  0.99D-03    16.04
    2     9     9     1.08113123    -0.21765678   -25.22204814    -0.21765678    -0.00555346  0.19D-02  0.99D-03    16.04
    2    10    10     1.08113177    -0.21765599   -25.22204735    -0.21765599    -0.00555430  0.19D-02  0.99D-03    16.04
    2    11    11     1.08111489    -0.21764701   -25.22203837    -0.21764701    -0.00556644  0.19D-02  0.99D-03    16.04
    2    12    12     1.08113067    -0.21764668   -25.22203804    -0.21764668    -0.00556634  0.19D-02  0.99D-03    16.04
    2    13    13     1.07679399    -0.21362515   -25.21377984    -0.21362515    -0.00570777  0.23D-02  0.10D-02    16.04
    2    14    14     1.07684346    -0.21361109   -25.21376577    -0.21361109    -0.00572581  0.23D-02  0.10D-02    16.04
    2    15    15     1.07684259    -0.21360727   -25.21376196    -0.21360727    -0.00572986  0.23D-02  0.10D-02    16.04
    2    16    16     1.07739486    -0.21225000   -25.21073839    -0.21225000    -0.00505725  0.17D-02  0.72D-03    16.04
    3     1     1     1.08159593    -0.22467363   -25.28578052    -0.00636645    -0.00020774  0.75D-04  0.34D-04    29.80
    3     2     2     1.08159569    -0.22467361   -25.28578051    -0.00637203    -0.00020778  0.75D-04  0.34D-04    29.80
    3     3     3     1.08159398    -0.22467341   -25.28578031    -0.00637493    -0.00020801  0.75D-04  0.34D-04    29.80
    3     4     4     1.08159321    -0.22467307   -25.28577996    -0.00637467    -0.00020817  0.75D-04  0.34D-04    29.80
    3     5     5     1.08159311    -0.22467300   -25.28577990    -0.00637713    -0.00020823  0.75D-04  0.34D-04    29.80
    3     6     6     1.08295969    -0.22351902   -25.22791038    -0.00584753    -0.00016281  0.42D-04  0.35D-04    29.80
    3     7     7     1.08295762    -0.22351886   -25.22791021    -0.00584910    -0.00016255  0.42D-04  0.35D-04    29.80
    3     8     8     1.08295407    -0.22351865   -25.22791001    -0.00584894    -0.00016250  0.42D-04  0.35D-04    29.80
    3     9     9     1.08295422    -0.22351865   -25.22791000    -0.00586186    -0.00016252  0.42D-04  0.35D-04    29.80
    3    10    10     1.08294808    -0.22351786   -25.22790922    -0.00586188    -0.00016205  0.42D-04  0.34D-04    29.80
    3    11    11     1.08294820    -0.22351786   -25.22790922    -0.00587085    -0.00016207  0.42D-04  0.34D-04    29.80
    3    12    12     1.08295133    -0.22351776   -25.22790912    -0.00587108    -0.00016200  0.43D-04  0.34D-04    29.80
    3    13    13     1.07696686    -0.21949313   -25.21964782    -0.00586798    -0.00020649  0.42D-04  0.52D-04    29.80
    3    14    14     1.07697559    -0.21949145   -25.21964614    -0.00588036    -0.00020830  0.42D-04  0.53D-04    29.80
    3    15    15     1.07697539    -0.21949140   -25.21964609    -0.00588413    -0.00020838  0.42D-04  0.53D-04    29.80
    3    16    16     1.07913248    -0.21756265   -25.21605104    -0.00531265    -0.00017471  0.60D-04  0.26D-04    29.80
    4     1     1     1.08324102    -0.22492473   -25.28603162    -0.00025110    -0.00001942  0.19D-04  0.16D-05    43.25
    4     2     2     1.08324042    -0.22492457   -25.28603146    -0.00025095    -0.00001945  0.19D-04  0.16D-05    43.25
    4     3     3     1.08324030    -0.22492456   -25.28603146    -0.00025115    -0.00001945  0.19D-04  0.16D-05    43.25
    4     4     4     1.08323969    -0.22492455   -25.28603144    -0.00025148    -0.00001939  0.19D-04  0.16D-05    43.25
    4     5     5     1.08323823    -0.22492444   -25.28603133    -0.00025143    -0.00001941  0.19D-04  0.16D-05    43.25
    4     6     6     1.08402795    -0.22371138   -25.22810274    -0.00019236    -0.00001215  0.13D-04  0.11D-05    43.25
    4     7     7     1.08402895    -0.22371106   -25.22810242    -0.00019220    -0.00001217  0.13D-04  0.11D-05    43.25
    4     8     8     1.08402897    -0.22371106   -25.22810241    -0.00019240    -0.00001218  0.13D-04  0.11D-05    43.25
    4     9     9     1.08402616    -0.22371083   -25.22810218    -0.00019218    -0.00001212  0.13D-04  0.11D-05    43.25
    4    10    10     1.08402742    -0.22371005   -25.22810141    -0.00019219    -0.00001220  0.13D-04  0.11D-05    43.25
    4    11    11     1.08402740    -0.22371005   -25.22810141    -0.00019219    -0.00001220  0.13D-04  0.11D-05    43.25
    4    12    12     1.08402940    -0.22370998   -25.22810134    -0.00019222    -0.00001220  0.13D-04  0.11D-05    43.25
    4    13    13     1.07769919    -0.21972526   -25.21987994    -0.00023213    -0.00001589  0.15D-04  0.18D-05    43.25
    4    14    14     1.07769991    -0.21972514   -25.21987983    -0.00023369    -0.00001601  0.15D-04  0.18D-05    43.25
    4    15    15     1.07769993    -0.21972514   -25.21987982    -0.00023373    -0.00001601  0.15D-04  0.18D-05    43.25
    4    16    16     1.08020214    -0.21774815   -25.21623654    -0.00018550    -0.00000929  0.69D-05  0.10D-05    43.25
    5     1     1     1.08421088    -0.22495216   -25.28605905    -0.00002743    -0.00000225  0.94D-06  0.33D-06    56.73
    5     2     2     1.08421064    -0.22495204   -25.28605894    -0.00002748    -0.00000225  0.94D-06  0.33D-06    56.73
    5     3     3     1.08421057    -0.22495204   -25.28605894    -0.00002748    -0.00000225  0.94D-06  0.33D-06    56.73
    5     4     4     1.08420951    -0.22495193   -25.28605882    -0.00002738    -0.00000225  0.94D-06  0.33D-06    56.73
    5     5     5     1.08420940    -0.22495184   -25.28605874    -0.00002741    -0.00000225  0.94D-06  0.33D-06    56.73
    5     6     6     1.08457453    -0.22372737   -25.22811872    -0.00001599    -0.00000106  0.40D-06  0.19D-06    56.73
    5     7     7     1.08457488    -0.22372712   -25.22811847    -0.00001606    -0.00000107  0.40D-06  0.19D-06    56.73
    5     8     8     1.08457485    -0.22372712   -25.22811847    -0.00001606    -0.00000107  0.40D-06  0.19D-06    56.73
    5     9     9     1.08457361    -0.22372677   -25.22811812    -0.00001594    -0.00000106  0.40D-06  0.19D-06    56.73
    5    10    10     1.08457471    -0.22372618   -25.22811754    -0.00001613    -0.00000107  0.40D-06  0.19D-06    56.73
    5    11    11     1.08457466    -0.22372618   -25.22811754    -0.00001613    -0.00000107  0.40D-06  0.19D-06    56.73
    5    12    12     1.08457497    -0.22372611   -25.22811747    -0.00001613    -0.00000107  0.40D-06  0.19D-06    56.73
    5    13    13     1.07800544    -0.21974630   -25.21990099    -0.00002105    -0.00000165  0.73D-06  0.28D-06    56.73
    5    14    14     1.07800547    -0.21974629   -25.21990097    -0.00002115    -0.00000166  0.74D-06  0.28D-06    56.73
    5    15    15     1.07800543    -0.21974629   -25.21990097    -0.00002115    -0.00000166  0.74D-06  0.28D-06    56.73
    5    16    16     1.08050388    -0.21775878   -25.21624717    -0.00001063    -0.00000065  0.42D-06  0.65D-07    56.73
    6     1     1     1.08433984    -0.22495494   -25.28606184    -0.00000278    -0.00000018  0.11D-06  0.18D-07    69.65
    6     2     2     1.08433953    -0.22495483   -25.28606172    -0.00000278    -0.00000018  0.11D-06  0.18D-07    69.65
    6     3     3     1.08433954    -0.22495483   -25.28606172    -0.00000278    -0.00000018  0.11D-06  0.18D-07    69.65
    6     4     4     1.08433848    -0.22495471   -25.28606160    -0.00000278    -0.00000018  0.11D-06  0.18D-07    69.65
    6     5     5     1.08433809    -0.22495462   -25.28606152    -0.00000278    -0.00000018  0.11D-06  0.18D-07    69.65
    6     6     6     1.08461396    -0.22372866   -25.22812002    -0.00000130    -0.00000007  0.26D-07  0.15D-07    69.65
    6     7     7     1.08461431    -0.22372842   -25.22811978    -0.00000130    -0.00000007  0.26D-07  0.15D-07    69.65
    6     8     8     1.08461430    -0.22372842   -25.22811978    -0.00000130    -0.00000007  0.26D-07  0.15D-07    69.65
    6     9     9     1.08461293    -0.22372806   -25.22811942    -0.00000129    -0.00000007  0.25D-07  0.15D-07    69.65
    6    10    10     1.08461354    -0.22372749   -25.22811885    -0.00000131    -0.00000007  0.26D-07  0.15D-07    69.65
    6    11    11     1.08461353    -0.22372749   -25.22811885    -0.00000131    -0.00000007  0.26D-07  0.15D-07    69.65
    6    12    12     1.08461364    -0.22372742   -25.22811877    -0.00000131    -0.00000007  0.26D-07  0.15D-07    69.65
    6    13    13     1.07802201    -0.21974832   -25.21990300    -0.00000201    -0.00000012  0.33D-07  0.23D-07    69.65
    6    14    14     1.07802195    -0.21974831   -25.21990300    -0.00000202    -0.00000012  0.34D-07  0.23D-07    69.65
    6    15    15     1.07802194    -0.21974831   -25.21990300    -0.00000202    -0.00000012  0.34D-07  0.23D-07    69.65
    6    16    16     1.08056030    -0.21775957   -25.21624796    -0.00000079    -0.00000006  0.39D-07  0.59D-08    69.65
    7     1     1     1.08438631    -0.22495515   -25.28606204    -0.00000020    -0.00000002  0.14D-07  0.18D-08    82.66
    7     2     2     1.08438612    -0.22495503   -25.28606192    -0.00000020    -0.00000002  0.14D-07  0.18D-08    82.66
    7     3     3     1.08438612    -0.22495503   -25.28606192    -0.00000020    -0.00000002  0.14D-07  0.18D-08    82.66
    7     4     4     1.08438484    -0.22495491   -25.28606181    -0.00000020    -0.00000002  0.14D-07  0.18D-08    82.66
    7     5     5     1.08438442    -0.22495483   -25.28606172    -0.00000020    -0.00000002  0.14D-07  0.18D-08    82.66
    7     6     6     1.08462328    -0.22372874   -25.22812010    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7     7     7     1.08462371    -0.22372849   -25.22811985    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7     8     8     1.08462371    -0.22372849   -25.22811985    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7     9     9     1.08462215    -0.22372814   -25.22811949    -0.00000008    -0.00000001  0.54D-08  0.14D-08    82.66
    7    10    10     1.08462277    -0.22372757   -25.22811892    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7    11    11     1.08462277    -0.22372757   -25.22811892    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7    12    12     1.08462298    -0.22372749   -25.22811885    -0.00000008    -0.00000001  0.54D-08  0.15D-08    82.66
    7    13    13     1.07802467    -0.21974845   -25.21990313    -0.00000013    -0.00000001  0.10D-07  0.14D-08    82.66
    7    14    14     1.07802462    -0.21974844   -25.21990313    -0.00000013    -0.00000001  0.10D-07  0.14D-08    82.66
    7    15    15     1.07802462    -0.21974844   -25.21990313    -0.00000013    -0.00000001  0.10D-07  0.14D-08    82.66
    7    16    16     1.08057232    -0.21775964   -25.21624803    -0.00000007    -0.00000001  0.73D-08  0.50D-09    82.66
    8     1     1     1.08440354    -0.22495517   -25.28606206    -0.00000002    -0.00000000  0.13D-08  0.26D-09    90.97
    8     2     2     1.08440337    -0.22495505   -25.28606194    -0.00000002    -0.00000000  0.13D-08  0.26D-09    90.97
    8     3     3     1.08440337    -0.22495505   -25.28606194    -0.00000002    -0.00000000  0.13D-08  0.26D-09    90.97
    8     4     4     1.08440208    -0.22495493   -25.28606183    -0.00000002    -0.00000000  0.13D-08  0.26D-09    90.97
    8     5     5     1.08440173    -0.22495485   -25.28606174    -0.00000002    -0.00000000  0.13D-08  0.26D-09    90.97
    8     6     6     1.08462328    -0.22372874   -25.22812010    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8     7     7     1.08462371    -0.22372849   -25.22811985    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8     8     8     1.08462371    -0.22372849   -25.22811985    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8     9     9     1.08462214    -0.22372814   -25.22811949    -0.00000000    -0.00000001  0.54D-08  0.14D-08    90.97
    8    10    10     1.08462277    -0.22372757   -25.22811892    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8    11    11     1.08462277    -0.22372757   -25.22811892    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8    12    12     1.08462297    -0.22372749   -25.22811885    -0.00000000    -0.00000001  0.54D-08  0.15D-08    90.97
    8    13    13     1.07802588    -0.21974846   -25.21990315    -0.00000001    -0.00000000  0.22D-09  0.21D-09    90.97
    8    14    14     1.07802588    -0.21974846   -25.21990314    -0.00000001    -0.00000000  0.22D-09  0.21D-09    90.97
    8    15    15     1.07802588    -0.21974846   -25.21990314    -0.00000001    -0.00000000  0.22D-09  0.21D-09    90.97
    8    16    16     1.08057232    -0.21775964   -25.21624803    -0.00000000    -0.00000001  0.73D-08  0.50D-09    90.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.5%
 S   6.0%  28.7%
 P   0.9%  21.8%  12.5%

 Initialization:   1.6%
 Other:           17.8%

 Total CPU:       91.0 seconds
 =====================================



 gnormi=  0.92216593  gnorms=  0.03717284  gnormp=  0.04066123  gnorm=  1.00000000
 ecorri= -0.20744599  ecorrs= -0.00836279  ecorrp= -0.00914639  ecorr= -0.22495517

 gnormi=  0.92216608  gnorms=  0.03717261  gnormp=  0.04066131  gnorm=  1.00000000
 ecorri= -0.20744592  ecorrs= -0.00836273  ecorrp= -0.00914640  ecorr= -0.22495505

 gnormi=  0.92216607  gnorms=  0.03717261  gnormp=  0.04066131  gnorm=  1.00000000
 ecorri= -0.20744592  ecorrs= -0.00836273  ecorrp= -0.00914640  ecorr= -0.22495505

 gnormi=  0.92216717  gnorms=  0.03717138  gnormp=  0.04066145  gnorm=  1.00000000
 ecorri= -0.20744606  ecorrs= -0.00836245  ecorrp= -0.00914643  ecorr= -0.22495493

 gnormi=  0.92216747  gnorms=  0.03717097  gnormp=  0.04066156  gnorm=  1.00000000
 ecorri= -0.20744605  ecorrs= -0.00836236  ecorrp= -0.00914645  ecorr= -0.22495485

 gnormi=  0.92197911  gnorms=  0.03138515  gnormp=  0.04663575  gnorm=  1.00000000
 ecorri= -0.20627322  ecorrs= -0.00702273  ecorrp= -0.01043278  ecorr= -0.22372874

 gnormi=  0.92197874  gnorms=  0.03138566  gnormp=  0.04663560  gnorm=  1.00000000
 ecorri= -0.20627292  ecorrs= -0.00702285  ecorrp= -0.01043273  ecorr= -0.22372849

 gnormi=  0.92197874  gnorms=  0.03138566  gnormp=  0.04663560  gnorm=  1.00000000
 ecorri= -0.20627292  ecorrs= -0.00702285  ecorrp= -0.01043273  ecorr= -0.22372849

 gnormi=  0.92198007  gnorms=  0.03138396  gnormp=  0.04663596  gnorm=  1.00000000
 ecorri= -0.20627288  ecorrs= -0.00702244  ecorrp= -0.01043281  ecorr= -0.22372814

 gnormi=  0.92197954  gnorms=  0.03138471  gnormp=  0.04663575  gnorm=  1.00000000
 ecorri= -0.20627224  ecorrs= -0.00702259  ecorrp= -0.01043273  ecorr= -0.22372757

 gnormi=  0.92197954  gnorms=  0.03138471  gnormp=  0.04663575  gnorm=  1.00000000
 ecorri= -0.20627224  ecorrs= -0.00702259  ecorrp= -0.01043273  ecorr= -0.22372757

 gnormi=  0.92197937  gnorms=  0.03138494  gnormp=  0.04663569  gnorm=  1.00000000
 ecorri= -0.20627213  ecorrs= -0.00702265  ecorrp= -0.01043271  ecorr= -0.22372749

 gnormi=  0.92762151  gnorms=  0.02754576  gnormp=  0.04483272  gnorm=  1.00000000
 ecorri= -0.20384340  ecorrs= -0.00605388  ecorrp= -0.00985118  ecorr= -0.21974846

 gnormi=  0.92762152  gnorms=  0.02754565  gnormp=  0.04483283  gnorm=  1.00000000
 ecorri= -0.20384340  ecorrs= -0.00605386  ecorrp= -0.00985120  ecorr= -0.21974846

 gnormi=  0.92762152  gnorms=  0.02754565  gnormp=  0.04483283  gnorm=  1.00000000
 ecorri= -0.20384340  ecorrs= -0.00605386  ecorrp= -0.00985120  ecorr= -0.21974846

 gnormi=  0.92543551  gnorms=  0.03815329  gnormp=  0.03641120  gnorm=  1.00000000
 ecorri= -0.20152250  ecorrs= -0.00830811  ecorrp= -0.00792903  ecorr= -0.21775964

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 200/00/0222000           0.0000000  -0.0000000  -0.0000000  -0.0000575  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.9573489   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 20/000/0222000          -0.0000609   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9573482   0.0000000  -0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000007  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/00000/222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000051   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9569955
 2/0000/0222000          -0.0000000  -0.0000000  -0.0000000   0.0000033   0.9556118   0.0000000  -0.0000000  -0.0000000
                          0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000063
 2/0/0000222000          -0.0000000   0.0000000  -0.0000000   0.9556118  -0.0000033   0.0000000  -0.0000000  -0.0000000
                          0.0000627  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2/00/000222000           0.0000000   0.9556115   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000472
                          0.0000000  -0.0000000   0.0000456   0.0000000   0.0000000  -0.0000000  -0.0000022   0.0000000
 2/000/00222000           0.0000000  -0.0000000   0.9556115   0.0000000   0.0000000   0.0000000  -0.0000472   0.0000000
                          0.0000000   0.0000456  -0.0000000  -0.0000000   0.0000000  -0.0000022  -0.0000000  -0.0000000
 2//00000222000           0.9556114  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000663   0.0000000   0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2000//00222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000006  -0.0000000  -0.0000000
                          0.0000000   0.0000000  -0.0000000   0.8563396  -0.3666665  -0.0000000   0.0000000   0.0000000
 200//000222000          -0.0000000  -0.0000512   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.7485473
                         -0.0000000   0.0000000   0.4158157   0.0000000  -0.0000000   0.0000000   0.3667900   0.0000000
 200/0/00222000          -0.0000000   0.0000000   0.0000512   0.0000000  -0.0000000  -0.0000000   0.7485468   0.0000000
                         -0.0000000  -0.4158167   0.0000000   0.0000000   0.0000000  -0.3667900   0.0000000   0.0000000
 20//0000222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000003  -0.0000000  -0.0000000
                          0.0000000   0.0000000  -0.0000000   0.4280181   0.7336829  -0.0000000  -0.0000000   0.0000000
 20000//0222000           0.0000000  -0.0000000   0.0000315  -0.0000000  -0.0000000   0.0000000   0.0917545   0.0000000
                          0.0000000  -0.5984036  -0.0000000   0.0000000  -0.0000000   0.6354086   0.0000000  -0.0000000
 2000/0/0222000          -0.0000000   0.0000315  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0917553
                         -0.0000000   0.0000000  -0.5984035  -0.0000000   0.0000000  -0.0000000   0.6354086   0.0000000
 20/00/00222000           0.0000000   0.0000004   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.5897231
                          0.0000000  -0.0000000   0.6209087   0.0000000  -0.0000000   0.0000000   0.3666889  -0.0000000
 20/0/000222000          -0.0000000   0.0000000   0.0000004   0.0000000   0.0000000  -0.0000000   0.5897239   0.0000000
                         -0.0000000   0.6209079   0.0000000   0.0000000   0.0000000   0.3666889  -0.0000000   0.0000000
 200000002220//          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000000   0.0000000  -0.0000000   0.0000746  -0.4986041  -0.0000000  -0.0000000  -0.0000000
 20000000222/0/           0.0000000   0.0000007   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000244
                         -0.0000000   0.0000000   0.0000644  -0.0000000  -0.0000000   0.0000000   0.4985993   0.0000000
 20000000222//0           0.0000000   0.0000000   0.0000007  -0.0000000   0.0000000   0.0000000   0.0000244  -0.0000000
                          0.0000000   0.0000643  -0.0000000   0.0000000   0.0000000   0.4985993   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  20.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0637796
 2/000000222000  16.1    -0.0000000   0.0000000  -0.0550135  -0.0000000   0.0000000   0.0000000   0.0000045  -0.0000000
                          0.0000000  -0.0000031   0.0000000  -0.0000000   0.0000000  -0.0000009   0.0000000  -0.0000000
 2/000000222000  15.1    -0.0000000  -0.0550135  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000045
                          0.0000000   0.0000000  -0.0000031  -0.0000000  -0.0000000  -0.0000000  -0.0000009   0.0000000
 2/000000222000  18.1    -0.0550134   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000088  -0.0000000  -0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/000000222000  17.1     0.0000000  -0.0000000   0.0000000  -0.0550115   0.0000002   0.0000000  -0.0000000   0.0000000
                         -0.0000086   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/000000222000  19.1     0.0000000   0.0000000   0.0000000  -0.0000002  -0.0550113   0.0000000  -0.0000000   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000013

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.000000    0.955614   -0.000000   -0.000061    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000   -0.000000    0.955614   -0.000000   -0.000000    0.000000   -0.000000    0.000036    0.000000    0.000048
            -0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000
 3          -0.000000    0.955614    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000036   -0.000000
             0.000048    0.000000    0.000000    0.000002   -0.000000   -0.000000
 4           0.955615    0.000000   -0.000000    0.000000    0.000003   -0.000000   -0.000058   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000003    0.000000    0.000000    0.000000    0.955615   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000005
 6           0.000000    0.000000   -0.000000    0.000066    0.000000    0.957348   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000001   -0.000000    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000047   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.946300    0.000000
             0.145022   -0.000000   -0.000000    0.000051   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000047    0.000000   -0.000000   -0.000000    0.000000   -0.946300    0.000000   -0.145023
             0.000000   -0.000000   -0.000051   -0.000000   -0.000000   -0.000000
 9           0.000063    0.000000    0.000000   -0.000000    0.000000    0.000000    0.957349    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000046   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.145021    0.000000
            -0.946301    0.000000    0.000000    0.000132    0.000000    0.000000
 11          0.000000   -0.000000    0.000046   -0.000000    0.000000   -0.000000   -0.000000    0.145023    0.000000   -0.946301
            -0.000000   -0.000000    0.000132   -0.000000    0.000000   -0.000000
 12          0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.957349   -0.000000    0.000000   -0.000154   -0.000000
 13         -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000156   -0.000000   -0.000000    0.958402   -0.000000
 14          0.000000   -0.000002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000071   -0.000000
             0.000125   -0.000000    0.000000    0.958401    0.000000    0.000000
 15          0.000000   -0.000000   -0.000002    0.000000   -0.000000    0.000000    0.000000   -0.000071    0.000000    0.000125
             0.000000    0.000000    0.958401    0.000000    0.000000   -0.000000
 16         -0.000000   -0.000000    0.000000    0.000000   -0.000006   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.956995

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955614   -0.000000    0.000000   -0.000000    0.000000    0.000003    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.955614   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000002    0.000000    0.000000
             0.000002   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.955614    0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000    0.000002
             0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.955615   -0.000000    0.000000   -0.000000    0.000000    0.000003   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.955615    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000001
 6           0.000003    0.000000    0.000000    0.000000    0.000000    0.957348   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000   -0.000002   -0.000000   -0.000000   -0.000000    0.957348    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 8          -0.000000    0.000002   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.957348    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000    0.000000   -0.000000    0.000003    0.000000   -0.000000    0.000000    0.000000    0.957349   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957349
             0.000000   -0.000000   -0.000000   -0.000001   -0.000000   -0.000000
 11          0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.957349    0.000000   -0.000000    0.000000   -0.000001   -0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.957349    0.000001   -0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000001    0.958402    0.000000   -0.000000    0.000000
 14          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000001
             0.000000   -0.000000    0.000000    0.958401    0.000000    0.000000
 15         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000001   -0.000000   -0.000000    0.000000    0.958401    0.000000
 16          0.000000    0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.956995


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95561418 (fixed)   0.95583110 (relaxed)   0.95561418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00981985   -0.01617586   -0.14233400
 Singles      0.04070620   -0.07130103   -0.07347478
 Pairs        0.04452617    0.00000000   -0.00914639
 Total        1.09505222   -0.08747689   -0.22495517
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06110689
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07039547
 One electron energy                  -41.53374978
 Two electron energy                   16.24768771
 Virial quotient                       -3.57632924
 Correlation energy                    -0.22495517
 !MRCI STATE 1.1 Energy               -25.286062060854

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30744455 (Davidson, fixed reference)
 Cluster corrected energies           -25.30733275 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30744455 (Davidson, rotated reference)

 Cluster corrected energies           -25.30286780 (Pople, fixed reference)
 Cluster corrected energies           -25.30277591 (Pople, relaxed reference)
 Cluster corrected energies           -25.30286780 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95561428 (fixed)   0.95583120 (relaxed)   0.95561428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00981979   -0.01617580   -0.14233397
 Singles      0.04070594   -0.07130097   -0.07347468
 Pairs        0.04452625    0.00000000   -0.00914640
 Total        1.09505198   -0.08747677   -0.22495505
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06110689
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07039573
 One electron energy                  -41.53375021
 Two electron energy                   16.24768827
 Virial quotient                       -3.57632909
 Correlation energy                    -0.22495505
 !MRCI STATE 2.1 Energy               -25.286061944325

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30744437 (Davidson, fixed reference)
 Cluster corrected energies           -25.30733257 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30744437 (Davidson, rotated reference)

 Cluster corrected energies           -25.30286763 (Pople, fixed reference)
 Cluster corrected energies           -25.30277575 (Pople, relaxed reference)
 Cluster corrected energies           -25.30286763 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95561428 (fixed)   0.95583120 (relaxed)   0.95561428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00981979   -0.01617580   -0.14233397
 Singles      0.04070594   -0.07130097   -0.07347468
 Pairs        0.04452625    0.00000000   -0.00914640
 Total        1.09505198   -0.08747676   -0.22495505
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06110689
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07039572
 One electron energy                  -41.53375021
 Two electron energy                   16.24768827
 Virial quotient                       -3.57632910
 Correlation energy                    -0.22495505
 !MRCI STATE 3.1 Energy               -25.286061944325

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30744437 (Davidson, fixed reference)
 Cluster corrected energies           -25.30733257 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30744437 (Davidson, rotated reference)

 Cluster corrected energies           -25.30286764 (Pople, fixed reference)
 Cluster corrected energies           -25.30277575 (Pople, relaxed reference)
 Cluster corrected energies           -25.30286764 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95561452 (fixed)   0.95583146 (relaxed)   0.95561452 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00982048   -0.01617630   -0.14233493
 Singles      0.04070457   -0.07130003   -0.07347357
 Pairs        0.04452638   -0.00000000   -0.00914643
 Total        1.09505143   -0.08747633   -0.22495493
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06110689
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07039843
 One electron energy                  -41.53375197
 Two electron energy                   16.24769014
 Virial quotient                       -3.57632771
 Correlation energy                    -0.22495493
 !MRCI STATE 4.1 Energy               -25.286061828218

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30744412 (Davidson, fixed reference)
 Cluster corrected energies           -25.30733231 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30744412 (Davidson, rotated reference)

 Cluster corrected energies           -25.30286741 (Pople, fixed reference)
 Cluster corrected energies           -25.30277551 (Pople, relaxed reference)
 Cluster corrected energies           -25.30286741 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95561459 (fixed)   0.95583152 (relaxed)   0.95561459 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00982068   -0.01617640   -0.14233451
 Singles      0.04070412   -0.07129980   -0.07347329
 Pairs        0.04452649   -0.00000066   -0.00914705
 Total        1.09505129   -0.08747687   -0.22495485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06110689
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07039836
 One electron energy                  -41.53375168
 Two electron energy                   16.24768993
 Virial quotient                       -3.57632773
 Correlation energy                    -0.22495485
 !MRCI STATE 5.1 Energy               -25.286061743204

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30744399 (Davidson, fixed reference)
 Cluster corrected energies           -25.30733219 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30744399 (Davidson, rotated reference)

 Cluster corrected energies           -25.30286729 (Pople, fixed reference)
 Cluster corrected energies           -25.30277539 (Pople, relaxed reference)
 Cluster corrected energies           -25.30286729 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95734820 (fixed)   0.95734820 (relaxed)   0.95734820 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00596120   -0.01083392   -0.14510883
 Singles      0.03424399   -0.06673580   -0.06818713
 Pairs        0.05088375   -0.00000000   -0.01043278
 Total        1.09108893   -0.07756972   -0.22372874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23620408
 One electron energy                  -41.80940955
 Two electron energy                   16.58128945
 Virial quotient                       -3.48637488
 Correlation energy                    -0.22372874
 !MRCI STATE 6.1 Energy               -25.228120098083

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849931 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849931 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849931 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410659 (Pople, fixed reference)
 Cluster corrected energies           -25.24410659 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410659 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.94630028 (fixed)   0.95734814 (relaxed)   0.95734814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00596092   -0.01083365   -0.14510834
 Singles      0.03424455   -0.06673600   -0.06818743
 Pairs        0.05088359    0.00000000   -0.01043273
 Total        1.09108907   -0.07756965   -0.22372849
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23621367
 One electron energy                  -41.80942423
 Two electron energy                   16.58130438
 Virial quotient                       -3.48637022
 Correlation energy                    -0.22372849
 !MRCI STATE 7.1 Energy               -25.228119852121

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849907 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849907 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849907 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410635 (Pople, fixed reference)
 Cluster corrected energies           -25.24410635 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410635 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.94630009 (fixed)   0.95734814 (relaxed)   0.95734814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00596092   -0.01083365   -0.14510834
 Singles      0.03424455   -0.06673600   -0.06818743
 Pairs        0.05088359    0.00000000   -0.01043273
 Total        1.09108907   -0.07756965   -0.22372849
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23621367
 One electron energy                  -41.80942420
 Two electron energy                   16.58130435
 Virial quotient                       -3.48637022
 Correlation energy                    -0.22372849
 !MRCI STATE 8.1 Energy               -25.228119852119

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849907 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849907 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849907 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410635 (Pople, fixed reference)
 Cluster corrected energies           -25.24410635 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410635 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95734889 (fixed)   0.95734889 (relaxed)   0.95734889 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00596079   -0.01083374   -0.14510897
 Singles      0.03424265   -0.06673518   -0.06818636
 Pairs        0.05088391    0.00000000   -0.01043281
 Total        1.09108735   -0.07756891   -0.22372814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23619398
 One electron energy                  -41.80939569
 Two electron energy                   16.58127620
 Virial quotient                       -3.48637966
 Correlation energy                    -0.22372814
 !MRCI STATE 9.1 Energy               -25.228119494541

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849830 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849830 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849830 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410565 (Pople, fixed reference)
 Cluster corrected energies           -25.24410565 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410565 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94630116 (fixed)   0.95734900 (relaxed)   0.95734900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595999   -0.01083306   -0.14510783
 Singles      0.03424345   -0.06673569   -0.06818700
 Pairs        0.05088367   -0.00000000   -0.01043273
 Total        1.09108711   -0.07756876   -0.22372757
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23621496
 One electron energy                  -41.80943051
 Two electron energy                   16.58131158
 Virial quotient                       -3.48636947
 Correlation energy                    -0.22372757
 !MRCI STATE 10.1 Energy              -25.228118924164

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849762 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849762 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849762 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410500 (Pople, fixed reference)
 Cluster corrected energies           -25.24410500 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410500 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94630097 (fixed)   0.95734900 (relaxed)   0.95734900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595999   -0.01083306   -0.14510783
 Singles      0.03424345   -0.06673569   -0.06818700
 Pairs        0.05088367    0.00000000   -0.01043273
 Total        1.09108711   -0.07756876   -0.22372757
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23621496
 One electron energy                  -41.80943050
 Two electron energy                   16.58131158
 Virial quotient                       -3.48636947
 Correlation energy                    -0.22372757
 !MRCI STATE 11.1 Energy              -25.228118924164

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849762 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849762 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849762 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410500 (Pople, fixed reference)
 Cluster corrected energies           -25.24410500 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410500 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95734895 (fixed)   0.95734897 (relaxed)   0.95734896 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595987   -0.01083294   -0.14510760
 Singles      0.03424370   -0.06673584   -0.06818718
 Pairs        0.05088361    0.00000000   -0.01043271
 Total        1.09108719   -0.07756878   -0.22372749
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00439136
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23622078
 One electron energy                  -41.80944026
 Two electron energy                   16.58132141
 Virial quotient                       -3.48636666
 Correlation energy                    -0.22372749
 !MRCI STATE 12.1 Energy              -25.228118849955

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24849756 (Davidson, fixed reference)
 Cluster corrected energies           -25.24849756 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24849756 (Davidson, rotated reference)

 Cluster corrected energies           -25.24410493 (Pople, fixed reference)
 Cluster corrected energies           -25.24410493 (Pople, relaxed reference)
 Cluster corrected energies           -25.24410493 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95840152 (fixed)   0.95986514 (relaxed)   0.95840154 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00989404   -0.01261410   -0.14385815
 Singles      0.02998885   -0.06530546   -0.06603914
 Pairs        0.04880902    0.00000000   -0.00985118
 Total        1.08869192   -0.07791956   -0.21974846
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00015469
 Nuclear energy                         0.00000000
 Kinetic energy                         7.14141278
 One electron energy                  -41.42532597
 Two electron energy                   16.20542282
 Virial quotient                       -3.53150055
 Correlation energy                    -0.21974846
 !MRCI STATE 13.1 Energy              -25.219903146315

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23939306 (Davidson, fixed reference)
 Cluster corrected energies           -25.23866403 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23939306 (Davidson, rotated reference)

 Cluster corrected energies           -25.23517426 (Pople, fixed reference)
 Cluster corrected energies           -25.23457938 (Pople, relaxed reference)
 Cluster corrected energies           -25.23517426 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95840122 (fixed)   0.95986514 (relaxed)   0.95840123 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00989469   -0.01261406   -0.14385826
 Singles      0.02998874   -0.06530537   -0.06603900
 Pairs        0.04880918   -0.00000000   -0.00985120
 Total        1.08869261   -0.07791943   -0.21974846
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00015469
 Nuclear energy                         0.00000000
 Kinetic energy                         7.14141375
 One electron energy                  -41.42532903
 Two electron energy                   16.20542589
 Virial quotient                       -3.53150007
 Correlation energy                    -0.21974846
 !MRCI STATE 14.1 Energy              -25.219903140112

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23939320 (Davidson, fixed reference)
 Cluster corrected energies           -25.23866402 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23939320 (Davidson, rotated reference)

 Cluster corrected energies           -25.23517438 (Pople, fixed reference)
 Cluster corrected energies           -25.23457937 (Pople, relaxed reference)
 Cluster corrected energies           -25.23517438 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95840122 (fixed)   0.95986514 (relaxed)   0.95840123 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00989469   -0.01261406   -0.14385826
 Singles      0.02998875   -0.06530537   -0.06603900
 Pairs        0.04880918    0.00000000   -0.00985120
 Total        1.08869261   -0.07791943   -0.21974846
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00015469
 Nuclear energy                         0.00000000
 Kinetic energy                         7.14141375
 One electron energy                  -41.42532903
 Two electron energy                   16.20542589
 Virial quotient                       -3.53150007
 Correlation energy                    -0.21974846
 !MRCI STATE 15.1 Energy              -25.219903140112

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23939320 (Davidson, fixed reference)
 Cluster corrected energies           -25.23866402 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23939320 (Davidson, rotated reference)

 Cluster corrected energies           -25.23517438 (Pople, fixed reference)
 Cluster corrected energies           -25.23457937 (Pople, relaxed reference)
 Cluster corrected energies           -25.23517438 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95699549 (fixed)   0.95699549 (relaxed)   0.95699549 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01047688   -0.01859160   -0.01911638
 Singles      0.04165932   -0.07087511   -0.07321840
 Pairs        0.03975714   -0.12829292   -0.12542487
 Total        1.09189335   -0.21775964   -0.21775964
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99848839
 Nuclear energy                         0.00000000
 Kinetic energy                         6.83292324
 One electron energy                  -40.21937357
 Two electron energy                   15.00312554
 Virial quotient                       -3.69040411
 Correlation energy                    -0.21775964
 !MRCI STATE 16.1 Energy              -25.216248030255

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23625869 (Davidson, fixed reference)
 Cluster corrected energies           -25.23625869 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23625869 (Davidson, rotated reference)

 Cluster corrected energies           -25.23195153 (Pople, fixed reference)
 Cluster corrected energies           -25.23195153 (Pople, relaxed reference)
 Cluster corrected energies           -25.23195153 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       8      189.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       197.76    134.99     59.86      1.17      1.04      0.04      0.37
 REAL TIME  *       212.72 SEC
 DISK USED  *       223.26 MB (local),        2.67 GB (total)
 SF USED    *         1.06 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.30744455  AU                              
 SETTING HLSDIAG(14)    =       -25.30744437  AU                              
 SETTING HLSDIAG(15)    =       -25.30744437  AU                              
 SETTING HLSDIAG(16)    =       -25.30744412  AU                              
 SETTING HLSDIAG(17)    =       -25.30744399  AU                              
 SETTING HLSDIAG(18)    =       -25.24849931  AU                              
 SETTING HLSDIAG(19)    =       -25.24849907  AU                              
 SETTING HLSDIAG(20)    =       -25.24849907  AU                              
 SETTING HLSDIAG(21)    =       -25.24849830  AU                              
 SETTING HLSDIAG(22)    =       -25.24849762  AU                              
 SETTING HLSDIAG(23)    =       -25.24849762  AU                              
 SETTING HLSDIAG(24)    =       -25.24849756  AU                              
 SETTING HLSDIAG(25)    =       -25.23939306  AU                              
 SETTING HLSDIAG(26)    =       -25.23939320  AU                              
 SETTING HLSDIAG(27)    =       -25.23939320  AU                              
 SETTING HLSDIAG(28)    =       -25.23625869  AU                              


        HLSDIAG
    -25.35542157
    -25.29751153
    -25.29751147
    -25.29751139
    -25.29751139
    -25.29751138
    -25.24090114
    -25.24090115
    -25.24090115
    -25.24090116
    -25.24090118
    -25.23417755
    -25.30744455
    -25.30744437
    -25.30744437
    -25.30744412
    -25.30744399
    -25.24849931
    -25.24849907
    -25.24849907
    -25.24849830
    -25.24849762
    -25.24849762
    -25.24849756
    -25.23939306
    -25.23939320
    -25.23939320
    -25.23625869
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       33.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      189.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       198.10      0.31    134.99     59.86      1.17      1.04      0.04      0.37
 REAL TIME  *       213.11 SEC
 DISK USED  *       223.37 MB (local),        2.67 GB (total)
 SF USED    *         1.06 GB
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

 Original energies: -25.336275 -25.276310 -25.276310 -25.276310 -25.276310 -25.276310 -25.221009 -25.221009 -25.221009 -25.221009
                    -25.221009 -25.214276
 Replaced energies: -25.355422 -25.297512 -25.297511 -25.297511 -25.297511 -25.297511 -25.240901 -25.240901 -25.240901 -25.240901
                    -25.240901 -25.234178

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -25.286062 -25.286062 -25.286062 -25.286062 -25.286062 -25.228120 -25.228120 -25.228120 -25.228119 -25.228119
                    -25.228119 -25.228119 -25.219903 -25.219903 -25.219903 -25.216248
 Replaced energies: -25.307445 -25.307444 -25.307444 -25.307444 -25.307444 -25.248499 -25.248499 -25.248499 -25.248498 -25.248498
                    -25.248498 -25.248498 -25.239393 -25.239393 -25.239393 -25.236259



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.35542157

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12709.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12709.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12709.81       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12709.82       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12709.82       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25134.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25134.33       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25134.33       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25134.32
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00      68.53       0.00      10.96      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -68.53      -0.00     -10.96      -0.00      -0.00       0.00

   14   2.1  1.0  1.0      -0.00     119.84     -66.39      -0.00       0.00      -0.00       0.00      -0.00       0.00       9.55
                            0.00       0.00      -0.00      68.54       0.00      -0.00       0.00      -0.00     -10.96      -0.00

   15   3.1  1.0  1.0      -0.00       0.00      -0.00     -68.54       0.00      -0.00       0.00       0.00      10.96      -0.00
                            0.00    -117.40     -70.62       0.00       0.00      -0.00      -0.00      -0.00      -0.00      12.21

   16   4.1  1.0  1.0       0.00      -0.00       0.00       0.00      68.52       0.00      10.97       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      68.52      -0.00      10.97       0.00      -0.00

   17   5.1  1.0  1.0      -0.00       0.00      -0.00      -0.00    -118.69      -0.00     -18.93      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     118.69      -0.00      18.93      -0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -0.00      20.99       0.00     -80.02      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     -20.99      -0.00      80.02       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      26.41      -0.00       0.00      -0.00      -0.00     100.72      -0.00
                            0.01      -3.05     -24.50      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -93.82

   20   8.1  1.0  1.0       0.01      -3.93      24.38       0.00       0.00      -0.00      -0.00       0.00       0.00      91.96
                           -0.00      -0.00      -0.00      26.41      -0.00      -0.00      -0.00      -0.00     100.72      -0.00

   21   9.1  1.0  1.0       0.00       0.00      -0.00      -0.00      20.99       0.00     -80.02      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      20.99       0.00     -80.02      -0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00      -2.67       0.00       0.00      -0.00      -0.00     -10.14       0.00
                            0.02      23.00     -10.09       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -33.75

   23  11.1  1.0  1.0      -0.02     -22.62     -10.91       0.00      -0.00      -0.00       0.00       0.00       0.00     -45.93
                           -0.00       0.00       0.00       2.67       0.00       0.00       0.00       0.00      10.14      -0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00      16.26       0.00     -62.02       0.00       0.00
                            0.00       0.00       0.00       0.00      16.26      -0.00     -62.02       0.00       0.00      -0.00

   25  13.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.00      31.02       0.00     170.58       0.00       0.00
                            0.00       0.00      -0.00       0.00      31.02      -0.00     170.58       0.00       0.00      -0.00

   26  14.1  1.0  1.0      -0.00      -0.00       0.00     -31.01       0.00      -0.00       0.00       0.00     170.59       0.00
                           68.45      18.42     -30.64       0.00       0.00       0.00      -0.00       0.00      -0.00     163.28

   27  15.1  1.0  1.0     -68.45     -17.31     -31.28       0.00       0.00       0.00      -0.00      -0.00       0.00     177.10
                           -0.00       0.00       0.00      31.01      -0.00      -0.00       0.00      -0.00    -170.59      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.46    -193.72      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      30.76

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      96.93       0.00      15.50       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -96.93       0.00     -15.50      -0.00       0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     193.82      -0.00      -0.00      -0.00      -0.00     -30.86       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.53      29.66       0.00      -0.00      -0.00       0.00      -0.00       0.00     112.86

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       5.70      -0.00     -21.68       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       5.70      -0.00     -21.68      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -29.64       0.00      -0.00       0.00       0.00    -113.15       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -37.11      -0.00     141.55       0.00      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      37.11       0.00    -141.55       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      39.99       0.71       0.00       0.00       0.00       0.00      -0.00       0.00      10.67

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.81     -50.52      -0.90       0.00       0.00       0.00       0.00       0.00       0.00      19.55

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      43.86       0.00     241.23      -0.00       0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     -43.86      -0.00    -241.23      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00      68.53       0.00      10.96      -0.00       0.00
                            0.00       0.00       0.00      -0.00      68.53       0.00      10.96       0.00       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00     119.84     -66.39      -0.00       0.00      -0.00       0.00      -0.00       0.00       9.55
                           -0.00      -0.00       0.00     -68.54      -0.00       0.00      -0.00       0.00      10.96       0.00

   47   3.1  1.0 -1.0      -0.00       0.00      -0.00     -68.54       0.00      -0.00       0.00       0.00      10.96      -0.00
                           -0.00     117.40      70.62      -0.00      -0.00       0.00       0.00       0.00       0.00     -12.21

   48   4.1  1.0 -1.0       0.00      -0.00       0.00       0.00      68.52       0.00      10.97       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -68.52       0.00     -10.97      -0.00       0.00

   49   5.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00    -118.69      -0.00     -18.93      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    -118.69       0.00     -18.93       0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00      20.99       0.00     -80.02      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      20.99       0.00     -80.02      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00      26.41      -0.00       0.00      -0.00      -0.00     100.72      -0.00
                           -0.01       3.05      24.50       0.00       0.00       0.00      -0.00       0.00       0.00      93.82

   52   8.1  1.0 -1.0       0.01      -3.93      24.38       0.00       0.00      -0.00      -0.00       0.00       0.00      91.96
                            0.00       0.00       0.00     -26.41       0.00       0.00       0.00       0.00    -100.72       0.00

   53   9.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      20.99       0.00     -80.02      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -20.99      -0.00      80.02       0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00      -2.67       0.00       0.00      -0.00      -0.00     -10.14       0.00
                           -0.02     -23.00      10.09      -0.00       0.00       0.00       0.00       0.00       0.00      33.75

   55  11.1  1.0 -1.0      -0.02     -22.62     -10.91       0.00      -0.00      -0.00       0.00       0.00       0.00     -45.93
                            0.00      -0.00      -0.00      -2.67      -0.00      -0.00      -0.00      -0.00     -10.14       0.00

   56  12.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00      16.26       0.00     -62.02       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -16.26       0.00      62.02      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -0.00      31.02       0.00     170.58       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -31.02       0.00    -170.58      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0      -0.00      -0.00       0.00     -31.01       0.00      -0.00       0.00       0.00     170.59       0.00
                          -68.45     -18.42      30.64      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -163.28

   59  15.1  1.0 -1.0     -68.45     -17.31     -31.28       0.00       0.00       0.00      -0.00      -0.00       0.00     177.10
                            0.00      -0.00      -0.00     -31.01       0.00       0.00      -0.00       0.00     170.59       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.01
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.01       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     119.84       0.00      -0.00       0.00      -0.00      -0.00      -3.93
                            0.00       0.00       0.00      -0.00     117.40       0.00      -0.00       0.00       3.05       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00     -66.39      -0.00       0.00      -0.00       0.00       0.00      24.38
                            0.00       0.00       0.00       0.00      70.62       0.00      -0.00       0.00      24.50       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -68.54       0.00      -0.00      -0.00      26.41       0.00
                            0.00       0.00      -0.00     -68.54      -0.00       0.00      -0.00       0.00       0.00     -26.41

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      68.52    -118.69      -0.00      -0.00       0.00
                            0.00       0.00      68.53      -0.00      -0.00       0.00      -0.00      20.99       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00      68.53      -0.00      -0.00       0.00      -0.00      20.99       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     -68.52    -118.69       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      10.97     -18.93       0.00      -0.00      -0.00
                            0.00       0.00      10.96      -0.00       0.00       0.00       0.00     -80.02      -0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00      10.96      -0.00       0.00       0.00      -0.00     -80.02      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -10.97     -18.93      -0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00       0.00      10.96      -0.00       0.00      -0.00     100.72       0.00
                            0.00       0.00       0.00      10.96       0.00      -0.00       0.00      -0.00       0.00    -100.72

   10  10.1  0.0  0.0       0.00       0.00       0.00       9.55      -0.00       0.00       0.00      -0.00      -0.00      91.96
                            0.00       0.00      -0.00       0.00     -12.21       0.00      -0.00      -0.00      93.82       0.00

   11  11.1  0.0  0.0   25134.32       0.00       0.00      19.65       0.00      -0.00      -0.00       0.00      -0.00      19.81
                            0.00       0.00      -0.00       0.00      18.12       0.00       0.00      -0.00      -6.75      -0.00

   12  12.1  0.0  0.0       0.00   26609.99       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.01      -0.00

   13   1.1  1.0  1.0       0.00       0.00   10529.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     190.22      -0.00       0.00       0.00      -0.00

   14   2.1  1.0  1.0      19.65       0.00       0.00   10529.78       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -95.13      -0.00       0.00      -0.00       0.91       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00   10529.78       0.00       0.00       0.00       0.00       0.00
                          -18.12      -0.00       0.00      95.13       0.00      -0.00       0.00      -0.00      -0.00       0.91

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   10529.83       0.00       0.00       0.00       0.00
                           -0.00       0.00    -190.22       0.00       0.00       0.00      -0.00       4.50      -0.00       0.00

   17   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   10529.86       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   23466.72       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -4.50       0.00      -0.00      -0.00      -0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   23466.78       0.00
                            6.75      -0.01      -0.00      -0.91       0.00       0.00       0.00       0.00      -0.00     252.42

   20   8.1  1.0  1.0      19.81      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23466.78
                            0.00       0.00       0.00      -0.00      -0.91      -0.00      -0.00       0.00    -252.42       0.00

   21   9.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.50      -0.00       0.00       0.00       0.00    -173.64      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.44      -0.03       0.00       5.69       0.00       0.00       0.00       0.00      -0.00      51.99

   23  11.1  1.0  1.0      83.83       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -5.69      -0.00      -0.00      -0.00      51.99       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -6.15       0.00      -0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       8.05       0.00      -0.00       0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          110.26    -149.56      -0.00      -7.03       0.00      -0.00       0.00       0.00      -0.00      -0.03

   27  15.1  1.0  1.0     -86.33     149.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       7.03       0.00      -0.00      -0.00      -0.03       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00      -0.00     -67.27       0.00      -0.00       0.00       4.06      -0.00
                            2.16      -0.00       0.00     -67.27      -0.00      -0.00      -0.00       0.00       0.00      -4.06

   30   2.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      67.26    -116.49      -0.00      -0.00       0.00
                            0.00       0.00      67.27      -0.00      -0.00       0.00       0.00       3.25       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00      67.27      -0.00      -0.00       0.00      -0.00       3.25      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     -67.26    -116.49      -0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00     -67.26      -0.00       0.00      -0.00       0.00       0.00       3.73
                           -0.00       0.00       0.00      -0.00      67.26       0.00      -0.00       0.00       3.73       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00     116.49       0.00       0.00      -0.00      -0.00      -0.00      -0.52
                           -0.00      -0.00       0.00      -0.00     116.49       0.00       0.00       0.00       0.52       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00       0.00      -3.25      -0.00       0.00      -0.00      59.60      -0.00
                            7.93       0.00      -0.00      -3.25       0.00      -0.00      -0.00      -0.00      -0.00     -59.60

   35   7.1  1.0  0.0       0.00       0.00      -4.06       0.00       0.00      -0.00       0.00     -59.60       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -3.73      -0.52       0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -3.73       0.52       0.00      -0.00       0.00
                            0.00       0.00       4.06       0.00      -0.00      -0.00      -0.00      59.60       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00      -3.24      -0.00       0.00       0.00       0.00      -0.00      88.99
                           -0.00      -0.00      -0.00       0.00       3.24       0.00      -0.00      -0.00      88.99      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.43      -0.00       0.00      -0.00       0.00    -107.31      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -1.63       3.48      -0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       1.63       3.48      -0.00      -0.00      -0.00
                            0.00      -0.00       0.43       0.00       0.00       0.00       0.00    -107.30      -0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00      -0.00      -2.48       0.00      -0.00      -0.00      22.79       0.00
                         -151.81       0.04       0.00       2.48      -0.00       0.00       0.00       0.00      -0.00      22.79

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -4.98       0.00      -0.00      -0.00       0.00      -0.00
                         -278.03    -211.52       0.00       4.98       0.00       0.00       0.00       0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00       4.98      -0.00       0.00      -0.00       0.00       0.03      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      -4.97       2.90       0.00      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       4.97       2.90       0.00       0.00       0.00
                           -0.00       0.00       4.98       0.00      -0.00       0.00       0.00       0.03       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      19.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.12       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.75       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      19.81      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.44       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      83.83       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -110.26     149.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0     -86.33     149.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.00      -0.02       0.00      -0.00      -0.00     -68.45      -0.00       0.00       0.00
                           -0.00      -0.02       0.00      -0.00      -0.00     -68.45       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00      -0.00     -22.62       0.00       0.00      -0.00     -17.31      -0.00       0.00       0.00
                           -0.00     -23.00      -0.00      -0.00      -0.00     -18.42      -0.00       0.00      -3.46       0.00

    3   3.1  0.0  0.0      -0.00       0.00     -10.91      -0.00      -0.00       0.00     -31.28       0.00       0.00       0.00
                           -0.00      10.09      -0.00      -0.00       0.00      30.64      -0.00       0.00     193.72      -0.00

    4   4.1  0.0  0.0      -0.00      -2.67       0.00       0.00       0.00     -31.01       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.67      -0.00      -0.00      -0.00     -31.01      -0.00       0.00      -0.00

    5   5.1  0.0  0.0      20.99       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -16.26     -31.02      -0.00       0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00      16.26      31.02      -0.00       0.00       0.00       0.00       0.00
                          -20.99       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -96.93

    7   7.1  0.0  0.0     -80.02      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      62.02    -170.58       0.00      -0.00      -0.00       0.00      -0.00

    8   8.1  0.0  0.0      -0.00      -0.00       0.00     -62.02     170.58       0.00      -0.00       0.00       0.00       0.00
                           80.02       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -15.50

    9   9.1  0.0  0.0       0.00     -10.14       0.00       0.00       0.00     170.59       0.00       0.00       0.00       0.00
                            0.00       0.00     -10.14      -0.00      -0.00       0.00     170.59       0.00       0.00      -0.00

   10  10.1  0.0  0.0      -0.00       0.00     -45.93       0.00       0.00       0.00     177.10       0.00       0.00       0.00
                           -0.00      33.75       0.00       0.00       0.00    -163.28       0.00       0.00     -30.76       0.00

   11  11.1  0.0  0.0       0.00      -0.00      83.83       0.00       0.00      -0.00     -86.33      -0.00       0.00       0.00
                           -0.00      89.44       0.00      -0.00      -0.00    -110.26      -0.00       0.00      -2.16      -0.00

   12  12.1  0.0  0.0      -0.00       0.00       0.03       0.00      -0.00       0.00     149.56       0.00       0.00       0.00
                            0.00       0.03      -0.00       0.00       0.00     149.56       0.00      -0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.50      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     -67.27

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -5.69       0.00       0.00       0.00       7.03       0.00      -0.00      67.27       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -67.27       0.00
                           -0.00      -0.00       5.69       0.00       0.00      -0.00      -7.03      -0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      67.26
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -116.49
                           -0.00      -0.00       0.00       6.15      -8.05      -0.00       0.00      -0.00       0.00      -0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                          173.64      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -3.25

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.06      -0.00
                            0.00       0.00     -51.99       0.00       0.00       0.00       0.03       0.00      -0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00     -51.99      -0.00      -0.00      -0.00       0.03      -0.00      -0.00       4.06       0.00

   21   9.1  1.0  1.0   23466.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.24
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   22  10.1  1.0  1.0       0.00   23467.09       0.00       0.00       0.00       0.00       0.00       0.00      -0.43       0.00
                           -0.00      -0.00      78.87       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00   23467.09       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -78.87       0.00       0.00       0.00       0.00       0.00       0.00       0.43       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   23467.11       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.01       0.00       2.48

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25465.31       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     -18.78       0.00       4.98

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25465.28       0.00       0.00      -4.98       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00     192.12       0.00      -0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25465.28       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -192.12       0.00       0.00       4.98       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26153.23      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.01      18.78      -0.00      -0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00      -0.43       0.00      -0.00       0.00      -4.98       0.00      -0.00   10529.74       0.00
                            0.00       0.00      -0.43      -0.00      -0.00       0.00      -4.98      -0.00       0.00       0.00

   30   2.1  1.0  0.0       3.24       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   10529.78
                           -0.00       0.00      -0.00      -2.48      -4.98      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00      -0.00      -0.00       2.48       4.98      -0.00       0.00      -0.00       0.00       0.00
                           -3.24       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00       0.00      -1.63      -0.00      -0.00       0.00      -4.97       0.00       0.00       0.00
                           -0.00       1.63      -0.00      -0.00      -0.00       4.97      -0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -0.00      -3.48       0.00       0.00      -0.00      -2.90      -0.00       0.00       0.00
                            0.00      -3.48      -0.00      -0.00      -0.00      -2.90      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00     107.31       0.00       0.00       0.00      -0.03      -0.00       0.00       0.00       0.00
                            0.00       0.00     107.30      -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00     -22.79      -0.00       0.00      -0.00       0.00       0.00       0.00
                          -88.99      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -88.99       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     -22.79      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      84.52       0.00       0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00     -84.52       0.00       0.00       0.00       0.01       0.00       0.00      -0.00      -0.00

   38  10.1  1.0  0.0      -0.00       0.00      -0.00     148.60       0.04       0.00      -0.00       0.00       0.00       0.00
                           84.52      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0     -84.52       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -148.60      -0.04       0.00       0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00    -148.60      -0.00       0.00       0.00       0.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00     148.60      -0.00      -0.00       0.00      -0.03       0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00      -0.04       0.00      -0.00      -0.00    -135.86       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.04       0.00      -0.00       0.00     135.86       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.00      -0.03     135.86       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      13.27      -0.00      -0.00

   43  15.1  1.0  0.0       0.01       0.00       0.00      -0.00      -0.00      -0.00      -0.00      13.27       0.00       0.00
                           -0.00      -0.00      -0.00       0.03    -135.86       0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -13.27       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     -13.27       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -67.27

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      67.27      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      67.27      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -67.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     116.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.25

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.06       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.06       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.43      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.43       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.48

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       4.98

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.98      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.98       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.53       0.00       0.00       0.00      -0.00       0.00     -39.99

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -29.66       0.00       0.00      -0.00       0.00      -0.00      -0.71

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -193.82       0.00      -0.00       0.00       0.00      29.64       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.93       0.00       0.00       0.00      -5.70      -0.00      -0.00      37.11       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -5.70       0.00       0.00     -37.11      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.50       0.00      -0.00      -0.00      21.68       0.00      -0.00    -141.55      -0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      21.68      -0.00      -0.00     141.55       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      30.86      -0.00      -0.00       0.00       0.00     113.15       0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -112.86      -0.00       0.00      -0.00      -0.00       0.00     -10.67

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -7.93      -0.00      -0.00       0.00      -0.00      -0.00     151.81

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.04

   13   1.1  1.0  1.0      67.27      -0.00       0.00      -0.00      -4.06       0.00      -0.00       0.43      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -4.06       0.00       0.00      -0.43      -0.00

   14   2.1  1.0  1.0      -0.00     -67.26     116.49       0.00       0.00      -0.00      -3.24      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       3.25       0.00      -0.00      -0.00       0.00      -0.00      -2.48

   15   3.1  1.0  1.0      -0.00      -0.00       0.00      -3.25       0.00      -0.00      -0.00       0.00       0.00      -2.48
                            0.00     -67.26    -116.49      -0.00       0.00       0.00      -3.24       0.00      -0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -3.73       0.00      -0.00       1.63       0.00
                           67.26      -0.00      -0.00       0.00       3.73       0.00      -0.00       1.63      -0.00      -0.00

   17   5.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.52       0.00       0.00       3.48      -0.00
                          116.49       0.00      -0.00       0.00       0.52       0.00       0.00      -3.48      -0.00      -0.00

   18   6.1  1.0  1.0       3.25       0.00      -0.00      -0.00     -59.60       0.00       0.00    -107.31      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -59.60       0.00       0.00     107.30      -0.00

   19   7.1  1.0  1.0      -0.00       0.00      -0.00      59.60       0.00      -0.00      -0.00      -0.00      -0.00      22.79
                           -0.00      -3.73      -0.52       0.00      -0.00      -0.00     -88.99      -0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       3.73      -0.52      -0.00       0.00       0.00      88.99      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      59.60       0.00      -0.00       0.00      -0.00      -0.00     -22.79

   21   9.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00     -88.99       0.00      -0.00     -84.52      -0.00
                            3.24       0.00      -0.00      -0.00      88.99      -0.00      -0.00     -84.52       0.00       0.00

   22  10.1  1.0  1.0      -0.00       0.00      -0.00     107.31       0.00       0.00       0.00       0.00       0.00    -148.60
                           -0.00      -1.63       3.48      -0.00       0.00       0.00      84.52       0.00      -0.00       0.00

   23  11.1  1.0  1.0      -0.00      -1.63      -3.48       0.00       0.00       0.00      84.52      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -107.30      -0.00       0.00      -0.00       0.00      -0.00    -148.60

   24  12.1  1.0  1.0       2.48      -0.00       0.00       0.00     -22.79      -0.00       0.00     148.60       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      22.79      -0.00      -0.00     148.60       0.00

   25  13.1  1.0  1.0       4.98      -0.00       0.00       0.00      -0.00       0.00       0.00       0.04      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.04       0.00

   26  14.1  1.0  1.0      -0.00       0.00      -0.00      -0.03       0.00       0.00      -0.00       0.00       0.00       0.03
                            0.00      -4.97       2.90       0.00      -0.00       0.00      -0.01       0.00      -0.00      -0.00

   27  15.1  1.0  1.0       0.00      -4.97      -2.90      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.03       0.00      -0.00      -0.00      -0.00      -0.00       0.03

   28  16.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10529.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10529.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10529.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   23466.72       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   23466.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   23466.78       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23466.95       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23467.09       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23467.09       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23467.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0     -67.27       0.00      -0.00       0.00       4.06      -0.00       0.00      -0.43       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -4.06       0.00       0.00      -0.43      -0.00

   46   2.1  1.0 -1.0       0.00      67.26    -116.49      -0.00      -0.00       0.00       3.24       0.00      -0.00       0.00
                           -0.00       0.00       0.00       3.25       0.00      -0.00      -0.00       0.00      -0.00      -2.48

   47   3.1  1.0 -1.0      -0.00       0.00      -0.00       3.25      -0.00       0.00       0.00      -0.00      -0.00       2.48
                           -0.00     -67.26    -116.49      -0.00       0.00       0.00      -3.24       0.00      -0.00       0.00

   48   4.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       3.73      -0.00       0.00      -1.63      -0.00
                           67.26       0.00      -0.00       0.00       3.73       0.00      -0.00       1.63      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.52      -0.00      -0.00      -3.48       0.00
                          116.49       0.00       0.00       0.00       0.52       0.00       0.00      -3.48      -0.00      -0.00

   50   6.1  1.0 -1.0      -3.25      -0.00       0.00      -0.00      59.60      -0.00      -0.00     107.31       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -59.60       0.00       0.00     107.30      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00     -59.60       0.00       0.00       0.00       0.00       0.00     -22.79
                           -0.00      -3.73      -0.52       0.00       0.00      -0.00     -88.99      -0.00       0.00       0.00

   52   8.1  1.0 -1.0      -0.00      -3.73       0.52       0.00      -0.00       0.00     -88.99       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      59.60       0.00       0.00       0.00      -0.00      -0.00     -22.79

   53   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -0.00      88.99       0.00       0.00      84.52       0.00
                            3.24       0.00      -0.00      -0.00      88.99      -0.00       0.00     -84.52       0.00       0.00

   54  10.1  1.0 -1.0       0.00      -0.00       0.00    -107.31      -0.00      -0.00      -0.00       0.00      -0.00     148.60
                           -0.00      -1.63       3.48      -0.00       0.00       0.00      84.52      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       1.63       3.48      -0.00      -0.00      -0.00     -84.52       0.00      -0.00       0.00
                            0.00       0.00       0.00    -107.30      -0.00       0.00      -0.00       0.00       0.00    -148.60

   56  12.1  1.0 -1.0      -2.48       0.00      -0.00      -0.00      22.79       0.00      -0.00    -148.60      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      22.79      -0.00      -0.00     148.60      -0.00

   57  13.1  1.0 -1.0      -4.98       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.04       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.04       0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00       0.03      -0.00      -0.00       0.00      -0.00      -0.00      -0.03
                            0.00      -4.97       2.90       0.00      -0.00       0.00      -0.01       0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00       4.97       2.90       0.00       0.00       0.00       0.01       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.03       0.00      -0.00      -0.00      -0.00      -0.00       0.03

   60  16.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                          -96.81      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     119.84       0.00      -0.00       0.00      -0.00
                           50.52       0.00       0.00       0.00      -0.00       0.00    -117.40      -0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -66.39      -0.00       0.00      -0.00       0.00
                            0.90      -0.00       0.00       0.00      -0.00      -0.00     -70.62      -0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -68.54       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      68.54       0.00      -0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      68.52    -118.69      -0.00
                           -0.00     -43.86      -0.00       0.00     -68.53       0.00       0.00      -0.00       0.00     -20.99

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      68.53      -0.00      -0.00       0.00      -0.00      20.99
                           -0.00      -0.00      43.86       0.00      -0.00      -0.00      -0.00      68.52     118.69      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.97     -18.93       0.00
                           -0.00    -241.23       0.00       0.00     -10.96       0.00      -0.00      -0.00      -0.00      80.02

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      10.96      -0.00       0.00       0.00      -0.00     -80.02
                           -0.00       0.00     241.23       0.00      -0.00      -0.00      -0.00      10.97      18.93       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      10.96      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00     -10.96      -0.00       0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       9.55      -0.00       0.00       0.00      -0.00
                          -19.55       0.00      -0.00       0.00       0.00      -0.00      12.21      -0.00       0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      19.65       0.00      -0.00      -0.00       0.00
                          278.03      -0.00       0.00       0.00       0.00      -0.00     -18.12      -0.00      -0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                          211.52       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       4.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.98      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -4.98       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00      -0.00       4.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       4.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -0.00       0.00       2.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.04      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00      -0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00     135.86      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     135.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0    -135.86       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      13.27       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00      -0.00     -13.27       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.86       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00      13.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -13.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      67.27      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -67.27      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -67.26     116.49       0.00
                            0.00       0.00       0.00       0.00      67.27       0.00      -0.00       0.00       0.00       3.25

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -67.27       0.00      -0.00      -0.00       0.00      -3.25
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -67.26    -116.49      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      67.26       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      67.26      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00    -116.49      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     116.49       0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       3.25       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -3.25       0.00      -0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       4.06      -0.00      -0.00       0.00      -0.00      59.60
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -3.73      -0.52       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       3.73      -0.52      -0.00
                            0.00       0.00       0.00       0.00       4.06       0.00      -0.00      -0.00      -0.00      59.60

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       3.24       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       3.24       0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.43       0.00      -0.00       0.00      -0.00     107.31
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.63       3.48      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.63      -3.48       0.00
                            0.00       0.00       0.00       0.00       0.43       0.00       0.00       0.00       0.00    -107.30

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       2.48      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       2.48      -0.00       0.00       0.00       0.00

   41  13.1  1.0  0.0   25465.31       0.00       0.00       0.00       0.00       0.00       4.98      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       4.98       0.00       0.00       0.00       0.00

   42  14.1  1.0  0.0       0.00   25465.28       0.00       0.00      -4.98       0.00      -0.00       0.00      -0.00      -0.03
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -4.97       2.90       0.00

   43  15.1  1.0  0.0       0.00       0.00   25465.28       0.00       0.00       0.00       0.00      -4.97      -2.90      -0.00
                           -0.00      -0.00       0.00       0.00       4.98       0.00      -0.00       0.00       0.00       0.03

   44  16.1  1.0  0.0       0.00       0.00       0.00   26153.23      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0       0.00      -4.98       0.00      -0.00   10529.74       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.98      -0.00       0.00      -0.00       0.00    -190.22       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   10529.78       0.00       0.00       0.00       0.00
                           -4.98      -0.00      -0.00      -0.00       0.00       0.00      95.13       0.00      -0.00       0.00

   47   3.1  1.0 -1.0       4.98      -0.00       0.00      -0.00       0.00       0.00   10529.78       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     -95.13      -0.00       0.00      -0.00       0.00

   48   4.1  1.0 -1.0      -0.00       0.00      -4.97       0.00       0.00       0.00       0.00   10529.83       0.00       0.00
                           -0.00       4.97      -0.00       0.00     190.22      -0.00      -0.00      -0.00       0.00      -4.50

   49   5.1  1.0 -1.0       0.00      -0.00      -2.90      -0.00       0.00       0.00       0.00       0.00   10529.86       0.00
                           -0.00      -2.90      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   23466.72
                           -0.00      -0.00      -0.03      -0.00       0.00      -0.00      -0.00       4.50      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.91      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.91       0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00      -4.50       0.00      -0.00      -0.00      -0.00     173.64

   54  10.1  1.0 -1.0       0.04       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -5.69      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00       0.00      -0.00       0.00       0.00       5.69       0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.03       0.00      -0.00       0.00       0.00       0.00       6.15      -0.00

   57  13.1  1.0 -1.0      -0.00    -135.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     135.86       0.00       0.00       0.00       0.00      -0.00      -8.05      -0.00

   58  14.1  1.0 -1.0     135.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      13.27       0.00       7.03      -0.00       0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -0.00      -0.00      13.27       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.86       0.00       0.00      -0.00       0.00       0.00      -7.03      -0.00       0.00       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00     -13.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -13.27       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00       0.01       0.00      -0.00      -0.02       0.00      -0.00      -0.00     -68.45      -0.00
                            0.01      -0.00       0.00       0.02      -0.00       0.00       0.00      68.45      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -3.93       0.00      -0.00     -22.62       0.00       0.00      -0.00     -17.31      -0.00
                           -3.05      -0.00       0.00      23.00       0.00       0.00       0.00      18.42       0.00      -0.00

    3   3.1  0.0  0.0       0.00      24.38      -0.00       0.00     -10.91      -0.00      -0.00       0.00     -31.28       0.00
                          -24.50      -0.00       0.00     -10.09       0.00       0.00      -0.00     -30.64       0.00      -0.00

    4   4.1  0.0  0.0      26.41       0.00      -0.00      -2.67       0.00       0.00       0.00     -31.01       0.00       0.00
                           -0.00      26.41      -0.00       0.00       2.67       0.00       0.00       0.00      31.01       0.00

    5   5.1  0.0  0.0      -0.00       0.00      20.99       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      16.26      31.02       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00      16.26      31.02      -0.00       0.00       0.00
                           -0.00      -0.00      20.99      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.00      -0.00     -80.02      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00     -62.02     170.58      -0.00       0.00       0.00

    8   8.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.00     -62.02     170.58       0.00      -0.00       0.00
                           -0.00      -0.00     -80.02      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    9   9.1  0.0  0.0     100.72       0.00       0.00     -10.14       0.00       0.00       0.00     170.59       0.00       0.00
                           -0.00     100.72      -0.00      -0.00      10.14       0.00       0.00      -0.00    -170.59      -0.00

   10  10.1  0.0  0.0      -0.00      91.96      -0.00       0.00     -45.93       0.00       0.00       0.00     177.10       0.00
                          -93.82      -0.00       0.00     -33.75      -0.00      -0.00      -0.00     163.28      -0.00      -0.00

   11  11.1  0.0  0.0      -0.00      19.81       0.00      -0.00      83.83       0.00       0.00      -0.00     -86.33      -0.00
                            6.75       0.00       0.00     -89.44      -0.00       0.00       0.00     110.26       0.00      -0.00

   12  12.1  0.0  0.0      -0.00      -0.01      -0.00       0.00       0.03       0.00      -0.00       0.00     149.56       0.00
                           -0.01       0.00      -0.00      -0.03       0.00      -0.00      -0.00    -149.56      -0.00       0.00

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

   29   1.1  1.0  0.0      -4.06       0.00      -0.00       0.43      -0.00       0.00      -0.00       4.98      -0.00       0.00
                            0.00      -4.06       0.00       0.00      -0.43      -0.00      -0.00       0.00      -4.98      -0.00

   30   2.1  1.0  0.0       0.00      -0.00      -3.24      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -2.48      -4.98      -0.00      -0.00      -0.00

   31   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -2.48      -4.98       0.00      -0.00       0.00
                            0.00       0.00      -3.24       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   4.1  1.0  0.0      -0.00      -3.73       0.00      -0.00       1.63       0.00       0.00      -0.00       4.97      -0.00
                            3.73       0.00      -0.00       1.63      -0.00      -0.00      -0.00       4.97      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.52       0.00       0.00       3.48      -0.00      -0.00       0.00       2.90       0.00
                            0.52       0.00       0.00      -3.48      -0.00      -0.00      -0.00      -2.90      -0.00       0.00

   34   6.1  1.0  0.0     -59.60       0.00       0.00    -107.31      -0.00      -0.00      -0.00       0.03       0.00      -0.00
                           -0.00     -59.60       0.00       0.00     107.30      -0.00      -0.00      -0.00      -0.03      -0.00

   35   7.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00      22.79       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -88.99      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00      88.99      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -22.79      -0.00      -0.00       0.00      -0.00

   37   9.1  1.0  0.0       0.00     -88.99       0.00      -0.00     -84.52      -0.00      -0.00       0.00       0.01      -0.00
                           88.99      -0.00      -0.00     -84.52       0.00       0.00       0.00       0.01       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -148.60      -0.04      -0.00       0.00      -0.00
                            0.00       0.00      84.52       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00      84.52      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -148.60      -0.04       0.00       0.00      -0.00

   40  12.1  1.0  0.0     -22.79      -0.00       0.00     148.60       0.00       0.00      -0.00      -0.03      -0.00      -0.00
                           -0.00      22.79      -0.00      -0.00     148.60       0.00      -0.00       0.00      -0.03       0.00

   41  13.1  1.0  0.0      -0.00       0.00       0.00       0.04      -0.00       0.00      -0.00     135.86      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.04       0.00       0.00       0.00     135.86       0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.03    -135.86       0.00      -0.00      -0.00
                           -0.00       0.00      -0.01       0.00      -0.00      -0.00      -0.00       0.00      -0.00      13.27

   43  15.1  1.0  0.0      -0.00      -0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00     -13.27
                            0.00      -0.00      -0.00      -0.00      -0.00       0.03    -135.86       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.27       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     -13.27       0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.50       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.91      -0.00      -0.00       5.69      -0.00      -0.00      -0.00      -7.03      -0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.91       0.00       0.00      -5.69      -0.00      -0.00       0.00       7.03       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -6.15       8.05       0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -173.64       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   51   7.1  1.0 -1.0   23466.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -252.42      -0.00      -0.00      51.99      -0.00      -0.00      -0.00      -0.03      -0.00

   52   8.1  1.0 -1.0       0.00   23466.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          252.42      -0.00      -0.00      51.99       0.00       0.00       0.00      -0.03       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00   23466.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   23467.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -51.99       0.00       0.00     -78.87      -0.00       0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   23467.09       0.00       0.00       0.00       0.00       0.00
                          -51.99      -0.00       0.00      78.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   23467.11       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25465.31       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      18.78

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25465.28       0.00       0.00
                            0.00       0.03       0.00      -0.00       0.00       0.00       0.00      -0.00    -192.12      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25465.28       0.00
                            0.03      -0.00       0.00      -0.00       0.00       0.00       0.00     192.12      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26153.23
                            0.00      -0.00       0.00       0.00       0.00       0.01     -18.78       0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.35542157 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12709.786       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12709.799       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12709.815       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12709.816       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12709.817       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25134.329       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25134.328
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      96.922       0.000      15.504
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.003     169.485     -93.884      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000     -96.928       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      96.907       0.000      15.507       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000    -167.851      -0.000     -26.772      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      29.687       0.000    -113.161
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000      37.346      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.009      -5.553      34.477       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000      -0.000      -0.000      29.681       0.000    -113.162      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000      -3.775       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.029     -31.996     -15.428       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      22.990       0.000     -87.708
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      43.862       0.000     241.241
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000     -43.856       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            -96.809     -24.480     -44.237       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.001       0.000      -0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.461    -193.724      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      96.925       0.000      15.496

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -96.925       0.000     -15.496      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     193.825      -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.001      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.530      29.661       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       5.696      -0.000     -21.676       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       5.696      -0.000     -21.676

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -29.641       0.000      -0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -37.107      -0.000     141.546       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      37.107       0.000    -141.546

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.034      39.985       0.714       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               96.811     -50.519      -0.902       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      43.861       0.000     241.234      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     -43.861      -0.000    -241.234

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     -96.922      -0.000     -15.504      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      96.928       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003    -166.024     -99.878       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      96.908      -0.000      15.508

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000     167.850      -0.000      26.772

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -29.687      -0.000     113.161       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009      -4.318     -34.654      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      37.346      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      29.681       0.000    -113.163

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.029      32.527     -14.276       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       3.775       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      22.990      -0.000     -87.708       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      43.862      -0.000     241.241       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               96.809      26.045     -43.335       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      43.856      -0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.001       0.000       0.001

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.003      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000     169.485       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000     -93.884      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -96.928       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      96.907
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000      96.922      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      15.507
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      15.504      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25134.326       0.000       0.000       0.000      -0.000       0.000      15.494      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25134.324       0.000       0.000       0.000      13.507      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25134.321       0.000       0.000      27.785       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26609.987       0.000       0.003       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000   10529.739       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      13.507      27.785       0.003       0.000   10529.779       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             15.494      -0.000       0.000       0.000       0.000       0.000   10529.779       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000   10529.834
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            142.435      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     130.046      28.012      -0.013       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            -14.341       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000     -64.957     118.560       0.039       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            241.244       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000     250.460    -122.094     211.503       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      30.764       2.163      -0.000       0.000     -95.129      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      95.129       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000     -95.116

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              -30.859       0.000      -0.000       0.000       0.000      -0.000      95.116       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000     164.740       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     112.856       7.934       0.000      -0.000      -4.592       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -5.279

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       5.739       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                             -113.151       0.000      -0.000      -0.000      -0.000       0.000       4.581       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -2.305

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.608       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      10.673    -151.806       0.040       0.000       3.506      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      19.547    -278.033    -211.518       0.000       7.042       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -7.033

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       7.045       0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.002      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000     190.222

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.494      -0.000      -0.000      -0.000      -0.000      -0.000     -95.127      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      17.261     -25.622      -0.004       0.000      95.127       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -190.222       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.001      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -4.501

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -132.687       9.541      -0.013      -0.000      -0.907       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              142.435      -0.000       0.000       0.000       0.000      -0.000      -0.907      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       4.502      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -47.730    -126.482      -0.039       0.000       5.694       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.341      -0.000      -0.000       0.000      -0.000      -0.000      -5.694      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     230.913     155.936    -211.503      -0.000      -7.031       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -241.244      -0.000       0.000      -0.000      -0.000      -0.000       7.031       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000       0.000       0.000       0.009       0.000      -0.000      -0.029       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000      -0.000      -5.553       0.000      -0.000     -31.996       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000       0.000       0.000      34.477      -0.000       0.000     -15.428      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000      37.346       0.000      -0.000      -3.775       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -167.851      -0.000      -0.000       0.000      29.681       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000      29.687       0.000      -0.000       0.000       0.000      -0.000      22.990
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>             -26.772       0.000      -0.000      -0.000    -113.162      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000    -113.161      -0.000       0.000      -0.000      -0.000       0.000     -87.708
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000      -0.000     142.435       0.000       0.000     -14.341       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000      -0.000      -0.000     130.046      -0.000       0.000     -64.957       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000      -0.000      28.012       0.000      -0.000     118.560       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000      -0.000      -0.000      -0.013      -0.000       0.000       0.039       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10529.861       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   23466.724       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   23466.776       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   23466.776       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   23466.946       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   23467.094       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23467.094       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23467.108
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -5.739       0.000       0.000      -0.608      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       4.592       0.000      -0.000      -0.000       0.000      -0.000      -3.506

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                             -164.740      -0.000       0.000       0.000      -4.581       0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       5.279       0.000      -0.000       2.305      -0.000      -0.000

    5    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.735       0.000       0.000      -4.919      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000     -84.282       0.000       0.000     151.752      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.735       0.000       0.000      -0.000    -125.852      -0.000       0.000       0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      84.282       0.000       0.000       0.000      -0.000      -0.000     -32.223

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000     125.852      -0.000       0.000    -119.535       0.000       0.000

   10    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                4.919      -0.000       0.000       0.000     119.535       0.000      -0.000       0.000

   11    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000    -151.752      -0.000       0.000      -0.000       0.000       0.000    -210.157

   12    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      32.223      -0.000      -0.000     210.157       0.000

   13    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.004      -0.000       0.000       0.052       0.000

   14    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                4.103       0.000      -0.000       0.000      -0.016       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.038       0.000      -0.000      -0.000      -0.000      -0.000       0.048

   16    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.002       0.000      -0.000      -0.005       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000      -0.000      -4.502      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.907       0.000       0.000      -5.694       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.907      -0.000      -0.000       5.694       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.501      -0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       6.152

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     173.636      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     252.420       0.000       0.000     -51.986       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -252.420       0.000       0.000     -51.985      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -173.636      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      51.985      -0.000      -0.000      78.866       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      51.986       0.000      -0.000     -78.866       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.152       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.050       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.032      -0.000       0.000      -0.002      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.032       0.000      -0.000       0.001      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.006

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              -0.000      -0.000     -96.809      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000      -0.000     -24.480      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.461       0.000      -0.000      -0.000

    3    1  |0 0>              -0.000       0.000     -44.237       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     193.724      -0.000      -0.000       0.000

    4    1  |0 0>               0.000     -43.856       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -193.825

    5    1  |0 0>              -0.000       0.000       0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      96.925       0.000

    6    1  |0 0>              43.862      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -96.925      -0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      15.496       0.000

    8    1  |0 0>             241.241       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -15.496       0.000       0.000

    9    1  |0 0>               0.000     241.244       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      30.859

   10    1  |0 0>               0.000       0.000     250.460       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -30.764       0.000       0.000      -0.000

   11    1  |0 0>               0.000      -0.000    -122.094      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -2.163      -0.000       0.000       0.000

   12    1  |0 0>              -0.000       0.000     211.503       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -95.129      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      95.129       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -95.116

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      95.116       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     164.740       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -4.592       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -5.279

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       5.739       0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       4.581       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -2.305

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.608       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       3.506      -0.000       0.000

   13    1  |1 1>+          25465.315       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       7.042       0.000       0.000

   14    1  |1 1>+              0.000   25465.283       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -7.033

   15    1  |1 1>+              0.000       0.000   25465.283       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       7.045       0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000   26153.229       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.002      -0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000   10529.739       0.000       0.000       0.000
                               -0.000       0.000      -7.045      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000   10529.779       0.000       0.000
                               -7.042      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000   10529.779       0.000
                               -0.000      -0.000       0.000       0.002      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000   10529.834
                               -0.000       7.033      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.103      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.038      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.016       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.005      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.052       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.048       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     192.130       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      18.767      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -192.130       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -18.767       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      95.129      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     -95.115
                                0.000       7.031       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -95.129       0.000       0.000      -0.000
                                0.000      -0.000      -7.031      -0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      95.115       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000    -164.741      -0.000      -0.000
                               -8.050      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       4.592       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       5.739      -0.000      -0.000       0.000
                                0.000       0.000       0.032       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       5.279
                               -0.000       0.032      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       4.581       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.608       0.000      -0.000       0.000
                               -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -2.305
                                0.000       0.002       0.000       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       3.506      -0.000
                               -0.000       0.000       0.000       0.006      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       7.042      -0.000
                               -0.000       0.000       0.000     -18.775      -0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -7.045       0.000      -0.000       0.000
                               -0.000       0.000     192.123       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -7.033
                               -0.000    -192.123       0.000       0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.002      -0.000       0.000
                               18.775      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.034

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.530       0.000       0.000       0.000      -0.000       0.000     -39.985

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -29.661       0.000       0.000      -0.000       0.000      -0.000      -0.714

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000       0.000       0.000      29.641       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -5.696      -0.000      -0.000      37.107       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -5.696       0.000       0.000     -37.107      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      21.676       0.000      -0.000    -141.546      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      21.676      -0.000      -0.000     141.546       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     113.151       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -112.856      -0.000       0.000      -0.000      -0.000       0.000     -10.673

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.934      -0.000      -0.000       0.000      -0.000      -0.000     151.806

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.040

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -5.739       0.000       0.000      -0.608      -0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       4.592       0.000      -0.000      -0.000       0.000      -0.000      -3.506

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                             -164.740      -0.000       0.000       0.000      -4.581       0.000      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       5.279       0.000      -0.000       2.305      -0.000      -0.000

    5    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.735       0.000       0.000      -4.919      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000     -84.282       0.000       0.000     151.752      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.735       0.000       0.000      -0.000    -125.852      -0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      84.282       0.000       0.000       0.000      -0.000      -0.000     -32.223

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000     125.852      -0.000       0.000    -119.535       0.000       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                4.919      -0.000       0.000       0.000     119.535       0.000      -0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000    -151.752      -0.000       0.000      -0.000       0.000       0.000    -210.157

   12    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      32.223      -0.000      -0.000     210.157       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.004      -0.000       0.000       0.052       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                4.103       0.000      -0.000       0.000      -0.016       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.038       0.000      -0.000      -0.000      -0.000      -0.000       0.048

   16    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.002       0.000      -0.000      -0.005       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10529.861       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   23466.724       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   23466.776       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   23466.776       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   23466.946       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23467.094       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23467.094       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23467.108
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -5.739       0.000      -0.000       0.608      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-            164.741       0.000       0.000      -0.000      -4.581      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000      -4.592       0.000      -0.000      -0.000       0.000       0.000      -3.506
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000      -0.000      -0.000      -5.279       0.000      -0.000       2.305       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.735       0.000       0.000       4.919      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000     -84.282       0.000       0.000    -151.752      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.000      84.282       0.000      -0.000      -0.000      -0.000      -0.000      32.223
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.735      -0.000       0.000       0.000     125.852      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.000    -125.852       0.000      -0.000    -119.535      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-             -0.000     151.752       0.000       0.000       0.000       0.000       0.000    -210.157
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -4.919       0.000       0.000       0.000     119.535      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000     -32.223      -0.000       0.000     210.157       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000      -0.004       0.000       0.000       0.052      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000      -0.038       0.000       0.000      -0.000       0.000       0.000       0.048
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 1>-             -4.103      -0.000      -0.000      -0.000      -0.016      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   16    1  |1 1>-             -0.000       0.000       0.000      -0.002       0.000       0.000       0.005       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -96.811      -0.000      -0.000      -0.000       0.000      -0.000      -0.003       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               50.519       0.000       0.000       0.000       0.000      -0.000     166.024       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.902      -0.000       0.000       0.000       0.000       0.000      99.878       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000     -96.928      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -43.861      -0.000       0.000      96.922      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      43.861       0.000       0.000       0.000       0.000     -96.908

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -241.234       0.000       0.000      15.504      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     241.234       0.000       0.000       0.000       0.000     -15.508

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      15.494       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.547       0.000      -0.000       0.000      -0.000       0.000     -17.261       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              278.033      -0.000       0.000       0.000      -0.000       0.000      25.622       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              211.518       0.000      -0.000       0.000       0.000       0.000       0.004      -0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.045      -0.000      -0.000       0.000      -0.000     190.222

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.042      -0.000      -0.000      -0.000      -0.000      -0.000     -95.127      -0.000

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002       0.000      95.127       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       7.033      -0.000       0.000    -190.222       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.103      -0.000       0.000       0.001      -0.000      -0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.038      -0.000      -0.000       0.000       0.000      -4.501

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.002      -0.000      -0.907       0.000       0.000

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000       0.000      -0.000       0.000      -0.000      -0.907      -0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.016       0.000       0.000       4.502      -0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.005       0.000       5.694       0.000       0.000

   11    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.052       0.000       0.000      -0.000      -0.000      -0.000      -5.694      -0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.048       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     192.130       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      18.767      -0.000      -7.031       0.000      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -192.130       0.000       0.000      -0.000      -0.000      -0.000       7.031       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -18.767       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -95.129       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      95.115
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      95.129      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000     -95.115      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000     164.741       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -4.592      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -5.739       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -5.279
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -4.581      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.608      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.305
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -3.506       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>           25465.315       0.000       0.000       0.000      -0.000      -0.000      -7.042       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000   25465.283       0.000       0.000       7.045      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000   25465.283       0.000      -0.000      -0.000      -0.000       7.033
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   26153.229       0.000      -0.002       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -0.000       7.045      -0.000       0.000   10529.739       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000      -0.000      -0.000      -0.002       0.000   10529.779       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -7.042       0.000      -0.000       0.000       0.000       0.000   10529.779       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000      -0.000       7.033      -0.000       0.000       0.000       0.000   10529.834
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000       0.000       4.103       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.038       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.004      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000       0.016      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.052      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000       0.000      -0.005       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000      -0.048      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000     192.130      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-           -192.130       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000     -18.767       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      18.767       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.009       0.000      -0.000      -0.029       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       4.318       0.000      -0.000     -32.527      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      34.654       0.000      -0.000      14.276      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -37.346       0.000      -0.000      -3.775      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      29.687       0.000       0.000       0.000       0.000      -0.000     -22.990

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -167.850       0.000       0.000       0.000     -29.681       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -113.161      -0.000       0.000      -0.000       0.000      -0.000      87.708

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.772      -0.000       0.000       0.000     113.163       0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -142.435       0.000       0.000     -14.341      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     132.687       0.000      -0.000      47.730       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -9.541      -0.000      -0.000     126.482       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.013      -0.000       0.000       0.039      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000      -0.000      -4.502      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.907       0.000       0.000      -5.694       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.907      -0.000      -0.000       5.694       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.501      -0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       6.152

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     173.636      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     252.420       0.000       0.000     -51.986       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -252.420       0.000       0.000     -51.985      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -173.636      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      51.985      -0.000      -0.000      78.866       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      51.986       0.000      -0.000     -78.866       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.152       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.050       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.032      -0.000       0.000      -0.002      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.032       0.000      -0.000       0.001      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.006

    1    1  |1 0>              -0.000       0.000       5.739      -0.000       0.000      -0.608       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>            -164.741      -0.000      -0.000       0.000       4.581       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000       4.592      -0.000       0.000       0.000      -0.000      -0.000       3.506
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       5.279      -0.000       0.000      -2.305      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.735      -0.000      -0.000      -4.919       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000      84.282      -0.000      -0.000     151.752       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000     -84.282       0.000       0.000       0.000       0.000       0.000     -32.223
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.735       0.000      -0.000       0.000    -125.852       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000     125.852       0.000       0.000     119.535       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000    -151.752      -0.000      -0.000      -0.000       0.000      -0.000     210.157
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>               4.919      -0.000      -0.000      -0.000    -119.535       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000      32.223       0.000      -0.000    -210.157      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.004      -0.000      -0.000      -0.052       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.038      -0.000      -0.000       0.000      -0.000      -0.000      -0.048
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>               4.103       0.000       0.000       0.000       0.016       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.002      -0.000      -0.000      -0.005      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10529.861       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   23466.724       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   23466.776       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   23466.776       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   23466.946       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23467.094       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   23467.094       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23467.108
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
                               -0.000     -96.809       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     -26.045      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      43.335      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000     -43.856      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                              -43.862      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.001

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -241.241       0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.001

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     241.244       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -230.913       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -155.936      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     211.503       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       7.031       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -7.031      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -8.050      -0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.032       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.032      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.002       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.006

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -18.775

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000     192.123       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000    -192.123       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               18.775      -0.000      -0.000       0.000

    1    1  |1 0>               0.000      -7.045       0.000      -0.000
                                0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.002
                               -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               7.042      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000

    4    1  |1 0>              -0.000       0.000      -7.033       0.000
                               -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -4.103      -0.000
                               -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.038      -0.000       0.000
                                0.000      -0.000       0.000      -0.000

    7    1  |1 0>              -0.004       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.002
                               -0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.016       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 0>               0.052       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.005
                               -0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.048       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000    -192.130       0.000       0.000
                               -0.000      -0.000       0.000      -0.000

   14    1  |1 0>             192.130       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

   15    1  |1 0>              -0.000      -0.000       0.000      18.767
                                0.000       0.000       0.000       0.000

   16    1  |1 0>              -0.000      -0.000     -18.767       0.000
                               -0.000       0.000       0.000      -0.000

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

   13    1  |1 1>-          25465.315       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25465.283       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25465.283       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26153.229
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.35542668    -0.00000511       -1.12      0.00000000        0.00      0.0000
    2   -25.30874447     0.04667710    10244.44      0.04668221    10245.56      1.2703
    3   -25.30874447     0.04667710    10244.44      0.04668221    10245.56      1.2703
    4   -25.30874438     0.04667719    10244.46      0.04668230    10245.58      1.2703
    5   -25.30799006     0.04743151    10410.01      0.04743661    10411.13      1.2908
    6   -25.30798990     0.04743167    10410.05      0.04743678    10411.17      1.2908
    7   -25.30798978     0.04743179    10410.08      0.04743690    10411.20      1.2908
    8   -25.30798971     0.04743186    10410.09      0.04743697    10411.21      1.2908
    9   -25.30798971     0.04743186    10410.09      0.04743697    10411.21      1.2908
   10   -25.30657765     0.04884392    10720.00      0.04884903    10721.12      1.3292
   11   -25.30657765     0.04884392    10720.00      0.04884903    10721.12      1.3292
   12   -25.30657759     0.04884398    10720.01      0.04884909    10721.14      1.3293
   13   -25.30657752     0.04884405    10720.03      0.04884915    10721.15      1.3293
   14   -25.30657749     0.04884408    10720.04      0.04884919    10721.16      1.3293
   15   -25.30657748     0.04884408    10720.04      0.04884919    10721.16      1.3293
   16   -25.30657746     0.04884411    10720.04      0.04884921    10721.16      1.3293
   17   -25.29740292     0.05801865    12733.62      0.05802376    12734.74      1.5789
   18   -25.29740282     0.05801875    12733.64      0.05802386    12734.76      1.5789
   19   -25.29740267     0.05801890    12733.68      0.05802400    12734.80      1.5789
   20   -25.29740267     0.05801890    12733.68      0.05802401    12734.80      1.5789
   21   -25.29740267     0.05801890    12733.68      0.05802401    12734.80      1.5789
   22   -25.25020212     0.10521945    23093.00      0.10522456    23094.12      2.8633
   23   -25.25020184     0.10521973    23093.06      0.10522484    23094.18      2.8633
   24   -25.25020137     0.10522020    23093.16      0.10522531    23094.29      2.8633
   25   -25.25020133     0.10522024    23093.17      0.10522535    23094.29      2.8633
   26   -25.25020133     0.10522024    23093.17      0.10522535    23094.29      2.8633
   27   -25.24889442     0.10652715    23380.01      0.10653226    23381.13      2.8989
   28   -25.24889442     0.10652715    23380.01      0.10653226    23381.13      2.8989
   29   -25.24889409     0.10652748    23380.08      0.10653259    23381.20      2.8989
   30   -25.24889355     0.10652801    23380.20      0.10653312    23381.32      2.8989
   31   -25.24889355     0.10652801    23380.20      0.10653312    23381.32      2.8989
   32   -25.24889339     0.10652818    23380.23      0.10653329    23381.35      2.8989
   33   -25.24889326     0.10652831    23380.26      0.10653342    23381.38      2.8989
   34   -25.24731263     0.10810894    23727.17      0.10811405    23728.29      2.9419
   35   -25.24731263     0.10810894    23727.17      0.10811405    23728.29      2.9419
   36   -25.24731234     0.10810923    23727.23      0.10811433    23728.35      2.9419
   37   -25.24731234     0.10810923    23727.23      0.10811433    23728.35      2.9419
   38   -25.24731187     0.10810970    23727.34      0.10811481    23728.46      2.9420
   39   -25.24731166     0.10810991    23727.38      0.10811502    23728.50      2.9420
   40   -25.24731135     0.10811022    23727.45      0.10811533    23728.57      2.9420
   41   -25.24731135     0.10811022    23727.45      0.10811533    23728.57      2.9420
   42   -25.24731121     0.10811036    23727.48      0.10811547    23728.60      2.9420
   43   -25.24156272     0.11385885    24989.13      0.11386395    24990.25      3.0984
   44   -25.24156260     0.11385897    24989.16      0.11386408    24990.28      3.0984
   45   -25.24156258     0.11385899    24989.16      0.11386410    24990.28      3.0984
   46   -25.24156249     0.11385908    24989.18      0.11386419    24990.30      3.0984
   47   -25.24156248     0.11385909    24989.18      0.11386420    24990.30      3.0984
   48   -25.24151837     0.11390320    24998.86      0.11390831    24999.98      3.0996
   49   -25.24027220     0.11514937    25272.37      0.11515448    25273.49      3.1335
   50   -25.24027216     0.11514941    25272.37      0.11515452    25273.50      3.1335
   51   -25.24027216     0.11514941    25272.37      0.11515452    25273.50      3.1335
   52   -25.23773176     0.11768981    25829.93      0.11769492    25831.05      3.2026
   53   -25.23773169     0.11768988    25829.94      0.11769499    25831.06      3.2026
   54   -25.23773169     0.11768988    25829.94      0.11769499    25831.06      3.2026
   55   -25.23773157     0.11769000    25829.97      0.11769511    25831.09      3.2026
   56   -25.23773091     0.11769066    25830.11      0.11769577    25831.24      3.2027
   57   -25.23625505     0.11916652    26154.03      0.11917163    26155.15      3.2428
   58   -25.23625505     0.11916652    26154.03      0.11917163    26155.15      3.2428
   59   -25.23625505     0.11916652    26154.03      0.11917163    26155.15      3.2428
   60   -25.23379802     0.12162355    26693.28      0.12162866    26694.41      3.3097

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997764  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000044  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00175848 -0.10264576 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.10265971 -0.00175818  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.10271208  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000811  0.00000000

   5    1  |0 0>           0.00000000  0.00000662 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.10270844
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000664  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000234 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00259340
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000234  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00258863 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00257733  0.00017969 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00017929 -0.00258305 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00009205  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000032 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000074  0.54780755  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000031  0.00000000 -0.00000000  0.00000000  0.40554359  0.70366587  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54776695  0.00000000  0.00000000 -0.40612984  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000436  0.00000000 -0.00000000 -0.00003208  0.00000000

   4    1  |1 1>+         -0.00000000 -0.54768426  0.00000073  0.00000000  0.00000000  0.00000000 -0.00000000 -0.40600335
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.31613746  0.00000042  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70332977
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000241  0.00000000  0.00000000 -0.00009356  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

   8    1  |1 1>+         -0.00000037  0.00000000 -0.00000000  0.00000000  0.00008525  0.00001415  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000324  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00007354
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000065 -0.00000000 -0.00000000  0.00000716 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000125 -0.00000000 -0.00000000  0.00000000 -0.00003470  0.00007946  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000182  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00042595 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00042892  0.00000000  0.00000000 -0.00089827  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000000

  15    1  |1 1>+          0.00386037  0.00000000  0.00000000  0.00000000  0.00089871 -0.00051747 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000107 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.81220622  0.00059685  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000073 -0.54772760 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.54772772  0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40620138

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006415  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000223 -0.00000000 -0.00000000  0.81213232 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000503 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.63237851  0.00000000  0.00000000 -0.00000290  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00007665  0.00000006  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000152 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001380

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000152 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00007620 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000298  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009429

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000298  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000146 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00009607 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00386045  0.00000000 -0.00000000 -0.00000000  0.00000076 -0.00103725 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00042683  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00090072

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00042683 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000088 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.54780748 -0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40611769

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000436  0.00000000 -0.00000000 -0.00003208  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54776676 -0.00000000 -0.00000000  0.40612994 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000031 -0.00000000 -0.00000000 -0.00000000  0.40657723 -0.70306927 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000073  0.54768219  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000042 -0.31614113 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000112

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007377

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000037  0.00000000 -0.00000000  0.00000000 -0.00008527  0.00001402 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000241  0.00000000  0.00000000 -0.00009356  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000324  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000124  0.00000000  0.00000000  0.00000000 -0.00003458 -0.00007951 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000065 -0.00000000  0.00000000 -0.00000716  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000182  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00006046

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00042595 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00089538

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00386036 -0.00000000  0.00000000  0.00000000  0.00089794  0.00051879  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00042892 -0.00000000 -0.00000000  0.00089827 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000107  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00001667 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000016 -0.00000480 -0.00000000 -0.00000000 -0.00000000 -0.00000374 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.10270837 -0.00000000  0.00000481  0.00000000  0.00000000 -0.00000000  0.00000374  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000305  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00259340  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000305  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000507 -0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000027 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.40611760 -0.00000351  0.72672259  0.00000000  0.00000000 -0.00000005  0.07134040 -0.00000000
                          -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.57736973  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.57807180  0.00000001 -0.00000000  0.44618659
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000239  0.00000000  0.00000000  0.00000108

   4    1  |1 1>+         -0.00000065  0.67050265  0.00000324  0.00000000  0.00000000 -0.28960269 -0.00000020  0.00000000
                          -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000112 -0.09772892 -0.00000047  0.00000000  0.00000000 -0.62494391 -0.00000043  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00007377 -0.00000000  0.00019760  0.00000000 -0.00000000  0.00000000 -0.00036469  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00019943 -0.00000000  0.00000000 -0.00007667
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00030312 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00029934  0.00000000  0.00000000 -0.00000000  0.00028646  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00036395  0.00000000  0.00000000  0.00050272
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00028741 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00006046 -0.00000000  0.00007860 -0.00000000  0.00000000 -0.00000000  0.00050342 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00089538 -0.00000000  0.00000050 -0.00000000  0.00000000 -0.00000000  0.00000342  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000235
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.57731105 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.40620140 -0.00000054  0.11263240 -0.00000000  0.00000000 -0.00000049  0.72149046 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000065  0.11280300  0.00000054 -0.00000000 -0.00000000  0.72146372  0.00000049 -0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000239 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57740971  0.00000000 -0.00000000 -0.00096932

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000187
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00130212  0.00000001  0.00000000  0.77465816

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00041882  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00060332  0.00000000  0.00000000  0.00000000 -0.00012477 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001380  0.00000000 -0.00060335 -0.00000000  0.00000000 -0.00000000  0.00012463 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00041793 -0.00000000  0.00000000  0.00000070

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00012513  0.00000000 -0.00000000 -0.00000000  0.00018662  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00009429 -0.00000000  0.00012508  0.00000000  0.00000000 -0.00000000  0.00018665 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000023 -0.00000000 -0.00000000 -0.00000000  0.00000177  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00090072  0.00000000 -0.00000023 -0.00000000  0.00000000 -0.00000000  0.00000177  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000012

   1    1  |1 1>-         -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000065  0.72673944  0.00000351  0.00000000 -0.00000000  0.07116856  0.00000005 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000238  0.00000000  0.00000000 -0.00000108
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57656639  0.00000000  0.00000000  0.44813034

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.57736957  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40600803  0.00000324 -0.67057178 -0.00000000  0.00000000 -0.00000020  0.28943987 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                           0.70332711  0.00000047 -0.09757658  0.00000000 -0.00000000  0.00000043 -0.62496888  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00019752  0.00000000  0.00000000  0.00000000 -0.00036473 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00030312  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00019917 -0.00000000  0.00000000  0.00007734

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00007354  0.00000000 -0.00029928 -0.00000000 -0.00000000  0.00000000 -0.00028653  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00028741 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00036564  0.00000000  0.00000000  0.00050149

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00007872 -0.00000000  0.00000000  0.00000000 -0.00050340 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000050 -0.00000000  0.00000000  0.00000000 -0.00000342 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000045 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000235

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000005  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000027
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.99466099 -0.00727600 -0.00000000  0.00000000 -0.00000000  0.00010042  0.00000000  0.00577253
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00727604  0.99465962 -0.00000000  0.00000000 -0.00000000 -0.00575830  0.00000000  0.00010069
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000002  0.99468242  0.00000000  0.00574743 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000106 -0.00000000 -0.00000014  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99468278  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000002  0.99468278  0.00000002  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00029610 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00029610 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00029547 -0.00000000 -0.11541193  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000288 -0.00000000

  10    1  |0 0>           0.00001768  0.00029468 -0.00000000  0.00000000 -0.00000000  0.11521217 -0.00000000 -0.00806463
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00029584  0.00001758  0.00000000 -0.00000000  0.00000000  0.00805085  0.00000000  0.11540857
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000333
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.04193422  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.07303153 -0.04115630  0.00000000  0.00000000  0.00000000  0.00043450 -0.00000000  0.00075382
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04193710 -0.00000000 -0.00043810  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.04192836  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.07262421 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00288312 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00362701  0.00000000  0.61000077 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001521  0.00000000

   8    1  |1 1>+          0.00051503 -0.00335205  0.00000000 -0.00000000  0.00000000 -0.56351286  0.00000000 -0.08070923
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00288252 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00036624 -0.00000000 -0.06144057  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000153 -0.00000000

  11    1  |1 1>+          0.00311807  0.00147502 -0.00000000  0.00000000 -0.00000000  0.24145701 -0.00000000 -0.52464211
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00223311 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00330229 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00330146  0.00000000  0.01094767 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027  0.00000000

  15    1  |1 1>+          0.00186709  0.00331640 -0.00000000  0.00000000 -0.00000000 -0.01097789  0.00000000  0.00635119
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00088414 -0.08382363  0.00000000 -0.00000000  0.00000000  0.00086955 -0.00000000  0.00000037

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.04193606  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.04193610 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.08386114  0.00000000  0.00086789 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00003040 -0.00288157  0.00000000 -0.00000000  0.00000000 -0.48458942  0.00000000 -0.00020546

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00055314 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00055315 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001208  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00287900 -0.00000000 -0.48441152  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00360394  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00360394 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00388307 -0.00004096  0.00000000 -0.00000000  0.00000000 -0.00027519  0.00000000  0.65013445

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00380309  0.00004011 -0.00000000  0.00000000 -0.00000000 -0.00000537  0.00000000  0.01270586

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00330151 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00330151  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.04193425 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.04193711  0.00000000  0.00043810 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.07214718 -0.04268754  0.00000000 -0.00000000  0.00000000  0.00043513 -0.00000000 -0.00075346

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.04192883  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.07262390  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00288312  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00044421  0.00336217 -0.00000000  0.00000000 -0.00000000  0.56358132 -0.00000000 -0.08023217

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001521 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00362701  0.00000000  0.61000082 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00288252 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00314849  0.00140891 -0.00000000 -0.00000000 -0.00000000  0.24101247  0.00000000  0.52484641

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000153 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00036623  0.00000000  0.06143946 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00223310 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00330229 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00193663  0.00327628 -0.00000000 -0.00000000 -0.00000000 -0.01097257  0.00000000 -0.00636050

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00330146 -0.00000000 -0.01094769  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000079  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000024
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000001 -0.00575036  0.00000148 -0.00000000 -0.00000000  0.00000172 -0.00000000  0.00000000
                          -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00575036 -0.00000001  0.00000000  0.00000148  0.00000000  0.00000000  0.00000172 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000024 -0.11543602  0.00002841 -0.00000000 -0.00000000  0.00008330 -0.00000000 -0.00000000
                          -0.00000002 -0.00000123 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.11543606 -0.00000024  0.00000000  0.00002842  0.00000000  0.00000000  0.00008332 -0.00000000
                           0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001271
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001654 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000112 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00043514 -0.00000000  0.00000000  0.00043794 -0.00000000 -0.00000000 -0.00028688  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041834  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041672
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00043557 -0.00052075  0.00000000  0.00000000  0.00004367 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00075395 -0.00014789  0.00000000 -0.00000000 -0.00043283  0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.48494176 -0.00000100 -0.00000003 -0.48280508 -0.00000000 -0.00000025 -0.31640107  0.00000000
                           0.00000000  0.00000010  0.00000002  0.00000012 -0.00000000  0.00000002  0.00000001  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.28046706
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000126

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.41852590  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000100 -0.48474157  0.18550410 -0.00000001 -0.00000000 -0.54648762  0.00000044  0.00000000
                          -0.00000010 -0.00000518 -0.00000000 -0.00000001  0.00000000  0.00000004  0.00000003  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.50291709
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000227

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.39739531  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.37514206 -0.00000078  0.00000002  0.23020185  0.00000000  0.00000054  0.66860642 -0.00000000
                           0.00000000  0.00000008 -0.00000001 -0.00000006 -0.00000000 -0.00000003 -0.00000002 -0.00000000

  13    1  |1 1>+         -0.01094263  0.00000002 -0.00000000 -0.00000207 -0.00000000 -0.00000000 -0.00000193 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000892
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000524 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000025 -0.00000108  0.00000000 -0.00000000 -0.00000062  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00041757 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00043893 -0.00000000 -0.00000000 -0.00017161 -0.00000000 -0.00000000 -0.00049752  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00043893  0.00017176 -0.00000000 -0.00000000  0.00049747 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041739

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000132

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.57777672 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000002  0.00000099  0.00000000  0.00000003 -0.00000000 -0.00000002 -0.00000001 -0.00000000
                          -0.00000019 -0.09285435  0.82362973 -0.00000006 -0.00000000 -0.23765206  0.00000019  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000002  0.00000003  0.00000020 -0.00000000 -0.00000001 -0.00000001  0.00000000
                           0.09285506 -0.00000019  0.00000006  0.82369913 -0.00000000 -0.00000019 -0.23741069  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000260
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57772261

  10    1  |1 0>          -0.00000013 -0.00000648  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000000
                           0.00000125  0.60572643  0.03080125 -0.00000000 -0.00000000 -0.31290206  0.00000025  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000013 -0.00000000 -0.00000001  0.00000000  0.00000002  0.00000001  0.00000000
                           0.60572628 -0.00000125 -0.00000000 -0.03089380  0.00000000  0.00000025  0.31289333 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000048 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.01093701 -0.00000507  0.00000000 -0.00000000 -0.00000385  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.01093703 -0.00000002  0.00000000  0.00000508  0.00000000  0.00000000  0.00000387 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00043514 -0.00043786  0.00000000  0.00000000  0.00028701 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00041519

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00041834  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00043558 -0.00000000 -0.00000000 -0.00052076  0.00000000  0.00000000  0.00004352 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00075394 -0.00000000  0.00000000  0.00014777  0.00000000  0.00000000  0.00043287 -0.00000000

   6    1  |1 1>-         -0.00000010 -0.00000518  0.00000000  0.00000002 -0.00000000  0.00000002  0.00000002  0.00000000
                           0.00000100  0.48494226  0.48289726 -0.00000003 -0.00000000  0.31625889 -0.00000025 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.41852518 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000126
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.27995743

   9    1  |1 1>-         -0.00000000 -0.00000010  0.00000001  0.00000005 -0.00000000 -0.00000003 -0.00000002 -0.00000000
                           0.48474166 -0.00000100  0.00000001  0.18566413 -0.00000000 -0.00000044 -0.54643317  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.39739558  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000228
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.50623367

  12    1  |1 1>-          0.00000008  0.00000401  0.00000000  0.00000001  0.00000000  0.00000005  0.00000003  0.00000000
                          -0.00000078 -0.37514150  0.23039813 -0.00000002 -0.00000000  0.66853935 -0.00000054 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000012 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.01094265 -0.00000208  0.00000000 -0.00000000 -0.00000191  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000521  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000891

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000025  0.00000000  0.00000000  0.00000108  0.00000000  0.00000000  0.00000062  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000087 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000154  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000887  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000218  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000030
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00003153  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003172 -0.00000000 -0.00000000  0.00002282
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002643  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000072 -0.00000000 -0.00000000  0.00000000  0.00013134  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00001115  0.00000000 -0.00000000  0.00000000  0.00000928 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00001157 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000224 -0.00000000  0.00000000  0.00000271
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000180 -0.00000000  0.00000000  0.00000000 -0.00000158 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00032103  0.00000000 -0.00000177  0.00000000 -0.00000000  0.00000000  0.00000067  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000231  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000011  0.62438594  0.00000000 -0.00000000 -0.19628664
                          -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.10653392  0.00000000 -0.69889156  0.00000000 -0.00000000 -0.00000000  0.21050331 -0.00000000
                          -0.00000029  0.00000000  0.00043076  0.00000000  0.00000000 -0.00000000  0.00001947  0.00000000

   8    1  |1 1>+         -0.00000000  0.70083539  0.00000000 -0.00000000 -0.00000000 -0.05384946 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.59847331  0.00000011 -0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000002 -0.00000000  0.00000000  0.00000002

  10    1  |1 1>+          0.70012863  0.00000000 -0.10729703  0.00000000 -0.00000000  0.00000000 -0.49148182  0.00000000
                           0.00000191  0.00000000  0.00006613  0.00000000  0.00000000  0.00000000 -0.00004545 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.09190506 -0.00000000  0.00000000  0.00000000  0.53220169  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000001  0.03382481  0.00000000 -0.00000000 -0.59678490
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000050  0.00000000 -0.00000000  0.00002200
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000235 -0.00000000 -0.00001422  0.00000000  0.00000000  0.00000000 -0.00001243 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00001505  0.00000000 -0.00000000  0.00000000 -0.00000439 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000200  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000050  0.00000000 -0.00000000 -0.00000188

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000050  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000345 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00055560 -0.00000000  0.00000205 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00028997 -0.00000000  0.00000000  0.00000000  0.65430460  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000002 -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.48704721 -0.00000009  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000009  0.48705719 -0.00000000  0.00000000  0.13852828

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00006052 -0.00000000
                           0.00137043  0.00000000  0.00013069 -0.00000000 -0.00000000 -0.00000000  0.65447928 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000005
                          -0.00000000 -0.00000000  0.00000000 -0.11658518 -0.00000002 -0.00000000  0.00000000 -0.00000002

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.11653382 -0.00000000  0.00000000  0.71804871

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.02475779  0.00000000  0.00000000  0.00000000  0.00017469  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000890 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00001332 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001335 -0.00000000 -0.00000000  0.00002880

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000240 -0.00000000 -0.00000179  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000224  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00032300  0.00000000 -0.00000177  0.00000000 -0.00000000  0.00000000 -0.00000067  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000180  0.00000000 -0.00000000 -0.00000000 -0.00000158  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000231  0.00000000  0.00000000  0.00000306

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000063  0.00000000  0.00000000 -0.00000279

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000003  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.62440022  0.00000011 -0.00000000 -0.00000000  0.00000001

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.70088298  0.00000000 -0.00000000 -0.00000000  0.05325230 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000029  0.00000000  0.00043081  0.00000000  0.00000000  0.00000000 -0.00001944 -0.00000000
                           0.10786461 -0.00000000  0.69897545 -0.00000000  0.00000000  0.00000000  0.21022514  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000011 -0.59849247  0.00000000 -0.00000000 -0.26558482

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.09237546  0.00000000 -0.00000000 -0.00000000  0.53189401  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000190 -0.00000000 -0.00006601 -0.00000000  0.00000000  0.00000000 -0.00004545 -0.00000000
                           0.69773437  0.00000000 -0.10710211 -0.00000000 -0.00000000 -0.00000000  0.49152440 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                           0.00000000 -0.00000000  0.00000000 -0.03386694 -0.00000001 -0.00000000  0.00000000 -0.00000002

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000050 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00001508 -0.00000000  0.00000000 -0.00000000 -0.00000443  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000231 -0.00000000 -0.00001418  0.00000000  0.00000000  0.00000000  0.00001241 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000319

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000 -0.00000260 -0.00000128 -0.00000017  0.00000000 -0.00000000 -0.00000000  0.00654038
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000112 -0.00277534 -0.00002981 -0.00000000  0.00000000  0.00000000 -0.00000018
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000002 -0.00002983  0.00277434 -0.00000000 -0.00000000  0.00000000  0.00000007
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00277596 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000030  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00277647  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00277647  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00002291 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000015  0.88535937  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.88535960 -0.00000015  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000002  0.88535767 -0.00000001 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005194 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000028 -0.05579813  0.88356675 -0.00000002 -0.00000000  0.00000000  0.00001144
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000384  0.88349217  0.05580396  0.00000000 -0.00000000 -0.00000000  0.00017894
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00003006 -0.00004071 -0.00000569  0.00000000 -0.00000000 -0.00000000  0.22171893
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00105581 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000134  0.00183055  0.00103744 -0.00000000 -0.00000000  0.00000000  0.00000086
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00105465 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000306 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00105569 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000279  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00182247  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05361204  0.00000001 -0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.06749464 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000396 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.04724935  0.00936668  0.06234977 -0.00000000 -0.00000000  0.00000000 -0.00001099
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.26562801 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.05362938 -0.00000000
                           0.00000036  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00679237  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.46067303  0.05802842 -0.02720333  0.00000000 -0.00000000 -0.00000000  0.00004081
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04156484  0.00000001 -0.00000000
                          -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.31939606  0.00000005 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000001 -0.31941118  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001874  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00003112  0.18230156 -0.32072814  0.00000001  0.00000000 -0.00000000 -0.56294426
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000319 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000092 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00001495  0.00210120 -0.00000000 -0.00000000  0.00000000  0.00000006

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00105497 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000188  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00105497 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00210201  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00016085  0.00038141  0.05360097 -0.00000000 -0.00000000  0.00000000  0.00000145

   7    1  |1 0>           0.00000019  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.13856260  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01026927  0.00000000

   8    1  |1 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01026927  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000315 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05363836  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000098 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.71804042 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.06708681  0.00000000

  11    1  |1 0>          -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06708678  0.00000001 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.75555123 -0.07213144  0.00051319 -0.00000000  0.00000000  0.00000000  0.00003430

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00003776  0.36881766 -0.00263950  0.00000000 -0.00000000 -0.00000000  0.56303215

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00002883  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.31941552 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.31941518 -0.00000005  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000271  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00105581 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00105465  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000134 -0.00181560  0.00106338 -0.00000000 -0.00000000  0.00000000 -0.00000080

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00105570 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00182247 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000027  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.19624230 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.05361219 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.04722248  0.00847836 -0.06247677  0.00000000  0.00000000 -0.00000000 -0.00001433

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000396  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.06749465 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05362954  0.00000001 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.46093406 -0.05840971 -0.02637482  0.00000000  0.00000000 -0.00000000 -0.00004224

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00679233 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000081 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.59678227 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.04156468 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00002199 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.31939636 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00003114 -0.18684697 -0.31813216  0.00000001  0.00000000 -0.00000000  0.56292669

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00001874  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.31941124 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000092 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007256 -0.00403514
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00403934 -0.00007248
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00404664 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000064  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000  0.00404702 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00404702  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00002424 -0.00000000 -0.00000018  0.45034041 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00002423  0.00000000 -0.00000000  0.45033995  0.00000018 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000004 -0.00000000  0.00000000  0.45034996  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00007090 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.44927697  0.03163712
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.03163021 -0.44937319
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000006  0.00001750
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00033134 -0.00000000 -0.00000000  0.00018261  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00018079 -0.00031438
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00033065 -0.00000000 -0.00000000  0.00018282  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000025  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00033073 -0.00000000 -0.00000000  0.00018321 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00018558  0.00000000  0.00000000 -0.00031584  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00001736 -0.00000000  0.00000000 -0.01876473 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00001440  0.00000000 -0.00000000  0.02361863  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000372 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.02182492 -0.00311216
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000767  0.00000000  0.00000001 -0.01876123  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000009 -0.00000000  0.00000000 -0.00237771 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00936861 -0.02035269
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00002286 -0.00000000  0.00000000 -0.01455226 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.70677219 -0.00000209 -0.00000000  0.63077201  0.00000025 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.70678571 -0.00000000 -0.00000000  0.63074948  0.00000000  0.00000001  0.00000000  0.00000000
                          -0.00052841  0.00000000  0.00000000 -0.00009930 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63069936  0.36419248
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000009 -0.03012377  0.00000000 -0.00000000  0.00002039 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036024  0.00000003

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00033128  0.00000000 -0.00000000  0.00018239  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00033128  0.00000000  0.00000000 -0.00018239  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00036187 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000029  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00038601  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01872964  0.00000184

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000135  0.00000000  0.00000000 -0.00359364  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000135  0.00000000  0.00000000 -0.00359365 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000295 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.01874859 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00002331 -0.00000000 -0.00000001  0.02347854 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00002331  0.00000000  0.00000000 -0.02347851 -0.00000001  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000247  0.02522281

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00007170  0.72827229

  14    1  |1 0>          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000209  0.70679929 -0.00000001 -0.00000025  0.63073275 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.70679931 -0.00000209  0.00000000 -0.63073290 -0.00000025  0.00000000  0.00000000

  16    1  |1 0>           0.00002252 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.03011683 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00033133  0.00000000  0.00000000 -0.00018261  0.00000000  0.00000000

   2    1  |1 1>-          0.00000025 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00033065 -0.00000000 -0.00000000 -0.00018282 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00018073  0.00031441

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00033073 -0.00000000 -0.00000000  0.00018321  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00018559  0.00000000 -0.00000000  0.00031584  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00001736 -0.00000000 -0.00000001  0.01876480 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02182436 -0.00311644

   8    1  |1 1>-          0.00000001 -0.00000000 -0.00000000  0.00000372  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001443 -0.00000000 -0.00000000  0.02361868  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000764 -0.00000000  0.00000000 -0.01876127 -0.00000001  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00937259  0.02035087

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000010  0.00000000 -0.00000000  0.00237770  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00002288  0.00000000  0.00000001 -0.01455225  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000209 -0.70677221 -0.00000001 -0.00000025  0.63077184 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63077134 -0.36406824

  15    1  |1 1>-          0.00052841 -0.00000000 -0.00000000 -0.00009930 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70678568 -0.00000000 -0.00000000 -0.63074948 -0.00000000 -0.00000001 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.03012377  0.00000009  0.00000000 -0.00002040 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00139275
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000004 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000004 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000767 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000768 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000034
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000419
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.97511061
                           0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000943 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000012
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000953  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000001 -0.00000942  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000528  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000011  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000056 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000328
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000021 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000187 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00001046
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000207  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.02131347 -0.00001167 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.02129582  0.00000000  0.00000000  0.00000000
                          -0.00000013  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.12800078
                           0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00054713  0.99954603  0.00000000
                           0.00000000  0.00000001 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000930  0.00000001  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000930 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001098 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000001

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000078  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000078  0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000126  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000126 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000952

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.12801935

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00001165  0.02128796 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.02128796 -0.00001165  0.00000000

  16    1  |1 0>          -0.00000606  0.00000000 -0.00000000  0.00000000
                           0.99954639 -0.00000001 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000944 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000954  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000013

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000942 -0.00000001  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000528  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000011 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000328

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000056  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000021  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00001043

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000187  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000207 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00001167 -0.02131347 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.12800079

  15    1  |1 1>-          0.00000013 -0.00000000  0.00000000  0.00000000
                          -0.02129582  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000001 -0.00000001  0.00000000
                           0.00000001  0.99954603 -0.00054713  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1    -25.35542668     -0.00000511       -1.12      0.00000000        0.00      0.0000
   2   1    -25.30874447      0.04667710    10244.44      0.04668221    10245.56      1.2703
   3   1    -25.30874447      0.04667710    10244.44      0.04668221    10245.56      1.2703
   4   1    -25.30874438      0.04667719    10244.46      0.04668230    10245.58      1.2703
   5   1    -25.30799006      0.04743151    10410.01      0.04743661    10411.13      1.2908
   6   1    -25.30798990      0.04743167    10410.05      0.04743678    10411.17      1.2908
   7   1    -25.30798978      0.04743179    10410.08      0.04743690    10411.20      1.2908
   8   1    -25.30798971      0.04743186    10410.09      0.04743697    10411.21      1.2908
   9   1    -25.30798971      0.04743186    10410.09      0.04743697    10411.21      1.2908
  10   1    -25.30657765      0.04884392    10720.00      0.04884903    10721.12      1.3292
  11   1    -25.30657765      0.04884392    10720.00      0.04884903    10721.12      1.3292
  12   1    -25.30657759      0.04884398    10720.01      0.04884909    10721.14      1.3293
  13   1    -25.30657752      0.04884405    10720.03      0.04884915    10721.15      1.3293
  14   1    -25.30657749      0.04884408    10720.04      0.04884919    10721.16      1.3293
  15   1    -25.30657748      0.04884408    10720.04      0.04884919    10721.16      1.3293
  16   1    -25.30657746      0.04884411    10720.04      0.04884921    10721.16      1.3293
  17   1    -25.29740292      0.05801865    12733.62      0.05802376    12734.74      1.5789
  18   1    -25.29740282      0.05801875    12733.64      0.05802386    12734.76      1.5789
  19   1    -25.29740267      0.05801890    12733.68      0.05802400    12734.80      1.5789
  20   1    -25.29740267      0.05801890    12733.68      0.05802401    12734.80      1.5789
  21   1    -25.29740267      0.05801890    12733.68      0.05802401    12734.80      1.5789
  22   1    -25.25020212      0.10521945    23093.00      0.10522456    23094.12      2.8633
  23   1    -25.25020184      0.10521973    23093.06      0.10522484    23094.18      2.8633
  24   1    -25.25020137      0.10522020    23093.16      0.10522531    23094.29      2.8633
  25   1    -25.25020133      0.10522024    23093.17      0.10522535    23094.29      2.8633
  26   1    -25.25020133      0.10522024    23093.17      0.10522535    23094.29      2.8633
  27   1    -25.24889442      0.10652715    23380.01      0.10653226    23381.13      2.8989
  28   1    -25.24889442      0.10652715    23380.01      0.10653226    23381.13      2.8989
  29   1    -25.24889409      0.10652748    23380.08      0.10653259    23381.20      2.8989
  30   1    -25.24889355      0.10652801    23380.20      0.10653312    23381.32      2.8989
  31   1    -25.24889355      0.10652801    23380.20      0.10653312    23381.32      2.8989
  32   1    -25.24889339      0.10652818    23380.23      0.10653329    23381.35      2.8989
  33   1    -25.24889326      0.10652831    23380.26      0.10653342    23381.38      2.8989
  34   1    -25.24731263      0.10810894    23727.17      0.10811405    23728.29      2.9419
  35   1    -25.24731263      0.10810894    23727.17      0.10811405    23728.29      2.9419
  36   1    -25.24731234      0.10810923    23727.23      0.10811433    23728.35      2.9419
  37   1    -25.24731234      0.10810923    23727.23      0.10811433    23728.35      2.9419
  38   1    -25.24731187      0.10810970    23727.34      0.10811481    23728.46      2.9420
  39   1    -25.24731166      0.10810991    23727.38      0.10811502    23728.50      2.9420
  40   1    -25.24731135      0.10811022    23727.45      0.10811533    23728.57      2.9420
  41   1    -25.24731135      0.10811022    23727.45      0.10811533    23728.57      2.9420
  42   1    -25.24731121      0.10811036    23727.48      0.10811547    23728.60      2.9420
  43   1    -25.24156272      0.11385885    24989.13      0.11386395    24990.25      3.0984
  44   1    -25.24156260      0.11385897    24989.16      0.11386408    24990.28      3.0984
  45   1    -25.24156258      0.11385899    24989.16      0.11386410    24990.28      3.0984
  46   1    -25.24156249      0.11385908    24989.18      0.11386419    24990.30      3.0984
  47   1    -25.24156248      0.11385909    24989.18      0.11386420    24990.30      3.0984
  48   1    -25.24151837      0.11390320    24998.86      0.11390831    24999.98      3.0996
  49   1    -25.24027220      0.11514937    25272.37      0.11515448    25273.49      3.1335
  50   1    -25.24027216      0.11514941    25272.37      0.11515452    25273.50      3.1335
  51   1    -25.24027216      0.11514941    25272.37      0.11515452    25273.50      3.1335
  52   1    -25.23773176      0.11768981    25829.93      0.11769492    25831.05      3.2026
  53   1    -25.23773169      0.11768988    25829.94      0.11769499    25831.06      3.2026
  54   1    -25.23773169      0.11768988    25829.94      0.11769499    25831.06      3.2026
  55   1    -25.23773157      0.11769000    25829.97      0.11769511    25831.09      3.2026
  56   1    -25.23773091      0.11769066    25830.11      0.11769577    25831.24      3.2027
  57   1    -25.23625505      0.11916652    26154.03      0.11917163    26155.15      3.2428
  58   1    -25.23625505      0.11916652    26154.03      0.11917163    26155.15      3.2428
  59   1    -25.23625505      0.11916652    26154.03      0.11917163    26155.15      3.2428
  60   1    -25.23379802      0.12162355    26693.28      0.12162866    26694.41      3.3097

 E0 =    -25.35542157 is the energy of the lowest zeroth-order state
 E1 =    -25.35542668 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997764  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000044  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00175848 -0.10264576 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.10265971 -0.00175818  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.10271208  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000811  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000662 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.10270844
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000664  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000234 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00259340
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000234  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00258863 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00257733  0.00017969 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00017929 -0.00258305 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00009205  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000032 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000074  0.54780755  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000031  0.00000000 -0.00000000  0.00000000  0.40554359  0.70366587  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54776695  0.00000000  0.00000000 -0.40612984  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000436  0.00000000 -0.00000000 -0.00003208  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.54768426  0.00000073  0.00000000  0.00000000  0.00000000 -0.00000000 -0.40600335
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.31613746  0.00000042  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70332977
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000241  0.00000000  0.00000000 -0.00009356  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

 20  1     8    1  |1 1>+      -0.00000037  0.00000000 -0.00000000  0.00000000  0.00008525  0.00001415  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000324  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00007354
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000065 -0.00000000 -0.00000000  0.00000716 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000125 -0.00000000 -0.00000000  0.00000000 -0.00003470  0.00007946  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000182  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00042595 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00042892  0.00000000  0.00000000 -0.00089827  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000000

 27  1    15    1  |1 1>+       0.00386037  0.00000000  0.00000000  0.00000000  0.00089871 -0.00051747 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000107 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.81220622  0.00059685  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000073 -0.54772760 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.54772772  0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40620138

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006415  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000223 -0.00000000 -0.00000000  0.81213232 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000503 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.63237851  0.00000000  0.00000000 -0.00000290  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00007665  0.00000006  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000152 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001380

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000152 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00007620 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000298  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009429

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000298  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000146 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00009607 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00386045  0.00000000 -0.00000000 -0.00000000  0.00000076 -0.00103725 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00042683  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00090072

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00042683 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000088 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.54780748 -0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40611769

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000436  0.00000000 -0.00000000 -0.00003208  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54776676 -0.00000000 -0.00000000  0.40612994 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000031 -0.00000000 -0.00000000 -0.00000000  0.40657723 -0.70306927 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000073  0.54768219  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000065

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000042 -0.31614113 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000112

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007377

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000037  0.00000000 -0.00000000  0.00000000 -0.00008527  0.00001402 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000241  0.00000000  0.00000000 -0.00009356  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000324  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000124  0.00000000  0.00000000  0.00000000 -0.00003458 -0.00007951 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000065 -0.00000000  0.00000000 -0.00000716  0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000182  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00006046

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00042595 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00089538

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00386036 -0.00000000  0.00000000  0.00000000  0.00089794  0.00051879  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00042892 -0.00000000 -0.00000000  0.00089827 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000107  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000031  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00001667 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000016 -0.00000480 -0.00000000 -0.00000000 -0.00000000 -0.00000374 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.10270837 -0.00000000  0.00000481  0.00000000  0.00000000 -0.00000000  0.00000374  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000305  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00259340  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000305  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000507 -0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000027 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.40611760 -0.00000351  0.72672259  0.00000000  0.00000000 -0.00000005  0.07134040 -0.00000000
                               -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.57736973  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.57807180  0.00000001 -0.00000000  0.44618659
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000239  0.00000000  0.00000000  0.00000108

 16  1     4    1  |1 1>+      -0.00000065  0.67050265  0.00000324  0.00000000  0.00000000 -0.28960269 -0.00000020  0.00000000
                               -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000112 -0.09772892 -0.00000047  0.00000000  0.00000000 -0.62494391 -0.00000043  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00007377 -0.00000000  0.00019760  0.00000000 -0.00000000  0.00000000 -0.00036469  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00019943 -0.00000000  0.00000000 -0.00007667
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00030312 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00029934  0.00000000  0.00000000 -0.00000000  0.00028646  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00036395  0.00000000  0.00000000  0.00050272
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00028741 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00006046 -0.00000000  0.00007860 -0.00000000  0.00000000 -0.00000000  0.00050342 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00089538 -0.00000000  0.00000050 -0.00000000  0.00000000 -0.00000000  0.00000342  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000235
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.57731105 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.40620140 -0.00000054  0.11263240 -0.00000000  0.00000000 -0.00000049  0.72149046 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000065  0.11280300  0.00000054 -0.00000000 -0.00000000  0.72146372  0.00000049 -0.00000001

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000239 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57740971  0.00000000 -0.00000000 -0.00096932

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000187
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00130212  0.00000001  0.00000000  0.77465816

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00041882  0.00000000  0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00060332  0.00000000  0.00000000  0.00000000 -0.00012477 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001380  0.00000000 -0.00060335 -0.00000000  0.00000000 -0.00000000  0.00012463 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00041793 -0.00000000  0.00000000  0.00000070

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00012513  0.00000000 -0.00000000 -0.00000000  0.00018662  0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00009429 -0.00000000  0.00012508  0.00000000  0.00000000 -0.00000000  0.00018665 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000023 -0.00000000 -0.00000000 -0.00000000  0.00000177  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00090072  0.00000000 -0.00000023 -0.00000000  0.00000000 -0.00000000  0.00000177  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000012

 45  1     1    1  |1 1>-      -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000065  0.72673944  0.00000351  0.00000000 -0.00000000  0.07116856  0.00000005 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000238  0.00000000  0.00000000 -0.00000108
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57656639  0.00000000  0.00000000  0.44813034

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.57736957  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40600803  0.00000324 -0.67057178 -0.00000000  0.00000000 -0.00000020  0.28943987 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                                0.70332711  0.00000047 -0.09757658  0.00000000 -0.00000000  0.00000043 -0.62496888  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00019752  0.00000000  0.00000000  0.00000000 -0.00036473 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00030312  0.00000000  0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00019917 -0.00000000  0.00000000  0.00007734

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00007354  0.00000000 -0.00029928 -0.00000000 -0.00000000  0.00000000 -0.00028653  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00028741 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00036564  0.00000000  0.00000000  0.00050149

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00007872 -0.00000000  0.00000000  0.00000000 -0.00050340 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000050 -0.00000000  0.00000000  0.00000000 -0.00000342 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000045 -0.00000000  0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000235

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000005  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000027
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99466099 -0.00727600 -0.00000000  0.00000000 -0.00000000  0.00010042  0.00000000  0.00577253
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00727604  0.99465962 -0.00000000  0.00000000 -0.00000000 -0.00575830  0.00000000  0.00010069
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000002  0.99468242  0.00000000  0.00574743 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000106 -0.00000000 -0.00000014  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.99468278  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000002  0.99468278  0.00000002  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00029610 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00029610 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00029547 -0.00000000 -0.11541193  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000288 -0.00000000

 10  1    10    1  |0 0>        0.00001768  0.00029468 -0.00000000  0.00000000 -0.00000000  0.11521217 -0.00000000 -0.00806463
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00029584  0.00001758  0.00000000 -0.00000000  0.00000000  0.00805085  0.00000000  0.11540857
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000333
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.04193422  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.07303153 -0.04115630  0.00000000  0.00000000  0.00000000  0.00043450 -0.00000000  0.00075382
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04193710 -0.00000000 -0.00043810  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.04192836  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.07262421 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00288312 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00362701  0.00000000  0.61000077 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001521  0.00000000

 20  1     8    1  |1 1>+       0.00051503 -0.00335205  0.00000000 -0.00000000  0.00000000 -0.56351286  0.00000000 -0.08070923
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00288252 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00036624 -0.00000000 -0.06144057  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000153 -0.00000000

 23  1    11    1  |1 1>+       0.00311807  0.00147502 -0.00000000  0.00000000 -0.00000000  0.24145701 -0.00000000 -0.52464211
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00223311 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00330229 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00330146  0.00000000  0.01094767 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027  0.00000000

 27  1    15    1  |1 1>+       0.00186709  0.00331640 -0.00000000  0.00000000 -0.00000000 -0.01097789  0.00000000  0.00635119
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00088414 -0.08382363  0.00000000 -0.00000000  0.00000000  0.00086955 -0.00000000  0.00000037

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.04193606  0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.04193610 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.08386114  0.00000000  0.00086789 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00003040 -0.00288157  0.00000000 -0.00000000  0.00000000 -0.48458942  0.00000000 -0.00020546

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00055314 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00055315 -0.00000000  0.00000000  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001208  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00287900 -0.00000000 -0.48441152  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00360394  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00360394 -0.00000000  0.00000000  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00388307 -0.00004096  0.00000000 -0.00000000  0.00000000 -0.00027519  0.00000000  0.65013445

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00380309  0.00004011 -0.00000000  0.00000000 -0.00000000 -0.00000537  0.00000000  0.01270586

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00330151 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00330151  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.04193425 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.04193711  0.00000000  0.00043810 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.07214718 -0.04268754  0.00000000 -0.00000000  0.00000000  0.00043513 -0.00000000 -0.00075346

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.04192883  0.00000000  0.00000000  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.07262390  0.00000000  0.00000000  0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00288312  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00044421  0.00336217 -0.00000000  0.00000000 -0.00000000  0.56358132 -0.00000000 -0.08023217

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001521 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00362701  0.00000000  0.61000082 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00288252 -0.00000000  0.00000000  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00314849  0.00140891 -0.00000000 -0.00000000 -0.00000000  0.24101247  0.00000000  0.52484641

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000153 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00036623  0.00000000  0.06143946 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00223310 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00330229 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00193663  0.00327628 -0.00000000 -0.00000000 -0.00000000 -0.01097257  0.00000000 -0.00636050

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000027  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00330146 -0.00000000 -0.01094769  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000079  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000024
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000001 -0.00575036  0.00000148 -0.00000000 -0.00000000  0.00000172 -0.00000000  0.00000000
                               -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00575036 -0.00000001  0.00000000  0.00000148  0.00000000  0.00000000  0.00000172 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000024 -0.11543602  0.00002841 -0.00000000 -0.00000000  0.00008330 -0.00000000 -0.00000000
                               -0.00000002 -0.00000123 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.11543606 -0.00000024  0.00000000  0.00002842  0.00000000  0.00000000  0.00008332 -0.00000000
                                0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001271
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001654 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000112 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00043514 -0.00000000  0.00000000  0.00043794 -0.00000000 -0.00000000 -0.00028688  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041834  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041672
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00043557 -0.00052075  0.00000000  0.00000000  0.00004367 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00075395 -0.00014789  0.00000000 -0.00000000 -0.00043283  0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.48494176 -0.00000100 -0.00000003 -0.48280508 -0.00000000 -0.00000025 -0.31640107  0.00000000
                                0.00000000  0.00000010  0.00000002  0.00000012 -0.00000000  0.00000002  0.00000001  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.28046706
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000126

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.41852590  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000100 -0.48474157  0.18550410 -0.00000001 -0.00000000 -0.54648762  0.00000044  0.00000000
                               -0.00000010 -0.00000518 -0.00000000 -0.00000001  0.00000000  0.00000004  0.00000003  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.50291709
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000227

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.39739531  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.37514206 -0.00000078  0.00000002  0.23020185  0.00000000  0.00000054  0.66860642 -0.00000000
                                0.00000000  0.00000008 -0.00000001 -0.00000006 -0.00000000 -0.00000003 -0.00000002 -0.00000000

 25  1    13    1  |1 1>+      -0.01094263  0.00000002 -0.00000000 -0.00000207 -0.00000000 -0.00000000 -0.00000193 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000892
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000524 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000025 -0.00000108  0.00000000 -0.00000000 -0.00000062  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00041757 -0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00043893 -0.00000000 -0.00000000 -0.00017161 -0.00000000 -0.00000000 -0.00049752  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00043893  0.00017176 -0.00000000 -0.00000000  0.00049747 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041739

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000132

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.57777672 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000002  0.00000099  0.00000000  0.00000003 -0.00000000 -0.00000002 -0.00000001 -0.00000000
                               -0.00000019 -0.09285435  0.82362973 -0.00000006 -0.00000000 -0.23765206  0.00000019  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000002  0.00000003  0.00000020 -0.00000000 -0.00000001 -0.00000001  0.00000000
                                0.09285506 -0.00000019  0.00000006  0.82369913 -0.00000000 -0.00000019 -0.23741069  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000260
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57772261

 38  1    10    1  |1 0>       -0.00000013 -0.00000648  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000000
                                0.00000125  0.60572643  0.03080125 -0.00000000 -0.00000000 -0.31290206  0.00000025  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000013 -0.00000000 -0.00000001  0.00000000  0.00000002  0.00000001  0.00000000
                                0.60572628 -0.00000125 -0.00000000 -0.03089380  0.00000000  0.00000025  0.31289333 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000048 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.01093701 -0.00000507  0.00000000 -0.00000000 -0.00000385  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.01093703 -0.00000002  0.00000000  0.00000508  0.00000000  0.00000000  0.00000387 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00043514 -0.00043786  0.00000000  0.00000000  0.00028701 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00041519

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00041834  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00043558 -0.00000000 -0.00000000 -0.00052076  0.00000000  0.00000000  0.00004352 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00075394 -0.00000000  0.00000000  0.00014777  0.00000000  0.00000000  0.00043287 -0.00000000

 50  1     6    1  |1 1>-      -0.00000010 -0.00000518  0.00000000  0.00000002 -0.00000000  0.00000002  0.00000002  0.00000000
                                0.00000100  0.48494226  0.48289726 -0.00000003 -0.00000000  0.31625889 -0.00000025 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.41852518 -0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000126
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.27995743

 53  1     9    1  |1 1>-      -0.00000000 -0.00000010  0.00000001  0.00000005 -0.00000000 -0.00000003 -0.00000002 -0.00000000
                                0.48474166 -0.00000100  0.00000001  0.18566413 -0.00000000 -0.00000044 -0.54643317  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.39739558  0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000228
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.50623367

 56  1    12    1  |1 1>-       0.00000008  0.00000401  0.00000000  0.00000001  0.00000000  0.00000005  0.00000003  0.00000000
                               -0.00000078 -0.37514150  0.23039813 -0.00000002 -0.00000000  0.66853935 -0.00000054 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000012 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.01094265 -0.00000208  0.00000000 -0.00000000 -0.00000191  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000521  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000891

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000025  0.00000000  0.00000000  0.00000108  0.00000000  0.00000000  0.00000062  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000087 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000154  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000887  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000218  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000030
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00003153  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003172 -0.00000000 -0.00000000  0.00002282
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002643  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000072 -0.00000000 -0.00000000  0.00000000  0.00013134  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00001115  0.00000000 -0.00000000  0.00000000  0.00000928 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00001157 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000224 -0.00000000  0.00000000  0.00000271
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000180 -0.00000000  0.00000000  0.00000000 -0.00000158 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00032103  0.00000000 -0.00000177  0.00000000 -0.00000000  0.00000000  0.00000067  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000231  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000011  0.62438594  0.00000000 -0.00000000 -0.19628664
                               -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.10653392  0.00000000 -0.69889156  0.00000000 -0.00000000 -0.00000000  0.21050331 -0.00000000
                               -0.00000029  0.00000000  0.00043076  0.00000000  0.00000000 -0.00000000  0.00001947  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.70083539  0.00000000 -0.00000000 -0.00000000 -0.05384946 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.59847331  0.00000011 -0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000002 -0.00000000  0.00000000  0.00000002

 22  1    10    1  |1 1>+       0.70012863  0.00000000 -0.10729703  0.00000000 -0.00000000  0.00000000 -0.49148182  0.00000000
                                0.00000191  0.00000000  0.00006613  0.00000000  0.00000000  0.00000000 -0.00004545 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.09190506 -0.00000000  0.00000000  0.00000000  0.53220169  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000001  0.03382481  0.00000000 -0.00000000 -0.59678490
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000050  0.00000000 -0.00000000  0.00002200
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000235 -0.00000000 -0.00001422  0.00000000  0.00000000  0.00000000 -0.00001243 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00001505  0.00000000 -0.00000000  0.00000000 -0.00000439 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000200  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000050  0.00000000 -0.00000000 -0.00000188

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000050  0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000345 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00055560 -0.00000000  0.00000205 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00028997 -0.00000000  0.00000000  0.00000000  0.65430460  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000002 -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.48704721 -0.00000009  0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000009  0.48705719 -0.00000000  0.00000000  0.13852828

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00006052 -0.00000000
                                0.00137043  0.00000000  0.00013069 -0.00000000 -0.00000000 -0.00000000  0.65447928 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000005
                               -0.00000000 -0.00000000  0.00000000 -0.11658518 -0.00000002 -0.00000000  0.00000000 -0.00000002

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.11653382 -0.00000000  0.00000000  0.71804871

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.02475779  0.00000000  0.00000000  0.00000000  0.00017469  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000890 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00001332 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001335 -0.00000000 -0.00000000  0.00002880

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000240 -0.00000000 -0.00000179  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000224  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00032300  0.00000000 -0.00000177  0.00000000 -0.00000000  0.00000000 -0.00000067  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000180  0.00000000 -0.00000000 -0.00000000 -0.00000158  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000231  0.00000000  0.00000000  0.00000306

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000063  0.00000000  0.00000000 -0.00000279

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000003  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.62440022  0.00000011 -0.00000000 -0.00000000  0.00000001

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.70088298  0.00000000 -0.00000000 -0.00000000  0.05325230 -0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000029  0.00000000  0.00043081  0.00000000  0.00000000  0.00000000 -0.00001944 -0.00000000
                                0.10786461 -0.00000000  0.69897545 -0.00000000  0.00000000  0.00000000  0.21022514  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000011 -0.59849247  0.00000000 -0.00000000 -0.26558482

 54  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.09237546  0.00000000 -0.00000000 -0.00000000  0.53189401  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000190 -0.00000000 -0.00006601 -0.00000000  0.00000000  0.00000000 -0.00004545 -0.00000000
                                0.69773437  0.00000000 -0.10710211 -0.00000000 -0.00000000 -0.00000000  0.49152440 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                                0.00000000 -0.00000000  0.00000000 -0.03386694 -0.00000001 -0.00000000  0.00000000 -0.00000002

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000050 -0.00000000 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00001508 -0.00000000  0.00000000 -0.00000000 -0.00000443  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000231 -0.00000000 -0.00001418  0.00000000  0.00000000  0.00000000  0.00001241 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000319


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000 -0.00000260 -0.00000128 -0.00000017  0.00000000 -0.00000000 -0.00000000  0.00654038
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000112 -0.00277534 -0.00002981 -0.00000000  0.00000000  0.00000000 -0.00000018
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000002 -0.00002983  0.00277434 -0.00000000 -0.00000000  0.00000000  0.00000007
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00277596 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000030  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00277647  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00277647  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00002291 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000015  0.88535937  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.88535960 -0.00000015  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000002  0.88535767 -0.00000001 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00005194 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000028 -0.05579813  0.88356675 -0.00000002 -0.00000000  0.00000000  0.00001144
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000384  0.88349217  0.05580396  0.00000000 -0.00000000 -0.00000000  0.00017894
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00003006 -0.00004071 -0.00000569  0.00000000 -0.00000000 -0.00000000  0.22171893
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00105581 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000134  0.00183055  0.00103744 -0.00000000 -0.00000000  0.00000000  0.00000086
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00105465 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000306 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00105569 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000279  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00182247  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05361204  0.00000001 -0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.06749464 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000396 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.04724935  0.00936668  0.06234977 -0.00000000 -0.00000000  0.00000000 -0.00001099
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.26562801 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.05362938 -0.00000000
                                0.00000036  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00679237  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.46067303  0.05802842 -0.02720333  0.00000000 -0.00000000 -0.00000000  0.00004081
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04156484  0.00000001 -0.00000000
                               -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.31939606  0.00000005 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000001 -0.31941118  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001874  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00003112  0.18230156 -0.32072814  0.00000001  0.00000000 -0.00000000 -0.56294426
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000319 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000092 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00001495  0.00210120 -0.00000000 -0.00000000  0.00000000  0.00000006

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00105497 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000188  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00105497 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00210201  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00016085  0.00038141  0.05360097 -0.00000000 -0.00000000  0.00000000  0.00000145

 35  1     7    1  |1 0>        0.00000019  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.13856260  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01026927  0.00000000

 36  1     8    1  |1 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01026927  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000315 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05363836  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000098 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.71804042 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.06708681  0.00000000

 39  1    11    1  |1 0>       -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06708678  0.00000001 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.75555123 -0.07213144  0.00051319 -0.00000000  0.00000000  0.00000000  0.00003430

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00003776  0.36881766 -0.00263950  0.00000000 -0.00000000 -0.00000000  0.56303215

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00002883  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.31941552 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.31941518 -0.00000005  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000271  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00105581 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00105465  0.00000000  0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000134 -0.00181560  0.00106338 -0.00000000 -0.00000000  0.00000000 -0.00000080

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00105570 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00182247 -0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000027  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.19624230 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.05361219 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.04722248  0.00847836 -0.06247677  0.00000000  0.00000000 -0.00000000 -0.00001433

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000396  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.06749465 -0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05362954  0.00000001 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.46093406 -0.05840971 -0.02637482  0.00000000  0.00000000 -0.00000000 -0.00004224

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00679233 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000081 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.59678227 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.04156468 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00002199 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.31939636 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00003114 -0.18684697 -0.31813216  0.00000001  0.00000000 -0.00000000  0.56292669

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00001874  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.31941124 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000092 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007256 -0.00403514
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00403934 -0.00007248
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00404664 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000064  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000  0.00404702 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00404702  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00002424 -0.00000000 -0.00000018  0.45034041 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00002423  0.00000000 -0.00000000  0.45033995  0.00000018 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000004 -0.00000000  0.00000000  0.45034996  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00007090 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.44927697  0.03163712
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.03163021 -0.44937319
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000006  0.00001750
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00033134 -0.00000000 -0.00000000  0.00018261  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00018079 -0.00031438
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00033065 -0.00000000 -0.00000000  0.00018282  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000025  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00033073 -0.00000000 -0.00000000  0.00018321 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00018558  0.00000000  0.00000000 -0.00031584  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00001736 -0.00000000  0.00000000 -0.01876473 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00001440  0.00000000 -0.00000000  0.02361863  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000372 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.02182492 -0.00311216
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000767  0.00000000  0.00000001 -0.01876123  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000009 -0.00000000  0.00000000 -0.00237771 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00936861 -0.02035269
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00002286 -0.00000000  0.00000000 -0.01455226 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.70677219 -0.00000209 -0.00000000  0.63077201  0.00000025 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.70678571 -0.00000000 -0.00000000  0.63074948  0.00000000  0.00000001  0.00000000  0.00000000
                               -0.00052841  0.00000000  0.00000000 -0.00009930 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63069936  0.36419248
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000009 -0.03012377  0.00000000 -0.00000000  0.00002039 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036024  0.00000003

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00033128  0.00000000 -0.00000000  0.00018239  0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00033128  0.00000000  0.00000000 -0.00018239  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00036187 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000029  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00038601  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01872964  0.00000184

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000135  0.00000000  0.00000000 -0.00359364  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000135  0.00000000  0.00000000 -0.00359365 -0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000295 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.01874859 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00002331 -0.00000000 -0.00000001  0.02347854 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00002331  0.00000000  0.00000000 -0.02347851 -0.00000001  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000247  0.02522281

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00007170  0.72827229

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000209  0.70679929 -0.00000001 -0.00000025  0.63073275 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.70679931 -0.00000209  0.00000000 -0.63073290 -0.00000025  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00002252 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.03011683 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00033133  0.00000000  0.00000000 -0.00018261  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000025 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00033065 -0.00000000 -0.00000000 -0.00018282 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00018073  0.00031441

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00033073 -0.00000000 -0.00000000  0.00018321  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00018559  0.00000000 -0.00000000  0.00031584  0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00001736 -0.00000000 -0.00000001  0.01876480 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02182436 -0.00311644

 52  1     8    1  |1 1>-       0.00000001 -0.00000000 -0.00000000  0.00000372  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001443 -0.00000000 -0.00000000  0.02361868  0.00000000  0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000764 -0.00000000  0.00000000 -0.01876127 -0.00000001  0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00937259  0.02035087

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000010  0.00000000 -0.00000000  0.00237770  0.00000000  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00002288  0.00000000  0.00000001 -0.01455225  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000209 -0.70677221 -0.00000001 -0.00000025  0.63077184 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63077134 -0.36406824

 59  1    15    1  |1 1>-       0.00052841 -0.00000000 -0.00000000 -0.00009930 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70678568 -0.00000000 -0.00000000 -0.63074948 -0.00000000 -0.00000001 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.03012377  0.00000009  0.00000000 -0.00002040 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00139275
                                0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000004 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000004 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000767 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000768 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000034
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000419
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.97511061
                                0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000943 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000012
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000953  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000001 -0.00000942  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000528  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000011  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000056 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000328
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000021 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000187 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00001046
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000207  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.02131347 -0.00001167 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.02129582  0.00000000  0.00000000  0.00000000
                               -0.00000013  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.12800078
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00054713  0.99954603  0.00000000
                                0.00000000  0.00000001 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000930  0.00000001  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000930 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001098 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000001

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000078  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000078  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000126  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000126 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000952

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.12801935

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00001165  0.02128796 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.02128796 -0.00001165  0.00000000

 44  1    16    1  |1 0>       -0.00000606  0.00000000 -0.00000000  0.00000000
                                0.99954639 -0.00000001 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000944 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000954  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000013

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000942 -0.00000001  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000528  0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000011 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000328

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000056  0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000021  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00001043

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000187  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000207 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00001167 -0.02131347 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.12800079

 59  1    15    1  |1 1>-       0.00000013 -0.00000000  0.00000000  0.00000000
                               -0.02129582  0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000001 -0.00000001  0.00000000
                                0.00000001  0.99954603 -0.00054713  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.05%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.05%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.05%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.05%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.45%   49.51%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.49%    0.00%
 16  1     4    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 17  1     5    1  |1 1>+         0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%   49.47%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.97%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.50%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.96%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.99%    0.00%    0.00%    0.00%    0.00%
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
 45  1     1    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.49%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.49%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.53%   49.43%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%
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
  6  1     6    1  |0 0>          1.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.49%    0.00%   52.81%    0.00%    0.00%    0.00%    0.51%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.42%    0.00%    0.00%   19.91%
 16  1     4    1  |1 1>+         0.00%   44.96%    0.00%    0.00%    0.00%    8.39%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.96%    0.00%    0.00%    0.00%   39.06%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.50%    0.00%    1.27%    0.00%    0.00%    0.00%   52.05%    0.00%
 31  1     3    1  |1 0>          0.00%    1.27%    0.00%    0.00%    0.00%   52.05%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.01%
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
 45  1     1    1  |1 1>-         0.00%   52.82%    0.00%    0.00%    0.00%    0.51%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.24%    0.00%    0.00%   20.08%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-        16.48%    0.00%   44.97%    0.00%    0.00%    0.00%    8.38%    0.00%
 49  1     5    1  |1 1>-        49.47%    0.00%    0.95%    0.00%    0.00%    0.00%   39.06%    0.00%
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
  2  1     2    1  |0 0>         98.94%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.01%   98.93%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.94%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   98.94%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.94%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.33%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.33%    0.00%    0.01%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    1.33%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.53%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.53%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.21%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   31.75%    0.00%    0.65%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.83%    0.00%   27.52%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.70%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.48%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.47%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.27%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.52%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.53%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.76%    0.00%    0.64%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.21%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.81%    0.00%   27.55%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          1.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.52%    0.00%    0.00%   23.31%    0.00%    0.00%   10.01%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.87%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   17.52%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%   23.50%    3.44%    0.00%    0.00%   29.86%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.29%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.79%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        14.07%    0.00%    0.00%    5.30%    0.00%    0.00%   44.70%    0.00%
 25  1    13    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.86%   67.84%    0.00%    0.00%    5.65%    0.00%    0.00%
 36  1     8    1  |1 0>          0.86%    0.00%    0.00%   67.85%    0.00%    0.00%    5.64%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.38%
 38  1    10    1  |1 0>          0.00%   36.69%    0.09%    0.00%    0.00%    9.79%    0.00%    0.00%
 39  1    11    1  |1 0>         36.69%    0.00%    0.00%    0.10%    0.00%    0.00%    9.79%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%   23.52%   23.32%    0.00%    0.00%   10.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   17.52%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.84%
 53  1     9    1  |1 1>-        23.50%    0.00%    0.00%    3.45%    0.00%    0.00%   29.86%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   15.79%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.63%
 56  1    12    1  |1 1>-         0.00%   14.07%    5.31%    0.00%    0.00%   44.69%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   38.99%    0.00%    0.00%    3.85%
 19  1     7    1  |1 1>+         1.13%    0.00%   48.84%    0.00%    0.00%    0.00%    4.43%    0.00%
 20  1     8    1  |1 1>+         0.00%   49.12%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   35.82%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+        49.02%    0.00%    1.15%    0.00%    0.00%    0.00%   24.16%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.84%    0.00%    0.00%    0.00%   28.32%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%   35.62%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.81%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   23.72%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.72%    0.00%    0.00%    1.92%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.36%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.36%    0.00%    0.00%   51.56%
 40  1    12    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   38.99%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   49.12%    0.00%    0.00%    0.00%    0.28%    0.00%    0.00%
 52  1     8    1  |1 1>-         1.16%    0.00%   48.86%    0.00%    0.00%    0.00%    4.42%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   35.82%    0.00%    0.00%    7.05%
 54  1    10    1  |1 1>-         0.00%    0.85%    0.00%    0.00%    0.00%   28.29%    0.00%    0.00%
 55  1    11    1  |1 1>-        48.68%    0.00%    1.15%    0.00%    0.00%    0.00%   24.16%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   78.39%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   78.39%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   78.39%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.31%   78.07%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   78.06%    0.31%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.92%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.22%    0.01%    0.39%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         7.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.22%    0.34%    0.07%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   10.20%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   10.20%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    3.32%   10.29%    0.00%    0.00%    0.00%   31.69%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.29%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          1.92%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>         51.56%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   57.09%    0.52%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%   13.60%    0.00%    0.00%    0.00%    0.00%   31.70%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.20%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   10.20%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         3.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.22%    0.01%    0.39%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.25%    0.34%    0.07%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        35.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.20%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    3.49%   10.12%    0.00%    0.00%    0.00%   31.69%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.20%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   20.28%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   20.28%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   20.28%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.18%    0.10%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%   20.19%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%   49.95%    0.00%    0.00%   39.79%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+        49.95%    0.00%    0.00%   39.78%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.78%   13.26%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   53.04%
 42  1    14    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%   39.78%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%   49.96%    0.00%    0.00%   39.78%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%   49.95%    0.00%    0.00%   39.79%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.79%   13.25%
 59  1    15    1  |1 1>-        49.95%    0.00%    0.00%   39.78%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   95.08%
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
 25  1    13    1  |1 1>+         0.00%    0.05%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.05%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    1.64%
 28  1    16    1  |1 1>+         0.00%    0.00%   99.91%    0.00%
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
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    1.64%
 42  1    14    1  |1 0>          0.00%    0.00%    0.05%    0.00%
 43  1    15    1  |1 0>          0.00%    0.05%    0.00%    0.00%
 44  1    16    1  |1 0>         99.91%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-         0.00%    0.00%    0.05%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    1.64%
 59  1    15    1  |1 1>-         0.05%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%   99.91%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       33.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      189.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       958.61    760.50      0.31    134.99     59.86      1.17      1.04      0.04      0.37
 REAL TIME  *      1001.31 SEC
 DISK USED  *       223.37 MB (local),        2.67 GB (total)
 SF USED    *         1.06 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -25.233798018052

              CI              CI           MULTI           MULTI         RHF-SCF
    -25.21624803    -25.21427587    -25.00439136    -25.00495706    -25.09500683
 **********************************************************************************************************************************
 Molpro calculation terminated
