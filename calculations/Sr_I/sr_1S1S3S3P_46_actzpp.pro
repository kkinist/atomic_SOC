
 Working directory              : /wrk/irikura/molpro.wXzKkdvbLf/
 Global scratch directory       : /wrk/irikura/molpro.wXzKkdvbLf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.wXzKkdvbLf/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (4/6)
 {multi
     closed,0,3
     occ,3,6
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5203.2}
 hlsdiag(3) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 17:02:27  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         127
 NUMBER OF SYMMETRY AOS:          110
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

         1 0.706E-05 0.181E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.121E-01
         2 0.508E-02 0.508E-02 0.508E-02 0.242E-01 0.242E-01 0.242E-01 0.110E+00 0.110E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     12.845 MB (compressed) written to integral file ( 23.9%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      89640.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      89640      RECORD LENGTH: 524288

 Memory used in sort:       0.65 MW

 SORT1 READ     6063679. AND WROTE       19650. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.10 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       88960.  Node maximum:       92031. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.70      1.36
 REAL TIME  *         2.40 SEC
 DISK USED  *        29.00 MB (local),      995.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.00      0.00    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.01      0.01    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.00      0.01    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.00      0.01    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.00      0.01    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.01      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586657
  RHF Two-electron energy              19.477105286042
  RHF Kinetic energy                    9.485913008601
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198556034944

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97188     1  1  s    1.00522
    2.1     2.00000    -0.18127     1  2  s    1.01723
    1.2     2.00000    -1.09297     1  1  pz   0.99986
    2.2     2.00000    -1.09297     1  1  px   0.99986
    3.2     2.00000    -1.09297     1  1  py   0.99986


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.009585 =       0.2608eV
 LUMO-HOMO         0.190858 =       5.1935eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.73      0.03      1.36
 REAL TIME  *         2.44 SEC
 DISK USED  *        29.34 MB (local),     1005.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   3 (    0    3)
 Number of active  orbitals:        6 (    3    3)
 Number of external orbitals:      71 (   35   36)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:              57   (117 determinants, 225 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:              51   (60 determinants, 120 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 2 4   6 3 5 1 4 6 2 3 5 1   4 6 3 5 2 4 6 3 5 2   1 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.459D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.459D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.250D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.525D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.230D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 2 3 3   1 2 6 4 5 810 9 7 3   1 2 4 5 6 810 9 7 3   2 1 5 4 6 810 9 7 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  330  ( 9 closed/active, 108 closed/virtual, 0 active/active, 213 active/virtual )
 Total number of variables:    804
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0    -30.17099191     -30.23959699   -0.06860507    0.05902302 0.00004778 0.00000000  0.12E+01      0.31
   2    7   12    0    -30.23477199     -30.23597650   -0.00120451    0.00954464 0.00000040 0.00000000  0.16E+00      0.64
   3    9   18    0    -30.23597770     -30.23597773   -0.00000003    0.00006043 0.00000000 0.00000000  0.76E-03      0.97
   4    2    4    0    -30.23597773     -30.23597773    0.00000000    0.00000001 0.00000000 0.00000000  0.13E-06      1.08

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.41E-08)
                       Final energy:    -30.23597773
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.359498597258
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.55505951
 One electron energy                           -49.85188355
 Two electron energy                            19.49238496
 Virial ratio                                    4.17732177
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.225709727806
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.46573514
 One electron energy                           -48.73652858
 Two electron energy                            18.51081885
 Virial ratio                                    4.19317087
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.235592842554
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.42077314
 One electron energy                           -48.58159216
 Two electron energy                            18.34599931
 Virial ratio                                    4.20945982
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.198355073901
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49425553
 One electron energy                           -48.94381634
 Two electron energy                            18.74546127
 Virial ratio                                    4.18069753
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.198355073900
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49425553
 One electron energy                           -48.94381634
 Two electron energy                            18.74546127
 Virial ratio                                    4.18069753
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.198355073900
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49425553
 One electron energy                           -48.94381634
 Two electron energy                            18.74546127
 Virial ratio                                    4.18069753
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999998126974
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.000000520933
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999931
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999978594
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000001873095
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999500473
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 3 5   4 6 2 1 3 5 4 6 2 1   3 5 4 6 2 3 5 4 6 2   1 3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 1   2 3 9 7 810 4 6 5 1   2 3 9 7 810 4 6 5 1   2 3 9 7 810 4 6 5 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99999    -2.05202     1  1  s    1.01662
    2.1     0.63865    -0.11687     1  2  s    1.17207
    3.1     0.33318     0.00532     1  2  s   -0.48393    1  5  s   -0.87970    1  8  s    1.90197
    1.2     2.00000    -1.17453     1  1  px   1.00581
    2.2     2.00000    -1.17453     1  1  py   1.00581
    3.2     2.00000    -1.17453     1  1  pz   1.00581
    4.2     0.34273    -0.01366     1  2  pz   1.00194
    5.2     0.34273    -0.01366     1  2  py   1.00194
    6.2     0.34273    -0.01366     1  2  px   1.00194
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 220 000        0.94030641     -0.17974603
 2ab 000        0.12592713      0.69539557
 2ba 000       -0.12592713     -0.69539557
 200 200       -0.16743726      0.01216641
 200 020       -0.16743726      0.01216641
 200 002       -0.16743726      0.01216641
 
 Energy:      -30.35949860    -30.22570973
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa 000        0.99999883      0.00000000      0.00000000     -0.00000000
 200 a0a       -0.00000000      0.00000829      0.99999617      0.00000000
 200 aa0        0.00000000     -0.00136858      0.00000001      0.99999524
 200 0aa       -0.00000000      0.99999524     -0.00000829      0.00136858
 
 Energy:      -30.23559284    -30.19835507    -30.19835507    -30.19835507
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.81      1.07      0.03      1.36
 REAL TIME  *         3.72 SEC
 DISK USED  *        31.22 MB (local),        1.04 GB (total)
 SF USED    *         5.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.35949860  -0.0
    -30.22570973  -0.0
    -30.23559284  -0.0
    -30.19835507   2.0
    -30.19835507   2.0
    -30.19835507   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:       48 conf       57 CSFs
 N elec internal:     1314 conf     2352 CSFs
 N-1 el internal:     1076 conf     2842 CSFs
 N-2 el internal:      459 conf     1668 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   3 (   0   3 )
 Number of active  orbitals:        6 (   3   3 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.35949860
     2       -30.22570973

 Number of blocks in overlap matrix:    56   Smallest eigenvalue:  0.25D-05
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:    2842

 Number of internal configurations:                 1194
 Number of singly external configurations:        100900
 Number of doubly external configurations:        151662
 Total number of contracted configurations:       253756
 Total number of uncontracted configurations:    2197876

 Diagonal Coupling coefficients finished.               Storage:  467389 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  297255 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.35949860    -0.00000000    -0.21309111  0.17D-01  0.52D-01     0.08
    1     2     2     1.00000000     0.00000000   -30.22570973    -0.00000000    -0.21032360  0.21D-01  0.53D-01     0.08
    2     1     1     1.06545055    -0.20682852   -30.56632712    -0.20682852    -0.00433216  0.12D-02  0.70D-03     0.35
    2     2     2     1.06792703    -0.20433834   -30.43004807    -0.20433834    -0.00344501  0.14D-02  0.53D-03     0.35
    3     1     1     1.06459420    -0.21258005   -30.57207864    -0.00575152    -0.00053112  0.77D-04  0.94D-04     0.57
    3     2     2     1.06703926    -0.20831468   -30.43402441    -0.00397634    -0.00025539  0.39D-04  0.54D-04     0.57
    4     1     1     1.06661182    -0.21354469   -30.57304328    -0.00096464    -0.00010953  0.10D-04  0.21D-04     0.81
    4     2     2     1.06753785    -0.20872168   -30.43443141    -0.00040700    -0.00008389  0.36D-05  0.19D-04     0.81
    5     1     1     1.06713366    -0.21376456   -30.57326316    -0.00021987    -0.00005122  0.42D-05  0.10D-04     1.02
    5     2     2     1.06812756    -0.20889286   -30.43460259    -0.00017118    -0.00005788  0.68D-05  0.12D-04     1.02
    6     1     1     1.06717648    -0.21386870   -30.57336730    -0.00010414    -0.00002947  0.41D-05  0.50D-05     1.23
    6     2     2     1.06806570    -0.20898978   -30.43469950    -0.00009691    -0.00002738  0.43D-05  0.49D-05     1.23
    7     1     1     1.06749859    -0.21391170   -30.57341030    -0.00004300    -0.00001177  0.16D-05  0.19D-05     1.44
    7     2     2     1.06809354    -0.20902682   -30.43473655    -0.00003704    -0.00001191  0.94D-06  0.25D-05     1.44
    8     1     1     1.06766889    -0.21393101   -30.57342960    -0.00001931    -0.00000573  0.40D-06  0.11D-05     1.65
    8     2     2     1.06828002    -0.20904744   -30.43475716    -0.00002062    -0.00000942  0.70D-06  0.19D-05     1.65
    9     1     1     1.06773686    -0.21394207   -30.57344066    -0.00001106    -0.00000392  0.54D-06  0.62D-06     1.86
    9     2     2     1.06840897    -0.20906172   -30.43477144    -0.00001428    -0.00000523  0.68D-06  0.96D-06     1.86
   10     1     1     1.06783786    -0.21394759   -30.57344619    -0.00000553    -0.00000188  0.17D-06  0.34D-06     2.06
   10     2     2     1.06843288    -0.20906853   -30.43477825    -0.00000681    -0.00000256  0.13D-06  0.55D-06     2.06
   11     1     1     1.06789635    -0.21395030   -30.57344890    -0.00000270    -0.00000094  0.60D-07  0.18D-06     2.28
   11     2     2     1.06848646    -0.20907259   -30.43478231    -0.00000406    -0.00000199  0.13D-06  0.41D-06     2.28
   12     1     1     1.06792908    -0.21395193   -30.57345053    -0.00000164    -0.00000067  0.84D-07  0.11D-06     2.49
   12     2     2     1.06854886    -0.20907556   -30.43478529    -0.00000298    -0.00000122  0.12D-06  0.24D-06     2.49
   13     1     1     1.06796951    -0.21395288   -30.57345147    -0.00000094    -0.00000036  0.19D-07  0.70D-07     2.69
   13     2     2     1.06857060    -0.20907708   -30.43478680    -0.00000151    -0.00000063  0.16D-07  0.14D-06     2.69
   14     1     1     1.06799232    -0.21395335   -30.57345195    -0.00000047    -0.00000018  0.12D-07  0.35D-07     2.88
   14     2     2     1.06859650    -0.20907802   -30.43478775    -0.00000095    -0.00000048  0.35D-07  0.97D-07     2.88
   15     1     1     1.06800580    -0.21395364   -30.57345224    -0.00000029    -0.00000014  0.11D-07  0.26D-07     3.08
   15     2     2     1.06862560    -0.20907874   -30.43478847    -0.00000071    -0.00000032  0.22D-07  0.67D-07     3.08
   16     1     1     1.06802229    -0.21395383   -30.57345243    -0.00000018    -0.00000008  0.20D-08  0.17D-07     3.28
   16     2     2     1.06863668    -0.20907911   -30.43478884    -0.00000038    -0.00000017  0.23D-08  0.39D-07     3.28
   17     1     1     1.06803308    -0.21395393   -30.57345252    -0.00000010    -0.00000004  0.25D-08  0.79D-08     3.47
   17     2     2     1.06864869    -0.20907936   -30.43478909    -0.00000025    -0.00000013  0.10D-07  0.26D-07     3.47
   18     1     1     1.06803972    -0.21395399   -30.57345259    -0.00000006    -0.00000003  0.12D-08  0.67D-08     3.67
   18     2     2     1.06866239    -0.20907955   -30.43478927    -0.00000019    -0.00000009  0.29D-08  0.21D-07     3.67
   19     1     1     1.06804730    -0.21395401   -30.57345260    -0.00000002    -0.00000003  0.17D-08  0.65D-08     3.80
   19     2     2     1.06869878    -0.20907982   -30.43478955    -0.00000027    -0.00000005  0.75D-08  0.80D-08     3.80
   20     1     1     1.06804874    -0.21395402   -30.57345261    -0.00000001    -0.00000002  0.34D-09  0.46D-08     3.93
   20     2     2     1.06869959    -0.20907986   -30.43478959    -0.00000004    -0.00000000  0.39D-10  0.65D-09     3.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.1%
 S   3.8%  10.2%
 P   1.8%  32.1%  12.7%

 Initialization:   1.3%
 Other:           32.1%

 Total CPU:        3.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222000           0.1129095   0.9600428
 220222000           0.9289794  -0.1149441
 200222002          -0.1415555  -0.0113200
 200222020          -0.1415555  -0.0113200
 200222200          -0.1415555  -0.0113200

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964745   -0.061154
 2           0.068586    0.964314

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966674    0.003722
 2           0.003722    0.966743


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96474453 (fixed)   0.96741432 (relaxed)   0.96667367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00195714   -0.00057213   -0.20193993
 Singles      0.01049222   -0.01668514   -0.01768899
 Pairs        0.05768971    0.01841620    0.00567490
 Total        1.07013907    0.00115892   -0.21395402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35889616
 Nuclear energy                         0.00000000
 Kinetic energy                         9.65092898
 One electron energy                  -49.76000235
 Two electron energy                   19.18654974
 Virial quotient                       -3.16792846
 Correlation energy                    -0.21455646
 !MRCI STATE 1.1 Energy               -30.573452614567

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58850140 (Davidson, fixed reference)
 Cluster corrected energies           -30.58814997 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58850140 (Davidson, rotated reference)

 Cluster corrected energies           -30.58600979 (Pople, fixed reference)
 Cluster corrected energies           -30.58570447 (Pople, relaxed reference)
 Cluster corrected energies           -30.58600979 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96431437 (fixed)   0.96713473 (relaxed)   0.96674316 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00120300   -0.00062295   -0.00142023
 Singles      0.01308570   -0.01583598   -0.01735705
 Pairs        0.05569654   -0.19197577   -0.19030258
 Total        1.06998523   -0.20843470   -0.20907986
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22631217
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57698701
 One electron energy                  -48.58006675
 Two electron energy                   18.14527716
 Virial quotient                       -3.17790862
 Correlation energy                    -0.20847742
 !MRCI STATE 2.1 Energy               -30.434789585473

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.44937993 (Davidson, fixed reference)
 Cluster corrected energies           -30.44919933 (Davidson, relaxed reference)
 Cluster corrected energies           -30.44937993 (Davidson, rotated reference)

 Cluster corrected energies           -30.44696309 (Pople, fixed reference)
 Cluster corrected energies           -30.44680615 (Pople, relaxed reference)
 Cluster corrected energies           -30.44696309 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        4.76       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.87      4.04      1.07      0.03      1.36
 REAL TIME  *         9.04 SEC
 DISK USED  *        35.36 MB (local),        1.16 GB (total)
 SF USED    *        44.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.58850140  AU                              
 SETTING HLSDIAG(2)     =       -30.44937993  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       33 conf       51 CSFs
 N elec internal:     1239 conf     3318 CSFs
 N-1 el internal:      968 conf     4410 CSFs
 N-2 el internal:      369 conf     2724 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   3 (   0   3 )
 Number of active  orbitals:        6 (   3   3 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.23559284
     2       -30.19835507
     3       -30.19835507
     4       -30.19835507

 Number of blocks in overlap matrix:   100   Smallest eigenvalue:  0.61D-06
 Number of N-2 electron functions:     222
 Number of N-1 electron functions:    4410

 Number of internal configurations:                 1632
 Number of singly external configurations:        156564
 Number of doubly external configurations:        279996
 Total number of contracted configurations:       438192
 Total number of uncontracted configurations:    3563679

 Diagonal Coupling coefficients finished.               Storage:  731087 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  398803 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.23559284    -0.00000000    -0.20602824  0.15D-01  0.52D-01     0.11
    1     2     2     1.00000000     0.00000000   -30.19835507     0.00000000    -0.19537965  0.69D-02  0.48D-01     0.11
    1     3     3     1.00000000     0.00000000   -30.19835507     0.00000000    -0.19538622  0.69D-02  0.48D-01     0.11
    1     4     4     1.00000000     0.00000000   -30.19835507    -0.00000000    -0.19538589  0.69D-02  0.48D-01     0.11
    2     1     1     1.06545096    -0.20303499   -30.43862783    -0.20303499    -0.00280722  0.74D-03  0.48D-03     0.86
    2     2     2     1.05532304    -0.19602660   -30.39438167    -0.19602660    -0.00357840  0.58D-03  0.66D-03     0.86
    2     3     3     1.05532893    -0.19602241   -30.39437748    -0.19602241    -0.00358291  0.59D-03  0.66D-03     0.86
    2     4     4     1.05532892    -0.19602236   -30.39437743    -0.19602236    -0.00358293  0.59D-03  0.66D-03     0.86
    3     1     1     1.06836652    -0.20624229   -30.44183513    -0.00320730    -0.00010635  0.19D-04  0.23D-04     1.58
    3     2     2     1.05806439    -0.20104408   -30.39939915    -0.00501749    -0.00063054  0.67D-04  0.12D-03     1.58
    3     3     3     1.05805903    -0.20104246   -30.39939754    -0.00502005    -0.00063128  0.68D-04  0.12D-03     1.58
    3     4     4     1.05805902    -0.20104245   -30.39939753    -0.00502009    -0.00063129  0.68D-04  0.12D-03     1.58
    4     1     1     1.06916966    -0.20638464   -30.44197748    -0.00014235    -0.00001248  0.14D-05  0.28D-05     2.33
    4     2     2     1.06204037    -0.20247224   -30.40082731    -0.00142816    -0.00026148  0.18D-04  0.56D-04     2.33
    4     3     3     1.06203913    -0.20247143   -30.40082650    -0.00142897    -0.00026175  0.18D-04  0.56D-04     2.33
    4     4     4     1.06203907    -0.20247141   -30.40082649    -0.00142896    -0.00026176  0.18D-04  0.56D-04     2.33
    5     1     1     1.06957309    -0.20641239   -30.44200523    -0.00002775    -0.00000804  0.11D-05  0.17D-05     3.04
    5     2     2     1.06344369    -0.20307328   -30.40142835    -0.00060104    -0.00017135  0.79D-05  0.36D-04     3.04
    5     3     3     1.06344072    -0.20307268   -30.40142775    -0.00060125    -0.00017134  0.79D-05  0.36D-04     3.04
    5     4     4     1.06344064    -0.20307266   -30.40142774    -0.00060125    -0.00017134  0.79D-05  0.36D-04     3.04
    6     1     1     1.06944042    -0.20643293   -30.44202577    -0.00002054    -0.00000475  0.74D-06  0.80D-06     3.75
    6     2     2     1.06449965    -0.20340873   -30.40176380    -0.00033545    -0.00009526  0.12D-04  0.17D-04     3.75
    6     3     3     1.06449647    -0.20340828   -30.40176336    -0.00033560    -0.00009541  0.12D-04  0.17D-04     3.75
    6     4     4     1.06449641    -0.20340827   -30.40176335    -0.00033561    -0.00009541  0.12D-04  0.17D-04     3.75
    7     1     1     1.06942017    -0.20643938   -30.44203222    -0.00000646    -0.00000140  0.19D-06  0.29D-06     4.44
    7     2     2     1.06563469    -0.20356743   -30.40192250    -0.00015870    -0.00005259  0.84D-05  0.92D-05     4.44
    7     3     3     1.06563291    -0.20356711   -30.40192218    -0.00015882    -0.00005266  0.85D-05  0.92D-05     4.44
    7     4     4     1.06563285    -0.20356710   -30.40192217    -0.00015883    -0.00005266  0.85D-05  0.92D-05     4.44
    8     1     1     1.06947923    -0.20644228   -30.44203512    -0.00000290    -0.00000109  0.12D-06  0.22D-06     5.15
    8     2     2     1.06657038    -0.20367158   -30.40202665    -0.00010415    -0.00004081  0.19D-05  0.81D-05     5.15
    8     3     3     1.06656690    -0.20367134   -30.40202642    -0.00010424    -0.00004081  0.19D-05  0.81D-05     5.15
    8     4     4     1.06656682    -0.20367134   -30.40202641    -0.00010424    -0.00004082  0.19D-05  0.81D-05     5.15
    9     1     1     1.06945502    -0.20644442   -30.44203726    -0.00000214    -0.00000075  0.12D-06  0.12D-06     5.87
    9     2     2     1.06736238    -0.20374761   -30.40210268    -0.00007603    -0.00002726  0.42D-05  0.44D-05     5.87
    9     3     3     1.06736009    -0.20374745   -30.40210252    -0.00007610    -0.00002731  0.42D-05  0.44D-05     5.87
    9     4     4     1.06736004    -0.20374744   -30.40210252    -0.00007610    -0.00002731  0.42D-05  0.44D-05     5.87
   10     1     1     1.06946272    -0.20644550   -30.44203834    -0.00000108    -0.00000030  0.33D-07  0.61D-07     6.62
   10     2     2     1.06794807    -0.20379049   -30.40214556    -0.00004288    -0.00001597  0.23D-05  0.28D-05     6.62
   10     3     3     1.06794675    -0.20379037   -30.40214545    -0.00004293    -0.00001599  0.23D-05  0.28D-05     6.62
   10     4     4     1.06794670    -0.20379037   -30.40214544    -0.00004293    -0.00001599  0.23D-05  0.28D-05     6.62
   11     1     1     1.06949277    -0.20644604   -30.44203888    -0.00000054    -0.00000023  0.22D-07  0.46D-07     7.32
   11     2     2     1.06847257    -0.20381980   -30.40217488    -0.00002932    -0.00001275  0.63D-06  0.25D-05     7.32
   11     3     3     1.06847035    -0.20381972   -30.40217479    -0.00002935    -0.00001275  0.64D-06  0.25D-05     7.32
   11     4     4     1.06847031    -0.20381972   -30.40217479    -0.00002935    -0.00001275  0.64D-06  0.25D-05     7.32
   12     1     1     1.06948886    -0.20644647   -30.44203931    -0.00000043    -0.00000017  0.25D-07  0.28D-07     8.01
   12     2     2     1.06893536    -0.20384192   -30.40219699    -0.00002212    -0.00000876  0.15D-05  0.13D-05     8.01
   12     3     3     1.06893399    -0.20384186   -30.40219694    -0.00002214    -0.00000878  0.15D-05  0.13D-05     8.01
   12     4     4     1.06893397    -0.20384186   -30.40219694    -0.00002214    -0.00000878  0.15D-05  0.13D-05     8.01
   13     1     1     1.06949509    -0.20644670   -30.44203955    -0.00000024    -0.00000007  0.67D-08  0.14D-07     8.71
   13     2     2     1.06927925    -0.20385543   -30.40221050    -0.00001351    -0.00000526  0.63D-06  0.96D-06     8.71
   13     3     3     1.06927846    -0.20385539   -30.40221046    -0.00001353    -0.00000526  0.64D-06  0.96D-06     8.71
   13     4     4     1.06927844    -0.20385539   -30.40221046    -0.00001353    -0.00000526  0.64D-06  0.96D-06     8.71
   14     1     1     1.06950609    -0.20644683   -30.44203967    -0.00000012    -0.00000005  0.59D-08  0.11D-07     9.44
   14     2     2     1.06958072    -0.20386448   -30.40221955    -0.00000905    -0.00000427  0.24D-06  0.81D-06     9.44
   14     3     3     1.06957944    -0.20386445   -30.40221953    -0.00000906    -0.00000427  0.24D-06  0.81D-06     9.44
   14     4     4     1.06957943    -0.20386445   -30.40221952    -0.00000906    -0.00000427  0.24D-06  0.81D-06     9.44
   15     1     1     1.06950190    -0.20644693   -30.44203977    -0.00000010    -0.00000004  0.59D-08  0.67D-08    10.14
   15     2     2     1.06984371    -0.20387140   -30.40222648    -0.00000692    -0.00000297  0.50D-06  0.47D-06    10.14
   15     3     3     1.06984288    -0.20387138   -30.40222646    -0.00000693    -0.00000297  0.50D-06  0.47D-06    10.14
   15     4     4     1.06984288    -0.20387138   -30.40222646    -0.00000693    -0.00000297  0.50D-06  0.47D-06    10.14
   16     1     1     1.06950643    -0.20644698   -30.44203983    -0.00000006    -0.00000002  0.17D-08  0.36D-08    10.84
   16     2     2     1.07004229    -0.20387587   -30.40223095    -0.00000447    -0.00000183  0.16D-06  0.36D-06    10.84
   16     3     3     1.07004193    -0.20387586   -30.40223094    -0.00000448    -0.00000184  0.17D-06  0.36D-06    10.84
   16     4     4     1.07004193    -0.20387586   -30.40223094    -0.00000448    -0.00000184  0.17D-06  0.36D-06    10.84
   17     1     1     1.06950643    -0.20644698   -30.44203983    -0.00000000    -0.00000002  0.17D-08  0.36D-08    11.40
   17     2     2     1.07089593    -0.20388405   -30.40223912    -0.00000817    -0.00000232  0.15D-06  0.44D-06    11.40
   17     3     3     1.07021395    -0.20387880   -30.40223387    -0.00000293    -0.00000150  0.86D-07  0.29D-06    11.40
   17     4     4     1.07021333    -0.20387879   -30.40223386    -0.00000293    -0.00000150  0.86D-07  0.29D-06    11.40
   18     1     1     1.06950643    -0.20644698   -30.44203983    -0.00000000    -0.00000002  0.17D-08  0.36D-08    11.96
   18     2     2     1.07093706    -0.20388595   -30.40224102    -0.00000190    -0.00000014  0.65D-08  0.27D-07    11.96
   18     3     3     1.07096067    -0.20388495   -30.40224003    -0.00000616    -0.00000139  0.66D-07  0.25D-06    11.96
   18     4     4     1.07036698    -0.20388110   -30.40223618    -0.00000232    -0.00000105  0.15D-06  0.18D-06    11.96
   19     1     1     1.06950643    -0.20644698   -30.44203983    -0.00000000    -0.00000002  0.17D-08  0.36D-08    12.52
   19     2     2     1.07100342    -0.20388620   -30.40224128    -0.00000025    -0.00000007  0.64D-08  0.14D-07    12.52
   19     3     3     1.07096183    -0.20388611   -30.40224118    -0.00000116    -0.00000005  0.37D-08  0.12D-07    12.52
   19     4     4     1.07048116    -0.20388265   -30.40223772    -0.00000155    -0.00000068  0.35D-07  0.14D-06    12.52
   20     1     1     1.06950643    -0.20644698   -30.44203983     0.00000000    -0.00000002  0.17D-08  0.36D-08    13.08
   20     2     2     1.07105631    -0.20388630   -30.40224138    -0.00000010    -0.00000010  0.12D-07  0.18D-07    13.08
   20     3     3     1.07101897    -0.20388629   -30.40224136    -0.00000018    -0.00000003  0.14D-08  0.57D-08    13.08
   20     4     4     1.07057898    -0.20388365   -30.40223872    -0.00000099    -0.00000055  0.32D-07  0.11D-06    13.08
   21     1     1     1.06950643    -0.20644698   -30.44203983     0.00000000    -0.00000002  0.17D-08  0.36D-08    13.50
   21     2     2     1.07107412    -0.20388640   -30.40224148    -0.00000010    -0.00000002  0.19D-08  0.29D-08    13.50
   21     3     3     1.07101897    -0.20388629   -30.40224136    -0.00000000    -0.00000003  0.14D-08  0.57D-08    13.50
   21     4     4     1.07105898    -0.20388601   -30.40224108    -0.00000236    -0.00000046  0.31D-07  0.78D-07    13.50
   22     1     1     1.06950643    -0.20644698   -30.44203983     0.00000000    -0.00000002  0.17D-08  0.36D-08    13.78
   22     2     2     1.07115866    -0.20388646   -30.40224153    -0.00000005    -0.00000001  0.42D-09  0.29D-08    13.78
   22     3     3     1.07107412    -0.20388640   -30.40224148    -0.00000012    -0.00000002  0.19D-08  0.29D-08    13.78
   22     4     4     1.07101897    -0.20388629   -30.40224136    -0.00000028    -0.00000003  0.14D-08  0.57D-08    13.78


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   2.8%   8.6%
 P   1.3%  29.7%  12.9%

 Initialization:   0.4%
 Other:           41.1%

 Total CPU:       13.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222000           0.9667991  -0.0000000  -0.0000000  -0.0000000
 200222/0/           0.0000000   0.0000000   0.0000000   0.9661433
 200222//0           0.0000000  -0.0000000   0.9661184   0.0000000
 2002220//           0.0000000   0.9660803   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966799    0.000000    0.000000    0.000000
 2           0.000000    0.966083    0.000000   -0.000000
 3          -0.000000    0.000000    0.000000    0.966122
 4          -0.000000   -0.000000    0.966146    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966799    0.000000    0.000000   -0.000000
 2           0.000000    0.966083   -0.000000   -0.000000
 3           0.000000   -0.000000    0.966122    0.000000
 4          -0.000000   -0.000000    0.000000    0.966146


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96679941 (fixed)   0.96680035 (relaxed)   0.96679941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033127   -0.00052906   -0.17823754
 Singles      0.01571969   -0.01582603   -0.01782590
 Pairs        0.05380977   -0.00000000   -0.01038355
 Total        1.06986072   -0.01635509   -0.20644698
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23559284
 Nuclear energy                         0.00000000
 Kinetic energy                         9.56054211
 One electron energy                  -48.52675819
 Two electron energy                   18.08471836
 Virial quotient                       -3.18413323
 Correlation energy                    -0.20644698
 !MRCI STATE 1.1 Energy               -30.442039826358

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45646236 (Davidson, fixed reference)
 Cluster corrected energies           -30.45646193 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45646236 (Davidson, rotated reference)

 Cluster corrected energies           -30.45323725 (Pople, fixed reference)
 Cluster corrected energies           -30.45323691 (Pople, relaxed reference)
 Cluster corrected energies           -30.45323725 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96608341 (fixed)   0.96608449 (relaxed)   0.96608341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026932   -0.00041417   -0.18038307
 Singles      0.00549518   -0.01067044   -0.01100435
 Pairs        0.06568264    0.00000000   -0.01249904
 Total        1.07144714   -0.01108461   -0.20388646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19835507
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63836561
 One electron energy                  -48.84877597
 Two electron energy                   18.44653444
 Virial quotient                       -3.15429428
 Correlation energy                    -0.20388646
 !MRCI STATE 2.1 Energy               -30.402241529010

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41680863 (Davidson, fixed reference)
 Cluster corrected energies           -30.41680815 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41680863 (Davidson, rotated reference)

 Cluster corrected energies           -30.41355997 (Pople, fixed reference)
 Cluster corrected energies           -30.41355958 (Pople, relaxed reference)
 Cluster corrected energies           -30.41355997 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96612153 (fixed)   0.96612261 (relaxed)   0.96612153 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026932   -0.00041417   -0.00043783
 Singles      0.00549210   -0.01066872   -0.01100426
 Pairs        0.06560117   -0.19280351   -0.19244431
 Total        1.07136259   -0.20388640   -0.20388640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19835507
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63846454
 One electron energy                  -48.84874574
 Two electron energy                   18.44650427
 Virial quotient                       -3.15426190
 Correlation energy                    -0.20388640
 !MRCI STATE 3.1 Energy               -30.402241476985

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41679134 (Davidson, fixed reference)
 Cluster corrected energies           -30.41679085 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41679134 (Davidson, rotated reference)

 Cluster corrected energies           -30.41354605 (Pople, fixed reference)
 Cluster corrected energies           -30.41354566 (Pople, relaxed reference)
 Cluster corrected energies           -30.41354605 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96614641 (fixed)   0.96614749 (relaxed)   0.96614641 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026931   -0.00041417   -0.18040493
 Singles      0.00549528   -0.01067205   -0.01100590
 Pairs        0.06554281   -0.00000000   -0.01247546
 Total        1.07130740   -0.01108623   -0.20388629
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19835507
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63829090
 One electron energy                  -48.84853328
 Two electron energy                   18.44629191
 Virial quotient                       -3.15431872
 Correlation energy                    -0.20388629
 !MRCI STATE 4.1 Energy               -30.402241360671

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41677996 (Davidson, fixed reference)
 Cluster corrected energies           -30.41677948 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41677996 (Davidson, rotated reference)

 Cluster corrected energies           -30.41353688 (Pople, fixed reference)
 Cluster corrected energies           -30.41353649 (Pople, relaxed reference)
 Cluster corrected energies           -30.41353688 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       18.52       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.04     14.16      4.04      1.07      0.03      1.36
 REAL TIME  *        27.43 SEC
 DISK USED  *        49.12 MB (local),        1.56 GB (total)
 SF USED    *       145.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =       -30.45646236  AU                              
 SETTING HLSDIAG(4)     =       -30.41680863  AU                              
 SETTING HLSDIAG(5)     =       -30.41679134  AU                              
 SETTING HLSDIAG(6)     =       -30.41677996  AU                              


        HLSDIAG
    -30.58850140
    -30.44937993
    -30.45646236
    -30.41680863
    -30.41679134
    -30.41677996
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -30.573453    -30.434790
 Replaced energies:    -30.588501    -30.449380

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:    -30.442040    -30.402242    -30.402241    -30.402241
 Replaced energies:    -30.456462    -30.416809    -30.416791    -30.416780



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58850140

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -66.47       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     -66.47       0.00      -0.00      94.01       0.00      -0.00

    2   2.1  0.0  0.0       0.00   30533.64      -0.00      -0.00       0.00       9.85       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       9.85      -0.00       0.00     -13.93      -0.00       0.00

    3   1.1  1.0  1.0       0.00      -0.00   28979.22       0.00       0.00       0.00      -0.00       0.00      -0.00     -10.68
                            0.00      -0.00       0.00      15.10      -0.00       0.00       0.00       0.00      10.68      -0.00

    4   2.1  1.0  1.0       0.00      -0.00       0.00   37682.21       0.00       0.00      -0.00       0.00    -117.85       0.00
                           -0.00      -0.00     -15.10       0.00      -0.00      -0.00      -0.00       0.00       0.00    -117.84

    5   3.1  1.0  1.0      -0.00       0.00       0.00       0.00   37686.00       0.00       0.00     117.85      -0.00      -0.00
                           66.47      -9.85       0.00       0.00       0.00     166.66     -10.68      -0.00      -0.00      -0.00

    6   4.1  1.0  1.0     -66.47       9.85       0.00       0.00       0.00   37688.50      10.68      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00    -166.66       0.00       0.00     117.84       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      10.68   28979.22       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      10.68      -0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00     117.85      -0.00       0.00   37682.21       0.00       0.00
                          -94.01      13.93      -0.00      -0.00       0.00    -117.84      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00      -0.00    -117.85      -0.00       0.00       0.00       0.00   37686.00       0.00
                           -0.00       0.00     -10.68      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00     -10.68       0.00      -0.00      -0.00       0.00       0.00       0.00   37688.50
                            0.00      -0.00       0.00     117.84       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      10.68
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      10.68      -0.00

   12   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     117.85      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -117.84

   13   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -117.85      -0.00       0.00
                          -66.47       9.85      -0.00      -0.00      -0.00      -0.00     -10.68      -0.00       0.00      -0.00

   14   4.1  1.0 -1.0     -66.47       9.85       0.00       0.00       0.00       0.00     -10.68       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     117.84       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0       0.00       0.00      -0.00     -66.47
                            0.00      -0.00      66.47      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00       0.00       9.85
                           -0.00      -0.00      -9.85       0.00

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0      -0.00       0.00      -0.00     -10.68
                            0.00       0.00      10.68      -0.00

    8   2.1  1.0  0.0      -0.00       0.00    -117.85       0.00
                           -0.00       0.00       0.00    -117.84

    9   3.1  1.0  0.0       0.00     117.85      -0.00      -0.00
                          -10.68      -0.00      -0.00      -0.00

   10   4.1  1.0  0.0      10.68      -0.00       0.00      -0.00
                            0.00     117.84       0.00       0.00

   11   1.1  1.0 -1.0   28979.22       0.00       0.00       0.00
                           -0.00     -15.10       0.00      -0.00

   12   2.1  1.0 -1.0       0.00   37682.21       0.00       0.00
                           15.10      -0.00       0.00       0.00

   13   3.1  1.0 -1.0       0.00       0.00   37686.00       0.00
                           -0.00      -0.00      -0.00    -166.66

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37688.50
                            0.00      -0.00     166.66      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -30.58850140 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000     -94.005       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      94.006

    2    1  |0 0>               0.000   30533.635      -0.000      -0.000       0.000      13.931       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000     -13.931

    1    1  |1 1>+              0.000      -0.000   28979.220       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000   37682.208       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000   37686.003       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -15.106      -0.000

    4    1  |1 1>+            -94.005      13.931       0.000       0.000       0.000   37688.500       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     166.655

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000   28979.220       0.000
                                0.000      -0.000       0.000       0.000      15.106      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000   37682.208
                              -94.006      13.931      -0.000       0.000       0.000    -166.655      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000     -15.106      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000     166.655       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      15.104      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000     -15.104       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     166.660
                               94.008     -13.932       0.000       0.000       0.000     166.661       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      15.107      -0.000
                               -0.000       0.000      -0.000       0.000    -166.661       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     -94.008       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      13.932      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               15.106      -0.000       0.000      15.104      -0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -166.655     -15.104       0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     166.661

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000    -166.661       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      15.107
                                0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000     166.660      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>           37686.003       0.000      -0.000    -166.660       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000   37688.500     -15.107       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-             -0.000     -15.107   28979.220       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           -166.660       0.000       0.000   37682.208       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000       0.000       0.000   37686.003       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   37688.500
                               -0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58850464    -0.00000323       -0.71      0.00000000        0.00      0.0000
    2   -30.45646261     0.13203880    28979.17      0.13204203    28979.88      3.5930
    3   -30.45646261     0.13203880    28979.17      0.13204203    28979.88      3.5930
    4   -30.45646261     0.13203880    28979.17      0.13204203    28979.88      3.5930
    5   -30.44938031     0.13912109    30533.55      0.13912432    30534.26      3.7858
    6   -30.41830846     0.17019295    37353.03      0.17019618    37353.74      4.6313
    7   -30.41755915     0.17094225    37517.49      0.17094549    37518.20      4.6517
    8   -30.41755353     0.17094788    37518.72      0.17095111    37519.43      4.6518
    9   -30.41754479     0.17095661    37520.64      0.17095985    37521.35      4.6521
   10   -30.41604225     0.17245915    37850.41      0.17246238    37851.12      4.6929
   11   -30.41604058     0.17246083    37850.78      0.17246406    37851.49      4.6930
   12   -30.41603482     0.17246658    37852.04      0.17246981    37852.75      4.6931
   13   -30.41602627     0.17247514    37853.92      0.17247837    37854.63      4.6934
   14   -30.41602560     0.17247581    37854.06      0.17247904    37854.77      4.6934

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999050  0.00000000  0.00000000  0.00000000  0.00001887 -0.00435893  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000344 -0.00000000  0.00000000  0.00000000  0.99999374  0.00353835 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.99999687 -0.00000124 -0.00000017  0.00000000 -0.00000000 -0.00250186 -0.00000000
                           0.00000000 -0.00000121  0.00000017 -0.00000010  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00176936  0.00000001  0.00000000  0.00000000 -0.00000000  0.71374764
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000001 -0.00176883 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00251645  0.00000000 -0.00000000  0.00000000 -0.00204192  0.57394799 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000010 -0.00000001 -0.00000135  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000017  0.00000343  0.99999687 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00251690  0.00000000 -0.00000000  0.00000000 -0.00204380  0.58123067 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00176884 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70306661  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00176843 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.70039849

   1    1  |1 1>-         -0.00000000 -0.00000017  0.00000002 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000124  0.99999687 -0.00000343 -0.00000000  0.00000000 -0.00000000  0.00250149

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00176937 -0.00000000 -0.00000000  0.00000000  0.00000000  0.71111960  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00251669 -0.00000000  0.00000000 -0.00000000  0.00204287 -0.57682154  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.00176842 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>          -0.00000000  0.00001836  0.00000000  0.00000000  0.00000000 -0.00001265
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00001411  0.00000000 -0.00000000 -0.00000000  0.00000957
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00001387 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.70040073 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.69736298  0.00000000  0.00000000 -0.00000000 -0.70436762 -0.00000000
                          -0.13201238  0.00000000  0.00000000  0.00000000  0.01098768  0.00000000

   4    1  |1 1>+          0.00000000 -0.25955256  0.00000000 -0.00000000 -0.00000000  0.77666316
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00046522  0.00000000  0.00000000 -0.00000000  0.00000014  0.00000000
                           0.00245755  0.00000000  0.00000000  0.00000000  0.00000908  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.79721585  0.00000000 -0.00000000  0.00000000 -0.16311739

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.71112180 -0.00000000  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.71374983 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00002295  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.70306883  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.54504986  0.00000000 -0.00000000 -0.00000000  0.60842999

   4    1  |1 1>-          0.13102714  0.00000000  0.00000000  0.00000000  0.01107030  0.00000000
                           0.69215839 -0.00000000 -0.00000000  0.00000000  0.70966399  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58850464     -0.00000323       -0.71      0.00000000        0.00      0.0000
     2   1    -30.45646261      0.13203880    28979.17      0.13204203    28979.88      3.5930
     3   1    -30.45646261      0.13203880    28979.17      0.13204203    28979.88      3.5930
     4   1    -30.45646261      0.13203880    28979.17      0.13204203    28979.88      3.5930
     5   1    -30.44938031      0.13912109    30533.55      0.13912432    30534.26      3.7858
     6   1    -30.41830846      0.17019295    37353.03      0.17019618    37353.74      4.6313
     7   1    -30.41755915      0.17094225    37517.49      0.17094549    37518.20      4.6517
     8   1    -30.41755353      0.17094788    37518.72      0.17095111    37519.43      4.6518
     9   1    -30.41754479      0.17095661    37520.64      0.17095985    37521.35      4.6521
    10   1    -30.41604225      0.17245915    37850.41      0.17246238    37851.12      4.6929
    11   1    -30.41604058      0.17246083    37850.78      0.17246406    37851.49      4.6930
    12   1    -30.41603482      0.17246658    37852.04      0.17246981    37852.75      4.6931
    13   1    -30.41602627      0.17247514    37853.92      0.17247837    37854.63      4.6934
    14   1    -30.41602560      0.17247581    37854.06      0.17247904    37854.77      4.6934

 E0 =    -30.58850140 is the energy of the lowest zeroth-order state
 E1 =    -30.58850464 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999050  0.00000000  0.00000000  0.00000000  0.00001887 -0.00435893  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000344 -0.00000000  0.00000000  0.00000000  0.99999374  0.00353835 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     1    1  |1 1>+      -0.00000000  0.99999687 -0.00000124 -0.00000017  0.00000000 -0.00000000 -0.00250186 -0.00000000
                                0.00000000 -0.00000121  0.00000017 -0.00000010  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00176936  0.00000001  0.00000000  0.00000000 -0.00000000  0.71374764
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000001 -0.00176883 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     4    1  |1 1>+       0.00251645  0.00000000 -0.00000000  0.00000000 -0.00204192  0.57394799 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 0>       -0.00000000  0.00000010 -0.00000001 -0.00000135  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000017  0.00000343  0.99999687 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00251690  0.00000000 -0.00000000  0.00000000 -0.00204380  0.58123067 -0.00000000 -0.00000000

  9  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00176884 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70306661  0.00000000

 10  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00176843 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.70039849

 11  1     1    1  |1 1>-      -0.00000000 -0.00000017  0.00000002 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000124  0.99999687 -0.00000343 -0.00000000  0.00000000 -0.00000000  0.00250149

 12  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00176937 -0.00000000 -0.00000000  0.00000000  0.00000000  0.71111960  0.00000000

 13  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00251669 -0.00000000  0.00000000 -0.00000000  0.00204287 -0.57682154  0.00000000 -0.00000000

 14  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.00176842 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>       -0.00000000  0.00001836  0.00000000  0.00000000  0.00000000 -0.00001265
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00001411  0.00000000 -0.00000000 -0.00000000  0.00000957
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00001387 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.70040073 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     3    1  |1 1>+       0.69736298  0.00000000  0.00000000 -0.00000000 -0.70436762 -0.00000000
                               -0.13201238  0.00000000  0.00000000  0.00000000  0.01098768  0.00000000

  6  1     4    1  |1 1>+       0.00000000 -0.25955256  0.00000000 -0.00000000 -0.00000000  0.77666316
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 0>        0.00046522  0.00000000  0.00000000 -0.00000000  0.00000014  0.00000000
                                0.00245755  0.00000000  0.00000000  0.00000000  0.00000908  0.00000000

  8  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.79721585  0.00000000 -0.00000000  0.00000000 -0.16311739

  9  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.71112180 -0.00000000  0.00000000 -0.00000000

 10  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.71374983 -0.00000000  0.00000000

 11  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00002295  0.00000000  0.00000000

 12  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.70306883  0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.54504986  0.00000000 -0.00000000 -0.00000000  0.60842999

 14  1     4    1  |1 1>-       0.13102714  0.00000000  0.00000000  0.00000000  0.01107030  0.00000000
                                0.69215839 -0.00000000 -0.00000000  0.00000000  0.70966399  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.94%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.94%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.78%    0.00%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.43%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.06%
 11  1     1    1  |1 1>-         0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.57%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.27%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.06%    0.00%    0.00%
  5  1     3    1  |1 1>+        50.37%    0.00%    0.00%    0.00%   49.63%    0.00%
  6  1     4    1  |1 1>+         0.00%    6.74%    0.00%    0.00%    0.00%   60.32%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%   63.56%    0.00%    0.00%    0.00%    2.66%
  9  1     3    1  |1 0>          0.00%    0.00%   50.57%    0.00%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%   50.94%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%   49.43%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%   29.71%    0.00%    0.00%    0.00%   37.02%
 14  1     4    1  |1 1>-        49.63%    0.00%    0.00%    0.00%   50.37%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       18.52       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        34.31     13.24     14.16      4.04      1.07      0.03      1.36
 REAL TIME  *        42.08 SEC
 DISK USED  *        49.12 MB (local),        1.56 GB (total)
 SF USED    *       145.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.416025598153

              CI              CI           MULTI         RHF-SCF
    -30.40224136    -30.43478959    -30.19835507    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
