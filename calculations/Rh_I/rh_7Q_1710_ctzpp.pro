
 Working directory              : /wrk/irikura/molpro.ruhggpEfQH/
 Global scratch directory       : /wrk/irikura/molpro.ruhggpEfQH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ruhggpEfQH/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! 4F
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,7;save,5103.2}
 hlsdiag = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 13-Feb-24          TIME: 16:30:11  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  10000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Rh   ECP ECP28MDF                 selected for group  1
 Library entry RH     S cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     P cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     D cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     F cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     G cc-pwCVTZ-PP         selected for orbital group  1


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

   1  RH     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
 NUMBER OF PRIMITIVE AOS:         165
 NUMBER OF SYMMETRY AOS:          134
 NUMBER OF CONTRACTIONS:           97   (   55Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9
                                       101112131415 7 8 910  1112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.743E-03 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.534E-02 0.439E-01
         2 0.905E-03 0.905E-03 0.905E-03 0.520E-02 0.520E-02 0.520E-02 0.207E+00 0.207E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     13.369 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 1.049 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     576100.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     576100      RECORD LENGTH: 524288

 Memory used in sort:       1.13 MW

 SORT1 READ    10862098. AND WROTE      115800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     50 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      574636.  Node maximum:      579915. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.63      0.46
 REAL TIME  *         1.12 SEC
 DISK USED  *        29.10 MB (local),      337.97 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.343D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.215D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.217D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 3 5 1 711 91415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.650D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.647D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 3   2 1 9 7 4 5 6 810 3   2 1 6 4 5 7 9 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    845
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.36777683    -109.38148131   -0.01370448    0.19785476 0.00010754 0.00000000  0.13E+00      0.11
   2    2    2    0   -109.38118631    -109.38120009   -0.00001378    0.00589682 0.00001088 0.00000000  0.42E-02      0.21
   3   20   20    0   -109.38120010    -109.38120010   -0.00000000    0.00000678 0.00000010 0.00000000  0.50E-05      0.60

 CONVERGENCE REACHED!  Final gradient:    0.00000025 ( 0.25E-06)
                       Final energy:   -109.38120010
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.381200103833
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287161
 One electron energy                          -193.56189402
 Two electron energy                            84.18069391
 Virial ratio                                    3.66894914
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.381200102470
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287188
 One electron energy                          -193.56189439
 Two electron energy                            84.18069429
 Virial ratio                                    3.66894913
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.381200101430
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287187
 One electron energy                          -193.56189437
 Two electron energy                            84.18069427
 Virial ratio                                    3.66894913
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.381200101425
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287198
 One electron energy                          -193.56189453
 Two electron energy                            84.18069443
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.381200099048
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287204
 One electron energy                          -193.56189462
 Two electron energy                            84.18069452
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.381200096067
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287228
 One electron energy                          -193.56189497
 Two electron energy                            84.18069487
 Virial ratio                                    3.66894910
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.381200095599
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287241
 One electron energy                          -193.56189516
 Two electron energy                            84.18069506
 Virial ratio                                    3.66894909
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.786832845322
 !MCSCF expec                      <2.1|LXLX|2.1>     4.721524017589
 !MCSCF expec                      <3.1|LXLX|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     3.357086331998
 !MCSCF expec                      <5.1|LXLX|5.1>     0.642872496621
 !MCSCF expec                      <6.1|LXLX|6.1>     6.213167115113
 !MCSCF expec                      <7.1|LXLX|7.1>     5.278438350706
 
 !MCSCF expec                      <1.1|LYLY|1.1>     3.996924420713
 !MCSCF expec                      <2.1|LYLY|2.1>     7.175459559176
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     7.166397532778
 !MCSCF expec                      <5.1|LYLY|5.1>     2.833696707593
 !MCSCF expec                      <6.1|LYLY|6.1>     0.003075578519
 !MCSCF expec                      <7.1|LYLY|7.1>     2.824572097223
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     4.216242733965
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.103016423236
 !MCSCF expec                      <3.1|LZLZ|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.476516135225
 !MCSCF expec                      <5.1|LZLZ|5.1>     8.523430795787
 !MCSCF expec                      <6.1|LZLZ|6.1>     5.783757306369
 !MCSCF expec                      <7.1|LZLZ|7.1>     3.896989552072
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000001
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000001
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000001
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000001
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000001
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000001
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 2 4 3 1 1 5 4   6 2 3 1 5 4 6 2 3 4   5 2 6 3 1 9 7 81214  15131011 4 2 3 5 6 1
                                        9 8 7141512131011 4   2 3 5 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 1 3 2 1   3 210 5 4 6 9 7 8 1   3 2 4 610 8 5 7 9 1   3 2 4 6 8 7 910 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.71980     1  1  s    1.00198
    2.1     1.60000    -0.30292     1  1  d2+  1.00364
    3.1     1.60000    -0.30292     1  1  d1-  1.00364
    4.1     1.60000    -0.30292     1  1  d0   1.00364
    5.1     1.60000    -0.30292     1  1  d1+  1.00364
    6.1     1.60000    -0.30292     1  1  d2-  1.00364
    7.1     1.00000    -0.09893     1  2  s    0.95189
    1.2     2.00000    -2.34976     1  1  px   1.00016
    2.2     2.00000    -2.34976     1  1  py   1.00016
    3.2     2.00000    -2.34976     1  1  pz   1.00016
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2a2a22a 222      0.00000000     -0.00000001      1.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222a2aa 222      0.00000041     -0.16048086     -0.00000000     -0.00000117     -0.00000026      0.00000512      0.98703895
 22a22aa 222      0.02480153      0.00000010     -0.00000000      0.00000234      0.00001111      0.89408322     -0.00000463
 22a2a2a 222     -0.00000362      0.88283450      0.00000001     -0.00000010      0.00000013      0.00000075      0.14353847
 2a22a2a 222      0.87189278      0.00000354     -0.00000000     -0.00000339      0.00001084      0.19950688     -0.00000082
 2222aaa 222     -0.00000629     -0.00000018     -0.00000000      0.35858433      0.81940057     -0.00001095      0.00000061
 2aa222a 222      0.00000851      0.00000005     -0.00000000      0.70373507     -0.55204792      0.00000478      0.00000070
 22aa22a 222      0.00000128     -0.00000008     -0.00000000      0.61333043      0.15435608     -0.00000356      0.00000075
 222aa2a 222      0.48906836      0.00000199     -0.00000000     -0.00000331     -0.00000016     -0.40101396      0.00000220
 2a222aa 222     -0.00000181      0.44141719      0.00000000     -0.00000005      0.00000007      0.00000037      0.07176918
 
 Energy:       -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.49       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.24      0.61      0.46
 REAL TIME  *         1.86 SEC
 DISK USED  *        32.59 MB (local),      372.87 MB (total)
 SF USED    *        12.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3812001   12.0
    -109.3812001   12.0
    -109.3812001   12.0
    -109.3812001   12.0
    -109.3812001   12.0
    -109.3812001   12.0
    -109.3812001   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Quartet 
 Number of electrons:                 17
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       56 conf       56 CSFs
 N elec internal:      120 conf      120 CSFs
 N-1 el internal:      570 conf     1200 CSFs
 N-2 el internal:     1260 conf     7056 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.38120010
     2      -109.38120010
     3      -109.38120010
     4      -109.38120010
     5      -109.38120010
     6      -109.38120010
     7      -109.38120010

 Number of blocks in overlap matrix:   184   Smallest eigenvalue:  0.25D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  403053 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  413743 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71658775  0.24D-01  0.12D+00     0.16
    1     2     2     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71642896  0.24D-01  0.12D+00     0.16
    1     3     3     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71694493  0.24D-01  0.12D+00     0.16
    1     4     4     1.00000000     0.00000000  -109.38120010     0.00000000    -0.71641107  0.24D-01  0.12D+00     0.16
    1     5     5     1.00000000     0.00000000  -109.38120010     0.00000000    -0.71666917  0.24D-01  0.12D+00     0.16
    1     6     6     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71660069  0.24D-01  0.12D+00     0.16
    1     7     7     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71691579  0.24D-01  0.12D+00     0.16
    2     1     1     1.09334379    -0.56819323  -109.94939333    -0.56819323    -0.01589650  0.11D-02  0.21D-02     6.87
    2     2     2     1.09328749    -0.56818601  -109.94938611    -0.56818601    -0.01590260  0.11D-02  0.21D-02     6.87
    2     3     3     1.09335556    -0.56817678  -109.94937688    -0.56817678    -0.01591728  0.11D-02  0.21D-02     6.87
    2     4     4     1.09337240    -0.56817080  -109.94937091    -0.56817080    -0.01592590  0.11D-02  0.21D-02     6.87
    2     5     5     1.09334470    -0.56815487  -109.94935497    -0.56815487    -0.01593844  0.11D-02  0.21D-02     6.87
    2     6     6     1.09335260    -0.56808741  -109.94928751    -0.56808741    -0.01602575  0.11D-02  0.21D-02     6.87
    2     7     7     1.09337679    -0.56808627  -109.94928636    -0.56808627    -0.01602472  0.11D-02  0.21D-02     6.87
    3     1     1     1.08812106    -0.58325009  -109.96445020    -0.01505686    -0.00018991  0.14D-04  0.25D-04    13.47
    3     2     2     1.08811588    -0.58324995  -109.96445005    -0.01506394    -0.00018995  0.14D-04  0.25D-04    13.47
    3     3     3     1.08811219    -0.58324970  -109.96444980    -0.01507292    -0.00018975  0.14D-04  0.25D-04    13.47
    3     4     4     1.08812883    -0.58324912  -109.96444922    -0.01507832    -0.00019164  0.14D-04  0.25D-04    13.47
    3     5     5     1.08810756    -0.58324883  -109.96444893    -0.01509397    -0.00019061  0.14D-04  0.25D-04    13.47
    3     6     6     1.08812422    -0.58324882  -109.96444891    -0.01516140    -0.00019196  0.14D-04  0.25D-04    13.47
    3     7     7     1.08809311    -0.58324864  -109.96444874    -0.01516238    -0.00019044  0.14D-04  0.25D-04    13.47
    4     1     1     1.08864424    -0.58344524  -109.96464534    -0.00019515    -0.00000850  0.24D-05  0.91D-06    20.09
    4     2     2     1.08864202    -0.58344523  -109.96464533    -0.00019528    -0.00000851  0.24D-05  0.91D-06    20.09
    4     3     3     1.08864237    -0.58344518  -109.96464528    -0.00019548    -0.00000851  0.25D-05  0.89D-06    20.09
    4     4     4     1.08864122    -0.58344516  -109.96464526    -0.00019604    -0.00000852  0.25D-05  0.90D-06    20.09
    4     5     5     1.08863965    -0.58344510  -109.96464519    -0.00019626    -0.00000855  0.25D-05  0.90D-06    20.09
    4     6     6     1.08863825    -0.58344506  -109.96464516    -0.00019624    -0.00000858  0.25D-05  0.90D-06    20.09
    4     7     7     1.08863401    -0.58344499  -109.96464508    -0.00019634    -0.00000863  0.25D-05  0.92D-06    20.09
    5     1     1     1.08882583    -0.58345418  -109.96465428    -0.00000894    -0.00000046  0.81D-07  0.69D-07    26.70
    5     2     2     1.08882612    -0.58345418  -109.96465428    -0.00000895    -0.00000046  0.81D-07  0.68D-07    26.70
    5     3     3     1.08882634    -0.58345417  -109.96465427    -0.00000899    -0.00000047  0.84D-07  0.67D-07    26.70
    5     4     4     1.08882615    -0.58345417  -109.96465427    -0.00000901    -0.00000047  0.84D-07  0.67D-07    26.70
    5     5     5     1.08882634    -0.58345417  -109.96465427    -0.00000907    -0.00000047  0.86D-07  0.67D-07    26.70
    5     6     6     1.08882591    -0.58345417  -109.96465427    -0.00000911    -0.00000047  0.86D-07  0.67D-07    26.70
    5     7     7     1.08882551    -0.58345416  -109.96465426    -0.00000918    -0.00000048  0.85D-07  0.69D-07    26.70
    6     1     1     1.08886984    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.56D-08  0.40D-08    33.61
    6     2     2     1.08886992    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.56D-08  0.40D-08    33.61
    6     3     3     1.08886988    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.57D-08  0.41D-08    33.61
    6     4     4     1.08886981    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.57D-08  0.41D-08    33.61
    6     5     5     1.08886988    -0.58345468  -109.96465478    -0.00000051    -0.00000003  0.56D-08  0.40D-08    33.61
    6     6     6     1.08886985    -0.58345468  -109.96465477    -0.00000051    -0.00000003  0.56D-08  0.40D-08    33.61
    6     7     7     1.08886991    -0.58345468  -109.96465477    -0.00000051    -0.00000003  0.57D-08  0.41D-08    33.61


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.9%
 P   0.5%  12.8%  48.8%

 Initialization:   0.3%
 Other:           36.5%

 Total CPU:       33.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/22/222           0.0000000  -0.0000000   0.9583231  -0.0000000  -0.0000000   0.0000000   0.0000000
 222/2//222          -0.0000000  -0.1260455   0.0000000   0.0000000   0.0000000  -0.0000000   0.9499977
 22/22//222           0.0595939   0.0000000   0.0000000  -0.0000000  -0.0000000   0.8550777   0.0000000
 2222///222           0.0000000   0.0000000   0.0000000  -0.0979082   0.8515403   0.0000000   0.0000000
 22/2/2/222           0.0000000   0.8497065   0.0000000   0.0000000   0.0000000   0.0000000   0.1127389
 2//222/222           0.0000000   0.0000000   0.0000000   0.8489769  -0.1180858   0.0000000   0.0000000
 2/22/2/222           0.8428219  -0.0000000   0.0000000   0.0000000   0.0000000   0.1560662  -0.0000000
 222//2/222           0.4521978   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.4035698   0.0000000
 22//22/222          -0.0000000  -0.0000000   0.0000000   0.4336305   0.4234596  -0.0000000  -0.0000000
 2/222//222          -0.0000000   0.4248463   0.0000000   0.0000000   0.0000000  -0.0000000   0.0563686

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957485   -0.000000    0.000000   -0.000000   -0.000000    0.040075   -0.000000
 2          -0.000000    0.957912   -0.000000   -0.000000    0.000000   -0.000000    0.028050
 3           0.000000    0.000000    0.958323    0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.828318   -0.481947    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.481947    0.828318    0.000000    0.000000
 6          -0.040075   -0.000000    0.000000   -0.000000   -0.000000    0.957485   -0.000000
 7           0.000000   -0.028050    0.000000   -0.000000    0.000000   -0.000000    0.957912

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958323   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.958323    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.958323    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.958323    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.958323    0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958323   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958323


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95748478 (fixed)   0.95832323 (relaxed)   0.95832308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820833
 Singles      0.01381823   -0.07363676   -0.07503542
 Pairs        0.07505164    0.00000000   -0.04021092
 Total        1.08887019   -0.07363676   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342893
 One electron energy                 -193.17314827
 Two electron energy                   83.20849349
 Virial quotient                       -2.65336768
 Correlation energy                    -0.58345467
 !MRCI STATE 1.1 Energy              -109.964654777081

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650650 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650630 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650650 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205940 (Pople, fixed reference)
 Cluster corrected energies          -110.01205920 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205940 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95791244 (fixed)   0.95832319 (relaxed)   0.95832304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.45450380
 Singles      0.01381827   -0.07363678   -0.07503544
 Pairs        0.07505168   -0.01492241   -0.05391543
 Total        1.08887027   -0.08855919   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342819
 One electron energy                 -193.17314609
 Two electron energy                   83.20849131
 Virial quotient                       -2.65336773
 Correlation energy                    -0.58345467
 !MRCI STATE 2.1 Energy              -109.964654776197

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650655 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650635 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650655 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205945 (Pople, fixed reference)
 Cluster corrected energies          -110.01205925 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205945 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95832306 (fixed)   0.95832321 (relaxed)   0.95832306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820839
 Singles      0.01381844   -0.07363669   -0.07503545
 Pairs        0.07505146   -0.00000000   -0.04021084
 Total        1.08887023   -0.07363669   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44343580
 One electron energy                 -193.17316707
 Two electron energy                   83.20851229
 Virial quotient                       -2.65336724
 Correlation energy                    -0.58345467
 !MRCI STATE 3.1 Energy              -109.964654775802

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650653 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650632 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650653 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205942 (Pople, fixed reference)
 Cluster corrected energies          -110.01205922 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205942 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.82831777 (fixed)   0.95832324 (relaxed)   0.95832309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820837
 Singles      0.01381827   -0.07363674   -0.07503542
 Pairs        0.07505157   -0.00000000   -0.04021089
 Total        1.08887016   -0.07363674   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44343086
 One electron energy                 -193.17315325
 Two electron energy                   83.20849848
 Virial quotient                       -2.65336755
 Correlation energy                    -0.58345467
 !MRCI STATE 4.1 Energy              -109.964654775276

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650649 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650628 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650649 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205938 (Pople, fixed reference)
 Cluster corrected energies          -110.01205918 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205938 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.82831772 (fixed)   0.95832321 (relaxed)   0.95832306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46820828
 Singles      0.01381826   -0.07363681   -0.07503544
 Pairs        0.07505165    0.00000000   -0.04021096
 Total        1.08887023   -0.07363681   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342862
 One electron energy                 -193.17314862
 Two electron energy                   83.20849384
 Virial quotient                       -2.65336770
 Correlation energy                    -0.58345468
 !MRCI STATE 5.1 Energy              -109.964654775011

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650653 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650632 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650653 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205942 (Pople, fixed reference)
 Cluster corrected energies          -110.01205922 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205942 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95748477 (fixed)   0.95832323 (relaxed)   0.95832307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46820830
 Singles      0.01381826   -0.07363680   -0.07503544
 Pairs        0.07505161    0.00000000   -0.04021093
 Total        1.08887020   -0.07363680   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342955
 One electron energy                 -193.17315011
 Two electron energy                   83.20849534
 Virial quotient                       -2.65336764
 Correlation energy                    -0.58345468
 !MRCI STATE 6.1 Energy              -109.964654773485

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650651 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650630 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650651 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205940 (Pople, fixed reference)
 Cluster corrected energies          -110.01205920 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205940 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95791244 (fixed)   0.95832320 (relaxed)   0.95832304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.00020078
 Singles      0.01381845   -0.07363674   -0.07503546
 Pairs        0.07505149   -0.50959950   -0.50821843
 Total        1.08887026   -0.58323624   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44343447
 One electron energy                 -193.17316533
 Two electron energy                   83.20851056
 Virial quotient                       -2.65336732
 Correlation energy                    -0.58345468
 !MRCI STATE 7.1 Energy              -109.964654773238

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650654 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650634 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650654 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205944 (Pople, fixed reference)
 Cluster corrected energies          -110.01205924 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205944 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       65.82       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        37.64     36.39      0.61      0.46
 REAL TIME  *        43.91 SEC
 DISK USED  *        97.93 MB (local),        1.00 GB (total)
 SF USED    *       658.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01650650  AU                              
 SETTING HLSDIAG(2)     =      -110.01650655  AU                              
 SETTING HLSDIAG(3)     =      -110.01650653  AU                              
 SETTING HLSDIAG(4)     =      -110.01650649  AU                              
 SETTING HLSDIAG(5)     =      -110.01650653  AU                              
 SETTING HLSDIAG(6)     =      -110.01650651  AU                              
 SETTING HLSDIAG(7)     =      -110.01650654  AU                              


         HLSDIAG
    -110.0165065
    -110.0165066
    -110.0165065
    -110.0165065
    -110.0165065
    -110.0165065
    -110.0165065
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.964655   -109.964655   -109.964655   -109.964655   -109.964655   -109.964655   -109.964655
 Replaced energies:   -110.016507   -110.016507   -110.016507   -110.016506   -110.016507   -110.016507   -110.016507



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01650655

 Wigner-Eckart theorem used for 13 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -592.28
                           -0.00       0.00      -0.00     443.14   -1002.86       0.00       0.00       0.00    -523.58      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -135.26      -0.00       0.00      -0.00       0.00     523.58       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00     592.28      -0.00      -0.00
                            0.00     135.26      -0.00      -0.00       0.00       0.00   -1019.42       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00      -0.00     526.48       0.00
                         -443.14       0.00       0.00       0.00       0.00   -1049.01       0.00       0.00       0.00     589.83

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.01       0.00       0.00      -0.00     580.97      -0.00
                         1002.86      -0.00      -0.00      -0.00      -0.00     584.17      -0.00      -0.00      -0.00      67.82

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00      41.28
                           -0.00       0.00      -0.00    1049.01    -584.17       0.00       0.00      -0.00     403.19       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00    1019.42      -0.00       0.00      -0.00       0.00     178.52       0.00       0.00

    8   1.1  1.5  0.5       0.00      -0.00     592.28      -0.00      -0.00      -0.00       0.00       0.01       0.00       0.00
                           -0.00    -523.58      -0.00      -0.00       0.00       0.00    -178.52      -0.00       0.00      -0.00

    9   2.1  1.5  0.5       0.00       0.00      -0.00     526.48     580.97       0.00      -0.00       0.00       0.00       0.00
                          523.58      -0.00       0.00      -0.00       0.00    -403.19      -0.00      -0.00      -0.00     -45.09

   10   3.1  1.5  0.5    -592.28       0.00      -0.00       0.00      -0.00      41.28       0.00       0.00       0.00       0.01
                            0.00      -0.00       0.00    -589.83     -67.82      -0.00      -0.00       0.00      45.09      -0.00

   11   4.1  1.5  0.5       0.00    -526.48      -0.00       0.00       0.00       0.00      12.66       0.00       0.00       0.00
                            0.00       0.00     589.83      -0.00      -0.00      -0.00       0.00    -147.71       0.00       0.00

   12   5.1  1.5  0.5       0.00    -580.97       0.00      -0.00       0.00       0.00     516.13       0.00       0.00       0.00
                           -0.00      -0.00      67.82       0.00       0.00       0.00       0.00     334.29      -0.00      -0.00

   13   6.1  1.5  0.5       0.00      -0.00     -41.28      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     403.19       0.00       0.00      -0.00      -0.00     642.40      -0.00       0.00      -0.00

   14   7.1  1.5  0.5      -0.00       0.00      -0.00     -12.66    -516.13      -0.00      -0.00       0.00       0.00       0.00
                          178.52       0.00       0.00      -0.00      -0.00    -642.40      -0.00      -0.00      -0.00     339.81

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     683.91
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -604.58      -0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     604.58      -0.00       0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -683.91       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -607.93      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     681.08

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -670.85       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      78.31

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -47.66
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     465.56       0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     206.14       0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -178.52       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5    -526.48    -580.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -403.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00       0.00     -41.28      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -589.83     -67.82      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00      -0.00     -12.66       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00      -0.00    -516.13       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     642.40       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      12.66     516.13       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -642.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -683.91       0.00       0.00       0.00
                          147.71    -334.29       0.00       0.00       0.00    -604.58      -0.00      -0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -607.93    -670.85      -0.00
                           -0.00       0.00      -0.00       0.00     604.58       0.00       0.00      -0.00       0.00    -465.56

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00     683.91      -0.00      -0.00      -0.00       0.00     -47.66
                           -0.00       0.00       0.00    -339.81       0.00      -0.00      -0.00    -681.08     -78.31      -0.00

   11   4.1  1.5  0.5       0.01       0.00       0.00       0.00      -0.00     607.93       0.00       0.00      -0.00      -0.00
                            0.00       0.00    -349.67       0.00       0.00       0.00     681.08       0.00      -0.00      -0.00

   12   5.1  1.5  0.5       0.00       0.01       0.00       0.00      -0.00     670.85      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00     194.72      -0.00      -0.00      -0.00      78.31       0.00      -0.00       0.00

   13   6.1  1.5  0.5       0.00       0.00       0.01       0.00      -0.00       0.00      47.66       0.00       0.00       0.00
                          349.67    -194.72       0.00       0.00      -0.00     465.56       0.00       0.00      -0.00       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      14.62     595.97       0.00
                           -0.00       0.00      -0.00       0.00     206.14       0.00       0.00      -0.00      -0.00    -741.78

   15   1.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -206.14       0.00      -0.00       0.00    -147.71     334.29      -0.00

   16   2.1  1.5 -0.5     607.93     670.85       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -465.56      -0.00       0.00       0.00      45.09       0.00      -0.00       0.00

   17   3.1  1.5 -0.5       0.00      -0.00      47.66       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                         -681.08     -78.31      -0.00      -0.00      -0.00     -45.09       0.00       0.00      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00      14.62       0.00       0.00       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     147.71      -0.00      -0.00      -0.00      -0.00     349.67

   19   5.1  1.5 -0.5      -0.00       0.00       0.00     595.97       0.00       0.00       0.00       0.00       0.01       0.00
                            0.00       0.00       0.00       0.00    -334.29       0.00       0.00       0.00       0.00    -194.72

   20   6.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                            0.00      -0.00      -0.00     741.78       0.00      -0.00       0.00    -349.67     194.72      -0.00

   21   7.1  1.5 -0.5     -14.62    -595.97      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -741.78      -0.00       0.00       0.00    -339.81       0.00      -0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00     592.28      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -523.58      -0.00      -0.00       0.00       0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     526.48     580.97       0.00
                           -0.00      -0.00      -0.00      -0.00     523.58      -0.00       0.00      -0.00       0.00    -403.19

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00    -592.28       0.00      -0.00       0.00      -0.00      41.28
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -589.83     -67.82      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -526.48      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     589.83      -0.00      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -580.97       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      67.82       0.00       0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00     -41.28      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     403.19       0.00       0.00      -0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -12.66    -516.13      -0.00
                           -0.00      -0.00      -0.00      -0.00     178.52       0.00       0.00      -0.00      -0.00    -642.40


   Nr   State  S   Sz       21         22         23         24         25         26         27         28

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -206.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.5  0.5     -14.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.5  0.5    -595.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          741.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00    -592.28       0.00       0.00       0.00      -0.00
                           -0.00       0.00    -523.58      -0.00      -0.00       0.00       0.00    -178.52

   16   2.1  1.5 -0.5       0.00      -0.00       0.00       0.00    -526.48    -580.97      -0.00       0.00
                           -0.00     523.58       0.00       0.00      -0.00       0.00    -403.19      -0.00

   17   3.1  1.5 -0.5       0.00     592.28      -0.00      -0.00      -0.00       0.00     -41.28      -0.00
                          339.81       0.00      -0.00      -0.00    -589.83     -67.82      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00      -0.00     526.48       0.00       0.00      -0.00      -0.00     -12.66
                           -0.00       0.00       0.00     589.83       0.00      -0.00      -0.00       0.00

   19   5.1  1.5 -0.5       0.00      -0.00     580.97      -0.00       0.00       0.00      -0.00    -516.13
                            0.00      -0.00      -0.00      67.82       0.00      -0.00       0.00       0.00

   20   6.1  1.5 -0.5       0.00      -0.00       0.00      41.28       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     403.19       0.00       0.00      -0.00       0.00     642.40

   21   7.1  1.5 -0.5       0.00       0.00      -0.00       0.00      12.66     516.13       0.00      -0.00
                           -0.00     178.52       0.00       0.00      -0.00      -0.00    -642.40       0.00

   22   1.1  1.5 -1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -178.52       0.00      -0.00       0.00    -443.14    1002.86      -0.00      -0.00

   23   2.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     135.26       0.00      -0.00       0.00      -0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -135.26       0.00       0.00      -0.00      -0.00    1019.42

   25   4.1  1.5 -1.5      12.66       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                            0.00     443.14      -0.00      -0.00      -0.00      -0.00    1049.01      -0.00

   26   5.1  1.5 -1.5     516.13       0.00       0.00       0.00       0.00       0.01       0.00       0.00
                            0.00   -1002.86       0.00       0.00       0.00       0.00    -584.17       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00
                          642.40       0.00      -0.00       0.00   -1049.01     584.17      -0.00      -0.00

   28   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -1019.42       0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02353479    -0.00702824    -1542.52      0.00000000        0.00      0.0000
     2  -110.02353479    -0.00702824    -1542.52      0.00000000        0.00      0.0000
     3  -110.02353479    -0.00702824    -1542.52      0.00000000        0.00      0.0000
     4  -110.02353479    -0.00702824    -1542.52      0.00000000        0.00      0.0000
     5  -110.02353478    -0.00702823    -1542.52      0.00000001        0.00      0.0000
     6  -110.02353478    -0.00702823    -1542.52      0.00000001        0.00      0.0000
     7  -110.02353478    -0.00702823    -1542.52      0.00000001        0.00      0.0000
     8  -110.02353478    -0.00702823    -1542.52      0.00000001        0.00      0.0000
     9  -110.02353478    -0.00702822    -1542.52      0.00000002        0.00      0.0000
    10  -110.02353478    -0.00702822    -1542.52      0.00000002        0.00      0.0000
    11  -110.01650654     0.00000001        0.00      0.00702826     1542.52      0.1912
    12  -110.01650654     0.00000001        0.00      0.00702826     1542.52      0.1912
    13  -110.01650652     0.00000003        0.01      0.00702827     1542.53      0.1912
    14  -110.01650652     0.00000003        0.01      0.00702827     1542.53      0.1912
    15  -110.01650652     0.00000003        0.01      0.00702827     1542.53      0.1912
    16  -110.01650652     0.00000003        0.01      0.00702827     1542.53      0.1912
    17  -110.01650650     0.00000005        0.01      0.00702830     1542.53      0.1912
    18  -110.01650650     0.00000005        0.01      0.00702830     1542.53      0.1912
    19  -110.01104010     0.00546645     1199.75      0.01249469     2742.27      0.3400
    20  -110.01104010     0.00546645     1199.75      0.01249469     2742.27      0.3400
    21  -110.01104009     0.00546646     1199.75      0.01249470     2742.27      0.3400
    22  -110.01104009     0.00546646     1199.75      0.01249470     2742.27      0.3400
    23  -110.01104008     0.00546647     1199.75      0.01249471     2742.27      0.3400
    24  -110.01104008     0.00546647     1199.75      0.01249471     2742.27      0.3400
    25  -110.00713551     0.00937105     2056.71      0.01639929     3599.23      0.4462
    26  -110.00713551     0.00937105     2056.71      0.01639929     3599.23      0.4462
    27  -110.00713550     0.00937106     2056.71      0.01639930     3599.23      0.4462
    28  -110.00713550     0.00937106     2056.71      0.01639930     3599.23      0.4462


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.000000000   0.132510261   0.422303954   0.008156482  -0.380498224   0.004689641  -0.007930644  -0.153776561
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.149240628  -0.000000000  -0.000199551   0.010331811   0.002240623   0.181794982   0.140540240  -0.007248013
                         0.260822350  -0.000000000  -0.002353630   0.121859808   0.000772453   0.062673637   0.216904323  -0.011186301

    3    3.1  1.5  1.5   0.064266666   0.000000000  -0.007036860   0.364335256  -0.001520077  -0.123332784   0.211079499  -0.010885900
                        -0.036772913  -0.000000000   0.000596616  -0.030889948   0.004409227   0.357746616  -0.136766124   0.007053373

    4    4.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.134716966   0.034077652   0.000658184  -0.241277687   0.002973748  -0.003360780  -0.065166115

    5    5.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.388322660  -0.347784186  -0.006717189   0.287788882  -0.003546998  -0.003773731  -0.073173307

    6    6.1  1.5  1.5   0.000000000   0.013522563   0.017225842   0.000332704  -0.262974338   0.003241159   0.013221921   0.256375342
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    7    7.1  1.5  1.5  -0.105326272   0.000000000   0.000663855  -0.034371258   0.004147968   0.336549143   0.013618144  -0.000702322
                        -0.184074847  -0.000000000   0.007829918  -0.405395992   0.001430008   0.116024977   0.021017713  -0.001083936

    8    1.1  1.5  0.5  -0.036669199  -0.000000000   0.005027476  -0.260298842   0.000039284   0.003187374  -0.408172306   0.021050471
                         0.020981845  -0.000000000  -0.000426252   0.022069282  -0.000113951  -0.009245493   0.264469758  -0.013639370

    9    2.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.446285664  -0.087518210  -0.001690348   0.123686010  -0.001524430   0.025826614   0.500782546

   10    3.1  1.5  0.5   0.000000000   0.069491875   0.331453864   0.006401781  -0.234444660   0.002889530   0.003675902   0.071276385
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5   0.112022944  -0.000000000   0.000013509  -0.000699449   0.004961326   0.402541656  -0.072980400   0.003763783
                         0.195778373  -0.000000000   0.000159337  -0.008249731   0.001710412   0.138775829  -0.112635100   0.005808875

   12    5.1  1.5  0.5   0.259885966  -0.000000000  -0.000353505   0.018302796   0.000279975   0.022716035   0.030678747  -0.001582180
                         0.454193132  -0.000000000  -0.004169454   0.215874565   0.000096521   0.007831330   0.047348382  -0.002441875

   13    6.1  1.5  0.5   0.018567572  -0.000000000   0.005684697  -0.294326670   0.001143680   0.092793483   0.307818783  -0.015874988
                        -0.010624228   0.000000000  -0.000481974   0.024954312  -0.003317427  -0.269162448  -0.199447041   0.010285985

   14    7.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.376299608  -0.254315704  -0.004911916  -0.068448017   0.000843622   0.017831364   0.345753249

   15    1.1  1.5 -0.5  -0.000000000   0.042247698  -0.261232732  -0.005045513  -0.009779495   0.000120532  -0.025082958  -0.486362915
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.221642772   0.000000000   0.000142803  -0.007393653  -0.001441190  -0.116932243   0.272310727  -0.014043749
                        -0.387356909   0.000000000   0.001684305  -0.087205338  -0.000496849  -0.040312272   0.420273752  -0.021674573

   17    3.1  1.5 -0.5   0.060315982  -0.000000000   0.006378895  -0.330268938  -0.000941768  -0.076411206  -0.059817566   0.003084942
                        -0.034512361   0.000000000  -0.000540831   0.028001655   0.002731750   0.221643016   0.038757988  -0.001998847

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.225562212   0.008279329   0.000159909   0.425791634  -0.005247882   0.006921639   0.134211789

   19    5.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.523289706  -0.216649072  -0.004184413   0.024028067  -0.000296146  -0.002909647  -0.056418568

   20    6.1  1.5 -0.5   0.000000000  -0.021392264  -0.295382645  -0.005705093  -0.284708717   0.003509035   0.018916045   0.366785395
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   21    7.1  1.5 -0.5   0.186884982  -0.000000000   0.000414965  -0.021484923   0.000797557   0.064710474   0.188010383  -0.009696168
                         0.326612000  -0.000000000   0.004894356  -0.253406541   0.000274957   0.022308871   0.290167891  -0.014964687

   22    1.1  1.5 -1.5  -0.115013251   0.000000000  -0.008127323   0.420794244   0.001528468   0.124013607  -0.129054523   0.006655666
                         0.065809736  -0.000000000   0.000689070  -0.035676789  -0.004433567  -0.359721453   0.083619144  -0.004312449

   23    2.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.300501353   0.122297012   0.002362075  -0.192295086   0.002370037   0.013329180   0.258455112

   24    3.1  1.5 -1.5   0.000000000   0.074043578  -0.365642404  -0.007062107  -0.378409326   0.004663895  -0.012971233  -0.251514466
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   25    4.1  1.5 -1.5  -0.066905671   0.000000000   0.000055604  -0.002878924  -0.002811369  -0.228102931   0.035435405  -0.001827493
                        -0.116928577   0.000000000   0.000655831  -0.033955826  -0.000969217  -0.078638255   0.054689621  -0.002820481

   26    5.1  1.5 -1.5  -0.192856096   0.000000000  -0.000567477   0.029381262   0.003353317   0.272074423   0.039789478  -0.002052043
                        -0.337047496   0.000000000  -0.006693175   0.346540880   0.001156053   0.093797383   0.061409529  -0.003167044

   27    6.1  1.5 -1.5  -0.011737008   0.000000000  -0.000331515   0.017164261   0.001056372   0.085709721   0.215158910  -0.011096286
                         0.006715829   0.000000000   0.000028107  -0.001455262  -0.003064178  -0.248614856  -0.139409322   0.007189689

   28    7.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.212078223  -0.406850457  -0.007858009  -0.355987529   0.004387546   0.001291578   0.025043924


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.000000000   0.094563846  -0.197205443  -0.010467736  -0.226622112  -0.047734996   0.184116772  -0.023700950
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.027616038   0.000000000   0.009674620  -0.182263644  -0.009506588   0.045132569  -0.000425904  -0.003308559
                         0.173697468  -0.000000000  -0.034975766   0.658921030  -0.007016763   0.033312115   0.003707521   0.028801240

    3    3.1  1.5  1.5  -0.104858323  -0.000000000  -0.000600995   0.011322355   0.031041098  -0.147367756   0.047393077   0.368165004
                        -0.016671351   0.000000000  -0.000166241   0.003131868  -0.042055706   0.199659657   0.005444306   0.042293164

    4    4.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.549806281   0.164968228   0.008756573   0.343449724   0.072343211  -0.153505331   0.019760406

    5    5.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.172433718  -0.140632441  -0.007464821   0.366699068   0.077240383  -0.142612326   0.018358173

    6    6.1  1.5  1.5  -0.000000000   0.514627192  -0.113342058  -0.006016237   0.232273965   0.048925486  -0.157326030   0.020252236
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    7    7.1  1.5  1.5  -0.020558647   0.000000000   0.000530308  -0.009990672  -0.019603479   0.093067603   0.005052892   0.039252532
                         0.129308372  -0.000000000  -0.001917176   0.036118359  -0.014469226   0.068692714  -0.043985790  -0.341696080

    8    1.1  1.5  0.5  -0.180862768   0.000000000  -0.001018919   0.019195780  -0.017020939   0.080806988   0.058921685   0.457723028
                        -0.028755244  -0.000000000  -0.000281842   0.005309730   0.023060641  -0.109480498   0.006768662   0.052581194

    9    2.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.023438082   0.081711524   0.004337277  -0.038958788  -0.008206161  -0.029168644   0.003754816

   10    3.1  1.5  0.5   0.000000000  -0.427017421  -0.432899362  -0.022978454   0.273627599   0.057636090  -0.112604058   0.014495274
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5  -0.044375097   0.000000000   0.001082800  -0.020399250   0.064125417  -0.304435707  -0.002970432  -0.023075290
                         0.279107450   0.000000000  -0.003914546   0.073747537   0.047330637  -0.224702415   0.025857820   0.200872047

   12    5.1  1.5  0.5  -0.000074339  -0.000000000  -0.000653730   0.012315851  -0.084380850   0.400598469   0.003339138   0.025939524
                         0.000467569  -0.000000000   0.002363369  -0.044524365  -0.062281067   0.295679650  -0.029067437  -0.225805409

   13    6.1  1.5  0.5   0.099708368  -0.000000000   0.000584821  -0.011017646  -0.004577309   0.021730797   0.068737045   0.533971967
                         0.015852563  -0.000000000   0.000161767  -0.003047583   0.006201519  -0.029441740   0.007896207   0.061340334

   14    7.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.168378729  -0.476369356  -0.025285857  -0.185341846  -0.039039846   0.132051891  -0.016998751

   15    1.1  1.5 -0.5   0.000000000   0.183134390   0.019916606   0.001057181  -0.136072586  -0.028661918   0.460733277  -0.059309188
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.003680181  -0.000000000   0.001156310  -0.021784140  -0.006602466   0.031345237   0.000428518   0.003328872
                         0.023147353  -0.000000000  -0.004180301   0.078754202  -0.004873246   0.023135757  -0.003730283  -0.028978067

   17    3.1  1.5 -0.5  -0.421720643  -0.000000000  -0.022146813   0.417231773  -0.034227311   0.162494317   0.014400568   0.111868348
                        -0.067049067   0.000000000  -0.006126013   0.115410163   0.046372513  -0.220153718   0.001654273   0.012850941

   18    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.282613018  -0.076516852  -0.004061542  -0.378381124  -0.079701056  -0.202193097   0.026027876

   19    5.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000473442   0.046196312   0.002452117   0.497901184   0.104876400   0.227290435  -0.029258601

   20    6.1  1.5 -0.5  -0.000000000  -0.100960697  -0.011431373  -0.000606781  -0.036592945  -0.007707827   0.537483672  -0.069189099
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   21    7.1  1.5 -0.5   0.026438352  -0.000000000  -0.006741162   0.126999182  -0.031410454   0.149121275  -0.001939983  -0.015070425
                        -0.166290138  -0.000000000   0.024370706  -0.459128491  -0.023183893   0.110065639   0.016887688   0.131189116

   22    1.1  1.5 -1.5  -0.093390864  -0.000000000   0.010088885  -0.190068140  -0.028347527   0.134580011   0.023546097   0.182913826
                        -0.014848148  -0.000000000   0.002790679  -0.052574603   0.038406349  -0.182334315   0.002704871   0.021012330

   23    2.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.175879095   0.683664362   0.036289151  -0.056094971  -0.011815675   0.028990653  -0.003731903

   24    3.1  1.5 -1.5   0.000000000  -0.106175335  -0.011747524  -0.000623563  -0.248155665  -0.052270759  -0.370586269   0.047704761
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   25    4.1  1.5 -1.5  -0.086329027   0.000000000  -0.002334486   0.043980222  -0.058205484   0.276330802  -0.002255157  -0.017518799
                         0.542986414   0.000000000   0.008439653  -0.158997661  -0.042961166   0.203958331   0.019631299   0.152502389

   26    5.1  1.5 -1.5   0.027075055  -0.000000000   0.001990107  -0.037492346  -0.062145622   0.295036625  -0.002095127  -0.016275635
                        -0.170294828  -0.000000000  -0.007194652   0.135542640  -0.045869361   0.217765002   0.018238228   0.141680554

   27    6.1  1.5 -1.5  -0.508243691  -0.000000000   0.005798496  -0.109239957   0.029054501  -0.137936376  -0.020119916  -0.156298124
                        -0.080805306   0.000000000   0.001603918  -0.030216781  -0.039364185   0.186881650  -0.002311287  -0.017954836

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.130932475   0.037474650   0.001989168  -0.115673107  -0.024365033  -0.343943269   0.044275066


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.363714915  -0.016883118   0.377903618  -0.015117120   0.228437110  -0.017476733  -0.113508572  -0.003642394
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000289323   0.006232917  -0.008156390  -0.203896600   0.010256796   0.134065836   0.008581823  -0.267436860
                        -0.000063753  -0.001373439  -0.009958803  -0.248954017  -0.018516740  -0.242030976  -0.002050104   0.063887749

    3    3.1  1.5  1.5  -0.002851228  -0.061424317   0.003780578   0.094508359   0.019575433   0.255869071  -0.002508182   0.078162907
                        -0.012939394  -0.278754808  -0.003096343  -0.077403584   0.010843227   0.141731036  -0.010499357   0.327193285

    4    4.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.260825903  -0.012107160  -0.211225589   0.008449569   0.166578091  -0.012744167  -0.363116916  -0.011652116

    5    5.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.229169354  -0.010637709   0.134515360  -0.005380961   0.428201409  -0.032759833   0.001214404   0.000038969

    6    6.1  1.5  1.5  -0.349094419   0.016204456  -0.010473554   0.000418969   0.050754987  -0.003883044   0.442507493   0.014199692
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    7    7.1  1.5  1.5   0.017733709   0.382039288   0.002041267   0.051028380  -0.009577357  -0.125184941   0.011729988  -0.365543656
                        -0.003907667  -0.084183310   0.002492349   0.062304718   0.017290140   0.225998170  -0.002802166   0.087324392

    8    1.1  1.5  0.5   0.002754914   0.059349430   0.002613368   0.065329995  -0.021267104  -0.277980777  -0.002487611   0.077521858
                         0.012502306   0.269338587  -0.002140383  -0.053506121  -0.011780277  -0.153979155  -0.010413247   0.324509827

    9    2.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.298657124   0.013863230   0.051644664  -0.002065920   0.281392501  -0.021528120  -0.299596729  -0.009613806

   10    3.1  1.5  0.5  -0.081781702   0.003796188  -0.200969589   0.008039302   0.346720983  -0.026526119   0.229908191   0.007377560
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   11    4.1  1.5  0.5  -0.016443014  -0.354233702  -0.001833471  -0.045833811  -0.014831719  -0.193864325  -0.007495416   0.233580964
                         0.003623259   0.078056280  -0.002238634  -0.055962245   0.026775914   0.349986046   0.001790573  -0.055799944

   12    5.1  1.5  0.5  -0.007057617  -0.152043033   0.011916740   0.297899284   0.001836076   0.023999213  -0.001447627   0.045112646
                         0.001555163   0.033503062   0.014550121   0.363729574  -0.003314694  -0.043326123   0.000345822  -0.010776919

   13    6.1  1.5  0.5  -0.002438070  -0.052523608   0.013716761   0.342896915  -0.009272565  -0.121201029   0.000874965  -0.027266681
                        -0.011064407  -0.238361760  -0.011234207  -0.280837064  -0.005136261  -0.067135693   0.003662640  -0.114139499

   14    7.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.035328928   0.001639918   0.441474490  -0.017660119  -0.131746783   0.010079375  -0.029557536  -0.000948476

   15    1.1  1.5 -0.5  -0.275799981   0.012802235  -0.084444735   0.003378007   0.317778056  -0.024311821   0.333640924   0.010706256
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.013538445  -0.291660237  -0.001309014  -0.032723244   0.010431437   0.136348558  -0.009350695   0.291397355
                         0.002983230   0.064268061  -0.001598282  -0.039954482  -0.018832023  -0.246152007   0.002233779  -0.069611650

   17    3.1  1.5 -0.5  -0.000816902  -0.017598614  -0.006219542  -0.155478518   0.023204091   0.303299005   0.001714185  -0.053419436
                        -0.003707251  -0.079865735   0.005093886   0.127338942   0.012853214   0.168003432   0.007175651  -0.223616055

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.362731717  -0.016837480  -0.072336098   0.002893631   0.400092000  -0.030609304   0.240153493   0.007706323

   19    5.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.155690523  -0.007226928   0.470152301  -0.018807305  -0.049528933   0.003789244   0.046382031   0.001488360

   20    6.1  1.5 -0.5   0.244080023  -0.011329840  -0.443224267   0.017730114   0.138552845  -0.010600077  -0.117351170  -0.003765700
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   21    7.1  1.5 -0.5  -0.001601498  -0.034501248  -0.011189856  -0.279728365  -0.004883955  -0.063837820  -0.000922518   0.028748604
                         0.000352894   0.007602436  -0.013662610  -0.341543214   0.008817074   0.115247332   0.000220380  -0.006867728

   22    1.1  1.5 -1.5  -0.003633080  -0.078267854  -0.011695239  -0.292362116  -0.015288015  -0.199828541   0.000846315  -0.026373849
                        -0.016487584  -0.355193865   0.009578554   0.239448402  -0.008468340  -0.110689057   0.003542709  -0.110402065

   23    2.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.006382444  -0.000296264   0.321794851  -0.012872624   0.276681480  -0.021167700   0.274962031   0.008823300

   24    3.1  1.5 -1.5  -0.285442095   0.013249808   0.122160324  -0.004886728   0.292500714  -0.022377961  -0.336399890  -0.010794789
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   25    4.1  1.5 -1.5  -0.011823515  -0.254715319  -0.005353840  -0.133837379  -0.006175178  -0.080715308   0.011333220  -0.353179118
                         0.002605341   0.056127156  -0.006536941  -0.163412990   0.011148138   0.145716504  -0.002707383   0.084370639

   26    5.1  1.5 -1.5  -0.010388490  -0.223800414   0.003409501   0.085232018  -0.015873756  -0.207484721  -0.000037903   0.001181169
                         0.002289130   0.049314980   0.004162938   0.104066734   0.028657120   0.374575143   0.000009055  -0.000282168

   27    6.1  1.5 -1.5   0.003487039   0.075121668   0.000324132   0.008102782  -0.003396747  -0.044398632  -0.003299315   0.102817132
                         0.015824821   0.340915896  -0.000265468  -0.006636284  -0.001881526  -0.024593297  -0.013811075   0.430396931

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.391204355  -0.018159138  -0.080534300   0.003221580  -0.258353329   0.019765493   0.375829368   0.012060048


   Nr   State  S   Sz       25            26            27            28

    1    1.1  1.5  1.5   0.291646198  -0.000000000  -0.000000000   0.270973938
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.085905350   0.033363321   0.000000000
                         0.000000000  -0.060755749  -0.135513366  -0.000000000

    3    3.1  1.5  1.5  -0.000000000   0.204438851  -0.128460782   0.000000000
                        -0.000000000  -0.289065498  -0.031626978   0.000000000

    4    4.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.029487242  -0.000000000   0.000000000  -0.409694967

    5    5.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.290306633   0.000000000  -0.000000000   0.299770944

    6    6.1  1.5  1.5  -0.009511694   0.000000000  -0.000000000   0.429284709
                         0.000000000   0.000000000   0.000000000  -0.000000000

    7    7.1  1.5  1.5   0.000000000   0.280200093   0.036330739  -0.000000000
                        -0.000000000   0.198168876  -0.147566268   0.000000000

    8    1.1  1.5  0.5   0.000000000   0.131039775  -0.267210670  -0.000000000
                         0.000000000  -0.185283168  -0.065787129  -0.000000000

    9    2.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.488287441  -0.000000000   0.000000000  -0.129386884

   10    3.1  1.5  0.5  -0.132298155  -0.000000000   0.000000000  -0.354053795
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   11    4.1  1.5  0.5   0.000000000   0.275426726  -0.013511452  -0.000000000
                        -0.000000000   0.194792958   0.054880099   0.000000000

   12    5.1  1.5  0.5   0.000000000   0.268964776  -0.013194316  -0.000000000
                        -0.000000000   0.190222804   0.053591973   0.000000000

   13    6.1  1.5  0.5  -0.000000000  -0.116949593   0.238476598   0.000000000
                        -0.000000000   0.165360411   0.058712815   0.000000000

   14    7.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.068670047  -0.000000000   0.000000000  -0.374321558

   15    1.1  1.5 -0.5   0.226938924  -0.000000000   0.000000000  -0.275189914
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   16    2.1  1.5 -0.5   0.000000000   0.398659879   0.030931336  -0.000000000
                        -0.000000000   0.281948444  -0.125635259   0.000000000

   17    3.1  1.5 -0.5  -0.000000000   0.076392010   0.343787862   0.000000000
                        -0.000000000  -0.108014178   0.084640393   0.000000000

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.337348748   0.000000000  -0.000000000  -0.056518887

   19    5.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.329434008   0.000000000  -0.000000000  -0.055192296

   20    6.1  1.5 -0.5  -0.202537090   0.000000000  -0.000000000   0.245597807
                         0.000000000   0.000000000   0.000000000  -0.000000000

   21    7.1  1.5 -0.5  -0.000000000  -0.056065322   0.089485622   0.000000000
                         0.000000000  -0.039651670  -0.363467953  -0.000000000

   22    1.1  1.5 -1.5  -0.000000000   0.168403250   0.263116939   0.000000000
                        -0.000000000  -0.238113104   0.064779254   0.000000000

   23    2.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.105218773  -0.000000000   0.000000000  -0.139559964

   24    3.1  1.5 -1.5  -0.354053818   0.000000000  -0.000000000   0.132296781
                         0.000000000   0.000000000   0.000000000  -0.000000000

   25    4.1  1.5 -1.5   0.000000000  -0.024074714  -0.097942018  -0.000000000
                        -0.000000000  -0.017026615   0.397815694   0.000000000

   26    5.1  1.5 -1.5  -0.000000000  -0.237019422   0.071663490   0.000000000
                         0.000000000  -0.167629754  -0.291078964  -0.000000000

   27    6.1  1.5 -1.5  -0.000000000  -0.005492272   0.416837425   0.000000000
                        -0.000000000   0.007765776   0.102625158   0.000000000

   28    7.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.343195273  -0.000000000   0.000000000  -0.151972781


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   1.756%  17.834%   0.007%  14.478%   0.002%   0.006%   2.365%   0.000%   0.894%
    2    2.1  1.5  1.5   9.030%   0.000%   0.001%   1.496%   0.001%   3.698%   6.680%   0.018%   3.093%   0.000%
    3    3.1  1.5  1.5   0.548%   0.000%   0.005%  13.369%   0.002%  14.319%   6.326%   0.017%   1.127%   0.000%
    4    4.1  1.5  1.5   0.000%   1.815%   0.116%   0.000%   5.821%   0.001%   0.001%   0.425%   0.000%  30.229%
    5    5.1  1.5  1.5   0.000%  15.079%  12.095%   0.005%   8.282%   0.001%   0.001%   0.535%   0.000%   2.973%
    6    6.1  1.5  1.5   0.000%   0.018%   0.030%   0.000%   6.916%   0.001%   0.017%   6.573%   0.000%  26.484%
    7    7.1  1.5  1.5   4.498%   0.000%   0.006%  16.553%   0.002%  12.673%   0.063%   0.000%   1.714%   0.000%
    8    1.1  1.5  0.5   0.178%   0.000%   0.003%   6.824%   0.000%   0.010%  23.655%   0.063%   3.354%   0.000%
    9    2.1  1.5  0.5   0.000%  19.917%   0.766%   0.000%   1.530%   0.000%   0.067%  25.078%   0.000%   0.055%
   10    3.1  1.5  0.5   0.000%   0.483%  10.986%   0.004%   5.496%   0.001%   0.001%   0.508%   0.000%  18.234%
   11    4.1  1.5  0.5   5.088%   0.000%   0.000%   0.007%   0.003%  18.130%   1.801%   0.005%   7.987%   0.000%
   12    5.1  1.5  0.5  27.383%   0.000%   0.002%   4.694%   0.000%   0.058%   0.318%   0.001%   0.000%   0.000%
   13    6.1  1.5  0.5   0.046%   0.000%   0.003%   8.725%   0.001%   8.106%  13.453%   0.036%   1.019%   0.000%
   14    7.1  1.5  0.5   0.000%  14.160%   6.468%   0.002%   0.469%   0.000%   0.032%  11.955%   0.000%   2.835%
   15    1.1  1.5 -0.5   0.000%   0.178%   6.824%   0.003%   0.010%   0.000%   0.063%  23.655%   0.000%   3.354%
   16    2.1  1.5 -0.5  19.917%   0.000%   0.000%   0.766%   0.000%   1.530%  25.078%   0.067%   0.055%   0.000%
   17    3.1  1.5 -0.5   0.483%   0.000%   0.004%  10.986%   0.001%   5.496%   0.508%   0.001%  18.234%   0.000%
   18    4.1  1.5 -0.5   0.000%   5.088%   0.007%   0.000%  18.130%   0.003%   0.005%   1.801%   0.000%   7.987%
   19    5.1  1.5 -0.5   0.000%  27.383%   4.694%   0.002%   0.058%   0.000%   0.001%   0.318%   0.000%   0.000%
   20    6.1  1.5 -0.5   0.000%   0.046%   8.725%   0.003%   8.106%   0.001%   0.036%  13.453%   0.000%   1.019%
   21    7.1  1.5 -0.5  14.160%   0.000%   0.002%   6.468%   0.000%   0.469%  11.955%   0.032%   2.835%   0.000%
   22    1.1  1.5 -1.5   1.756%   0.000%   0.007%  17.834%   0.002%  14.478%   2.365%   0.006%   0.894%   0.000%
   23    2.1  1.5 -1.5   0.000%   9.030%   1.496%   0.001%   3.698%   0.001%   0.018%   6.680%   0.000%   3.093%
   24    3.1  1.5 -1.5   0.000%   0.548%  13.369%   0.005%  14.319%   0.002%   0.017%   6.326%   0.000%   1.127%
   25    4.1  1.5 -1.5   1.815%   0.000%   0.000%   0.116%   0.001%   5.821%   0.425%   0.001%  30.229%   0.000%
   26    5.1  1.5 -1.5  15.079%   0.000%   0.005%  12.095%   0.001%   8.282%   0.535%   0.001%   2.973%   0.000%
   27    6.1  1.5 -1.5   0.018%   0.000%   0.000%   0.030%   0.001%   6.916%   6.573%   0.017%  26.484%   0.000%
   28    7.1  1.5 -1.5   0.000%   4.498%  16.553%   0.006%  12.673%   0.002%   0.000%   0.063%   0.000%   1.714%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   3.889%   0.011%   5.136%   0.228%   3.390%   0.056%  13.229%   0.029%  14.281%   0.023%
    2    2.1  1.5  1.5   0.132%  46.740%   0.014%   0.315%   0.001%   0.084%   0.000%   0.004%   0.017%  10.355%
    3    3.1  1.5  1.5   0.000%   0.014%   0.273%   6.158%   0.228%  13.733%   0.018%   8.148%   0.002%   1.492%
    4    4.1  1.5  1.5   2.721%   0.008%  11.796%   0.523%   2.356%   0.039%   6.803%   0.015%   4.462%   0.007%
    5    5.1  1.5  1.5   1.978%   0.006%  13.447%   0.597%   2.034%   0.034%   5.252%   0.011%   1.809%   0.003%
    6    6.1  1.5  1.5   1.285%   0.004%   5.395%   0.239%   2.475%   0.041%  12.187%   0.026%   0.011%   0.000%
    7    7.1  1.5  1.5   0.000%   0.140%   0.059%   1.338%   0.196%  11.830%   0.033%  15.304%   0.001%   0.649%
    8    1.1  1.5  0.5   0.000%   0.040%   0.082%   1.852%   0.352%  21.228%   0.016%   7.607%   0.001%   0.713%
    9    2.1  1.5  0.5   0.668%   0.002%   0.152%   0.007%   0.085%   0.001%   8.920%   0.019%   0.267%   0.000%
   10    3.1  1.5  0.5  18.740%   0.053%   7.487%   0.332%   1.268%   0.021%   0.669%   0.001%   4.039%   0.006%
   11    4.1  1.5  0.5   0.002%   0.585%   0.635%  14.317%   0.068%   4.088%   0.028%  13.157%   0.001%   0.523%
   12    5.1  1.5  0.5   0.001%   0.213%   1.100%  24.791%   0.086%   5.166%   0.005%   2.424%   0.035%  22.104%
   13    6.1  1.5  0.5   0.000%   0.013%   0.006%   0.134%   0.479%  28.889%   0.013%   5.958%   0.031%  19.645%
   14    7.1  1.5  0.5  22.693%   0.064%   3.435%   0.152%   1.744%   0.029%   0.125%   0.000%  19.490%   0.031%
   15    1.1  1.5 -0.5   0.040%   0.000%   1.852%   0.082%  21.228%   0.352%   7.607%   0.016%   0.713%   0.001%
   16    2.1  1.5 -0.5   0.002%   0.668%   0.007%   0.152%   0.001%   0.085%   0.019%   8.920%   0.000%   0.267%
   17    3.1  1.5 -0.5   0.053%  18.740%   0.332%   7.487%   0.021%   1.268%   0.001%   0.669%   0.006%   4.039%
   18    4.1  1.5 -0.5   0.585%   0.002%  14.317%   0.635%   4.088%   0.068%  13.157%   0.028%   0.523%   0.001%
   19    5.1  1.5 -0.5   0.213%   0.001%  24.791%   1.100%   5.166%   0.086%   2.424%   0.005%  22.104%   0.035%
   20    6.1  1.5 -0.5   0.013%   0.000%   0.134%   0.006%  28.889%   0.479%   5.958%   0.013%  19.645%   0.031%
   21    7.1  1.5 -0.5   0.064%  22.693%   0.152%   3.435%   0.029%   1.744%   0.000%   0.125%   0.031%  19.490%
   22    1.1  1.5 -1.5   0.011%   3.889%   0.228%   5.136%   0.056%   3.390%   0.029%  13.229%   0.023%  14.281%
   23    2.1  1.5 -1.5  46.740%   0.132%   0.315%   0.014%   0.084%   0.001%   0.004%   0.000%  10.355%   0.017%
   24    3.1  1.5 -1.5   0.014%   0.000%   6.158%   0.273%  13.733%   0.228%   8.148%   0.018%   1.492%   0.002%
   25    4.1  1.5 -1.5   0.008%   2.721%   0.523%  11.796%   0.039%   2.356%   0.015%   6.803%   0.007%   4.462%
   26    5.1  1.5 -1.5   0.006%   1.978%   0.597%  13.447%   0.034%   2.034%   0.011%   5.252%   0.003%   1.809%
   27    6.1  1.5 -1.5   0.004%   1.285%   0.239%   5.395%   0.041%   2.475%   0.026%  12.187%   0.000%   0.011%
   28    7.1  1.5 -1.5   0.140%   0.000%   1.338%   0.059%  11.830%   0.196%  15.304%   0.033%   0.649%   0.001%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28

    1    1.1  1.5  1.5   5.218%   0.031%   1.288%   0.001%   8.506%   0.000%   0.000%   7.343%
    2    2.1  1.5  1.5   0.045%   7.655%   0.008%   7.560%   0.000%   1.107%   1.948%   0.000%
    3    3.1  1.5  1.5   0.050%   8.556%   0.012%  11.316%   0.000%  12.535%   1.750%   0.000%
    4    4.1  1.5  1.5   2.775%   0.016%  13.185%   0.014%   0.087%   0.000%   0.000%  16.785%
    5    5.1  1.5  1.5  18.336%   0.107%   0.000%   0.000%   8.428%   0.000%   0.000%   8.986%
    6    6.1  1.5  1.5   0.258%   0.002%  19.581%   0.020%   0.009%   0.000%   0.000%  18.429%
    7    7.1  1.5  1.5   0.039%   6.675%   0.015%  14.125%   0.000%  11.778%   2.310%   0.000%
    8    1.1  1.5  0.5   0.059%  10.098%   0.011%  11.132%   0.000%   5.150%   7.573%   0.000%
    9    2.1  1.5  0.5   7.918%   0.046%   8.976%   0.009%  23.842%   0.000%   0.000%   1.674%
   10    3.1  1.5  0.5  12.022%   0.070%   5.286%   0.005%   1.750%   0.000%   0.000%  12.535%
   11    4.1  1.5  0.5   0.094%  16.007%   0.006%   5.767%   0.000%  11.380%   0.319%   0.000%
   12    5.1  1.5  0.5   0.001%   0.245%   0.000%   0.215%   0.000%  10.853%   0.305%   0.000%
   13    6.1  1.5  0.5   0.011%   1.920%   0.001%   1.377%   0.000%   4.102%   6.032%   0.000%
   14    7.1  1.5  0.5   1.736%   0.010%   0.087%   0.000%   0.472%   0.000%   0.000%  14.012%
   15    1.1  1.5 -0.5  10.098%   0.059%  11.132%   0.011%   5.150%   0.000%   0.000%   7.573%
   16    2.1  1.5 -0.5   0.046%   7.918%   0.009%   8.976%   0.000%  23.842%   1.674%   0.000%
   17    3.1  1.5 -0.5   0.070%  12.022%   0.005%   5.286%   0.000%   1.750%  12.535%   0.000%
   18    4.1  1.5 -0.5  16.007%   0.094%   5.767%   0.006%  11.380%   0.000%   0.000%   0.319%
   19    5.1  1.5 -0.5   0.245%   0.001%   0.215%   0.000%  10.853%   0.000%   0.000%   0.305%
   20    6.1  1.5 -0.5   1.920%   0.011%   1.377%   0.001%   4.102%   0.000%   0.000%   6.032%
   21    7.1  1.5 -0.5   0.010%   1.736%   0.000%   0.087%   0.000%   0.472%  14.012%   0.000%
   22    1.1  1.5 -1.5   0.031%   5.218%   0.001%   1.288%   0.000%   8.506%   7.343%   0.000%
   23    2.1  1.5 -1.5   7.655%   0.045%   7.560%   0.008%   1.107%   0.000%   0.000%   1.948%
   24    3.1  1.5 -1.5   8.556%   0.050%  11.316%   0.012%  12.535%   0.000%   0.000%   1.750%
   25    4.1  1.5 -1.5   0.016%   2.775%   0.014%  13.185%   0.000%   0.087%  16.785%   0.000%
   26    5.1  1.5 -1.5   0.107%  18.336%   0.000%   0.000%   0.000%   8.428%   8.986%   0.000%
   27    6.1  1.5 -1.5   0.002%   0.258%   0.020%  19.581%   0.000%   0.009%  18.429%   0.000%
   28    7.1  1.5 -1.5   6.675%   0.039%  14.125%   0.015%  11.778%   0.000%   0.000%   2.310%


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
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       65.82       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       118.19     80.53     36.39      0.61      0.46
 REAL TIME  *       130.89 SEC
 DISK USED  *        97.93 MB (local),        1.00 GB (total)
 SF USED    *       658.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -110.007135496804

              CI           MULTI
   -109.96465477   -109.38120010
 **********************************************************************************************************************************
 Molpro calculation terminated
