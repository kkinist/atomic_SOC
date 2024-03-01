
 Working directory              : /wrk/irikura/molpro.19UeiTqL7d/
 Global scratch directory       : /wrk/irikura/molpro.19UeiTqL7d/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.19UeiTqL7d/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! a 4F term alone
 memory,1500,M;
 
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                                                                                                           
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 10:30:45  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


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

     14.156 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.68      0.50
 REAL TIME  *         1.47 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.944D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.773D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.241D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 6 4 2 5 3 2   6 4 5 3 1 711 91514  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 9 7 4 5 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    845
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.36777683    -109.38148131   -0.01370448    0.19785476 0.00010754 0.00000000  0.13E+00      0.09
   2    2    2    0   -109.38118631    -109.38120009   -0.00001378    0.00589682 0.00001088 0.00000000  0.42E-02      0.16
   3   20   20    0   -109.38120010    -109.38120010   -0.00000000    0.00000678 0.00000015 0.00000000  0.50E-05      0.46

 CONVERGENCE REACHED!  Final gradient:    0.00000021 ( 0.21E-06)
                       Final energy:   -109.38120010
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.381200101634
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287194
 One electron energy                          -193.56189448
 Two electron energy                            84.18069438
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.381200101357
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287195
 One electron energy                          -193.56189449
 Two electron energy                            84.18069439
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.381200100884
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287195
 One electron energy                          -193.56189450
 Two electron energy                            84.18069440
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.381200100347
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287197
 One electron energy                          -193.56189452
 Two electron energy                            84.18069442
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.381200098719
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287214
 One electron energy                          -193.56189476
 Two electron energy                            84.18069466
 Virial ratio                                    3.66894911
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.381200098536
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287205
 One electron energy                          -193.56189464
 Two electron energy                            84.18069454
 Virial ratio                                    3.66894912
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.381200098394
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98287207
 One electron energy                          -193.56189466
 Two electron energy                            84.18069456
 Virial ratio                                    3.66894911
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     4.458413921694
 !MCSCF expec                      <2.1|LXLX|2.1>     1.343919719005
 !MCSCF expec                      <3.1|LXLX|3.1>     8.987872911811
 !MCSCF expec                      <4.1|LXLX|4.1>     5.541168237792
 !MCSCF expec                      <5.1|LXLX|5.1>     3.999999996928
 !MCSCF expec                      <6.1|LXLX|6.1>     1.012133364625
 !MCSCF expec                      <7.1|LXLX|7.1>     2.656031838481
 
 !MCSCF expec                      <1.1|LYLY|1.1>     7.392547261048
 !MCSCF expec                      <2.1|LYLY|2.1>     8.986707148104
 !MCSCF expec                      <3.1|LYLY|3.1>     1.652193675214
 !MCSCF expec                      <4.1|LYLY|4.1>     2.607790687330
 !MCSCF expec                      <5.1|LYLY|5.1>     3.999999995642
 !MCSCF expec                      <6.1|LYLY|6.1>     2.347768512097
 !MCSCF expec                      <7.1|LYLY|7.1>     1.013285240529
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.149038817258
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.669373132891
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.359933412974
 !MCSCF expec                      <4.1|LZLZ|4.1>     3.851041074878
 !MCSCF expec                      <5.1|LZLZ|5.1>     4.000000007431
 !MCSCF expec                      <6.1|LZLZ|6.1>     8.640098123278
 !MCSCF expec                      <7.1|LZLZ|7.1>     8.330682920991
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 5 4 2 3 1 1 4 5   6 3 2 1 4 5 6 3 2 4   5 3 2 6 11310 91415   8 71211 3 4 5 2 6 1
                                       1310 9 81514 71211 3   4 5 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 1 3 2 1   3 210 4 8 7 9 6 5 1   3 2 4 7 910 8 6 5 1   3 2 7 9 4 8 610 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.71980     1  1  s    1.00198
    2.1     1.60000    -0.30293     1  1  d1-  1.00364
    3.1     1.60000    -0.30293     1  1  d2+  1.00364
    4.1     1.60000    -0.30293     1  1  d1+  1.00364
    5.1     1.60000    -0.30292     1  1  d0   1.00364
    6.1     1.60000    -0.30292     1  1  d2-  1.00364
    7.1     1.00000    -0.09893     1  2  s    0.95189
    1.2     2.00000    -2.34976     1  1  px   1.00016
    2.2     2.00000    -2.34976     1  1  py   1.00016
    3.2     2.00000    -2.34976     1  1  pz   1.00016
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 22a2a2a 222      0.00000008     -0.00000156     -0.00000858      0.00000001      1.00000000      0.00001819     -0.00003526
 2222aaa 222     -0.19302769     -0.00004449      0.00000530      0.98119331      0.00000000     -0.00000001     -0.00000001
 2a2a22a 222      0.87760599      0.00016493     -0.00000328      0.17264923     -0.00000007      0.00000006      0.00000009
 2aa222a 222      0.00006052     -0.31976955      0.00000549     -0.00000258      0.00002895      0.00032396      0.83531269
 22aa22a 222     -0.00000184      0.00003783     -0.38527313      0.00000172     -0.00001800      0.80719546     -0.00029604
 222a2aa 222     -0.00013818      0.72884568      0.00008026      0.00000587      0.00001941      0.00019429      0.51844372
 2a222aa 222      0.00000314     -0.00005258      0.68524538     -0.00000308     -0.00000458      0.57483796     -0.00024758
 222aa2a 222      0.00000287     -0.00005220      0.61806422     -0.00000277      0.00000775     -0.13415167      0.00002798
 2a22a2a 222     -0.00011472      0.60541834      0.00004317      0.00000488     -0.00000551     -0.00007487     -0.18294442
 22a22aa 222      0.43880293      0.00008247     -0.00000164      0.08632459     -0.00000004      0.00000003      0.00000004
 
 Energy:       -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010   -109.38120010
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.52       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.15      0.47      0.50
 REAL TIME  *         2.05 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
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

 Number of blocks in overlap matrix:   182   Smallest eigenvalue:  0.22D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    403085 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    413743 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71644744  0.24D-01  0.12D+00     0.16
    1     2     2     1.00000000     0.00000000  -109.38120010     0.00000000    -0.71653657  0.24D-01  0.12D+00     0.16
    1     3     3     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71655693  0.24D-01  0.12D+00     0.16
    1     4     4     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71680871  0.24D-01  0.12D+00     0.16
    1     5     5     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71706530  0.24D-01  0.12D+00     0.16
    1     6     6     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71666527  0.24D-01  0.12D+00     0.16
    1     7     7     1.00000000     0.00000000  -109.38120010    -0.00000000    -0.71670081  0.24D-01  0.12D+00     0.16
    2     1     1     1.09334223    -0.56819619  -109.94939630    -0.56819619    -0.01589413  0.11D-02  0.21D-02     9.53
    2     2     2     1.09331883    -0.56818525  -109.94938535    -0.56818525    -0.01590810  0.11D-02  0.21D-02     9.53
    2     3     3     1.09332779    -0.56818321  -109.94938331    -0.56818321    -0.01591105  0.11D-02  0.21D-02     9.53
    2     4     4     1.09336210    -0.56816566  -109.94936576    -0.56816566    -0.01593012  0.11D-02  0.21D-02     9.53
    2     5     5     1.09336457    -0.56816379  -109.94936388    -0.56816379    -0.01593257  0.11D-02  0.21D-02     9.53
    2     6     6     1.09333902    -0.56810113  -109.94930123    -0.56810113    -0.01600733  0.11D-02  0.21D-02     9.53
    2     7     7     1.09338640    -0.56806575  -109.94926584    -0.56806575    -0.01605047  0.11D-02  0.21D-02     9.53
    3     1     1     1.08811880    -0.58325003  -109.96445013    -0.01505383    -0.00018993  0.14D-04  0.25D-04    18.50
    3     2     2     1.08811809    -0.58324996  -109.96445006    -0.01506472    -0.00018996  0.14D-04  0.25D-04    18.50
    3     3     3     1.08811288    -0.58324983  -109.96444993    -0.01506661    -0.00018968  0.14D-04  0.25D-04    18.50
    3     4     4     1.08811974    -0.58324907  -109.96444917    -0.01508341    -0.00019149  0.14D-04  0.25D-04    18.50
    3     5     5     1.08810354    -0.58324906  -109.96444916    -0.01508527    -0.00019032  0.14D-04  0.25D-04    18.50
    3     6     6     1.08810087    -0.58324903  -109.96444912    -0.01514789    -0.00019029  0.14D-04  0.25D-04    18.50
    3     7     7     1.08813137    -0.58324890  -109.96444900    -0.01518316    -0.00019205  0.14D-04  0.25D-04    18.50
    4     1     1     1.08864438    -0.58344526  -109.96464536    -0.00019524    -0.00000849  0.24D-05  0.91D-06    27.48
    4     2     2     1.08864165    -0.58344521  -109.96464531    -0.00019525    -0.00000852  0.24D-05  0.91D-06    27.48
    4     3     3     1.08864202    -0.58344517  -109.96464527    -0.00019534    -0.00000852  0.25D-05  0.90D-06    27.48
    4     4     4     1.08864202    -0.58344517  -109.96464527    -0.00019609    -0.00000852  0.25D-05  0.90D-06    27.48
    4     5     5     1.08863957    -0.58344511  -109.96464521    -0.00019605    -0.00000854  0.25D-05  0.90D-06    27.48
    4     6     6     1.08863619    -0.58344504  -109.96464514    -0.00019601    -0.00000858  0.25D-05  0.90D-06    27.48
    4     7     7     1.08863567    -0.58344503  -109.96464513    -0.00019613    -0.00000859  0.25D-05  0.91D-06    27.48
    5     1     1     1.08882611    -0.58345418  -109.96465428    -0.00000892    -0.00000046  0.81D-07  0.68D-07    36.60
    5     2     2     1.08882575    -0.58345418  -109.96465428    -0.00000897    -0.00000046  0.81D-07  0.69D-07    36.60
    5     3     3     1.08882639    -0.58345417  -109.96465427    -0.00000901    -0.00000047  0.84D-07  0.67D-07    36.60
    5     4     4     1.08882630    -0.58345417  -109.96465427    -0.00000901    -0.00000047  0.84D-07  0.67D-07    36.60
    5     5     5     1.08882636    -0.58345417  -109.96465427    -0.00000906    -0.00000047  0.86D-07  0.67D-07    36.60
    5     6     6     1.08882569    -0.58345416  -109.96465426    -0.00000913    -0.00000048  0.86D-07  0.68D-07    36.60
    5     7     7     1.08882566    -0.58345416  -109.96465426    -0.00000913    -0.00000048  0.86D-07  0.68D-07    36.60
    6     1     1     1.08886992    -0.58345467  -109.96465478    -0.00000049    -0.00000003  0.56D-08  0.40D-08    45.83
    6     2     2     1.08886984    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.57D-08  0.40D-08    45.83
    6     3     3     1.08886982    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.57D-08  0.40D-08    45.83
    6     4     4     1.08886985    -0.58345467  -109.96465478    -0.00000050    -0.00000003  0.57D-08  0.41D-08    45.83
    6     5     5     1.08886991    -0.58345468  -109.96465477    -0.00000051    -0.00000003  0.56D-08  0.41D-08    45.83
    6     6     6     1.08886991    -0.58345468  -109.96465477    -0.00000051    -0.00000003  0.56D-08  0.40D-08    45.83
    6     7     7     1.08886987    -0.58345468  -109.96465477    -0.00000051    -0.00000003  0.56D-08  0.40D-08    45.83


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.5%
 P   0.3%  10.3%  57.9%

 Initialization:   0.2%
 Other:           30.7%

 Total CPU:       45.8 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2/222           0.0000000  -0.0000000   0.0000000   0.0000000   0.9583230   0.0000000   0.0000000
 2222///222          -0.1342122  -0.0000000   0.0000000   0.9488784   0.0000000   0.0000000   0.0000000
 2//222/222          -0.0000000  -0.1171206   0.0000000   0.0000000   0.0000000   0.0000000   0.8491119
 2/2/22/222           0.8487059  -0.0000000   0.0000000   0.1200430   0.0000000   0.0000000   0.0000000
 22//22/222          -0.0000000   0.0000000  -0.2820539  -0.0000000  -0.0000000   0.8094143  -0.0000000
 222/2//222           0.0000000   0.7928676  -0.0000000  -0.0000000   0.0000000   0.0000000   0.3256783
 2/222//222          -0.0000000  -0.0000000   0.7131981  -0.0000000  -0.0000000   0.4754518   0.0000000
 222//2/222          -0.0000000   0.0000000   0.5746105  -0.0000000  -0.0000000  -0.1928138  -0.0000000
 2/22/2/222          -0.0000000   0.5253826   0.0000000   0.0000000   0.0000000   0.0000000  -0.3022015
 22/22//222           0.4243448   0.0000000  -0.0000000   0.0600216  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956946    0.000000   -0.000000    0.051357    0.000000   -0.000000    0.000000
 2           0.000000    0.933403    0.000000   -0.000000   -0.000000    0.000000    0.217122
 3          -0.000000   -0.000000    0.952532    0.000000    0.000000    0.105195   -0.000000
 4          -0.051357   -0.000000   -0.000000    0.956946    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.958323   -0.000000    0.000000
 6          -0.000000    0.000000   -0.105195    0.000000    0.000000    0.952532    0.000000
 7          -0.000000   -0.217122   -0.000000    0.000000    0.000000   -0.000000    0.933403

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958323   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.958323    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.958323    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.958323    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.958323    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.958323   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958323


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95694593 (fixed)   0.95832319 (relaxed)   0.95832304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820827
 Singles      0.01381827   -0.07363680   -0.07503545
 Pairs        0.07505168    0.00000000   -0.04021096
 Total        1.08887027   -0.07363680   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342833
 One electron energy                 -193.17314616
 Two electron energy                   83.20849138
 Virial quotient                       -2.65336772
 Correlation energy                    -0.58345467
 !MRCI STATE 1.1 Energy              -109.964654775887

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650655 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650635 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650655 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205945 (Pople, fixed reference)
 Cluster corrected energies          -110.01205925 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205945 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.93340303 (fixed)   0.95832323 (relaxed)   0.95832308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.36212912
 Singles      0.01381821   -0.07363676   -0.07503541
 Pairs        0.07505165   -0.11550650   -0.14629014
 Total        1.08887019   -0.18914326   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342950
 One electron energy                 -193.17314967
 Two electron energy                   83.20849490
 Virial quotient                       -2.65336764
 Correlation energy                    -0.58345467
 !MRCI STATE 2.1 Energy              -109.964654775429

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650650 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650630 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650650 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205940 (Pople, fixed reference)
 Cluster corrected energies          -110.01205920 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205940 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95253199 (fixed)   0.95832324 (relaxed)   0.95832309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820837
 Singles      0.01381818   -0.07363673   -0.07503540
 Pairs        0.07505167    0.00000000   -0.04021090
 Total        1.08887017   -0.07363673   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342939
 One electron energy                 -193.17314879
 Two electron energy                   83.20849402
 Virial quotient                       -2.65336765
 Correlation energy                    -0.58345467
 !MRCI STATE 3.1 Energy              -109.964654775263

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650649 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650628 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650649 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205939 (Pople, fixed reference)
 Cluster corrected energies          -110.01205919 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205939 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95694596 (fixed)   0.95832323 (relaxed)   0.95832307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46820838
 Singles      0.01381845   -0.07363671   -0.07503546
 Pairs        0.07505143    0.00000000   -0.04021084
 Total        1.08887020   -0.07363671   -0.58345467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44343602
 One electron energy                 -193.17316859
 Two electron energy                   83.20851381
 Virial quotient                       -2.65336722
 Correlation energy                    -0.58345467
 !MRCI STATE 4.1 Energy              -109.964654775125

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650651 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650631 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650651 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205941 (Pople, fixed reference)
 Cluster corrected energies          -110.01205921 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205941 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95832305 (fixed)   0.95832320 (relaxed)   0.95832305 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46820833
 Singles      0.01381845   -0.07363674   -0.07503547
 Pairs        0.07505148   -0.00000000   -0.04021087
 Total        1.08887026   -0.07363674   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44343412
 One electron energy                 -193.17316338
 Two electron energy                   83.20850861
 Virial quotient                       -2.65336735
 Correlation energy                    -0.58345468
 !MRCI STATE 5.1 Energy              -109.964654774890

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650654 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650634 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650654 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205944 (Pople, fixed reference)
 Cluster corrected energies          -110.01205924 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205944 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95253194 (fixed)   0.95832320 (relaxed)   0.95832304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46820822
 Singles      0.01381834   -0.07363685   -0.07503547
 Pairs        0.07505160   -0.00000000   -0.04021099
 Total        1.08887027   -0.07363685   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342960
 One electron energy                 -193.17315173
 Two electron energy                   83.20849695
 Virial quotient                       -2.65336763
 Correlation energy                    -0.58345468
 !MRCI STATE 6.1 Energy              -109.964654774883

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650655 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650634 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650655 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205944 (Pople, fixed reference)
 Cluster corrected energies          -110.01205924 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205944 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.93340301 (fixed)   0.95832322 (relaxed)   0.95832306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.01217538
 Singles      0.01381831   -0.07363683   -0.07503545
 Pairs        0.07505159   -0.49656063   -0.49624384
 Total        1.08887022   -0.57019745   -0.58345468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38120010
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44342896
 One electron energy                 -193.17315023
 Two electron energy                   83.20849546
 Virial quotient                       -2.65336768
 Correlation energy                    -0.58345468
 !MRCI STATE 7.1 Energy              -109.964654774759

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01650652 (Davidson, fixed reference)
 Cluster corrected energies          -110.01650632 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01650652 (Davidson, rotated reference)

 Cluster corrected energies          -110.01205942 (Pople, fixed reference)
 Cluster corrected energies          -110.01205922 (Pople, relaxed reference)
 Cluster corrected energies          -110.01205942 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       65.85       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        50.06     48.91      0.47      0.50
 REAL TIME  *        57.00 SEC
 DISK USED  *        98.02 MB (local),        1.20 GB (total)
 SF USED    *       658.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01650655  AU                              
 SETTING HLSDIAG(2)     =      -110.01650650  AU                              
 SETTING HLSDIAG(3)     =      -110.01650649  AU                              
 SETTING HLSDIAG(4)     =      -110.01650651  AU                              
 SETTING HLSDIAG(5)     =      -110.01650654  AU                              
 SETTING HLSDIAG(6)     =      -110.01650655  AU                              
 SETTING HLSDIAG(7)     =      -110.01650652  AU                              


         HLSDIAG
    -110.0165066
    -110.0165065
    -110.0165065
    -110.0165065
    -110.0165065
    -110.0165065
    -110.0165065
                                                  

 CI/cc-pWCVTZ-PP energy=   -109.964654774759

              CI           MULTI
   -109.96465477   -109.38120010
 **********************************************************************************************************************************
 Molpro calculation terminated
