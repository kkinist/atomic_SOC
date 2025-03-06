
 Working directory              : /wrk/irikura/molpro.FA3SCGYbSt/
 Global scratch directory       : /wrk/irikura/molpro.FA3SCGYbSt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FA3SCGYbSt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
                                                                                 ! include 8p in active space
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis={
 ecp,bi,ECP60MDF;
 spdfg,bi,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=10
 ND=8
 
 {multi
     closed,7,3
     occ,7,12
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
 if NQ.LT.2 then
 hlsdiag(1) = energd
 else
 hlsdiag = energd4
 endif
 
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 24-Feb-25          TIME: 09:32:18  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =        10.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry BI     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry BI     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi D diffuse               selected for group 1    nprim= 1    centre=  0.016    ratio= 3.000    dratio= 1.000
 Library entry BI     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi F diffuse               selected for group 1    nprim= 1    centre=  0.040    ratio= 3.000    dratio= 1.000
 Library entry BI     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  BI     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          165
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.314E-04 0.158E-02 0.704E-02 0.870E-02 0.870E-02 0.870E-02 0.870E-02 0.870E-02
         2 0.561E-02 0.561E-02 0.561E-02 0.957E-02 0.957E-02 0.957E-02 0.609E-01 0.609E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     29.360 MB (compressed) written to integral file ( 17.3%)

     Node minimum: 0.786 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     633990.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     633990      RECORD LENGTH: 524288

 Memory used in sort:       1.19 MW

 SORT1 READ    21109381. AND WROTE      124163. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    128 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      632995.  Node maximum:      639690. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.05      0.77
 REAL TIME  *         1.91 SEC
 DISK USED  *        29.28 MB (local),      546.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        9 (    0    9)
 Number of external orbitals:      93 (   46   47)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:            10
 Number of CSFs:              84   (84 determinants, 84 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             240   (324 determinants, 324 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.122D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.341D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.559D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.265D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 4 6 1 1 2 4   6 3 5 1 2 3 5 4 6 1   6 4 3 5 2 1 4 6 5 3   2 8141512 711 91310
                                        2 4 6 5 3 1 2 4 6 5   3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.470D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.116D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.465D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.356D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.397D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.111D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.189D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.404D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 2 1 3 2   1 3 4 510 8 7 9 6 2   1 3 7 9 810 5 4 6 7   9 5 4 610 8 3 2 1 7
                                        9 4 5 6 810 3 1 2 4   5 6 7 9 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  913  ( 27 closed/active, 463 closed/virtual, 0 active/active, 423 active/virtual )
 Total number of variables:    4345
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -213.43215948    -213.44529235   -0.01313287    0.10275026 0.00040378 0.00000000  0.14E+01      1.19
   2    8   14    0   -213.44519057    -213.44519456   -0.00000399    0.00226903 0.00000246 0.00000000  0.39E-01      2.33
   3   16   32    0   -213.44519456    -213.44519456   -0.00000000    0.00000152 0.00000001 0.00000000  0.67E-04      4.31

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.62E-08)
                       Final energy:   -213.44519456
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.591070517575
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08604448
 One electron energy                          -373.11509809
 Two electron energy                           159.52402757
 Virial ratio                                    4.09166739
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.361764682043
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765602
 Two electron energy                           155.12589134
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.361764682043
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765602
 Two electron energy                           155.12589134
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.361764681997
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765601
 Two electron energy                           155.12589133
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.361764681989
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765601
 Two electron energy                           155.12589133
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.361764681976
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765600
 Two electron energy                           155.12589132
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.359338565969
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.72130931
 One electron energy                          -368.48173598
 Two electron energy                           155.12239742
 Virial ratio                                    4.10470421
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.358033179191
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381129
 One electron energy                          -368.46611739
 Two electron energy                           155.10808421
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.358033179185
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381129
 One electron energy                          -368.46611740
 Two electron energy                           155.10808422
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.358033179179
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381129
 One electron energy                          -368.46611739
 Two electron energy                           155.10808421
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.535710882280
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.535710882279
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.535710882264
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.535710882253
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.535710882250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.500538574064
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790270
 One electron energy                          -372.59311556
 Two electron energy                           159.09257699
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.500538574028
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790270
 One electron energy                          -372.59311556
 Two electron energy                           159.09257699
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.500538574002
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790270
 One electron energy                          -372.59311556
 Two electron energy                           159.09257699
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000293006
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.266991523224
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.999999966799
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000016636
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     2.733007032270
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000017041
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999991930
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     1.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.393085434421
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000013402
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000001023
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999978035
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.606907222779
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999997113
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999798
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000002684
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     3.999999969435
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     3.978032683555
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000006370
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000041
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     0.021967546180
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999983167
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000019026
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.999999977165
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.834655219268
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999961945
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000024211
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000021204
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.165339870480
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000002929
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999937
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999997498
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999737559
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.754975793221
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000026831
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999983322
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.245025421550
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.999999999792
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999989044
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.000000022835
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.772259346311
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000024653
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999974766
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000760
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.227752906741
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999958
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000266
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999818
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     6.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     6.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec    <10.2 Quartet|L**2|10.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 2 6   4 3 5 1 3 5 2 6 4 1   3 5 4 6 2 1 5 3 4 2   613101415 812 9 711
                                        5 3 4 6 2 1 5 3 4 2   6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 1   2 3 5 6 4 810 7 9 3   1 2 9 710 8 4 6 5 9   710 8 4 6 5 3 1 2 7
                                        9 810 4 6 5 1 2 3 9   7 810 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.78233     1  1  s    0.99933
    2.1     2.00000    -1.41036     1  1  d2-  1.00055
    3.1     2.00000    -1.41036     1  1  d2+  1.00055
    4.1     2.00000    -1.41036     1  1  d1+  1.00055
    5.1     2.00000    -1.41036     1  1  d0   1.00055
    6.1     2.00000    -1.41036     1  1  d1-  1.00055
    7.1     2.00000    -0.76223     1  2  s    1.02571
    1.2     2.00000    -4.35853     1  1  px   0.99948
    2.2     2.00000    -4.35853     1  1  py   0.99948
    3.2     2.00000    -4.35853     1  1  pz   0.99948
    4.2     0.82816    -0.18681     1  2  pz   1.02219
    5.2     0.82816    -0.18681     1  2  py   1.02219
    6.2     0.82816    -0.18681     1  2  px   1.02219
    7.2     0.16852     0.02415     1  2  px  -0.35001    1  7  px   0.45660    1  8  px   0.73360
    8.2     0.16852     0.02415     1  2  py  -0.35001    1  7  py   0.45660    1  8  py   0.73360
    9.2     0.16852     0.02415     1  2  pz  -0.35001    1  7  pz   0.45660    1  8  pz   0.73360
   10.2     0.00332     0.29598     1  1  px  -0.34050    1  2  px  -2.04456    1  4  px   2.26294    1  7  px   0.27573
                                    1  8  px  -0.59116
   11.2     0.00332     0.29598     1  1  py  -0.34050    1  2  py  -2.04456    1  4  py   2.26294    1  7  py   0.27573
                                    1  8  py  -0.59116
   12.2     0.00332     0.29598     1  1  pz  -0.34050    1  2  pz  -2.04456    1  4  pz   2.26294    1  7  pz   0.27573
                                    1  8  pz  -0.59116
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000000      0.99778667     -0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00006154
 a0a0a0000     -0.00080623      0.00006219      0.06017496     -0.00000045      0.00000454      0.80977006     -0.56978164
 0aa00a000      0.00080625      0.00075785      0.73136855      0.00000165      0.00000414      0.35277196      0.56978163
 aa00a0000      0.00000000      0.00000187     -0.00000216      0.00006650      0.70321508     -0.00000378      0.00000000
 0aa0a0000      0.00000000      0.00003416      0.00000180     -0.70321508      0.00006650     -0.00000053     -0.00000000
 a0aa00000     -0.00000000     -0.00000187      0.00000216     -0.00006650     -0.70321506      0.00000378     -0.00000000
 a0a00a000      0.00000000     -0.00003416     -0.00000180      0.70321506     -0.00006650      0.00000053      0.00000000
 0aaa00000      0.00000000      0.70321469     -0.00072874      0.00003416     -0.00000188      0.00000015      0.00000000
 aa000a000     -0.00000000      0.70321469     -0.00072874      0.00003416     -0.00000188      0.00000015      0.00000000
 aa0a00000      0.00080623     -0.00069565     -0.67119359     -0.00000210      0.00000040      0.45699811      0.56978163
 a00aa0000      0.00734156     -0.00004644     -0.04481822     -0.00000010     -0.00000025     -0.02161785      0.07067650
 0a0a0a000     -0.00734156     -0.00000381     -0.00368753      0.00000003     -0.00000028     -0.04962266     -0.07067650
 00a0aa000      0.00734156      0.00004263      0.04113070      0.00000013     -0.00000002     -0.02800481      0.07067649
 
 Energy:     -213.59107052   -213.36176468   -213.36176468   -213.36176468   -213.36176468   -213.36176468   -213.35933857

 State:              8               9              10
 aaa000000      0.00000000     -0.00000000     -0.00000000
 a0a0a0000     -0.00000000      0.00000000     -0.00000000
 0aa00a000     -0.00000000      0.00000000     -0.00000000
 aa00a0000      0.00001015     -0.00007358      0.70291308
 0aa0a0000      0.70291307      0.00009120     -0.00001014
 a0aa00000      0.00001015     -0.00007358      0.70291309
 a0a00a000      0.70291309      0.00009120     -0.00001014
 0aaa00000      0.00009120     -0.70291308     -0.00007358
 aa000a000     -0.00009120      0.70291308      0.00007358
 aa0a00000      0.00000000      0.00000000      0.00000000
 a00aa0000      0.00000000     -0.00000000      0.00000000
 0a0a0a000      0.00000000     -0.00000000      0.00000000
 00a0aa000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:     -213.35803318   -213.35803318   -213.35803318
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000000     -0.16504498      0.00000014     -0.00000000      0.00000089      0.79482267      0.00000000     -0.00000000
 aab000000      0.77085912     -0.00000004      0.00000000     -0.00000029     -0.25447819     -0.00000000      0.00000000
 02a000000     -0.00000000      0.00004699     -0.00001298     -0.70302005      0.00000079      0.00003756      0.00000994
 a02000000      0.00000000     -0.00006373     -0.70302005      0.00001298     -0.00000000      0.00000450      0.69899690
 20a000000      0.00000000     -0.00004699      0.00001298      0.70302005     -0.00000079      0.00003756      0.00000994
 a20000000     -0.00000000      0.00006373      0.70302005     -0.00001298      0.00000000      0.00000450      0.69899690
 0a2000000      0.00000000     -0.70302005      0.00006373     -0.00004699      0.00000012      0.69899690     -0.00000450
 2a0000000     -0.00000000      0.70302005     -0.00006373      0.00004699     -0.00000012      0.69899690     -0.00000450
 baa000000     -0.60581413     -0.00000009     -0.00000000     -0.00000060     -0.54034449     -0.00000000      0.00000000
 aa000b000      0.00000000     -0.02858911      0.00000259     -0.00000191      0.00000000     -0.05411391      0.00000035
 a0a00b000     -0.00000000      0.00000191     -0.00000053     -0.02858911      0.00000003     -0.00000291     -0.00000077
 aa00b0000     -0.00000000      0.00000259      0.02858910     -0.00000053      0.00000000      0.00000035      0.05411390
 0aa0b0000      0.00000000     -0.00000191      0.00000053      0.02858910     -0.00000003     -0.00000291     -0.00000077
 a0ab00000      0.00000000     -0.00000259     -0.02858909      0.00000053     -0.00000000      0.00000035      0.05411390
 0aab00000      0.00000000     -0.02858909      0.00000259     -0.00000191      0.00000000      0.05411390     -0.00000035
 
 Energy:     -213.53571088   -213.53571088   -213.53571088   -213.53571088   -213.53571088   -213.50053857   -213.50053857

 State:              8
 aba000000      0.00000000
 aab000000     -0.00000000
 02a000000      0.69899690
 a02000000     -0.00000994
 20a000000      0.69899690
 a20000000     -0.00000994
 0a2000000     -0.00003756
 2a0000000     -0.00003756
 baa000000     -0.00000000
 aa000b000      0.00000291
 a0a00b000     -0.05411391
 aa00b0000     -0.00000077
 0aa0b0000     -0.05411390
 a0ab00000     -0.00000077
 0aab00000     -0.00000291
 
 Energy:     -213.50053857
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.56       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         5.32      4.27      0.77
 REAL TIME  *         6.71 SEC
 DISK USED  *        43.59 MB (local),      775.89 MB (total)
 SF USED    *        37.52 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5910705  -0.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3593386  -0.0
    -213.3580332   2.0
    -213.3580332   2.0
    -213.3580332   2.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5005386   2.0
    -213.5005386   2.0
    -213.5005386   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       84 conf       84 CSFs
 N elec internal:    49854 conf   199164 CSFs
 N-1 el internal:    22386 conf   136416 CSFs
 N-2 el internal:     4989 conf    57729 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:      93 (  46  47 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  19

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59107052
     2      -213.36176468
     3      -213.36176468
     4      -213.36176468
     5      -213.36176468
     6      -213.36176468
     7      -213.35933857
     8      -213.35803318
     9      -213.35803318
    10      -213.35803318

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1842D-06

 Number of blocks in overlap matrix:  1061   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:    1729
 Number of N-1 electron functions:  136416

 Number of internal configurations:               109200
 Number of singly external configurations:       6350484
 Number of doubly external configurations:       3742732
 Total number of contracted configurations:     10202416
 Total number of uncontracted configurations:  130634748

 Diagonal Coupling coefficients finished.               Storage:  54826932 words, CPU-Time:     77.95 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1954880 words, CPU-time:      0.27 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59107052    -0.00000000    -0.80892643  0.59D-01  0.10D+00   130.27
    1     2     2     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77749684  0.50D-01  0.93D-01   130.27
    1     3     3     1.00000000     0.00000000  -213.36176468     0.00000000    -0.77795526  0.50D-01  0.93D-01   130.27
    1     4     4     1.00000000     0.00000000  -213.36176468     0.00000000    -0.77806633  0.50D-01  0.93D-01   130.27
    1     5     5     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77787579  0.51D-01  0.93D-01   130.27
    1     6     6     1.00000000     0.00000000  -213.36176468     0.00000000    -0.77765690  0.50D-01  0.93D-01   130.27
    1     7     7     1.00000000     0.00000000  -213.35933857     0.00000000    -0.77790507  0.51D-01  0.92D-01   130.27
    1     8     8     1.00000000     0.00000000  -213.35803318     0.00000000    -0.77828828  0.50D-01  0.93D-01   130.27
    1     9     9     1.00000000     0.00000000  -213.35803318    -0.00000000    -0.77819943  0.50D-01  0.93D-01   130.27
    1    10    10     1.00000000     0.00000000  -213.35803318    -0.00000000    -0.77812484  0.50D-01  0.93D-01   130.27
    2     1     1     1.09358348    -0.62151345  -214.21258397    -0.62151345    -0.02019111  0.32D-02  0.16D-02  1387.61
    2     2     2     1.08686979    -0.61595870  -213.97772338    -0.61595870    -0.01664643  0.24D-02  0.11D-02  1387.61
    2     3     3     1.08689266    -0.61593932  -213.97770400    -0.61593932    -0.01665931  0.24D-02  0.11D-02  1387.61
    2     4     4     1.08691928    -0.61589639  -213.97766107    -0.61589639    -0.01672501  0.24D-02  0.11D-02  1387.61
    2     5     5     1.08697388    -0.61585610  -213.97762079    -0.61585610    -0.01676353  0.24D-02  0.11D-02  1387.61
    2     6     6     1.08697884    -0.61585143  -213.97761612    -0.61585143    -0.01676773  0.24D-02  0.11D-02  1387.61
    2     7     7     1.08681830    -0.61585411  -213.97519268    -0.61585411    -0.01675244  0.24D-02  0.11D-02  1387.61
    2     8     8     1.08677455    -0.61602384  -213.97405702    -0.61602384    -0.01671947  0.23D-02  0.12D-02  1387.61
    2     9     9     1.08677049    -0.61600649  -213.97403967    -0.61600649    -0.01673704  0.23D-02  0.12D-02  1387.61
    2    10    10     1.08680493    -0.61598971  -213.97402289    -0.61598971    -0.01675077  0.24D-02  0.11D-02  1387.61
    3     1     1     1.08389429    -0.64020784  -214.23127835    -0.01869438    -0.00028372  0.37D-04  0.28D-04  2639.52
    3     2     2     1.08016718    -0.63160202  -213.99336670    -0.01564332    -0.00022493  0.30D-04  0.19D-04  2639.52
    3     3     3     1.08016440    -0.63160150  -213.99336618    -0.01566218    -0.00022553  0.30D-04  0.19D-04  2639.52
    3     4     4     1.08016103    -0.63160007  -213.99336475    -0.01570368    -0.00022666  0.31D-04  0.19D-04  2639.52
    3     5     5     1.08016140    -0.63159871  -213.99336339    -0.01574261    -0.00022818  0.31D-04  0.19D-04  2639.52
    3     6     6     1.08016138    -0.63159870  -213.99336338    -0.01574726    -0.00022823  0.31D-04  0.19D-04  2639.52
    3     7     7     1.08008228    -0.63157761  -213.99091617    -0.01572349    -0.00022686  0.28D-04  0.19D-04  2639.52
    3     8     8     1.08015485    -0.63170436  -213.98973754    -0.01568051    -0.00022093  0.27D-04  0.19D-04  2639.52
    3     9     9     1.08014798    -0.63170326  -213.98973644    -0.01569677    -0.00022192  0.27D-04  0.19D-04  2639.52
    3    10    10     1.08015184    -0.63170170  -213.98973488    -0.01571199    -0.00022353  0.27D-04  0.19D-04  2639.52
    4     1     1     1.08385247    -0.64049861  -214.23156913    -0.00029078    -0.00000772  0.15D-05  0.78D-06  3884.58
    4     2     2     1.08028374    -0.63183636  -213.99360105    -0.00023435    -0.00000672  0.15D-05  0.49D-06  3884.58
    4     3     3     1.08028311    -0.63183629  -213.99360097    -0.00023479    -0.00000673  0.15D-05  0.48D-06  3884.58
    4     4     4     1.08028197    -0.63183625  -213.99360093    -0.00023618    -0.00000684  0.15D-05  0.50D-06  3884.58
    4     5     5     1.08028186    -0.63183621  -213.99360089    -0.00023750    -0.00000682  0.15D-05  0.50D-06  3884.58
    4     6     6     1.08028137    -0.63183618  -213.99360087    -0.00023749    -0.00000684  0.15D-05  0.50D-06  3884.58
    4     7     7     1.08023260    -0.63181319  -213.99115176    -0.00023559    -0.00000690  0.15D-05  0.49D-06  3884.58
    4     8     8     1.08029994    -0.63193357  -213.98996675    -0.00022921    -0.00000630  0.13D-05  0.45D-06  3884.58
    4     9     9     1.08029890    -0.63193352  -213.98996670    -0.00023026    -0.00000634  0.13D-05  0.46D-06  3884.58
    4    10    10     1.08029833    -0.63193347  -213.98996665    -0.00023177    -0.00000639  0.13D-05  0.47D-06  3884.58
    5     1     1     1.08391186    -0.64050681  -214.23157733    -0.00000819    -0.00000023  0.27D-07  0.27D-07  5122.06
    5     2     2     1.08034620    -0.63184359  -213.99360827    -0.00000723    -0.00000023  0.39D-07  0.19D-07  5122.06
    5     3     3     1.08034593    -0.63184359  -213.99360827    -0.00000730    -0.00000023  0.40D-07  0.19D-07  5122.06
    5     4     4     1.08034608    -0.63184352  -213.99360820    -0.00000727    -0.00000023  0.39D-07  0.19D-07  5122.06
    5     5     5     1.08034588    -0.63184352  -213.99360820    -0.00000731    -0.00000023  0.39D-07  0.19D-07  5122.06
    5     6     6     1.08034573    -0.63184352  -213.99360820    -0.00000733    -0.00000023  0.40D-07  0.19D-07  5122.06
    5     7     7     1.08029636    -0.63182055  -213.99115912    -0.00000736    -0.00000024  0.41D-07  0.18D-07  5122.06
    5     8     8     1.08036939    -0.63194032  -213.98997350    -0.00000675    -0.00000021  0.34D-07  0.17D-07  5122.06
    5     9     9     1.08036933    -0.63194032  -213.98997350    -0.00000679    -0.00000021  0.34D-07  0.17D-07  5122.06
    5    10    10     1.08036928    -0.63194032  -213.98997350    -0.00000685    -0.00000021  0.34D-07  0.17D-07  5122.06
    6     1     1     1.08390798    -0.64050705  -214.23157757    -0.00000024    -0.00000001  0.82D-09  0.98D-09  6360.46
    6     2     2     1.08034659    -0.63184383  -213.99360851    -0.00000024    -0.00000001  0.11D-08  0.82D-09  6360.46
    6     3     3     1.08034655    -0.63184383  -213.99360851    -0.00000024    -0.00000001  0.11D-08  0.83D-09  6360.46
    6     4     4     1.08034647    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.83D-09  6360.46
    6     5     5     1.08034645    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.84D-09  6360.46
    6     6     6     1.08034643    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.84D-09  6360.46
    6     7     7     1.08029760    -0.63182080  -213.99115936    -0.00000025    -0.00000001  0.12D-08  0.74D-09  6360.46
    6     8     8     1.08037187    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.67D-09  6360.46
    6     9     9     1.08037187    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.68D-09  6360.46
    6    10    10     1.08037187    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.68D-09  6360.46


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.6%
 S   0.9%  72.8%
 P   0.3%  16.1%   4.6%

 Initialization:   1.2%
 Other:            1.5%

 Total CPU:     6360.5 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000000           0.9581954  -0.0000001  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0140702  -0.0000000
                               0.0000000  -0.0000000
 2222222222/0/0/0000           0.0080260   0.1445653   0.7655739   0.0001361   0.0006028  -0.0000853  -0.5468159   0.0000000
                               0.0000000  -0.0000001
 22222222220//00/000          -0.0080260   0.7352888   0.2575905   0.0000848  -0.0006000  -0.0000018   0.5468158   0.0000000
                               0.0000000  -0.0000001
 2222222222/0/00/000          -0.0000000   0.0007853  -0.0006873   0.0160967   0.6698627  -0.0792211   0.0000001   0.0118043
                              -0.0218157   0.6740057
 22222222220//0/0000           0.0000000  -0.0007852   0.0006874  -0.0160967  -0.6698627   0.0792211  -0.0000001   0.0118043
                              -0.0218157   0.6740056
 22222222220///00000           0.0000000  -0.0000232  -0.0000873   0.6098711   0.0194028   0.2879808  -0.0000000  -0.5629022
                              -0.3715309  -0.0021669
 2222222222//000/000           0.0000000  -0.0000232  -0.0000873   0.6098711   0.0194028   0.2879809  -0.0000000   0.5629023
                               0.3715309   0.0021669
 2222222222//00/0000          -0.0000000   0.0000844   0.0000409  -0.2881845   0.0784769   0.6050151   0.0000000  -0.3713497
                               0.5624836   0.0247098
 2222222222/0//00000          -0.0000000  -0.0000844  -0.0000409   0.2881846  -0.0784769  -0.6050151  -0.0000000  -0.3713497
                               0.5624836   0.0247097
 2222222222//0/00000          -0.0080260  -0.5907235   0.5079834   0.0000513   0.0012025  -0.0000834   0.5468159  -0.0000000
                              -0.0000000  -0.0000000
 2222222222/00//0000           0.0060067  -0.0467287  -0.0163703  -0.0000054   0.0000382   0.0000001   0.0704014  -0.0000000
                              -0.0000000   0.0000000
 222222222200/0//000           0.0060068   0.0375414  -0.0322831  -0.0000033  -0.0000764   0.0000053   0.0704013   0.0000000
                              -0.0000000  -0.0000000
 22222222220/0/0/000          -0.0060068  -0.0091874  -0.0486533  -0.0000086  -0.0000383   0.0000054  -0.0704012   0.0000000
                              -0.0000000   0.0000000
 2222222222/000/0/00          -0.0102835   0.0042872   0.0505492   0.0000087   0.0000460  -0.0000058  -0.0277030  -0.0000000
                              -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959519    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.014319   -0.000000    0.000000   -0.000000
 2          -0.000000   -0.000033    0.954018    0.001118    0.000120    0.109159    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000124   -0.109158   -0.000978    0.000058    0.954019    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.867948    0.000036    0.022908   -0.410134    0.000166    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.027613   -0.001225    0.953326    0.111686    0.000834   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000    0.409844    0.000050   -0.112745    0.861037   -0.000109    0.000000   -0.000000    0.000000    0.000000
 7           0.014755   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.960186    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.016806    0.801393   -0.528683
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.031059    0.528942    0.800797
 10         -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959569    0.003085    0.035179

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959626   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000213    0.000000   -0.000000   -0.000000
 2          -0.000000    0.960244   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.960244    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.960244   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.960244    0.000000    0.000000    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.960244   -0.000000    0.000000    0.000000   -0.000000
 7           0.000213   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.960300   -0.000000    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.960219   -0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.960219   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.960219


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95951915 (fixed)   0.95973525 (relaxed)   0.95962597 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00185208   -0.00532613   -0.50760318
 Singles      0.02202966   -0.09047917   -0.09631847
 Pairs        0.06203372    0.00000000   -0.03658540
 Total        1.08591546   -0.09580530   -0.64050705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59101738
 Nuclear energy                         0.00000000
 Kinetic energy                        69.24743570
 One electron energy                 -372.53898491
 Two electron energy                  158.30740734
 Virial quotient                       -3.09371135
 Correlation energy                    -0.64056019
 !MRCI STATE 1.2 Energy              -214.231577565533

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.28661159 (Davidson, fixed reference)
 Cluster corrected energies          -214.28645319 (Davidson, relaxed reference)
 Cluster corrected energies          -214.28661159 (Davidson, rotated reference)

 Cluster corrected energies          -214.28472312 (Pople, fixed reference)
 Cluster corrected energies          -214.28455915 (Pople, relaxed reference)
 Cluster corrected energies          -214.28472312 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95401834 (fixed)   0.96030412 (relaxed)   0.96024364 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386200   -0.00948481   -0.49949564
 Singles      0.02229092   -0.09257155   -0.09834747
 Pairs        0.05836597   -0.00000000   -0.03400072
 Total        1.08451888   -0.10205636   -0.63184383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02755070
 One electron energy                 -368.16593519
 Two electron energy                  154.17232668
 Virial quotient                       -3.10011881
 Correlation energy                    -0.63184383
 !MRCI STATE 2.2 Energy              -213.993608508155

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701124 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692493 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701124 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511832 (Pople, fixed reference)
 Cluster corrected energies          -214.04502917 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511832 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95401863 (fixed)   0.96030414 (relaxed)   0.96024366 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386201   -0.00948482   -0.49949575
 Singles      0.02229087   -0.09257145   -0.09834742
 Pairs        0.05836598    0.00000000   -0.03400065
 Total        1.08451885   -0.10205626   -0.63184383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02754698
 One electron energy                 -368.16593288
 Two electron energy                  154.17232437
 Virial quotient                       -3.10011898
 Correlation energy                    -0.63184383
 !MRCI STATE 3.2 Energy              -213.993608507984

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701122 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692491 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701122 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511830 (Pople, fixed reference)
 Cluster corrected energies          -214.04502915 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511830 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86794756 (fixed)   0.96030417 (relaxed)   0.96024369 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386200   -0.00948481   -0.49949576
 Singles      0.02229080   -0.09257142   -0.09834732
 Pairs        0.05836597    0.00000001   -0.03400068
 Total        1.08451877   -0.10205623   -0.63184376
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02754620
 One electron energy                 -368.16593147
 Two electron energy                  154.17232303
 Virial quotient                       -3.10011901
 Correlation energy                    -0.63184376
 !MRCI STATE 4.2 Energy              -213.993608439394

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701110 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692478 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701110 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511817 (Pople, fixed reference)
 Cluster corrected energies          -214.04502902 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511817 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95332555 (fixed)   0.96030419 (relaxed)   0.96024371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386199   -0.00948481   -0.49949568
 Singles      0.02229078   -0.09257149   -0.09834734
 Pairs        0.05836597   -0.00000001   -0.03400074
 Total        1.08451874   -0.10205632   -0.63184376
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02754754
 One electron energy                 -368.16593158
 Two electron energy                  154.17232314
 Virial quotient                       -3.10011895
 Correlation energy                    -0.63184376
 !MRCI STATE 5.2 Energy              -213.993608439247

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701108 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692476 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701108 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511815 (Pople, fixed reference)
 Cluster corrected energies          -214.04502900 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511815 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86103666 (fixed)   0.96030419 (relaxed)   0.96024371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386200   -0.00948481   -0.49949572
 Singles      0.02229075   -0.09257141   -0.09834730
 Pairs        0.05836598   -0.00000007   -0.03400074
 Total        1.08451873   -0.10205629   -0.63184376
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02754482
 One electron energy                 -368.16592922
 Two electron energy                  154.17232078
 Virial quotient                       -3.10011908
 Correlation energy                    -0.63184376
 !MRCI STATE 6.2 Energy              -213.993608439155

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701107 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692476 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701107 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511815 (Pople, fixed reference)
 Cluster corrected energies          -214.04502899 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511815 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.96018644 (fixed)   0.96037359 (relaxed)   0.96029977 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00379017   -0.00935142   -0.49924676
 Singles      0.02243863   -0.09283626   -0.09868877
 Pairs        0.05816331    0.00000000   -0.03388526
 Total        1.08439211   -0.10218767   -0.63182080
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35939171
 Nuclear energy                         0.00000000
 Kinetic energy                        69.03003108
 One electron energy                 -368.13062459
 Two electron energy                  154.13946523
 Virial quotient                       -3.09997194
 Correlation energy                    -0.63176765
 !MRCI STATE 7.2 Energy              -213.991159361031

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04447557 (Davidson, fixed reference)
 Cluster corrected energies          -214.04437026 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04447557 (Davidson, rotated reference)

 Cluster corrected energies          -214.04258024 (Pople, fixed reference)
 Cluster corrected energies          -214.04247150 (Pople, relaxed reference)
 Cluster corrected energies          -214.04258024 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.80139326 (fixed)   0.96027204 (relaxed)   0.96021862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389084   -0.00952386   -0.76878750
 Singles      0.02215381   -0.09240730   -0.09811297
 Pairs        0.05853077    0.29181602    0.23495994
 Total        1.08457542    0.18988486   -0.63194053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02732082
 One electron energy                 -368.14021218
 Two electron energy                  154.15023847
 Virial quotient                       -3.10007648
 Correlation energy                    -0.63194053
 !MRCI STATE 8.2 Energy              -213.989973714178

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342035 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334409 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342035 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152832 (Pople, fixed reference)
 Cluster corrected energies          -214.04144955 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152832 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.80079713 (fixed)   0.96027204 (relaxed)   0.96021862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389084   -0.00952386   -0.09218183
 Singles      0.02215380   -0.09240728   -0.09811296
 Pairs        0.05853078   -0.44201388   -0.44164574
 Total        1.08457542   -0.54394502   -0.63194053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02732007
 One electron energy                 -368.14021124
 Two electron energy                  154.15023753
 Virial quotient                       -3.10007651
 Correlation energy                    -0.63194053
 !MRCI STATE 9.2 Energy              -213.989973713879

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342035 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334409 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342035 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152832 (Pople, fixed reference)
 Cluster corrected energies          -214.04144954 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152832 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95956903 (fixed)   0.96027204 (relaxed)   0.96021862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389084   -0.00952385   -0.48182397
 Singles      0.02215380   -0.09240732   -0.09811297
 Pairs        0.05853078   -0.01941755   -0.05200359
 Total        1.08457541   -0.12134873   -0.63194053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02732258
 One electron energy                 -368.14021376
 Two electron energy                  154.15024005
 Virial quotient                       -3.10007640
 Correlation energy                    -0.63194053
 !MRCI STATE 10.2 Energy             -213.989973713787

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342035 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334409 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342035 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152831 (Pople, fixed reference)
 Cluster corrected energies          -214.04144954 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152831 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      798.96       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      7972.86   7967.53      4.27      0.77
 REAL TIME  *      8086.30 SEC
 DISK USED  *       841.99 MB (local),       13.23 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.28661159  AU                              
 SETTING HLSDIAG(2)     =      -214.04701124  AU                              
 SETTING HLSDIAG(3)     =      -214.04701122  AU                              
 SETTING HLSDIAG(4)     =      -214.04701110  AU                              
 SETTING HLSDIAG(5)     =      -214.04701108  AU                              
 SETTING HLSDIAG(6)     =      -214.04701107  AU                              
 SETTING HLSDIAG(7)     =      -214.04447557  AU                              
 SETTING HLSDIAG(8)     =      -214.04342035  AU                              
 SETTING HLSDIAG(9)     =      -214.04342035  AU                              
 SETTING HLSDIAG(10)    =      -214.04342035  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:      156 conf      240 CSFs
 N elec internal:    52806 conf   246300 CSFs
 N-1 el internal:    24375 conf   156741 CSFs
 N-2 el internal:     9039 conf    76758 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:      93 (  46  47 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  62

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53571088
     2      -213.53571088
     3      -213.53571088
     4      -213.53571088
     5      -213.53571088
     6      -213.50053857
     7      -213.50053857
     8      -213.50053857

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2874D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2665D-06

 Number of blocks in overlap matrix:   883   Smallest eigenvalue:  0.27D-06
 Number of N-2 electron functions:    1838
 Number of N-1 electron functions:  156741

 Number of internal configurations:               137562
 Number of singly external configurations:       7297863
 Number of doubly external configurations:       3977870
 Total number of contracted configurations:     11413295
 Total number of uncontracted configurations:  172908369

 Diagonal Coupling coefficients finished.               Storage:  65681225 words, CPU-Time:    137.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2011472 words, CPU-time:      0.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81443609  0.66D-01  0.10D+00   185.77
    1     2     2     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81365503  0.65D-01  0.10D+00   185.77
    1     3     3     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81436394  0.66D-01  0.10D+00   185.77
    1     4     4     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81360878  0.65D-01  0.10D+00   185.77
    1     5     5     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81437933  0.66D-01  0.10D+00   185.77
    1     6     6     1.00000000     0.00000000  -213.50053857    -0.00000000    -0.80939653  0.52D-01  0.11D+00   185.77
    1     7     7     1.00000000     0.00000000  -213.50053857     0.00000000    -0.80971662  0.52D-01  0.11D+00   185.77
    1     8     8     1.00000000     0.00000000  -213.50053857    -0.00000000    -0.80932024  0.52D-01  0.11D+00   185.77
    2     1     1     1.09716589    -0.62922316  -214.16493404    -0.62922316    -0.02006312  0.33D-02  0.14D-02  1327.44
    2     2     2     1.09720638    -0.62919421  -214.16490509    -0.62919421    -0.02009237  0.33D-02  0.14D-02  1327.44
    2     3     3     1.09732645    -0.62911575  -214.16482663    -0.62911575    -0.02018697  0.33D-02  0.14D-02  1327.44
    2     4     4     1.09741065    -0.62906644  -214.16477733    -0.62906644    -0.02024842  0.34D-02  0.14D-02  1327.44
    2     5     5     1.09754935    -0.62892499  -214.16463587    -0.62892499    -0.02041222  0.35D-02  0.14D-02  1327.44
    2     6     6     1.09330271    -0.63168155  -214.13222013    -0.63168155    -0.02041001  0.34D-02  0.14D-02  1327.44
    2     7     7     1.09335206    -0.63166417  -214.13220274    -0.63166417    -0.02044849  0.34D-02  0.14D-02  1327.44
    2     8     8     1.09333307    -0.63165487  -214.13219345    -0.63165487    -0.02043888  0.34D-02  0.14D-02  1327.44
    3     1     1     1.08859046    -0.64764078  -214.18335166    -0.01841762    -0.00032156  0.46D-04  0.31D-04  2464.09
    3     2     2     1.08858923    -0.64763978  -214.18335067    -0.01844557    -0.00032243  0.47D-04  0.31D-04  2464.09
    3     3     3     1.08860459    -0.64763936  -214.18335025    -0.01852362    -0.00032287  0.47D-04  0.31D-04  2464.09
    3     4     4     1.08860413    -0.64763848  -214.18334936    -0.01857203    -0.00032405  0.47D-04  0.31D-04  2464.09
    3     5     5     1.08861405    -0.64763545  -214.18334633    -0.01871046    -0.00032724  0.48D-04  0.31D-04  2464.09
    3     6     6     1.08647096    -0.65037680  -214.15091538    -0.01869525    -0.00031918  0.36D-04  0.35D-04  2464.09
    3     7     7     1.08644950    -0.65037516  -214.15091373    -0.01871099    -0.00032032  0.35D-04  0.36D-04  2464.09
    3     8     8     1.08644788    -0.65037437  -214.15091294    -0.01871949    -0.00032107  0.36D-04  0.36D-04  2464.09
    4     1     1     1.08851023    -0.64796365  -214.18367453    -0.00032288    -0.00001098  0.23D-05  0.11D-05  3596.09
    4     2     2     1.08850940    -0.64796362  -214.18367451    -0.00032384    -0.00001103  0.23D-05  0.12D-05  3596.09
    4     3     3     1.08850696    -0.64796362  -214.18367450    -0.00032425    -0.00001104  0.23D-05  0.11D-05  3596.09
    4     4     4     1.08850952    -0.64796358  -214.18367446    -0.00032511    -0.00001107  0.23D-05  0.11D-05  3596.09
    4     5     5     1.08850618    -0.64796358  -214.18367446    -0.00032813    -0.00001107  0.23D-05  0.12D-05  3596.09
    4     6     6     1.08674304    -0.65069719  -214.15123576    -0.00032038    -0.00000979  0.18D-05  0.12D-05  3596.09
    4     7     7     1.08673729    -0.65069710  -214.15123568    -0.00032194    -0.00000986  0.18D-05  0.12D-05  3596.09
    4     8     8     1.08673599    -0.65069707  -214.15123564    -0.00032270    -0.00000989  0.18D-05  0.12D-05  3596.09
    5     1     1     1.08853294    -0.64797550  -214.18368638    -0.00001185    -0.00000045  0.66D-07  0.67D-07  4719.36
    5     2     2     1.08853293    -0.64797550  -214.18368638    -0.00001187    -0.00000045  0.67D-07  0.66D-07  4719.36
    5     3     3     1.08853318    -0.64797549  -214.18368637    -0.00001187    -0.00000046  0.67D-07  0.67D-07  4719.36
    5     4     4     1.08853310    -0.64797549  -214.18368637    -0.00001191    -0.00000046  0.67D-07  0.67D-07  4719.36
    5     5     5     1.08853309    -0.64797549  -214.18368637    -0.00001191    -0.00000046  0.67D-07  0.67D-07  4719.36
    5     6     6     1.08687164    -0.65070782  -214.15124640    -0.00001064    -0.00000036  0.37D-07  0.67D-07  4719.36
    5     7     7     1.08687072    -0.65070782  -214.15124640    -0.00001072    -0.00000036  0.36D-07  0.67D-07  4719.36
    5     8     8     1.08687049    -0.65070782  -214.15124640    -0.00001075    -0.00000036  0.36D-07  0.67D-07  4719.36
    6     1     1     1.08852182    -0.64797598  -214.18368686    -0.00000048    -0.00000002  0.21D-08  0.39D-08  5842.41
    6     2     2     1.08852197    -0.64797598  -214.18368686    -0.00000048    -0.00000002  0.22D-08  0.39D-08  5842.41
    6     3     3     1.08852184    -0.64797598  -214.18368686    -0.00000048    -0.00000002  0.22D-08  0.40D-08  5842.41
    6     4     4     1.08852200    -0.64797598  -214.18368686    -0.00000048    -0.00000002  0.22D-08  0.40D-08  5842.41
    6     5     5     1.08852197    -0.64797598  -214.18368686    -0.00000049    -0.00000002  0.22D-08  0.40D-08  5842.41
    6     6     6     1.08688022    -0.65070822  -214.15124679    -0.00000039    -0.00000002  0.14D-08  0.34D-08  5842.41
    6     7     7     1.08688030    -0.65070822  -214.15124679    -0.00000039    -0.00000002  0.15D-08  0.34D-08  5842.41
    6     8     8     1.08688016    -0.65070822  -214.15124679    -0.00000040    -0.00000002  0.14D-08  0.34D-08  5842.41


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.6%
 S   1.0%  64.2%
 P   0.3%  20.9%   7.2%

 Initialization:   2.4%
 Other:            1.3%

 Total CPU:     5842.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000000          -0.3595933   0.8827517   0.0042317  -0.0114168  -0.0143625   0.0000000  -0.0000000  -0.0000000
 2222222222//\000000           0.8827343   0.3595523   0.0041423  -0.0160222   0.0118778  -0.0000000   0.0000000  -0.0000000
 22222222222/0000000           0.0117374  -0.0060621   0.0316730   0.0199265  -0.6729647   0.0778100  -0.2265042   0.6262474
 22222222220/2000000          -0.0117374   0.0060621  -0.0316730  -0.0199265   0.6729647   0.0778100  -0.2265042   0.6262473
 222222222220/000000          -0.0074148  -0.0124599   0.1940848  -0.6453505  -0.0099913   0.5922718  -0.2647319  -0.1693381
 222222222202/000000           0.0074148   0.0124599  -0.1940848   0.6453505   0.0099913   0.5922718  -0.2647319  -0.1693381
 2222222222/02000000          -0.0000002  -0.0000034   0.6447998   0.1933608   0.0360728   0.3044732   0.5728500   0.1693610
 2222222222/20000000           0.0000002   0.0000034  -0.6447997  -0.1933608  -0.0360728   0.3044732   0.5728500   0.1693610
 22222222220//\00000          -0.0004881   0.0002521  -0.0013172  -0.0008287   0.0279863   0.0065093  -0.0189486   0.0523898
 2222222222//000\000          -0.0004881   0.0002521  -0.0013172  -0.0008287   0.0279862  -0.0065093   0.0189485  -0.0523896

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.727396   -0.016667   -0.000000    0.010529   -0.621983    0.000000   -0.000000   -0.000000
 2           0.621950    0.008608   -0.000005    0.017693    0.727425   -0.000000   -0.000000   -0.000000
 3           0.005286   -0.044975    0.915611   -0.275599    0.002722    0.000000    0.000000    0.000000
 4          -0.018881   -0.028295    0.274571    0.916393   -0.005810    0.000000    0.000000   -0.000000
 5           0.006774    0.955605    0.051223    0.014188   -0.017445   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.111022    0.434433    0.845074
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.323184    0.817363   -0.377729
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.893552    0.241650   -0.241618

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957265    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.957265    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.957265    0.000000    0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.957265    0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.957265   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956665   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.956665   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956665


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.72739582 (fixed)   0.95741459 (relaxed)   0.95726524 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253210   -0.00669122   -0.50729328
 Singles      0.02545263   -0.09601869   -0.10310413
 Pairs        0.06329333    0.00000000   -0.03757857
 Total        1.09127807   -0.10270992   -0.64797598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20812735
 One electron energy                 -372.28521238
 Two electron energy                  158.10152552
 Virial quotient                       -3.09477651
 Correlation energy                    -0.64797598
 !MRCI STATE 1.2 Energy              -214.183686859125

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283285 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261226 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283285 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174897 (Pople, fixed reference)
 Cluster corrected energies          -214.24151538 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174897 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72742544 (fixed)   0.95741452 (relaxed)   0.95726517 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253210   -0.00669122   -0.50729325
 Singles      0.02545266   -0.09601864   -0.10310414
 Pairs        0.06329346    0.00000000   -0.03757859
 Total        1.09127822   -0.10270986   -0.64797598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20813231
 One electron energy                 -372.28520860
 Two electron energy                  158.10152174
 Virial quotient                       -3.09477629
 Correlation energy                    -0.64797598
 !MRCI STATE 2.2 Energy              -214.183686858742

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283295 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261235 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283295 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174908 (Pople, fixed reference)
 Cluster corrected energies          -214.24151549 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174908 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.91561111 (fixed)   0.95741458 (relaxed)   0.95726522 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253211   -0.00669122   -0.50729314
 Singles      0.02545265   -0.09601882   -0.10310418
 Pairs        0.06329333   -0.00000001   -0.03757866
 Total        1.09127810   -0.10271005   -0.64797598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20811877
 One electron energy                 -372.28520221
 Two electron energy                  158.10151535
 Virial quotient                       -3.09477689
 Correlation energy                    -0.64797598
 !MRCI STATE 3.2 Energy              -214.183686858443

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283287 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261226 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283287 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174899 (Pople, fixed reference)
 Cluster corrected energies          -214.24151539 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174899 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.91639321 (fixed)   0.95741451 (relaxed)   0.95726515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253211   -0.00669122   -0.50729302
 Singles      0.02545287   -0.09601891   -0.10310428
 Pairs        0.06329328    0.00000003   -0.03757868
 Total        1.09127826   -0.10271010   -0.64797598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20811872
 One electron energy                 -372.28520413
 Two electron energy                  158.10151727
 Virial quotient                       -3.09477690
 Correlation energy                    -0.64797598
 !MRCI STATE 4.2 Energy              -214.183686858415

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283298 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261237 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283298 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174910 (Pople, fixed reference)
 Cluster corrected energies          -214.24151550 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174910 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95560519 (fixed)   0.95741452 (relaxed)   0.95726516 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253212   -0.00669122   -0.50729303
 Singles      0.02545286   -0.09601888   -0.10310427
 Pairs        0.06329326    0.00000000   -0.03757867
 Total        1.09127824   -0.10271010   -0.64797598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20811923
 One electron energy                 -372.28520522
 Two electron energy                  158.10151836
 Virial quotient                       -3.09477687
 Correlation energy                    -0.64797598
 !MRCI STATE 5.2 Energy              -214.183686858309

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283296 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261235 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283296 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174909 (Pople, fixed reference)
 Cluster corrected energies          -214.24151548 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174909 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.84507430 (fixed)   0.95683494 (relaxed)   0.95666537 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530584   -0.01131172   -0.07238720
 Singles      0.02027666   -0.08790373   -0.09252953
 Pairs        0.06706454   -0.48716339   -0.48579149
 Total        1.09264703   -0.58637883   -0.65070822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18453334
 One electron energy                 -372.10505393
 Two electron energy                  157.95380713
 Virial quotient                       -3.09536303
 Correlation energy                    -0.65070822
 !MRCI STATE 6.2 Energy              -214.151246793016

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153298 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128100 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153298 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049837 (Pople, fixed reference)
 Cluster corrected energies          -214.21023094 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049837 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.81736256 (fixed)   0.95683491 (relaxed)   0.95666534 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530583   -0.01131172   -0.71753074
 Singles      0.02027664   -0.08790373   -0.09252953
 Pairs        0.06706463    0.21775084    0.15935205
 Total        1.09264710    0.11853539   -0.65070822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18453200
 One electron energy                 -372.10505057
 Two electron energy                  157.95380378
 Virial quotient                       -3.09536309
 Correlation energy                    -0.65070822
 !MRCI STATE 7.2 Energy              -214.151246793008

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153302 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128105 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153302 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049842 (Pople, fixed reference)
 Cluster corrected energies          -214.21023098 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049842 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.89355180 (fixed)   0.95683497 (relaxed)   0.95666540 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530584   -0.01131172   -0.64571936
 Singles      0.02027666   -0.08790371   -0.09252953
 Pairs        0.06706448    0.13928624    0.08754068
 Total        1.09264698    0.04007081   -0.65070822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18453331
 One electron energy                 -372.10505497
 Two electron energy                  157.95380817
 Virial quotient                       -3.09536303
 Correlation energy                    -0.65070822
 !MRCI STATE 8.2 Energy              -214.151246792982

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153294 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128096 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153294 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049833 (Pople, fixed reference)
 Cluster corrected energies          -214.21023089 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049833 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1514.67       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     15412.08   7439.20   7967.53      4.27      0.77
 REAL TIME  *     15631.49 SEC
 DISK USED  *         1.52 GB (local),       24.42 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.24283285  AU                              
 SETTING HLSDIAG(12)    =      -214.24283295  AU                              
 SETTING HLSDIAG(13)    =      -214.24283287  AU                              
 SETTING HLSDIAG(14)    =      -214.24283298  AU                              
 SETTING HLSDIAG(15)    =      -214.24283296  AU                              
 SETTING HLSDIAG(16)    =      -214.21153298  AU                              
 SETTING HLSDIAG(17)    =      -214.21153302  AU                              
 SETTING HLSDIAG(18)    =      -214.21153294  AU                              


         HLSDIAG
    -214.2866116
    -214.0470112
    -214.0470112
    -214.0470111
    -214.0470111
    -214.0470111
    -214.0444756
    -214.0434204
    -214.0434203
    -214.0434203
    -214.2428329
    -214.2428330
    -214.2428329
    -214.2428330
    -214.2428330
    -214.2115330
    -214.2115330
    -214.2115329
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.231578   -213.993609   -213.993609   -213.993608   -213.993608   -213.993608   -213.991159   -213.989974
                      -213.989974   -213.989974
 Replaced energies:   -214.286612   -214.047011   -214.047011   -214.047011   -214.047011   -214.047011   -214.044476   -214.043420
                      -214.043420   -214.043420

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.183687   -214.183687   -214.183687   -214.183687   -214.183687   -214.151247   -214.151247   -214.151247
 Replaced energies:   -214.242833   -214.242833   -214.242833   -214.242833   -214.242833   -214.211533   -214.211533   -214.211533



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.28661159

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00   -1035.74    1568.84      68.92

    2   2.2  1.5  1.5       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.78    -804.51     218.07    1681.32       0.00    1514.26   -2298.99    -101.02

    3   3.2  1.5  1.5       0.00       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.78       0.00    2290.54    -623.32   -4802.02      -0.00     533.49    -803.40     -35.67

    4   4.2  1.5  1.5       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     804.51   -2290.54      -0.00    2541.42    -330.49       0.00     -10.17    -107.39    2283.11

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00
                           -0.00    -218.07     623.32   -2541.42      -0.00   -1219.03      -0.00   -2094.48   -1382.91      64.66

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   52586.24       0.00       0.00       0.00       0.00
                           -0.00   -1681.32    4802.02     330.49    1219.03       0.00      -0.00     266.59     128.60    1079.13

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.71       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -2269.09    3436.98     150.99

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00       0.00
                         1035.74   -1514.26    -533.49      10.17    2094.48    -266.59    2269.09      -0.00    -102.71    2338.04

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00
                        -1568.84    2298.99     803.40     107.39    1382.91    -128.60   -3436.98     102.71      -0.00    1543.57

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31
                          -68.92     101.02      35.67   -2283.11     -64.66   -1079.13    -150.99   -2338.04   -1543.57      -0.00

   11   1.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     906.45     598.28       3.49
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -19.01      35.13   -1085.36

   12   2.2  1.5  0.5       0.00      -0.00      -0.44    2911.40      92.58    1372.64      -0.00     261.91     170.84       0.76
                            0.00      -0.00       5.07     -51.13   -2121.26     250.73      -0.00     -22.24      41.47   -1276.88

   13   3.2  1.5  0.5      -0.00       0.44       0.00    -550.32     -17.19    -258.04       0.00    1381.23     913.43       5.29
                            0.00      -5.07      -0.00     -59.28   -2466.78     291.50      -0.00      19.20     -35.33    1098.04

   14   4.2  1.5  0.5      -0.00   -2911.40     550.32      -0.00    -695.37      46.97      -0.00      30.33     -49.04     621.65
                            0.00      51.13      59.28      -0.00     191.85    1626.75      -0.00     206.07   -1443.53     -50.22

   15   5.2  1.5  0.5      -0.00     -92.58      17.19     695.37       0.00   -1482.88       0.00     795.88   -1202.16    -222.71
                            0.00    2121.26    2466.78    -191.85      -0.00     -39.30      -0.00     164.82      58.42       1.61

   16   6.2  1.5  0.5      -0.00   -1372.64     258.04     -46.97    1482.88      -0.00       0.00    -117.40     185.13   -1301.50
                           -0.00    -250.73    -291.50   -1626.75      39.30      -0.00       0.00    1435.16     201.40     -18.80

   17   7.2  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    1985.82    1310.70       7.64
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -41.64      76.96   -2377.77

   18   8.2  1.5  0.5    -906.45    -261.91   -1381.23     -30.33    -795.88     117.40   -1985.82       0.00      -5.20     891.61
                           19.01      22.24     -19.20    -206.07    -164.82   -1435.16      41.64      -0.00    1617.50      52.35

   19   9.2  1.5  0.5    -598.28    -170.84    -913.43      49.04    1202.16    -185.13   -1310.70       5.20      -0.00   -1350.87
                          -35.13     -41.47      35.33    1443.53     -58.42    -201.40     -76.96   -1617.50      -0.00      28.33

   20  10.2  1.5  0.5      -3.49      -0.76      -5.29    -621.65     222.71    1301.50      -7.64    -891.61    1350.87      -0.00
                         1085.36    1276.88   -1098.04      50.22      -1.61      18.80    2377.77     -52.35     -28.33       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5      -0.00     -26.09       4.80     840.83      27.87     406.24      -0.00     489.44     314.64       1.61
                           -0.00     -10.25     -13.29       8.04     571.97     -55.57       0.00       5.82     -12.80     682.19

   42   2.2  0.5  0.5       0.00      13.42      -2.70    1081.15      36.20     525.98      -0.00    -370.66    -258.77      -1.89
                           -0.00     -20.00     -19.91     -30.73   -1401.11     159.47      -0.00       8.03     -13.77     277.49

   43   3.2  0.5  0.5      -0.00     -69.51      12.52     119.28     698.14    -278.29       0.00     -91.50     132.80     616.69
                            0.00     285.97     332.63    -673.89     -23.50    -278.10       0.00    -525.87    -311.33       2.34

   44   4.2  0.5  0.5      -0.00     -43.90       8.18    -334.51     300.87     614.82       0.00     340.76    -514.59     160.54
                           -0.00    -950.79   -1105.67    -206.89      14.44     -75.11      -0.00    -163.36     -84.70     -12.27

   45   5.2  0.5  0.5       0.00    1494.33    -282.21       0.67      39.89       7.55      -0.00      17.66      -1.17      33.82
                           -0.00     -14.79     -17.18     288.47     -66.83    -701.90      -0.00     322.40    -550.38     -14.27

   46   6.2  0.5  0.5    -703.04      14.27      74.04     219.13     196.58    -477.28      40.76    -315.42     476.02     320.53
                         5351.42    -436.60     375.41     203.78      15.88     168.11    -310.27     207.75     228.74       3.77

   47   7.2  0.5  0.5    2046.56     -40.27    -216.87     -83.74     504.62     143.27    -118.66     153.19    -235.32     553.39
                        -2391.96     195.11    -167.89     517.42      -8.71      34.88     138.68     592.76     124.55      -6.35

   48   8.2  0.5  0.5   -5658.40     113.16     598.14     -57.39     158.63     111.04     328.07      94.60    -144.26     160.33
                        -1530.04     124.89    -107.33     -96.33      65.18     533.71      88.71    -200.06     605.31      23.10

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -906.45    -598.28      -3.49
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -19.01      35.13   -1085.36

    2   2.2  1.5  1.5      -0.00      -0.00       0.44   -2911.40     -92.58   -1372.64       0.00    -261.91    -170.84      -0.76
                            0.00       0.00       5.07     -51.13   -2121.26     250.73      -0.00     -22.24      41.47   -1276.88

    3   3.2  1.5  1.5       0.00      -0.44       0.00     550.32      17.19     258.04      -0.00   -1381.23    -913.43      -5.29
                            0.00      -5.07       0.00     -59.28   -2466.78     291.50      -0.00      19.20     -35.33    1098.04

    4   4.2  1.5  1.5       0.00    2911.40    -550.32      -0.00     695.37     -46.97       0.00     -30.33      49.04    -621.65
                            0.00      51.13      59.28       0.00     191.85    1626.75      -0.00     206.07   -1443.53     -50.22

    5   5.2  1.5  1.5       0.00      92.58     -17.19    -695.37       0.00    1482.88      -0.00    -795.88    1202.16     222.71
                            0.00    2121.26    2466.78    -191.85       0.00     -39.30      -0.00     164.82      58.42       1.61

    6   6.2  1.5  1.5       0.00    1372.64    -258.04      46.97   -1482.88      -0.00      -0.00     117.40    -185.13    1301.50
                           -0.00    -250.73    -291.50   -1626.75      39.30       0.00       0.00    1435.16     201.40     -18.80

    7   7.2  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00   -1985.82   -1310.70      -7.64
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -41.64      76.96   -2377.77

    8   8.2  1.5  1.5     906.45     261.91    1381.23      30.33     795.88    -117.40    1985.82       0.00       5.20    -891.61
                           19.01      22.24     -19.20    -206.07    -164.82   -1435.16      41.64       0.00    1617.50      52.35

    9   9.2  1.5  1.5     598.28     170.84     913.43     -49.04   -1202.16     185.13    1310.70      -5.20      -0.00    1350.87
                          -35.13     -41.47      35.33    1443.53     -58.42    -201.40     -76.96   -1617.50       0.00      28.33

   10  10.2  1.5  1.5       3.49       0.76       5.29     621.65    -222.71   -1301.50       7.64     891.61   -1350.87      -0.00
                         1085.36    1276.88   -1098.04      50.22      -1.61      18.80    2377.77     -52.35     -28.33      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -345.25     522.95      22.97

   12   2.2  1.5  0.5       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.26    -268.17      72.69     560.44       0.00     504.75    -766.33     -33.67

   13   3.2  1.5  0.5       0.00       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.26       0.00     763.51    -207.77   -1600.67      -0.00     177.83    -267.80     -11.89

   14   4.2  1.5  0.5       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     268.17    -763.51      -0.00     847.14    -110.16       0.00      -3.39     -35.80     761.04

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00
                           -0.00     -72.69     207.77    -847.14      -0.00    -406.34      -0.00    -698.16    -460.97      21.55

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   52586.24       0.00       0.00       0.00       0.00
                           -0.00    -560.44    1600.67     110.16     406.34       0.00      -0.00      88.86      42.87     359.71

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.71       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -756.36    1145.66      50.33

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00       0.00
                          345.25    -504.75    -177.83       3.39     698.16     -88.86     756.36      -0.00     -34.24     779.35

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00
                         -522.95     766.33     267.80      35.80     460.97     -42.87   -1145.66      34.24      -0.00     514.52

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31
                          -22.97      33.67      11.89    -761.04     -21.55    -359.71     -50.33    -779.35    -514.52      -0.00

   21   1.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    1046.67     690.83       4.03
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -21.95      40.56   -1253.26

   22   2.2  1.5 -0.5       0.00      -0.00      -0.51    3361.80     106.90    1584.99      -0.00     302.43     197.27       0.88
                            0.00      -0.00       5.85     -59.04   -2449.42     289.52      -0.00     -25.68      47.89   -1474.41

   23   3.2  1.5 -0.5      -0.00       0.51       0.00    -635.45     -19.85    -297.96       0.00    1594.90    1054.74       6.10
                            0.00      -5.85      -0.00     -68.45   -2848.39     336.59      -0.00      22.17     -40.80    1267.91

   24   4.2  1.5 -0.5      -0.00   -3361.80     635.45      -0.00    -802.95      54.24      -0.00      35.02     -56.62     717.82
                            0.00      59.04      68.45      -0.00     221.53    1878.41      -0.00     237.95   -1666.84     -57.99

   25   5.2  1.5 -0.5      -0.00    -106.90      19.85     802.95       0.00   -1712.28       0.00     919.00   -1388.13    -257.16
                            0.00    2449.42    2848.39    -221.53      -0.00     -45.38      -0.00     190.32      67.46       1.86

   26   6.2  1.5 -0.5      -0.00   -1584.99     297.96     -54.24    1712.28      -0.00       0.00    -135.57     213.77   -1502.84
                           -0.00    -289.52    -336.59   -1878.41      45.38      -0.00       0.00    1657.18     232.56     -21.70

   27   7.2  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    2293.03    1513.46       8.83
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -48.09      88.87   -2745.62

   28   8.2  1.5 -0.5   -1046.67    -302.43   -1594.90     -35.02    -919.00     135.57   -2293.03       0.00      -6.00    1029.54
                           21.95      25.68     -22.17    -237.95    -190.32   -1657.18      48.09      -0.00    1867.73      60.45

   29   9.2  1.5 -0.5    -690.83    -197.27   -1054.74      56.62    1388.13    -213.77   -1513.46       6.00      -0.00   -1559.85
                          -40.56     -47.89      40.80    1666.84     -67.46    -232.56     -88.87   -1867.73      -0.00      32.71

   30  10.2  1.5 -0.5      -4.03      -0.88      -6.10    -717.82     257.16    1502.84      -8.83   -1029.54    1559.85      -0.00
                         1253.26    1474.41   -1267.91      57.99      -1.86      21.70    2745.62     -60.45     -32.71       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.24      -0.09     735.00    -218.11   -1564.51      -0.00      70.84     -92.67       8.60

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.04       0.02    -116.94      35.28     207.19       0.00     475.23    -695.07     -37.45

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     556.20   -1587.82     228.82     -36.31     110.70      -0.00    -173.63    -122.25      33.73

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     166.81    -476.02    -768.16     -48.94    -342.73      -0.00     580.31     401.19      24.62

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      32.14     -89.72      22.92     867.42    -137.54       0.00      -6.95      34.65    -734.84

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3176.63    -322.48    -113.01    -518.73      58.81    -254.66     184.18     559.72     373.31     -86.13

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -5976.65    -607.20    -212.43     227.33    -210.74     135.71     346.52    -246.37    -173.90     256.05

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1766.98    -178.74     -63.50     163.32     609.37      -1.22     102.45    -172.92     -82.92    -711.21

   49   1.2  0.5 -0.5      -0.00     -15.07       2.77     485.45      16.09     234.54      -0.00     282.58     181.66       0.93
                           -0.00      -5.92      -7.67       4.64     330.22     -32.08       0.00       3.36      -7.39     393.86

   50   2.2  0.5 -0.5       0.00       7.75      -1.56     624.20      20.90     303.68      -0.00    -214.00    -149.40      -1.09
                           -0.00     -11.55     -11.50     -17.74    -808.93      92.07      -0.00       4.63      -7.95     160.21

   51   3.2  0.5 -0.5      -0.00     -40.13       7.23      68.87     403.07    -160.67       0.00     -52.83      76.67     356.04
                            0.00     165.11     192.04    -389.07     -13.57    -160.56       0.00    -303.61    -179.74       1.35

   52   4.2  0.5 -0.5      -0.00     -25.35       4.72    -193.13     173.71     354.97       0.00     196.74    -297.10      92.69
                           -0.00    -548.94    -638.36    -119.45       8.34     -43.36      -0.00     -94.32     -48.90      -7.09

   53   5.2  0.5 -0.5       0.00     862.75    -162.93       0.39      23.03       4.36      -0.00      10.20      -0.67      19.53
                           -0.00      -8.54      -9.92     166.55     -38.58    -405.24      -0.00     186.14    -317.76      -8.24

   54   6.2  0.5 -0.5    -405.90       8.24      42.75     126.51     113.49    -275.56      23.53    -182.11     274.83     185.06
                         3089.64    -252.07     216.74     117.65       9.17      97.06    -179.13     119.94     132.06       2.17

   55   7.2  0.5 -0.5    1181.58     -23.25    -125.21     -48.35     291.34      82.71     -68.51      88.44    -135.86     319.50
                        -1381.00     112.65     -96.93     298.73      -5.03      20.14      80.07     342.23      71.91      -3.67

   56   8.2  0.5 -0.5   -3266.88      65.33     345.34     -33.13      91.58      64.11     189.41      54.62     -83.29      92.56
                         -883.37      72.10     -61.97     -55.62      37.63     308.13      51.22    -115.51     349.47      13.33


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1046.67    -690.83      -4.03
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -21.95      40.56   -1253.26

   12   2.2  1.5  0.5      -0.00      -0.00       0.51   -3361.80    -106.90   -1584.99       0.00    -302.43    -197.27      -0.88
                            0.00       0.00       5.85     -59.04   -2449.42     289.52      -0.00     -25.68      47.89   -1474.41

   13   3.2  1.5  0.5       0.00      -0.51       0.00     635.45      19.85     297.96      -0.00   -1594.90   -1054.74      -6.10
                            0.00      -5.85       0.00     -68.45   -2848.39     336.59      -0.00      22.17     -40.80    1267.91

   14   4.2  1.5  0.5       0.00    3361.80    -635.45      -0.00     802.95     -54.24       0.00     -35.02      56.62    -717.82
                            0.00      59.04      68.45       0.00     221.53    1878.41      -0.00     237.95   -1666.84     -57.99

   15   5.2  1.5  0.5       0.00     106.90     -19.85    -802.95       0.00    1712.28      -0.00    -919.00    1388.13     257.16
                            0.00    2449.42    2848.39    -221.53       0.00     -45.38      -0.00     190.32      67.46       1.86

   16   6.2  1.5  0.5       0.00    1584.99    -297.96      54.24   -1712.28      -0.00      -0.00     135.57    -213.77    1502.84
                           -0.00    -289.52    -336.59   -1878.41      45.38       0.00       0.00    1657.18     232.56     -21.70

   17   7.2  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00   -2293.03   -1513.46      -8.83
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -48.09      88.87   -2745.62

   18   8.2  1.5  0.5    1046.67     302.43    1594.90      35.02     919.00    -135.57    2293.03       0.00       6.00   -1029.54
                           21.95      25.68     -22.17    -237.95    -190.32   -1657.18      48.09       0.00    1867.73      60.45

   19   9.2  1.5  0.5     690.83     197.27    1054.74     -56.62   -1388.13     213.77    1513.46      -6.00      -0.00    1559.85
                          -40.56     -47.89      40.80    1666.84     -67.46    -232.56     -88.87   -1867.73       0.00      32.71

   20  10.2  1.5  0.5       4.03       0.88       6.10     717.82    -257.16   -1502.84       8.83    1029.54   -1559.85      -0.00
                         1253.26    1474.41   -1267.91      57.99      -1.86      21.70    2745.62     -60.45     -32.71      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     345.25    -522.95     -22.97

   22   2.2  1.5 -0.5       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.26     268.17     -72.69    -560.44      -0.00    -504.75     766.33      33.67

   23   3.2  1.5 -0.5       0.00       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.26      -0.00    -763.51     207.77    1600.67       0.00    -177.83     267.80      11.89

   24   4.2  1.5 -0.5       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -268.17     763.51       0.00    -847.14     110.16      -0.00       3.39      35.80    -761.04

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00
                            0.00      72.69    -207.77     847.14       0.00     406.34       0.00     698.16     460.97     -21.55

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   52586.24       0.00       0.00       0.00       0.00
                            0.00     560.44   -1600.67    -110.16    -406.34      -0.00       0.00     -88.86     -42.87    -359.71

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.71       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     756.36   -1145.66     -50.33

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00       0.00
                         -345.25     504.75     177.83      -3.39    -698.16      88.86    -756.36       0.00      34.24    -779.35

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00
                          522.95    -766.33    -267.80     -35.80    -460.97      42.87    1145.66     -34.24       0.00    -514.52

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31
                           22.97     -33.67     -11.89     761.04      21.55     359.71      50.33     779.35     514.52       0.00

   31   1.2  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     906.45     598.28       3.49
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -19.01      35.13   -1085.36

   32   2.2  1.5 -1.5       0.00      -0.00      -0.44    2911.40      92.58    1372.64      -0.00     261.91     170.84       0.76
                            0.00      -0.00       5.07     -51.13   -2121.26     250.73      -0.00     -22.24      41.47   -1276.88

   33   3.2  1.5 -1.5      -0.00       0.44       0.00    -550.32     -17.19    -258.04       0.00    1381.23     913.43       5.29
                            0.00      -5.07      -0.00     -59.28   -2466.78     291.50      -0.00      19.20     -35.33    1098.04

   34   4.2  1.5 -1.5      -0.00   -2911.40     550.32      -0.00    -695.37      46.97      -0.00      30.33     -49.04     621.65
                            0.00      51.13      59.28      -0.00     191.85    1626.75      -0.00     206.07   -1443.53     -50.22

   35   5.2  1.5 -1.5      -0.00     -92.58      17.19     695.37       0.00   -1482.88       0.00     795.88   -1202.16    -222.71
                            0.00    2121.26    2466.78    -191.85      -0.00     -39.30      -0.00     164.82      58.42       1.61

   36   6.2  1.5 -1.5      -0.00   -1372.64     258.04     -46.97    1482.88      -0.00       0.00    -117.40     185.13   -1301.50
                           -0.00    -250.73    -291.50   -1626.75      39.30      -0.00       0.00    1435.16     201.40     -18.80

   37   7.2  1.5 -1.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    1985.82    1310.70       7.64
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -41.64      76.96   -2377.77

   38   8.2  1.5 -1.5    -906.45    -261.91   -1381.23     -30.33    -795.88     117.40   -1985.82       0.00      -5.20     891.61
                           19.01      22.24     -19.20    -206.07    -164.82   -1435.16      41.64      -0.00    1617.50      52.35

   39   9.2  1.5 -1.5    -598.28    -170.84    -913.43      49.04    1202.16    -185.13   -1310.70       5.20      -0.00   -1350.87
                          -35.13     -41.47      35.33    1443.53     -58.42    -201.40     -76.96   -1617.50      -0.00      28.33

   40  10.2  1.5 -1.5      -3.49      -0.76      -5.29    -621.65     222.71    1301.50      -7.64    -891.61    1350.87      -0.00
                         1085.36    1276.88   -1098.04      50.22      -1.61      18.80    2377.77     -52.35     -28.33       0.00

   41   1.2  0.5  0.5      -0.00     -15.07       2.77     485.45      16.09     234.54      -0.00     282.58     181.66       0.93
                            0.00       5.92       7.67      -4.64    -330.22      32.08      -0.00      -3.36       7.39    -393.86

   42   2.2  0.5  0.5       0.00       7.75      -1.56     624.20      20.90     303.68      -0.00    -214.00    -149.40      -1.09
                            0.00      11.55      11.50      17.74     808.93     -92.07       0.00      -4.63       7.95    -160.21

   43   3.2  0.5  0.5      -0.00     -40.13       7.23      68.87     403.07    -160.67       0.00     -52.83      76.67     356.04
                           -0.00    -165.11    -192.04     389.07      13.57     160.56      -0.00     303.61     179.74      -1.35

   44   4.2  0.5  0.5      -0.00     -25.35       4.72    -193.13     173.71     354.97       0.00     196.74    -297.10      92.69
                            0.00     548.94     638.36     119.45      -8.34      43.36       0.00      94.32      48.90       7.09

   45   5.2  0.5  0.5       0.00     862.75    -162.93       0.39      23.03       4.36      -0.00      10.20      -0.67      19.53
                            0.00       8.54       9.92    -166.55      38.58     405.24       0.00    -186.14     317.76       8.24

   46   6.2  0.5  0.5    -405.90       8.24      42.75     126.51     113.49    -275.56      23.53    -182.11     274.83     185.06
                        -3089.64     252.07    -216.74    -117.65      -9.17     -97.06     179.13    -119.94    -132.06      -2.17

   47   7.2  0.5  0.5    1181.58     -23.25    -125.21     -48.35     291.34      82.71     -68.51      88.44    -135.86     319.50
                         1381.00    -112.65      96.93    -298.73       5.03     -20.14     -80.07    -342.23     -71.91       3.67

   48   8.2  0.5  0.5   -3266.88      65.33     345.34     -33.13      91.58      64.11     189.41      54.62     -83.29      92.56
                          883.37     -72.10      61.97      55.62     -37.63    -308.13     -51.22     115.51    -349.47     -13.33

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.24      -0.09     735.00    -218.11   -1564.51      -0.00      70.84     -92.67       8.60

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.04       0.02    -116.94      35.28     207.19       0.00     475.23    -695.07     -37.45

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     556.20   -1587.82     228.82     -36.31     110.70      -0.00    -173.63    -122.25      33.73

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     166.81    -476.02    -768.16     -48.94    -342.73      -0.00     580.31     401.19      24.62

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      32.14     -89.72      22.92     867.42    -137.54       0.00      -6.95      34.65    -734.84

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3176.63    -322.48    -113.01    -518.73      58.81    -254.66     184.18     559.72     373.31     -86.13

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -5976.65    -607.20    -212.43     227.33    -210.74     135.71     346.52    -246.37    -173.90     256.05

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1766.98    -178.74     -63.50     163.32     609.37      -1.22     102.45    -172.92     -82.92    -711.21


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.2  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -906.45    -598.28      -3.49
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -19.01      35.13   -1085.36

   22   2.2  1.5 -0.5      -0.00      -0.00       0.44   -2911.40     -92.58   -1372.64       0.00    -261.91    -170.84      -0.76
                            0.00       0.00       5.07     -51.13   -2121.26     250.73      -0.00     -22.24      41.47   -1276.88

   23   3.2  1.5 -0.5       0.00      -0.44       0.00     550.32      17.19     258.04      -0.00   -1381.23    -913.43      -5.29
                            0.00      -5.07       0.00     -59.28   -2466.78     291.50      -0.00      19.20     -35.33    1098.04

   24   4.2  1.5 -0.5       0.00    2911.40    -550.32      -0.00     695.37     -46.97       0.00     -30.33      49.04    -621.65
                            0.00      51.13      59.28       0.00     191.85    1626.75      -0.00     206.07   -1443.53     -50.22

   25   5.2  1.5 -0.5       0.00      92.58     -17.19    -695.37       0.00    1482.88      -0.00    -795.88    1202.16     222.71
                            0.00    2121.26    2466.78    -191.85       0.00     -39.30      -0.00     164.82      58.42       1.61

   26   6.2  1.5 -0.5       0.00    1372.64    -258.04      46.97   -1482.88      -0.00      -0.00     117.40    -185.13    1301.50
                           -0.00    -250.73    -291.50   -1626.75      39.30       0.00       0.00    1435.16     201.40     -18.80

   27   7.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00   -1985.82   -1310.70      -7.64
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -41.64      76.96   -2377.77

   28   8.2  1.5 -0.5     906.45     261.91    1381.23      30.33     795.88    -117.40    1985.82       0.00       5.20    -891.61
                           19.01      22.24     -19.20    -206.07    -164.82   -1435.16      41.64       0.00    1617.50      52.35

   29   9.2  1.5 -0.5     598.28     170.84     913.43     -49.04   -1202.16     185.13    1310.70      -5.20      -0.00    1350.87
                          -35.13     -41.47      35.33    1443.53     -58.42    -201.40     -76.96   -1617.50       0.00      28.33

   30  10.2  1.5 -0.5       3.49       0.76       5.29     621.65    -222.71   -1301.50       7.64     891.61   -1350.87      -0.00
                         1085.36    1276.88   -1098.04      50.22      -1.61      18.80    2377.77     -52.35     -28.33      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    1035.74   -1568.84     -68.92

   32   2.2  1.5 -1.5       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.78     804.51    -218.07   -1681.32      -0.00   -1514.26    2298.99     101.02

   33   3.2  1.5 -1.5       0.00       0.00   52586.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.78      -0.00   -2290.54     623.32    4802.02       0.00    -533.49     803.40      35.67

   34   4.2  1.5 -1.5       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -804.51    2290.54       0.00   -2541.42     330.49      -0.00      10.17     107.39   -2283.11

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   52586.23       0.00       0.00       0.00       0.00       0.00
                            0.00     218.07    -623.32    2541.42       0.00    1219.03       0.00    2094.48    1382.91     -64.66

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   52586.24       0.00       0.00       0.00       0.00
                            0.00    1681.32   -4802.02    -330.49   -1219.03      -0.00       0.00    -266.59    -128.60   -1079.13

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.71       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    2269.09   -3436.98    -150.99

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00       0.00
                        -1035.74    1514.26     533.49     -10.17   -2094.48     266.59   -2269.09       0.00     102.71   -2338.04

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31       0.00
                         1568.84   -2298.99    -803.40    -107.39   -1382.91     128.60    3436.98    -102.71       0.00   -1543.57

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.31
                           68.92    -101.02     -35.67    2283.11      64.66    1079.13     150.99    2338.04    1543.57       0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   1.2  0.5 -0.5      -0.00     -26.09       4.80     840.83      27.87     406.24      -0.00     489.44     314.64       1.61
                            0.00      10.25      13.29      -8.04    -571.97      55.57      -0.00      -5.82      12.80    -682.19

   50   2.2  0.5 -0.5       0.00      13.42      -2.70    1081.15      36.20     525.98      -0.00    -370.66    -258.77      -1.89
                            0.00      20.00      19.91      30.73    1401.11    -159.47       0.00      -8.03      13.77    -277.49

   51   3.2  0.5 -0.5      -0.00     -69.51      12.52     119.28     698.14    -278.29       0.00     -91.50     132.80     616.69
                           -0.00    -285.97    -332.63     673.89      23.50     278.10      -0.00     525.87     311.33      -2.34

   52   4.2  0.5 -0.5      -0.00     -43.90       8.18    -334.51     300.87     614.82       0.00     340.76    -514.59     160.54
                            0.00     950.79    1105.67     206.89     -14.44      75.11       0.00     163.36      84.70      12.27

   53   5.2  0.5 -0.5       0.00    1494.33    -282.21       0.67      39.89       7.55      -0.00      17.66      -1.17      33.82
                            0.00      14.79      17.18    -288.47      66.83     701.90       0.00    -322.40     550.38      14.27

   54   6.2  0.5 -0.5    -703.04      14.27      74.04     219.13     196.58    -477.28      40.76    -315.42     476.02     320.53
                        -5351.42     436.60    -375.41    -203.78     -15.88    -168.11     310.27    -207.75    -228.74      -3.77

   55   7.2  0.5 -0.5    2046.56     -40.27    -216.87     -83.74     504.62     143.27    -118.66     153.19    -235.32     553.39
                         2391.96    -195.11     167.89    -517.42       8.71     -34.88    -138.68    -592.76    -124.55       6.35

   56   8.2  0.5 -0.5   -5658.40     113.16     598.14     -57.39     158.63     111.04     328.07      94.60    -144.26     160.33
                         1530.04    -124.89     107.33      96.33     -65.18    -533.71     -88.71     200.06    -605.31     -23.10


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00    -703.04    2046.56   -5658.40       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00   -5351.42    2391.96    1530.04       0.00       0.00

    2   2.2  1.5  1.5     -26.09      13.42     -69.51     -43.90    1494.33      14.27     -40.27     113.16       0.00       0.00
                           10.25      20.00    -285.97     950.79      14.79     436.60    -195.11    -124.89       0.00       0.00

    3   3.2  1.5  1.5       4.80      -2.70      12.52       8.18    -282.21      74.04    -216.87     598.14       0.00       0.00
                           13.29      19.91    -332.63    1105.67      17.18    -375.41     167.89     107.33       0.00       0.00

    4   4.2  1.5  1.5     840.83    1081.15     119.28    -334.51       0.67     219.13     -83.74     -57.39       0.00       0.00
                           -8.04      30.73     673.89     206.89    -288.47    -203.78    -517.42      96.33       0.00       0.00

    5   5.2  1.5  1.5      27.87      36.20     698.14     300.87      39.89     196.58     504.62     158.63       0.00       0.00
                         -571.97    1401.11      23.50     -14.44      66.83     -15.88       8.71     -65.18       0.00       0.00

    6   6.2  1.5  1.5     406.24     525.98    -278.29     614.82       7.55    -477.28     143.27     111.04       0.00       0.00
                           55.57    -159.47     278.10      75.11     701.90    -168.11     -34.88    -533.71       0.00       0.00

    7   7.2  1.5  1.5      -0.00      -0.00       0.00       0.00      -0.00      40.76    -118.66     328.07       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     310.27    -138.68     -88.71       0.00       0.00

    8   8.2  1.5  1.5     489.44    -370.66     -91.50     340.76      17.66    -315.42     153.19      94.60       0.00       0.00
                           -5.82      -8.03     525.87     163.36    -322.40    -207.75    -592.76     200.06       0.00       0.00

    9   9.2  1.5  1.5     314.64    -258.77     132.80    -514.59      -1.17     476.02    -235.32    -144.26       0.00       0.00
                           12.80      13.77     311.33      84.70     550.38    -228.74    -124.55    -605.31       0.00       0.00

   10  10.2  1.5  1.5       1.61      -1.89     616.69     160.54      33.82     320.53     553.39     160.33       0.00       0.00
                         -682.19    -277.49      -2.34      12.27      14.27      -3.77       6.35     -23.10       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    3176.63    5976.65    1766.98       0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.07       7.75
                            0.24      -0.04    -556.20    -166.81     -32.14     322.48     607.20     178.74       5.92      11.55

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.77      -1.56
                            0.09      -0.02    1587.82     476.02      89.72     113.01     212.43      63.50       7.67      11.50

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     485.45     624.20
                         -735.00     116.94    -228.82     768.16     -22.92     518.73    -227.33    -163.32      -4.64      17.74

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.09      20.90
                          218.11     -35.28      36.31      48.94    -867.42     -58.81     210.74    -609.37    -330.22     808.93

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     234.54     303.68
                         1564.51    -207.19    -110.70     342.73     137.54     254.66    -135.71       1.22      32.08     -92.07

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00    -184.18    -346.52    -102.45      -0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     282.58    -214.00
                          -70.84    -475.23     173.63    -580.31       6.95    -559.72     246.37     172.92      -3.36      -4.63

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     181.66    -149.40
                           92.67     695.07     122.25    -401.19     -34.65    -373.31     173.90      82.92       7.39       7.95

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.93      -1.09
                           -8.60      37.45     -33.73     -24.62     734.84      86.13    -256.05     711.21    -393.86    -160.21

   21   1.2  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00    -405.90    1181.58   -3266.88       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    3089.64   -1381.00    -883.37      -0.00       0.00

   22   2.2  1.5 -0.5     -15.07       7.75     -40.13     -25.35     862.75       8.24     -23.25      65.33       0.00       0.00
                           -5.92     -11.55     165.11    -548.94      -8.54    -252.07     112.65      72.10       0.24      -0.04

   23   3.2  1.5 -0.5       2.77      -1.56       7.23       4.72    -162.93      42.75    -125.21     345.34       0.00       0.00
                           -7.67     -11.50     192.04    -638.36      -9.92     216.74     -96.93     -61.97       0.09      -0.02

   24   4.2  1.5 -0.5     485.45     624.20      68.87    -193.13       0.39     126.51     -48.35     -33.13       0.00       0.00
                            4.64     -17.74    -389.07    -119.45     166.55     117.65     298.73     -55.62    -735.00     116.94

   25   5.2  1.5 -0.5      16.09      20.90     403.07     173.71      23.03     113.49     291.34      91.58       0.00       0.00
                          330.22    -808.93     -13.57       8.34     -38.58       9.17      -5.03      37.63     218.11     -35.28

   26   6.2  1.5 -0.5     234.54     303.68    -160.67     354.97       4.36    -275.56      82.71      64.11       0.00       0.00
                          -32.08      92.07    -160.56     -43.36    -405.24      97.06      20.14     308.13    1564.51    -207.19

   27   7.2  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00      23.53     -68.51     189.41       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -179.13      80.07      51.22       0.00      -0.00

   28   8.2  1.5 -0.5     282.58    -214.00     -52.83     196.74      10.20    -182.11      88.44      54.62       0.00       0.00
                            3.36       4.63    -303.61     -94.32     186.14     119.94     342.23    -115.51     -70.84    -475.23

   29   9.2  1.5 -0.5     181.66    -149.40      76.67    -297.10      -0.67     274.83    -135.86     -83.29       0.00       0.00
                           -7.39      -7.95    -179.74     -48.90    -317.76     132.06      71.91     349.47      92.67     695.07

   30  10.2  1.5 -0.5       0.93      -1.09     356.04      92.69      19.53     185.06     319.50      92.56       0.00       0.00
                          393.86     160.21       1.35      -7.09      -8.24       2.17      -3.67      13.33      -8.60      37.45

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -26.09      13.42
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.25     -20.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.80      -2.70
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.29     -19.91

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     840.83    1081.15
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.04     -30.73

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      27.87      36.20
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     571.97   -1401.11

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     406.24     525.98
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -55.57     159.47

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     489.44    -370.66
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.82       8.03

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     314.64    -258.77
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -12.80     -13.77

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.61      -1.89
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     682.19     277.49

   41   1.2  0.5  0.5    9608.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     82541064.80***************************************************************************************************

   42   2.2  0.5  0.5       0.00    9608.30       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   43   3.2  0.5  0.5       0.00       0.00    9608.32       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   44   4.2  0.5  0.5       0.00       0.00       0.00    9608.29       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9608.30       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16477.85       0.00       0.00**********************
                     **************************************************************************************************************

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16477.84       0.00**********************
                     **************************************************************************************************************

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16477.86**********************
                     **************************************************************************************************************

   49   1.2  0.5 -0.5****************************************************************************************    9608.32       0.00
                     **************************************************************************************************************

   50   2.2  0.5 -0.5****************************************************************************************       0.00    9608.30
                     12261732.21***************************************************************************************************

   51   3.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   52   4.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     ***********94422330.26**********************11176412.00*******************************************************

   53   5.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     79194097.83***************************************************************************************************

   54   6.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   55   7.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   56   8.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************


   Nr   State  S   Sz       51         52         53         54         55         56

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5      -0.00      -0.00       0.00    -405.90    1181.58   -3266.88
                           -0.00       0.00       0.00   -3089.64    1381.00     883.37

   12   2.2  1.5  0.5     -40.13     -25.35     862.75       8.24     -23.25      65.33
                         -165.11     548.94       8.54     252.07    -112.65     -72.10

   13   3.2  1.5  0.5       7.23       4.72    -162.93      42.75    -125.21     345.34
                         -192.04     638.36       9.92    -216.74      96.93      61.97

   14   4.2  1.5  0.5      68.87    -193.13       0.39     126.51     -48.35     -33.13
                          389.07     119.45    -166.55    -117.65    -298.73      55.62

   15   5.2  1.5  0.5     403.07     173.71      23.03     113.49     291.34      91.58
                           13.57      -8.34      38.58      -9.17       5.03     -37.63

   16   6.2  1.5  0.5    -160.67     354.97       4.36    -275.56      82.71      64.11
                          160.56      43.36     405.24     -97.06     -20.14    -308.13

   17   7.2  1.5  0.5       0.00       0.00      -0.00      23.53     -68.51     189.41
                           -0.00       0.00       0.00     179.13     -80.07     -51.22

   18   8.2  1.5  0.5     -52.83     196.74      10.20    -182.11      88.44      54.62
                          303.61      94.32    -186.14    -119.94    -342.23     115.51

   19   9.2  1.5  0.5      76.67    -297.10      -0.67     274.83    -135.86     -83.29
                          179.74      48.90     317.76    -132.06     -71.91    -349.47

   20  10.2  1.5  0.5     356.04      92.69      19.53     185.06     319.50      92.56
                           -1.35       7.09       8.24      -2.17       3.67     -13.33

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    3176.63    5976.65    1766.98

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -556.20    -166.81     -32.14     322.48     607.20     178.74

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         1587.82     476.02      89.72     113.01     212.43      63.50

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -228.82     768.16     -22.92     518.73    -227.33    -163.32

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           36.31      48.94    -867.42     -58.81     210.74    -609.37

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -110.70     342.73     137.54     254.66    -135.71       1.22

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -184.18    -346.52    -102.45

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          173.63    -580.31       6.95    -559.72     246.37     172.92

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          122.25    -401.19     -34.65    -373.31     173.90      82.92

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.73     -24.62     734.84      86.13    -256.05     711.21

   31   1.2  1.5 -1.5      -0.00      -0.00       0.00    -703.04    2046.56   -5658.40
                            0.00      -0.00      -0.00    5351.42   -2391.96   -1530.04

   32   2.2  1.5 -1.5     -69.51     -43.90    1494.33      14.27     -40.27     113.16
                          285.97    -950.79     -14.79    -436.60     195.11     124.89

   33   3.2  1.5 -1.5      12.52       8.18    -282.21      74.04    -216.87     598.14
                          332.63   -1105.67     -17.18     375.41    -167.89    -107.33

   34   4.2  1.5 -1.5     119.28    -334.51       0.67     219.13     -83.74     -57.39
                         -673.89    -206.89     288.47     203.78     517.42     -96.33

   35   5.2  1.5 -1.5     698.14     300.87      39.89     196.58     504.62     158.63
                          -23.50      14.44     -66.83      15.88      -8.71      65.18

   36   6.2  1.5 -1.5    -278.29     614.82       7.55    -477.28     143.27     111.04
                         -278.10     -75.11    -701.90     168.11      34.88     533.71

   37   7.2  1.5 -1.5       0.00       0.00      -0.00      40.76    -118.66     328.07
                            0.00      -0.00      -0.00    -310.27     138.68      88.71

   38   8.2  1.5 -1.5     -91.50     340.76      17.66    -315.42     153.19      94.60
                         -525.87    -163.36     322.40     207.75     592.76    -200.06

   39   9.2  1.5 -1.5     132.80    -514.59      -1.17     476.02    -235.32    -144.26
                         -311.33     -84.70    -550.38     228.74     124.55     605.31

   40  10.2  1.5 -1.5     616.69     160.54      33.82     320.53     553.39     160.33
                            2.34     -12.27     -14.27       3.77      -6.35      23.10

   41   1.2  0.5  0.5******************************************************************
                     ******************************************************************

   42   2.2  0.5  0.5******************************************************************
                     ******************************************************************

   43   3.2  0.5  0.5******************************************************************
                     ******************************************************************

   44   4.2  0.5  0.5******************************************************************
                     ******************************************************************

   45   5.2  0.5  0.5******************************************************************
                     ******************************************************************

   46   6.2  0.5  0.5******************************************************************
                     ***********65634660.30********************************************

   47   7.2  0.5  0.5******************************************************************
                     ******************************************************************

   48   8.2  0.5  0.5******************************************************************
                     ******************************************************************

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   51   3.2  0.5 -0.5    9608.32       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   52   4.2  0.5 -0.5       0.00    9608.29       0.00       0.00       0.00       0.00
                     ******************************************************************

   53   5.2  0.5 -0.5       0.00       0.00    9608.30       0.00       0.00       0.00
                     ******************************************************************

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16477.85       0.00       0.00
                     ******************************************************************

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16477.84       0.00
                     ******************************************************************

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16477.86
                     ******************************************************************


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1******************************************      0.00000000        0.00      0.0000
     2****************************************** 492489.07413799************************
     3****************************************** 670336.08571542************************
     4****************************************** 757037.29841293************************
     5****************************************** 779180.38512603************************
     6-81792.97356784-81578.68695625************ 828559.50535528************************
     7-25585.65573814-25371.36912655************ 884766.82318498************************
     8 -3247.16194093 -3032.87532934************ 907105.31698220************************
     9  -214.28714009    -0.00052850     -115.99 910138.19178303************************
    10  -214.28714009    -0.00052850     -115.99 910138.19178304************************
    11  -214.28714008    -0.00052849     -115.99 910138.19178305************************
    12  -214.28713993    -0.00052834     -115.96 910138.19178320************************
    13  -214.08885549     0.19775610    43402.45 910138.39006763************************
    14  -214.08885549     0.19775610    43402.45 910138.39006763************************
    15  -214.08509369     0.20151790    44228.07 910138.39382943************************
    16  -214.08509369     0.20151790    44228.07 910138.39382944************************
    17  -214.08509368     0.20151791    44228.07 910138.39382945************************
    18  -214.08509368     0.20151792    44228.07 910138.39382945************************
    19  -214.06225037     0.22436122    49241.60 910138.41667276************************
    20  -214.06225037     0.22436122    49241.60 910138.41667276************************
    21  -214.06225036     0.22436123    49241.60 910138.41667276************************
    22  -214.06225036     0.22436123    49241.60 910138.41667277************************
    23  -214.06165756     0.22495403    49371.70 910138.41726557************************
    24  -214.06165756     0.22495403    49371.70 910138.41726557************************
    25  -214.06138973     0.22522186    49430.48 910138.41753339************************
    26  -214.06138973     0.22522186    49430.48 910138.41753340************************
    27  -214.06138966     0.22522193    49430.50 910138.41753346************************
    28  -214.06138966     0.22522193    49430.50 910138.41753346************************
    29  -214.06138964     0.22522195    49430.50 910138.41753348************************
    30  -214.06138964     0.22522195    49430.50 910138.41753349************************
    31  -214.02141171     0.26519988    58204.65 910138.45751141************************
    32  -214.02141171     0.26519988    58204.65 910138.45751141************************
    33  -214.02141171     0.26519988    58204.65 910138.45751142************************
    34  -214.02141171     0.26519988    58204.65 910138.45751142************************
    35  -214.02114973     0.26546186    58262.14 910138.45777340************************
    36  -214.02114973     0.26546186    58262.14 910138.45777340************************
    37  -214.02114971     0.26546188    58262.15 910138.45777341************************
    38  -214.02114971     0.26546188    58262.15 910138.45777341************************
    39  -214.02114970     0.26546189    58262.15 910138.45777343************************
    40  -214.02114970     0.26546189    58262.15 910138.45777343************************
    41  -214.02114968     0.26546191    58262.15 910138.45777344************************
    42  -214.02114968     0.26546191    58262.15 910138.45777344************************
    43  -214.02057844     0.26603315    58387.53 910138.45834469************************
    44  -214.02057843     0.26603316    58387.53 910138.45834469************************
    45  -214.02057841     0.26603318    58387.53 910138.45834472************************
    46  -214.02057841     0.26603319    58387.54 910138.45834472************************
    47  -214.02057839     0.26603320    58387.54 910138.45834474************************
    48  -214.02057837     0.26603322    58387.54 910138.45834475************************
    49 15623.10325253 15837.38986412************ 925975.58217565************************
    50 34593.89140523 34808.17801682************ 944946.37032835************************
    51 75239.87349650 75454.16010809************ 985592.35241963************************
    52138506.85393363138721.14054522************1048859.33285676************************
    53148598.33460377148812.62121536************1058950.81352690************************
    54252674.56305613252888.84966772************1163027.04197925************************
    55412869.27738514413083.56399673************1323221.75630826************************
    56881811.74780994882026.03442153************1792164.22673306************************


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.000000016   0.000000009  -0.000000072   0.000000061   0.000000039   0.000000054  -0.000000122  -0.000001680
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000000003   0.000000001   0.000000006  -0.000000000   0.000000006  -0.000000024   0.000000006   0.000000499
                         0.000000001   0.000000003   0.000000001  -0.000000015   0.000000001  -0.000000000  -0.000000029  -0.000000105

    3    3.2  1.5  1.5   0.000000002  -0.000000007   0.000000008  -0.000000001   0.000000004  -0.000000005  -0.000000007   0.000000080
                        -0.000000000  -0.000000001  -0.000000003  -0.000000009   0.000000009   0.000000003  -0.000000014  -0.000000184

    4    4.2  1.5  1.5   0.000000000   0.000000001   0.000000005   0.000000001   0.000000014   0.000000015   0.000000012  -0.000000004
                         0.000000002  -0.000000007  -0.000000000   0.000000006  -0.000000027   0.000000022   0.000000049  -0.000000170

    5    5.2  1.5  1.5  -0.000000001   0.000000000  -0.000000003   0.000000019   0.000000012  -0.000000022  -0.000000027  -0.000001662
                        -0.000000000  -0.000000001  -0.000000002   0.000000003   0.000000013   0.000000013   0.000000028  -0.000000562

    6    6.2  1.5  1.5  -0.000000000  -0.000000002  -0.000000001  -0.000000006   0.000000014   0.000000013   0.000000005   0.000000057
                         0.000000000   0.000000004  -0.000000006   0.000000004  -0.000000016   0.000000006   0.000000030   0.000000094

    7    7.2  1.5  1.5  -0.000000001  -0.000000000   0.000000004  -0.000000004  -0.000000002  -0.000000003   0.000000007   0.000000097
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    8    8.2  1.5  1.5   0.000000000   0.000000002  -0.000000000  -0.000000008   0.000000000   0.000000002   0.000000025   0.000000059
                        -0.000000002  -0.000000003  -0.000000001   0.000000008  -0.000000006   0.000000003   0.000000044  -0.000000273

    9    9.2  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000004  -0.000000002   0.000000001   0.000000035   0.000000183
                         0.000000003  -0.000000001  -0.000000007   0.000000015   0.000000006  -0.000000003   0.000000009  -0.000000149

   10   10.2  1.5  1.5   0.000000001  -0.000000001   0.000000001   0.000000008  -0.000000015  -0.000000001  -0.000000015  -0.000001181
                         0.000000000  -0.000000000  -0.000000005  -0.000000001  -0.000000004  -0.000000003   0.000000051  -0.000000311

   11    1.2  1.5  0.5  -0.000000004  -0.000000004   0.000000001   0.000000034  -0.000000034  -0.000000109  -0.000000303   0.000001076
                         0.000000003   0.000000034   0.000000033  -0.000000015  -0.000000027  -0.000000007  -0.000000394  -0.000006725

   12    2.2  1.5  0.5  -0.000000000  -0.000000000   0.000000004  -0.000000004   0.000000002   0.000000012   0.000000017  -0.000000508
                        -0.000000000   0.000000002   0.000000006  -0.000000009   0.000000006  -0.000000030  -0.000000137  -0.000000408

   13    3.2  1.5  0.5   0.000000000   0.000000001   0.000000003   0.000000001   0.000000003   0.000000004  -0.000000060   0.000000396
                         0.000000001  -0.000000000  -0.000000007   0.000000023  -0.000000004   0.000000003  -0.000000048  -0.000000754

   14    4.2  1.5  0.5   0.000000002  -0.000000003   0.000000009  -0.000000009   0.000000002   0.000000013   0.000000004  -0.000000786
                        -0.000000000   0.000000003  -0.000000002   0.000000007  -0.000000003   0.000000006  -0.000000028  -0.000000064

   15    5.2  1.5  0.5   0.000000003  -0.000000001  -0.000000001  -0.000000020   0.000000003  -0.000000005  -0.000000031  -0.000000002
                         0.000000000  -0.000000000  -0.000000002  -0.000000008  -0.000000000   0.000000009   0.000000013  -0.000000426

   16    6.2  1.5  0.5   0.000000000   0.000000003   0.000000001  -0.000000008   0.000000021   0.000000021  -0.000000035   0.000001282
                        -0.000000000   0.000000003   0.000000005  -0.000000003   0.000000002   0.000000009   0.000000037   0.000000124

   17    7.2  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000002   0.000000006   0.000000018  -0.000000062
                        -0.000000000  -0.000000002  -0.000000002   0.000000001   0.000000002   0.000000000   0.000000023   0.000000390

   18    8.2  1.5  0.5  -0.000000000   0.000000002  -0.000000003   0.000000009  -0.000000006   0.000000026  -0.000000056  -0.000000099
                         0.000000001  -0.000000000  -0.000000001  -0.000000007  -0.000000007  -0.000000010  -0.000000030   0.000000157

   19    9.2  1.5  0.5  -0.000000002   0.000000000  -0.000000005   0.000000011   0.000000013   0.000000007   0.000000021  -0.000000105
                        -0.000000000  -0.000000001   0.000000000  -0.000000004   0.000000007   0.000000003   0.000000014  -0.000000405

   20   10.2  1.5  0.5   0.000000001  -0.000000000   0.000000001   0.000000015  -0.000000004   0.000000008   0.000000024   0.000000108
                        -0.000000001   0.000000000   0.000000005   0.000000008  -0.000000006  -0.000000021   0.000000005   0.000000433

   21    1.2  1.5 -0.5   0.000000003   0.000000006  -0.000000035  -0.000000080  -0.000000011  -0.000000104   0.000000234   0.000000110
                         0.000000016  -0.000000004  -0.000000004   0.000000068  -0.000000039   0.000000047   0.000000105   0.000001015

   22    2.2  1.5 -0.5  -0.000000000   0.000000003  -0.000000010   0.000000008  -0.000000003  -0.000000031   0.000000027   0.000000354
                         0.000000001  -0.000000000  -0.000000004  -0.000000010  -0.000000013  -0.000000004  -0.000000037   0.000000008

   23    3.2  1.5 -0.5  -0.000000002   0.000000004  -0.000000001  -0.000000009  -0.000000006   0.000000043  -0.000000018  -0.000000002
                         0.000000003  -0.000000002  -0.000000008  -0.000000005   0.000000008   0.000000002  -0.000000016  -0.000000068

   24    4.2  1.5 -0.5   0.000000001   0.000000001   0.000000006  -0.000000003   0.000000004   0.000000006   0.000000039  -0.000000549
                         0.000000002   0.000000001   0.000000003  -0.000000008  -0.000000020  -0.000000031  -0.000000031  -0.000000050

   25    5.2  1.5 -0.5   0.000000000  -0.000000003  -0.000000002  -0.000000002   0.000000001   0.000000006  -0.000000085   0.000000139
                        -0.000000000   0.000000001  -0.000000006  -0.000000003  -0.000000006  -0.000000031   0.000000071  -0.000000042

   26    6.2  1.5 -0.5  -0.000000002  -0.000000001  -0.000000004  -0.000000008   0.000000029   0.000000002   0.000000036  -0.000000287
                        -0.000000002  -0.000000003   0.000000007  -0.000000002   0.000000008   0.000000015  -0.000000047  -0.000000387

   27    7.2  1.5 -0.5  -0.000000000  -0.000000000   0.000000002   0.000000005   0.000000001   0.000000006  -0.000000014  -0.000000006
                        -0.000000001   0.000000000   0.000000000  -0.000000004   0.000000002  -0.000000003  -0.000000006  -0.000000059

   28    8.2  1.5 -0.5  -0.000000002  -0.000000000  -0.000000004   0.000000002  -0.000000011  -0.000000001  -0.000000057   0.000000290
                         0.000000000   0.000000006   0.000000003   0.000000001   0.000000001   0.000000001   0.000000044  -0.000000339

   29    9.2  1.5 -0.5   0.000000001  -0.000000002   0.000000007   0.000000005  -0.000000004  -0.000000009   0.000000003   0.000000299
                         0.000000000   0.000000000   0.000000002  -0.000000004   0.000000004   0.000000011   0.000000026  -0.000000344

   30   10.2  1.5 -0.5  -0.000000000   0.000000001  -0.000000001   0.000000002  -0.000000005   0.000000010   0.000000004  -0.000000388
                        -0.000000000  -0.000000001   0.000000005  -0.000000004   0.000000003   0.000000031   0.000000015  -0.000000242

   31    1.2  1.5 -1.5   0.000000005   0.000000016  -0.000000013  -0.000000020   0.000000045  -0.000000091   0.000000366  -0.000001611
                        -0.000000007  -0.000000040   0.000000002  -0.000000035  -0.000000076  -0.000000018  -0.000000256  -0.000002073

   32    2.2  1.5 -1.5  -0.000000000  -0.000000001   0.000000005   0.000000004  -0.000000007   0.000000029  -0.000000042   0.000000173
                         0.000000000  -0.000000002  -0.000000000  -0.000000002   0.000000006   0.000000012  -0.000000062  -0.000000173

   33    3.2  1.5 -1.5   0.000000001   0.000000000   0.000000002   0.000000004  -0.000000003   0.000000008  -0.000000091   0.000000670
                        -0.000000001  -0.000000004  -0.000000003  -0.000000001   0.000000001   0.000000015   0.000000104   0.000000241

   34    4.2  1.5 -1.5  -0.000000001  -0.000000003  -0.000000007  -0.000000005   0.000000010  -0.000000003   0.000000071  -0.000000023
                        -0.000000001   0.000000004  -0.000000005   0.000000003  -0.000000025   0.000000010  -0.000000014  -0.000000180

   35    5.2  1.5 -1.5  -0.000000001   0.000000002  -0.000000016  -0.000000002   0.000000003   0.000000012  -0.000000059  -0.000000027
                        -0.000000000  -0.000000003   0.000000008   0.000000017   0.000000005  -0.000000016  -0.000000028   0.000000046

   36    6.2  1.5 -1.5   0.000000001   0.000000002   0.000000002  -0.000000002   0.000000005  -0.000000014  -0.000000091  -0.000000325
                         0.000000000   0.000000003  -0.000000003   0.000000003  -0.000000013   0.000000005  -0.000000084   0.000000550

   37    7.2  1.5 -1.5  -0.000000000  -0.000000001   0.000000001   0.000000001  -0.000000003   0.000000005  -0.000000021   0.000000093
                         0.000000000   0.000000002  -0.000000000   0.000000002   0.000000004   0.000000001   0.000000015   0.000000120

   38    8.2  1.5 -1.5   0.000000000   0.000000001  -0.000000001   0.000000005   0.000000008  -0.000000023   0.000000041   0.000000208
                         0.000000002  -0.000000000   0.000000004   0.000000002  -0.000000010   0.000000001   0.000000012   0.000000011

   39    9.2  1.5 -1.5  -0.000000001  -0.000000007  -0.000000001  -0.000000003  -0.000000004  -0.000000009  -0.000000029  -0.000000245
                         0.000000001  -0.000000002   0.000000001   0.000000001  -0.000000009  -0.000000002  -0.000000010   0.000000053

   40   10.2  1.5 -1.5   0.000000002  -0.000000004  -0.000000006  -0.000000004   0.000000013   0.000000002   0.000000005  -0.000000027
                        -0.000000000  -0.000000001   0.000000003   0.000000007   0.000000009   0.000000003  -0.000000015  -0.000000190

   41    1.2  0.5  0.5   0.065495578  -0.036013746  -0.148840539   0.122959176  -0.088131454  -0.060784717  -0.127215287  -0.011759650
                        -0.105517681  -0.000016154  -0.110760885  -0.155651512   0.304813323   0.135981809  -0.208167510   0.468422661

   42    2.2  0.5  0.5   0.036038465   0.077340174  -0.083188726  -0.087977076  -0.325059147  -0.165875482   0.086740251   0.095585990
                        -0.176029921   0.091606270  -0.046600304   0.209802151   0.433469423  -0.265159135  -0.033040958  -0.223909024

   43    3.2  0.5  0.5  -0.014747354   0.269127524   0.268876944  -0.390791183   0.193283244  -0.151419154   0.087594106   0.269742761
                        -0.036509339   0.180732145  -0.027440983   0.053180385  -0.002843061   0.063276447  -0.183083866   0.195008229

   44    4.2  0.5  0.5   0.005251141   0.048198873   0.035865185  -0.058479582  -0.114508711  -0.113207350   0.005077216   0.127716788
                         0.500791692  -0.274755081   0.280069235  -0.112706148   0.134990523  -0.092850920  -0.068217559   0.070054608

   45    5.2  0.5  0.5  -0.207901567  -0.272260940   0.123935250  -0.206318610  -0.035747367   0.173643193   0.001800524  -0.178205303
                        -0.049375943  -0.158575560   0.063695798   0.372635442   0.085480137   0.059711022   0.140283936   0.058231521

   46    6.2  0.5  0.5  -0.005128495  -0.159182176  -0.320017696  -0.265581117   0.052496766   0.043313437   0.001733560   0.153044322
                        -0.159150708   0.081209231   0.373666431  -0.218870776  -0.088678159  -0.105753577  -0.063107860   0.092378379

   47    7.2  0.5  0.5  -0.089812294  -0.221518585   0.039948891   0.198033636  -0.029205655   0.118214556   0.294991673   0.537272428
                         0.004823244  -0.086651722  -0.099411197   0.107322924  -0.023187065  -0.067129669  -0.379999642   0.079367989

   48    8.2  0.5  0.5   0.342986575   0.175025738  -0.262091013   0.096589869   0.112294086   0.127589424   0.083245236   0.004202521
                         0.081146764   0.062800539   0.166290762   0.427016322  -0.028998572   0.032369179   0.015972098   0.100743241

   49    1.2  0.5 -0.5   0.053585258   0.126638400  -0.028432932  -0.089579683  -0.325482556  -0.199877012   0.089458506   0.113069673
                        -0.240924333  -0.170778209  -0.141296802  -0.021778912   0.403125028  -0.026933638   0.070689075   0.010795891

   50    2.2  0.5 -0.5  -0.028858428  -0.095981382   0.161473019   0.197021538  -0.043695189  -0.143613616  -0.030529214   0.053788322
                         0.366392468  -0.267307527   0.348762518  -0.035002716   0.165602287  -0.123789419   0.178966753  -0.020272592

   51    3.2  0.5 -0.5  -0.241019926   0.102536940   0.212017913   0.140834832  -0.193274197  -0.114025056  -0.048612766   0.038740790
                         0.034707988   0.149164057   0.005192547  -0.076823258  -0.019948234   0.450338326  -0.206785616   0.056300277

   52    4.2  0.5 -0.5  -0.141749510  -0.204660335  -0.007963460  -0.023770228  -0.109305794   0.307161022   0.325122258   0.000103917
                        -0.044101615   0.057356620  -0.027472724  -0.191124716   0.114698331   0.120999113   0.228728799  -0.299968938

   53    5.2  0.5 -0.5  -0.004501614   0.015871766  -0.160369405   0.068629174  -0.018497499  -0.327660220  -0.069674761   0.155385280
                        -0.022483341   0.169698337  -0.032544412   0.037826231  -0.084281497   0.140400424   0.482574247   0.086099070

   54    6.2  0.5 -0.5  -0.005461261   0.545657246   0.157263313   0.094636790   0.147134437   0.070742204   0.124660584  -0.019381606
                         0.122266768   0.095554038  -0.062190741  -0.210594056   0.092601777  -0.069919395   0.103272201  -0.039835592

   55    7.2  0.5 -0.5  -0.421656912  -0.111005290   0.258914830  -0.032309880   0.062316953  -0.025221686  -0.079093464   0.023678496
                        -0.050445258  -0.105684576  -0.289670489  -0.100036866  -0.042147669  -0.287147926   0.159808037   0.164348161

   56    8.2  0.5 -0.5  -0.139585983  -0.015617023  -0.116997816  -0.013262115   0.040526675  -0.356568035   0.251900342  -0.118889974
                        -0.062743734  -0.124879118  -0.012072723  -0.113633298  -0.312098687   0.020461680  -0.124218454  -0.175629857


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.641461747   0.686124168   0.243754408   0.236714965   0.000000017  -0.000000022  -0.001762772   0.002281783
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000716715  -0.001198949  -0.000311505  -0.000351130   0.081023713  -0.091128045   0.090237043   0.017052769
                         0.000268574   0.000207347   0.000208969  -0.000088398  -0.066445624   0.011169924  -0.001956408  -0.013041160

    3    3.2  1.5  1.5   0.000924441   0.000244828  -0.000240213  -0.000090420  -0.231498522   0.259885738  -0.312070675   0.022657527
                        -0.000766170  -0.000591520  -0.000597194   0.000253261   0.189660216  -0.032290195   0.005649184   0.037513347

    4    4.2  1.5  1.5   0.000622215   0.000515718  -0.000004952   0.000195677  -0.120563791  -0.092330746  -0.032247557   0.078402565
                         0.000051901   0.000404272   0.000168853  -0.001205037   0.015690418   0.213015364  -0.164844424  -0.269326371

    5    5.2  1.5  1.5   0.000163264  -0.000205763  -0.000333656   0.001387200  -0.111228002  -0.114822624   0.027336495   0.313399328
                         0.000213667   0.000206707  -0.000274875   0.000262864  -0.001930278  -0.143636197   0.003589183   0.086021358

    6    6.2  1.5  1.5  -0.000629959  -0.000426091  -0.000665037   0.000212773   0.181080971  -0.067349802  -0.012290164   0.041089817
                        -0.000712121  -0.000533817   0.000254469  -0.000644461   0.281456884  -0.186856795   0.282702795  -0.157479123

    7    7.2  1.5  1.5  -0.003060589   0.003273687   0.001163020   0.001129441  -0.000000153   0.000000033   0.019159698  -0.024800503
                         0.000000000   0.000000000   0.000000000  -0.000000001   0.000000010  -0.000000080  -0.000000017   0.000000128

    8    8.2  1.5  1.5   0.003532291   0.003206577  -0.003530592   0.003913218  -0.024997080  -0.078170002  -0.021903399   0.068992334
                         0.010218543  -0.012235871  -0.002087089  -0.020545386   0.088580551   0.070490059  -0.032912672  -0.185610718

    9    9.2  1.5  1.5   0.002177807   0.002204372  -0.002175086   0.001751881  -0.011814259  -0.047802134  -0.015443220   0.034770614
                        -0.021853346   0.022147233   0.009602677  -0.003262972   0.059681854   0.050557485   0.009224169  -0.164452097

   10   10.2  1.5  1.5   0.003510157  -0.001989577  -0.003546530   0.018930742  -0.106733874  -0.086623117   0.022369629   0.245339539
                         0.003275474   0.004817861  -0.003811626   0.004548874  -0.027351691  -0.091510928  -0.025858674   0.075502792

   11    1.2  1.5  0.5  -0.194712514  -0.181843816   0.194582033  -0.200931196  -0.000000037  -0.000000042  -0.003280235   0.009518423
                         0.163822496  -0.093794910  -0.165526840   0.886250334   0.000000094   0.000000018  -0.002759040  -0.030113353

   12    2.2  1.5  0.5  -0.000154175  -0.000151803   0.000237574  -0.000222240   0.065992640   0.218047490   0.032768077  -0.095345267
                         0.000270595  -0.000295702   0.000181103   0.001411342  -0.253116623  -0.205379091   0.026207451   0.283327507

   13    3.2  1.5  0.5  -0.000461750  -0.000408221   0.000222351  -0.000296122   0.022845646   0.076457688   0.008004647  -0.022468534
                        -0.000015965   0.000412361  -0.001282601   0.000075576  -0.088955889  -0.071612828   0.010636241   0.123316809

   14    4.2  1.5  0.5   0.000932726  -0.001158047   0.000205132  -0.000159082   0.196298675  -0.216138830  -0.016899000   0.011412873
                        -0.000187743  -0.000118065   0.000064753  -0.000079295  -0.152240928   0.021144463  -0.000967860   0.003887301

   15    5.2  1.5  0.5   0.000015653   0.000026373  -0.000158469  -0.000056387   0.178813446  -0.036528842  -0.000386429   0.003397893
                        -0.000930487   0.001082541   0.000353684   0.000382114   0.206242562  -0.235626911   0.018273456  -0.024591235

   16    6.2  1.5  0.5   0.000324254  -0.000010358  -0.001297933  -0.000508487   0.070297474  -0.098249885  -0.006445855   0.030298734
                         0.000460272   0.000177175  -0.000161354   0.000142317  -0.099226690   0.040668658   0.000823866  -0.006516124

   17    7.2  1.5  0.5  -0.000929027  -0.000867627   0.000928405  -0.000958705   0.000000317   0.000000667   0.035653020  -0.103456776
                         0.000781642  -0.000447522  -0.000789774   0.004228579  -0.000000725  -0.000000696   0.029988101   0.327304506

   18    8.2  1.5  0.5  -0.001543783   0.020205910   0.001731556   0.010600111   0.020025328   0.107777341  -0.229699320   0.074214108
                        -0.009170440  -0.007267757  -0.009959747   0.004895613   0.055117776   0.052929311  -0.009415761   0.055761654

   19    9.2  1.5  0.5  -0.004011844   0.014278406   0.003139304  -0.005900035  -0.132305444  -0.048647365  -0.166903261  -0.118958768
                        -0.009979008  -0.007282337  -0.003384232   0.000463146   0.000535820  -0.094830611   0.025966711  -0.018255750

   20   10.2  1.5  0.5   0.012980162   0.010207221   0.010277721  -0.004705726  -0.050776241   0.004416232  -0.006827507  -0.041759327
                         0.023799735  -0.004660141  -0.007145446  -0.004604375  -0.057317063   0.059213148  -0.311587065   0.031897883

   21    1.2  1.5 -0.5  -0.415370344  -0.409775321   0.081049829  -0.021307013   0.000000108  -0.000000107  -0.031689849   0.001580017
                         0.530093567   0.409187328   0.413542485  -0.175406624  -0.000000070   0.000000037   0.000578931   0.003890124

   22    2.2  1.5 -0.5  -0.000924917  -0.000244205   0.000239001   0.000088605  -0.231926670   0.259538104   0.312045007  -0.022954485
                         0.000766435   0.000591463   0.000597230  -0.000253247   0.189566306  -0.032604105  -0.005590067  -0.037581418

   23    3.2  1.5 -0.5   0.000716586  -0.001199235  -0.000309833  -0.000352408  -0.080925004   0.091167639   0.090199295   0.016670759
                         0.000267955   0.000206760   0.000209258  -0.000089073   0.066523202  -0.011114447  -0.001963146  -0.013148051

   24    4.2  1.5 -0.5   0.000345263   0.000314410  -0.000148983   0.000176759   0.049000679   0.176416308   0.003032021  -0.008786003
                        -0.000314469   0.000015283   0.001304091   0.000516478  -0.211570402  -0.174893536   0.006519463  -0.030721691

   25    5.2  1.5 -0.5  -0.000092222   0.000493548  -0.001265056  -0.000386414  -0.228898413  -0.181306972   0.001207576   0.022258359
                         0.000498576   0.000196092  -0.000137694   0.000174016  -0.066782759  -0.204053985   0.001124015  -0.008151860

   26    6.2  1.5 -0.5   0.000176504   0.000085858   0.000093118   0.000134328   0.053068788   0.107506643   0.001237932  -0.007069948
                         0.000880544  -0.001189631   0.000222782  -0.000180683  -0.092144736  -0.056833190  -0.017158583   0.012472318

   27    7.2  1.5 -0.5  -0.001981847  -0.001955152   0.000386711  -0.000101663  -0.000000919   0.000000760   0.344438539  -0.017173247
                         0.002529223   0.001952346   0.001973127  -0.000836920   0.000000601  -0.000000250  -0.006292426  -0.042282174

   28    8.2  1.5 -0.5  -0.011990471  -0.010584468   0.002964772  -0.004865948   0.038502623  -0.052054803   0.025500144  -0.053142260
                        -0.000690759   0.000970414  -0.017695983   0.013537590   0.113732130  -0.027005275   0.104042162   0.249036730

   29    9.2  1.5 -0.5  -0.000328931  -0.000543361   0.007464620  -0.007002987  -0.087719604  -0.017692361   0.012481069  -0.068617604
                         0.005702216   0.006699631  -0.012746345   0.009158477  -0.060536589   0.131118313  -0.108284362   0.168977125

   30   10.2  1.5 -0.5   0.005720652  -0.008965531   0.013834113   0.027243377   0.058140146   0.050247026   0.024809135   0.264042645
                        -0.000369017   0.000007785  -0.003072167   0.002140964   0.012059325   0.057781747  -0.038809726   0.098902705

   31    1.2  1.5 -1.5   0.251300418   0.218961221  -0.085752021   0.134623734  -0.000000012  -0.000000012  -0.000320631   0.001008445
                         0.069153250  -0.319005642   0.829501264   0.257871554   0.000000003  -0.000000018   0.000136558   0.002215721

   32    2.2  1.5 -1.5  -0.000460630  -0.000407653   0.000223068  -0.000296331  -0.022895574  -0.076393808   0.007987839  -0.022474383
                        -0.000016238   0.000414161  -0.001282413   0.000076076   0.088909349   0.071720736   0.010273270   0.123327082

   33    3.2  1.5 -1.5   0.000153393   0.000151332  -0.000238396   0.000222570   0.065726543   0.218085100  -0.032801857   0.095409312
                        -0.000272421   0.000296270  -0.000180660  -0.001410894  -0.253502032  -0.204942775  -0.025857720  -0.283363961

   34    4.2  1.5 -1.5  -0.000662521  -0.000490747   0.000235455  -0.000615342  -0.223191988   0.031195810   0.280938117  -0.147182257
                         0.000621319   0.000462349   0.000696389  -0.000373564   0.063921122  -0.117510207   0.001242214  -0.077247005

   35    5.2  1.5 -1.5   0.000817246   0.000587793   0.000602117  -0.000109165   0.127529528   0.012513113   0.006685936  -0.004022757
                         0.000689054   0.000673008  -0.000138307   0.000058928   0.132483556  -0.110538765  -0.326094526   0.025809049

   36    6.2  1.5 -1.5  -0.000141840  -0.000470084  -0.000248558   0.001234094   0.176542433   0.255591863   0.164442194   0.274107462
                         0.000539017   0.000443305   0.000017649   0.000157589   0.091017575   0.216058315   0.005451384   0.068497248

   37    7.2  1.5 -1.5   0.001199023   0.001044724  -0.000409147   0.000642332   0.000000098   0.000000091   0.003484995  -0.010960869
                         0.000329950  -0.001522063   0.003957780   0.001230386   0.000000007  -0.000000076  -0.001484303  -0.024082440

   38    8.2  1.5 -1.5  -0.008615044  -0.000653969  -0.015296947  -0.005698052  -0.080033938   0.091074493   0.216383037   0.005914836
                         0.014723815   0.011907661   0.005595007  -0.000376728   0.068366608  -0.013296339  -0.005961977  -0.034049647

   39    9.2  1.5 -1.5  -0.003119856  -0.014946524   0.026260875   0.007826696  -0.056330714   0.060710174   0.140719113  -0.032130385
                        -0.001803374  -0.002224315   0.007567475  -0.006232154   0.040840632  -0.003973368   0.001978757  -0.006005050

   40   10.2  1.5 -1.5   0.011380093   0.008273622   0.009956934  -0.003396012   0.079502252  -0.013276485  -0.003953229  -0.032847922
                         0.008561863   0.008477973  -0.001585408   0.000260277   0.097761127  -0.109379939  -0.258101550   0.013278965

   41    1.2  0.5  0.5  -0.000000339   0.000000059  -0.000000496  -0.000000396  -0.000000074   0.000000045  -0.000000043  -0.000000290
                         0.000000351   0.000000046   0.000000230   0.000003995  -0.000000069  -0.000000277   0.000000031   0.000000418

   42    2.2  0.5  0.5   0.000000191  -0.000000014   0.000000186   0.000001069   0.000000017  -0.000000098   0.000000018   0.000000231
                        -0.000000074  -0.000000096  -0.000000032  -0.000001816   0.000000040   0.000000124   0.000000003  -0.000000171

   43    3.2  0.5  0.5  -0.000000095   0.000000143  -0.000000091   0.000001889  -0.000000039  -0.000000137  -0.000000030   0.000000137
                         0.000000144  -0.000000004   0.000000049   0.000001775  -0.000000008  -0.000000177   0.000000008   0.000000274

   44    4.2  0.5  0.5  -0.000000011   0.000000049  -0.000000043   0.000000931  -0.000000020  -0.000000074  -0.000000001   0.000000079
                         0.000000076  -0.000000008   0.000000038   0.000000613   0.000000001  -0.000000066   0.000000010   0.000000109

   45    5.2  0.5  0.5  -0.000000259   0.000000118  -0.000000140  -0.000001464  -0.000000022   0.000000117  -0.000000016  -0.000000220
                         0.000000076  -0.000000060   0.000000025   0.000000810  -0.000000024  -0.000000006   0.000000003   0.000000023

   46    6.2  0.5  0.5  -0.000000020  -0.000000006  -0.000000047   0.000000977  -0.000000008  -0.000000078  -0.000000007   0.000000100
                        -0.000000012  -0.000000035   0.000000003   0.000000633   0.000000002  -0.000000087   0.000000018   0.000000122

   47    7.2  0.5  0.5   0.000000051  -0.000000079  -0.000000017   0.000003994  -0.000000008  -0.000000316  -0.000000018   0.000000492
                        -0.000000030   0.000000001  -0.000000018   0.000000709   0.000000014  -0.000000183   0.000000011   0.000000233

   48    8.2  0.5  0.5  -0.000000159  -0.000000017  -0.000000060  -0.000000082  -0.000000012   0.000000020  -0.000000009  -0.000000046
                        -0.000000013  -0.000000028   0.000000014   0.000000923  -0.000000018  -0.000000068   0.000000009   0.000000099

   49    1.2  0.5 -0.5   0.000000024   0.000000038   0.000000111   0.000000901   0.000000002  -0.000000063   0.000000006   0.000000112
                         0.000000073  -0.000000058   0.000000061   0.000000196   0.000000009  -0.000000027   0.000000010   0.000000069

   50    2.2  0.5 -0.5   0.000000049   0.000000059   0.000000117   0.000000431   0.000000007  -0.000000022   0.000000005   0.000000042
                        -0.000000043  -0.000000005   0.000000123  -0.000000026   0.000000020   0.000000009   0.000000007   0.000000028

   51    3.2  0.5 -0.5   0.000000020   0.000000146  -0.000000170   0.000000302  -0.000000027  -0.000000043  -0.000000009   0.000000026
                         0.000000049  -0.000000027   0.000000045   0.000000082   0.000000003  -0.000000067   0.000000009   0.000000038

   52    4.2  0.5 -0.5   0.000000040  -0.000000029   0.000000276   0.000000289   0.000000034  -0.000000036   0.000000021   0.000000168
                         0.000000030  -0.000000022  -0.000000018  -0.000001776   0.000000005   0.000000177  -0.000000031  -0.000000193

   53    5.2  0.5 -0.5   0.000000213   0.000000056   0.000000334   0.000001028   0.000000040   0.000000031  -0.000000002   0.000000069
                        -0.000000144  -0.000000150   0.000000150   0.000000757   0.000000002  -0.000000048  -0.000000005   0.000000180

   54    6.2  0.5 -0.5  -0.000000031  -0.000000075   0.000000131  -0.000000011   0.000000018   0.000000017   0.000000005   0.000000010
                         0.000000039  -0.000000021   0.000000030  -0.000000051   0.000000008   0.000000049  -0.000000004  -0.000000007

   55    7.2  0.5 -0.5  -0.000000116  -0.000000014   0.000000073  -0.000000041   0.000000010   0.000000047   0.000000006  -0.000000081
                        -0.000000035   0.000000030   0.000000026   0.000001188  -0.000000010  -0.000000103   0.000000003   0.000000156

   56    8.2  0.5 -0.5  -0.000000010   0.000000028  -0.000000016  -0.000000563   0.000000018  -0.000000026  -0.000000025   0.000000008
                         0.000000024  -0.000000075  -0.000000122  -0.000000996   0.000000003   0.000000148  -0.000000002  -0.000000166


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.029729457  -0.011576928  -0.012174055  -0.010068518  -0.015392345   0.002152652  -0.000000069  -0.000000005
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.292765217  -0.114703308   0.201690096   0.166730915   0.123650809  -0.018283217  -0.046325747  -0.012210255
                         0.000002128  -0.002278047   0.009679687  -0.014246499   0.001145953  -0.003697036   0.001635174  -0.012470884

    3    3.2  1.5  1.5  -0.084533091  -0.030866083  -0.092966489  -0.076771524   0.257454563  -0.032866791   0.132289085   0.034819396
                         0.000003786   0.006523897  -0.027301471   0.040413399  -0.003304786   0.010994080  -0.004699525   0.035422570

    4    4.2  1.5  1.5   0.005955945   0.004969675   0.114589190  -0.134947620   0.019046611   0.152726112   0.010702768  -0.075060210
                        -0.002032598  -0.022763147  -0.087135139  -0.007029533   0.054352194  -0.137024829   0.037716259   0.038860092

    5    5.2  1.5  1.5   0.010829717   0.030494361   0.025783141  -0.054494722   0.035858764   0.149626765   0.024436462  -0.024529098
                         0.004024475   0.006073487   0.128819729  -0.110225997  -0.006254441   0.168242943  -0.008270013  -0.067600467

    6    6.2  1.5  1.5   0.001490558   0.006144707   0.019074646  -0.009627648   0.000512456   0.066516442  -0.003610634   0.009215296
                        -0.020483325  -0.021482440   0.113945981   0.153327205  -0.198733733  -0.059478348  -0.137315232  -0.013821930

    7    7.2  1.5  1.5   0.323131477   0.125830615   0.336648436   0.278423868   0.425643659  -0.059526982   0.000001958   0.000000185
                         0.000000015   0.000000071   0.000000092  -0.000000173  -0.000000019   0.000000685   0.000000030   0.000000025

    8    8.2  1.5  1.5   0.004364623   0.005725149  -0.065245860   0.074369973  -0.011073585  -0.100323840  -0.049023414   0.342219539
                        -0.237767601  -0.109445360  -0.091381038  -0.117798274  -0.112613734   0.099914822   0.128969882  -0.136074827

    9    9.2  1.5  1.5   0.002515200   0.002745637  -0.042261952   0.047388400  -0.006219426  -0.061831736  -0.025522277   0.218342069
                         0.345002611   0.123028762   0.172036507   0.107713508   0.215688865   0.030649231   0.087560710  -0.107653896

   10   10.2  1.5  1.5   0.008338056   0.023536882  -0.018513605   0.038939487  -0.024840908  -0.100193621  -0.155764504   0.172753226
                         0.020389462   0.012269283  -0.070686424   0.093916881  -0.003800790  -0.118937663  -0.054935023   0.405611544

   11    1.2  1.5  0.5   0.000620663   0.000781620  -0.008579608   0.009738093  -0.001405689  -0.013024693  -0.000000002  -0.000000038
                        -0.001022488  -0.002889309   0.002015381  -0.004265636   0.002736751   0.011015342   0.000000030   0.000000025

   12    2.2  1.5  0.5  -0.025527867   0.041804547  -0.058935731   0.069654153  -0.027717949  -0.205604286  -0.016650223   0.122023846
                        -0.024405813   0.115581085   0.017150734  -0.027734134   0.028772999   0.176501590   0.046587145  -0.051527415

   13    3.2  1.5  0.5   0.053770007  -0.143610670  -0.171990768   0.187241549   0.023342889   0.070404047  -0.005811912   0.042702262
                         0.101992201  -0.240153554   0.030646987  -0.090341309   0.025905879  -0.067040009   0.016492869  -0.018001159

   14    4.2  1.5  0.5  -0.319738305   0.005944993   0.134379866   0.151908723   0.176137186   0.026418061  -0.109860469  -0.028062293
                         0.032538358  -0.061002868  -0.064796510   0.062477400   0.008523873   0.058078587   0.000994648  -0.030099962

   15    5.2  1.5  0.5   0.003516477  -0.034388421   0.007165489  -0.004969219   0.007564259  -0.014640116  -0.007746658   0.031202384
                         0.295316509   0.134622361  -0.141832055  -0.148980553  -0.203961708   0.012109172  -0.120466659  -0.032581459

   16    6.2  1.5  0.5  -0.035952607  -0.287906153   0.088786011  -0.012066595   0.099270752  -0.121075761  -0.051318334  -0.017436551
                        -0.088776274   0.120054865   0.146785126  -0.122298139  -0.004299610  -0.123816636   0.016093246  -0.010109339

   17    7.2  1.5  0.5  -0.006746160  -0.008495787   0.237251484  -0.269286588   0.038871597   0.360168550  -0.000000041   0.000000839
                         0.011113439   0.031404832  -0.055731046   0.117956713  -0.075678933  -0.304606348  -0.000000828  -0.000000585

   18    8.2  1.5  0.5   0.217788839   0.092836454   0.188820015   0.174191988  -0.026189179  -0.031374939  -0.113623585  -0.163727988
                        -0.002348829   0.005820977  -0.005297834  -0.000190708  -0.007005051  -0.044731046   0.038335192  -0.316348125

   19    9.2  1.5  0.5   0.137990135   0.045285438   0.138270494   0.086731747  -0.000005190   0.047932112  -0.289856341   0.126152069
                         0.004896867   0.003223813   0.049725274  -0.061644593   0.017402642   0.050403633  -0.040220486   0.356079493

   20   10.2  1.5  0.5   0.000642440  -0.006521339  -0.021864012   0.033868166  -0.002317708   0.011541810  -0.016411724   0.075029689
                        -0.226433367  -0.086225923   0.014607960   0.008678582  -0.300537415   0.041736106  -0.256697092  -0.049892830

   21    1.2  1.5 -0.5   0.001664136   0.000863196   0.011775437   0.009738506  -0.015419440   0.001888699  -0.000000029   0.000000009
                         0.000001022   0.000675947   0.002198354  -0.003255794   0.000264974  -0.000901028  -0.000000003   0.000000021

   22    2.2  1.5 -0.5   0.084644626   0.030521975   0.092947314   0.076765971  -0.257474783   0.032561137   0.132375127   0.034725513
                        -0.000113130  -0.006378878   0.027386535  -0.040447817   0.003267839  -0.011312045  -0.004669550   0.035238209

   23    3.2  1.5 -0.5  -0.292875882  -0.114487837   0.201618346   0.166878418   0.123595625  -0.018305614   0.046311270   0.012218755
                         0.000051908  -0.002480837   0.009395967  -0.013957274   0.001194403  -0.003785352  -0.001662419   0.012509842

   24    4.2  1.5 -0.5  -0.051010823   0.128675590   0.129672530  -0.140707555  -0.027860341  -0.124406326  -0.012771535   0.100056370
                         0.033871780   0.293428645  -0.085570567   0.008890200  -0.100176698   0.118746411   0.039119877  -0.045376055

   25    5.2  1.5 -0.5   0.101886465  -0.258654034   0.027071920  -0.080060684   0.014088291  -0.124624902   0.042023570  -0.043720530
                        -0.097124461   0.142125813   0.159666977  -0.135018885  -0.007946965  -0.133218200   0.016405776  -0.112519868

   26    6.2  1.5 -0.5  -0.037505542   0.094845251   0.058228073  -0.056659417  -0.015070327  -0.043094369  -0.011555363   0.053322047
                        -0.310578980  -0.010797650   0.116493195   0.168942335   0.178330225   0.042373285   0.016514181  -0.007022329

   27    7.2  1.5 -0.5  -0.018087558  -0.009382073  -0.325625317  -0.269298475   0.426392880  -0.052227734   0.000000827  -0.000000237
                        -0.000011129  -0.007346978  -0.060791064   0.090032547  -0.007327350   0.024916009   0.000000114  -0.000000667

   28    8.2  1.5 -0.5   0.033127287  -0.099427441   0.163665904  -0.183351983  -0.005297485   0.030127457  -0.015231643   0.119199019
                         0.074206421  -0.157319049  -0.064699521   0.053152264   0.011432660  -0.035525474   0.355880424  -0.013095706

   29    9.2  1.5 -0.5   0.025095831  -0.079870569   0.094468037  -0.100250057  -0.004345197   0.034286320  -0.035584497   0.245941060
                         0.056025124  -0.094079723   0.030727092   0.096325967  -0.087524961  -0.001538751  -0.376085882  -0.158579016

   30   10.2  1.5 -0.5  -0.073551847   0.237144287  -0.004979342  -0.008131434  -0.018570929  -0.198985313   0.089064913  -0.093248508
                         0.053459463  -0.111880354   0.011090327  -0.002170868  -0.039367844  -0.228929413   0.013643979  -0.239723767

   31    1.2  1.5 -1.5   0.005779736  -0.014594706   0.010894060  -0.011724185  -0.002381187  -0.010253492   0.000000006  -0.000000061
                         0.010233959  -0.025864754  -0.001757205   0.005817637  -0.001118615   0.009274534  -0.000000001   0.000000040

   32    2.2  1.5 -1.5   0.053726235  -0.143614124  -0.171945594   0.187208511   0.023384174   0.070412658   0.005820846  -0.042703663
                         0.102326557  -0.240030547   0.030310737  -0.090631879   0.025940871  -0.067012321  -0.016454081   0.018031597

   33    3.2  1.5 -1.5   0.025554536  -0.041824243   0.058883511  -0.069642482   0.027737795   0.205607652  -0.016657557   0.121958911
                         0.024735525  -0.115433210  -0.017157611   0.027688345  -0.029216959  -0.176448959   0.046793919  -0.051464320

   34    4.2  1.5 -1.5  -0.019856295  -0.020795021   0.128921852   0.138251208  -0.197945490  -0.039542913   0.084445572  -0.006181350
                        -0.002306270  -0.009491719  -0.025676883   0.012903714   0.000087250  -0.084230933   0.003625199  -0.038715309

   35    5.2  1.5 -1.5   0.000679954  -0.003556984   0.036381711  -0.045493839   0.001809242   0.005906581  -0.006229971   0.025646023
                         0.017552602   0.009666098  -0.139397717  -0.142687900   0.202850704  -0.005158799  -0.071642282  -0.002793468

   36    6.2  1.5 -1.5   0.002114523   0.023556704   0.086174340   0.009367494  -0.054514300   0.141420022  -0.014180108   0.054569032
                         0.003692783   0.003187405   0.131283580  -0.117707521  -0.005720523   0.150991103  -0.008653792   0.126058563

   37    7.2  1.5 -1.5  -0.062820442   0.158631071  -0.301252522   0.324208104   0.065846740   0.283538506  -0.000000202   0.000001693
                        -0.111233582   0.281126110   0.048591637  -0.160874726   0.030933025  -0.256467241   0.000000062  -0.000001059

   38    8.2  1.5 -1.5   0.068174205  -0.206853136  -0.104654470  -0.022873774   0.106985930   0.066047948  -0.367696129  -0.098789557
                        -0.044660466   0.108884252  -0.108970845   0.127566381   0.016138270   0.095783306   0.020746477  -0.096317821

   39    9.2  1.5 -1.5  -0.127863666   0.300592707  -0.035155735  -0.125795386   0.091754339  -0.131175003  -0.243373570  -0.060032065
                         0.067553077  -0.174960240   0.128253573  -0.140154718  -0.027989682  -0.130351242  -0.005660156  -0.068661550

   40   10.2  1.5 -1.5  -0.005340894   0.007843133  -0.019252953   0.025871913  -0.001308245   0.002773130   0.014185060  -0.118128680
                         0.016531212  -0.000535065   0.112914494   0.081600280  -0.141098280   0.011240448   0.440639279   0.115438652

   41    1.2  0.5  0.5   0.000000037  -0.000000175  -0.000000139   0.000000069   0.000000020  -0.000000509  -0.000000013  -0.000000020
                         0.000000028   0.000000313  -0.000000036  -0.000000115  -0.000000017  -0.000000038   0.000000001   0.000000034

   42    2.2  0.5  0.5  -0.000000013   0.000000121   0.000000070  -0.000000058   0.000000007   0.000000254   0.000000008   0.000000019
                        -0.000000020  -0.000000122   0.000000048   0.000000040  -0.000000013   0.000000075   0.000000001  -0.000000011

   43    3.2  0.5  0.5   0.000000016   0.000000117  -0.000000036  -0.000000062   0.000000033  -0.000000142  -0.000000001   0.000000006
                         0.000000030   0.000000191  -0.000000004  -0.000000081  -0.000000018   0.000000257   0.000000009   0.000000030

   44    4.2  0.5  0.5   0.000000001   0.000000059  -0.000000004  -0.000000021   0.000000009  -0.000000046   0.000000000   0.000000005
                         0.000000004   0.000000073   0.000000013  -0.000000027  -0.000000008   0.000000121   0.000000004   0.000000013

   45    5.2  0.5  0.5   0.000000043  -0.000000144  -0.000000088   0.000000077  -0.000000015  -0.000000090  -0.000000007  -0.000000013
                         0.000000010  -0.000000018  -0.000000031  -0.000000006   0.000000013  -0.000000188  -0.000000007  -0.000000005

   46    6.2  0.5  0.5  -0.000000024   0.000000092   0.000000015  -0.000000028   0.000000023  -0.000000040   0.000000001   0.000000004
                         0.000000006   0.000000083   0.000000007  -0.000000012  -0.000000010   0.000000176   0.000000006   0.000000015

   47    7.2  0.5  0.5  -0.000000034   0.000000342   0.000000076  -0.000000185   0.000000069   0.000000067   0.000000011   0.000000025
                         0.000000055   0.000000193   0.000000009  -0.000000090  -0.000000055   0.000000545   0.000000019   0.000000039

   48    8.2  0.5  0.5   0.000000007  -0.000000022  -0.000000028   0.000000011   0.000000006  -0.000000088  -0.000000003  -0.000000006
                         0.000000017   0.000000062  -0.000000011  -0.000000032  -0.000000004   0.000000016   0.000000000   0.000000008

   49    1.2  0.5 -0.5   0.000000005   0.000000070   0.000000005  -0.000000033   0.000000006   0.000000008   0.000000002   0.000000006
                        -0.000000007   0.000000040   0.000000041  -0.000000026  -0.000000008   0.000000121   0.000000004   0.000000006

   50    2.2  0.5 -0.5   0.000000001   0.000000050  -0.000000015   0.000000008  -0.000000006   0.000000016   0.000000001   0.000000003
                         0.000000012  -0.000000000   0.000000004  -0.000000001  -0.000000005   0.000000062   0.000000003  -0.000000001

   51    3.2  0.5 -0.5   0.000000012  -0.000000002   0.000000028  -0.000000060   0.000000004  -0.000000095  -0.000000003   0.000000002
                        -0.000000047   0.000000095   0.000000050  -0.000000016  -0.000000002   0.000000050   0.000000003   0.000000011

   52    4.2  0.5 -0.5   0.000000044   0.000000062  -0.000000028  -0.000000010  -0.000000014   0.000000344   0.000000010   0.000000013
                         0.000000034  -0.000000223   0.000000009  -0.000000006   0.000000007  -0.000000030  -0.000000006  -0.000000019

   53    5.2  0.5 -0.5  -0.000000069   0.000000140   0.000000020   0.000000022   0.000000022  -0.000000086   0.000000002  -0.000000008
                         0.000000009   0.000000092  -0.000000017  -0.000000006   0.000000022   0.000000239   0.000000005   0.000000002

   54    6.2  0.5 -0.5   0.000000019  -0.000000009  -0.000000033   0.000000013  -0.000000004   0.000000048   0.000000002   0.000000000
                         0.000000014  -0.000000043   0.000000007  -0.000000020   0.000000002  -0.000000027  -0.000000001  -0.000000008

   55    7.2  0.5 -0.5  -0.000000025   0.000000005  -0.000000013   0.000000046  -0.000000002  -0.000000153  -0.000000003  -0.000000012
                         0.000000016   0.000000090  -0.000000031  -0.000000015   0.000000013   0.000000066   0.000000004   0.000000009

   56    8.2  0.5 -0.5   0.000000049  -0.000000096  -0.000000043   0.000000002   0.000000024   0.000000163   0.000000007   0.000000011
                        -0.000000001  -0.000000148   0.000000037  -0.000000007  -0.000000009  -0.000000189  -0.000000006  -0.000000016


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.000000032   0.000000197  -0.000000074   0.000000094  -0.000000695   0.000000078  -0.009322775   0.002448761
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.106757038   0.547462026  -0.026121075   0.033721592  -0.184643389   0.031987094   0.055412197  -0.013129407
                         0.030267646  -0.013317207  -0.035504469  -0.034864729   0.000288856   0.022233576   0.000069917   0.002718335

    3    3.2  1.5  1.5   0.032666760   0.175268475   0.008151251  -0.026172166  -0.070608357   0.014504611  -0.067903276   0.013887468
                         0.008234076  -0.003290163   0.190142944   0.156659446   0.005238317   0.036329269  -0.000189869  -0.007912032

    4    4.2  1.5  1.5  -0.067341261   0.010969124  -0.194757368  -0.074374636   0.044034579   0.280852437  -0.010715475  -0.056644160
                         0.061763437  -0.017034215  -0.211005477   0.269969059   0.021411230  -0.107833010  -0.049169503  -0.032455572

    5    5.2  1.5  1.5   0.094657522  -0.022370333   0.227665609  -0.230924858  -0.118697018  -0.032312915   0.014544137   0.039150860
                         0.115700724  -0.011015419  -0.026286609   0.021288091  -0.052962357  -0.395251606  -0.003121515  -0.070531640

    6    6.2  1.5  1.5  -0.046685879   0.009465096   0.090864685   0.172313157   0.041729452   0.167395833  -0.007240407  -0.041484432
                         0.019251117   0.010738196  -0.115612852   0.166186112   0.023478425  -0.003544751   0.068782332  -0.025804228

    7    7.2  1.5  1.5  -0.000000876  -0.000006369   0.000002276  -0.000002856   0.000020340  -0.000002691  -0.234846949   0.061685917
                         0.000000048   0.000000008   0.000000108   0.000000401   0.000000069  -0.000000924   0.000000008  -0.000000185

    8    8.2  1.5  1.5   0.064628742  -0.005341302   0.016360847  -0.003288450  -0.040084798  -0.278686416   0.033650082   0.187064441
                        -0.034420704   0.173581151  -0.051285383   0.051875742  -0.001578010   0.063787709  -0.052131632   0.147506041

    9    9.2  1.5  1.5   0.064490863  -0.012347854   0.025072296   0.014111686  -0.026065830  -0.167222826   0.024441821   0.129699646
                        -0.086627340  -0.233201540  -0.017343638   0.020239962   0.116246647   0.007579106   0.171007434   0.032956286

   10   10.2  1.5  1.5  -0.066891973   0.012775909   0.079541285  -0.110242109   0.019145412   0.076948862  -0.050676858  -0.141157977
                        -0.081009185   0.000828874  -0.070698027  -0.002732517   0.051395723   0.303352005   0.047860576   0.225744515

   11    1.2  1.5  0.5  -0.000000078   0.000000017   0.000000088  -0.000000117  -0.000000015   0.000000209   0.003861203   0.021189417
                         0.000000089  -0.000000070   0.000000408  -0.000000518  -0.000000107  -0.000000063   0.004743806   0.013247192

   12    2.2  1.5  0.5   0.144934608  -0.018749518  -0.029562244   0.003955598  -0.014694974  -0.116882481   0.011450759   0.054872696
                        -0.123365557   0.031902619  -0.132631939   0.163032890   0.057603640   0.001203498   0.011768765   0.032405179

   13    3.2  1.5  0.5  -0.377320564   0.054134627  -0.065949753  -0.004213786   0.041351662   0.262850908   0.004670489   0.048407307
                         0.321348050  -0.079789595  -0.076620721   0.105786184  -0.013438629  -0.069100569   0.012239771   0.035687007

   14    4.2  1.5  0.5  -0.054143002   0.086193622   0.009079711  -0.036980267  -0.070205533  -0.040031498   0.023696588  -0.016872947
                        -0.076325259   0.008482838   0.287558660   0.211173035  -0.027913470  -0.192733221  -0.000442602   0.011947154

   15    5.2  1.5  0.5   0.025752860  -0.007383471  -0.267743666  -0.230027397   0.001302683  -0.018380484   0.001733942   0.002428962
                        -0.002958290  -0.120784550   0.026576968  -0.049545269   0.034109945   0.063025643  -0.029656299   0.004568466

   16    6.2  1.5  0.5   0.141663568  -0.010470462   0.046260445  -0.019462896   0.052068901   0.110206098   0.019549612   0.017241195
                         0.167093450  -0.010851538   0.047056339   0.102687730   0.073771861   0.506142618   0.002939853  -0.025593709

   17    7.2  1.5  0.5   0.000002349  -0.000000083  -0.000002786   0.000002039   0.000000316  -0.000002664   0.097266085   0.533776063
                        -0.000002170   0.000000991  -0.000011720   0.000014358   0.000002920   0.000000610   0.119499592   0.333705667

   18    8.2  1.5  0.5   0.046681084   0.196439865   0.125563290  -0.173805237  -0.117316512   0.032793806   0.333166053  -0.124090170
                         0.019172888  -0.008591682   0.090603824   0.109063784   0.005028318   0.009081791   0.017698893   0.098778613

   19    9.2  1.5  0.5   0.011668490   0.136892424  -0.184193036   0.232707490   0.013144087  -0.017603123   0.255084986   0.017687315
                        -0.006832394   0.005478186   0.148565359   0.069079015   0.000094159   0.048991336  -0.026529125  -0.089984857

   20   10.2  1.5  0.5   0.014780133  -0.005948779  -0.140125842  -0.101931530  -0.000243594  -0.006579120   0.001563570  -0.030000377
                        -0.052603139  -0.262842026   0.025483111  -0.037299573   0.081949457  -0.011559748   0.217711444  -0.046096044

   21    1.2  1.5 -0.5  -0.000000027  -0.000000109   0.000000017  -0.000000048   0.000000010  -0.000000024   0.025747041  -0.005467826
                        -0.000000002   0.000000007   0.000000512   0.000000418   0.000000004   0.000000073   0.000069257   0.002644027

   22    2.2  1.5 -0.5   0.038034517   0.190928053  -0.002257040   0.016009534   0.101081332  -0.017067119   0.067878604  -0.013889724
                         0.011112125  -0.005306922  -0.171161503  -0.143640286  -0.004790539  -0.032839715   0.000212367   0.007950415

   23    3.2  1.5 -0.5  -0.095592539  -0.497711200  -0.044223790   0.064383554  -0.271007017   0.039336605   0.055387552  -0.013200514
                        -0.025683384   0.011207792  -0.089270676  -0.072260538  -0.000572249   0.013890346   0.000076680   0.002828637

   24    4.2  1.5 -0.5  -0.058198505   0.012808521  -0.071845560   0.007614440  -0.004644877  -0.089613176  -0.000368963  -0.024326927
                         0.060243776   0.089880046  -0.227327760   0.285463324  -0.165886259   0.015260218  -0.019628893  -0.018060973

   25    5.2  1.5 -0.5  -0.076467896   0.020899661  -0.213606054   0.269202627   0.065796922  -0.031069068   0.007513130   0.021994753
                        -0.093932237  -0.017249309   0.076020432  -0.005934697   0.062055042  -0.009412620   0.002631346  -0.028881943

   26    6.2  1.5 -0.5  -0.002658975  -0.003127950   0.006375112  -0.026251211  -0.006541135   0.037571686  -0.001163514  -0.014435730
                        -0.010120246  -0.215221488  -0.039123054   0.039788520   0.529065843  -0.091241900   0.023555197  -0.013590368

   27    7.2  1.5 -0.5   0.000000692   0.000003158  -0.000000525   0.000001596  -0.000000146   0.000000293   0.648584889  -0.137738249
                         0.000000098  -0.000000124  -0.000014757  -0.000012147  -0.000000114  -0.000001854   0.001744619   0.066604789

   28    8.2  1.5 -0.5  -0.154017967   0.023056504  -0.185727481  -0.129391418  -0.014152936  -0.107604097  -0.041971133  -0.288356845
                         0.122436730  -0.046532131  -0.086462437   0.093927980   0.038860910   0.000823306  -0.157216209  -0.179449586

   29    9.2  1.5 -0.5  -0.097926206   0.015495645   0.228639193   0.197606998  -0.001688709  -0.021755753  -0.026757915  -0.206094247
                         0.097520324  -0.003600113  -0.089155111   0.127716286   0.036617304  -0.002137693   0.084994768  -0.166418342

   30   10.2  1.5 -0.5  -0.171278302   0.046644785  -0.096166508   0.146041426   0.023186445  -0.031115507  -0.033348216  -0.088682670
                        -0.200342224   0.028315474   0.044237026   0.000011239  -0.011861379  -0.066596162   0.051234660   0.167894164

   31    1.2  1.5 -1.5   0.000000169  -0.000000038  -0.000000070  -0.000000041   0.000000101   0.000000691  -0.000194824  -0.008604646
                        -0.000000131   0.000000004  -0.000000019   0.000000082  -0.000000038  -0.000000254  -0.002380664  -0.007179264

   32    2.2  1.5 -1.5   0.418805699  -0.059873584  -0.033560496   0.002362732   0.026954982   0.174120857   0.004672738   0.048419484
                        -0.355238017   0.095631559  -0.034206509   0.050068154  -0.015014433  -0.041354522   0.012111364   0.035707713

   33    3.2  1.5 -1.5   0.134007026  -0.021225656   0.040280564  -0.002149098   0.009607240   0.085684404  -0.011463661  -0.054889852
                        -0.113697801   0.029233187   0.147415349  -0.182638931  -0.058658503   0.008679714  -0.011725590  -0.032432793

   34    4.2  1.5 -1.5   0.020661021   0.094485824   0.137341365  -0.180103178   0.300507696  -0.036306920   0.067970904  -0.033703725
                         0.008677608   0.002947593   0.244883972   0.223347371   0.013397411  -0.011818974   0.003507399   0.036992726

   35    5.2  1.5 -1.5  -0.010317581   0.008246450   0.262454477   0.249105712   0.025192940   0.074829474   0.004334996   0.012704067
                         0.030040781   0.151858180   0.037874602  -0.000947365   0.370473315  -0.058636629  -0.083192527   0.009646983

   36    6.2  1.5 -1.5  -0.000250955   0.048209553  -0.136459855   0.092569530   0.195508650  -0.051320398   0.048725432   0.029525528
                        -0.013096255  -0.018552339   0.166927974   0.103712120  -0.041436984   0.028076019  -0.001306367  -0.059181404

   37    7.2  1.5 -1.5  -0.000004977   0.000001041   0.000002103   0.000000531  -0.000003037  -0.000019751  -0.004907776  -0.216756545
                         0.000004278  -0.000000567   0.000000625  -0.000002166   0.000001267   0.000005979  -0.059970514  -0.180850639

   38    8.2  1.5 -1.5  -0.123180607  -0.072592580  -0.023225862   0.029595240  -0.277357854   0.032422599  -0.254662994  -0.024966028
                        -0.127816567   0.018306501   0.068936891   0.053904863  -0.010227300  -0.013884377   0.006201613   0.063274060

   39    9.2  1.5 -1.5   0.143833706  -0.108141967  -0.029205380   0.024125898  -0.162619841   0.044258239  -0.115133031   0.144351094
                         0.182146533  -0.021628631   0.036474237   0.033301429   0.024426794   0.105107318  -0.012351079  -0.146934582

   40   10.2  1.5 -1.5   0.011379824  -0.004130517   0.089124084   0.076101069  -0.000136633  -0.022562311  -0.000009214  -0.023248769
                        -0.011622249  -0.107609205  -0.049752027   0.070049178  -0.315294844   0.052347351   0.275636455  -0.064508303

   41    1.2  0.5  0.5  -0.000000065   0.000000000   0.000000038  -0.000000293   0.000000012   0.000000453  -0.000000066  -0.000000242
                         0.000000015  -0.000000121   0.000000018  -0.000000038   0.000000011  -0.000000265  -0.000000021   0.000000063

   42    2.2  0.5  0.5   0.000000029  -0.000000036  -0.000000008   0.000000120   0.000000030  -0.000000272   0.000000026   0.000000110
                         0.000000003   0.000000062  -0.000000006   0.000000077  -0.000000005   0.000000051   0.000000014   0.000000026

   43    3.2  0.5  0.5  -0.000000010  -0.000000096   0.000000032  -0.000000142  -0.000000011   0.000000016  -0.000000019  -0.000000107
                        -0.000000023  -0.000000061   0.000000020   0.000000114   0.000000012  -0.000000445  -0.000000016   0.000000125

   44    4.2  0.5  0.5  -0.000000003  -0.000000048   0.000000010  -0.000000062   0.000000002  -0.000000007  -0.000000002  -0.000000036
                         0.000000003  -0.000000025   0.000000018   0.000000069   0.000000005  -0.000000188   0.000000000   0.000000062

   45    5.2  0.5  0.5  -0.000000034   0.000000044   0.000000002  -0.000000020   0.000000015   0.000000121  -0.000000016  -0.000000049
                        -0.000000018  -0.000000003  -0.000000005  -0.000000083  -0.000000005   0.000000187  -0.000000011  -0.000000059

   46    6.2  0.5  0.5   0.000000027  -0.000000057   0.000000002  -0.000000076  -0.000000027   0.000000023   0.000000003  -0.000000038
                         0.000000015  -0.000000042   0.000000021   0.000000062  -0.000000008  -0.000000261  -0.000000008   0.000000053

   47    7.2  0.5  0.5   0.000000039  -0.000000174   0.000000021  -0.000000110  -0.000000031  -0.000000245  -0.000000007  -0.000000050
                        -0.000000002  -0.000000068   0.000000044   0.000000242   0.000000027  -0.000000692  -0.000000045   0.000000194

   48    8.2  0.5  0.5  -0.000000001  -0.000000002  -0.000000009  -0.000000061  -0.000000010   0.000000086  -0.000000007  -0.000000055
                        -0.000000028  -0.000000039   0.000000007  -0.000000012  -0.000000003  -0.000000072  -0.000000020  -0.000000002

   49    1.2  0.5 -0.5   0.000000007  -0.000000040  -0.000000006   0.000000002  -0.000000002  -0.000000046   0.000000004   0.000000002
                         0.000000003  -0.000000008  -0.000000022   0.000000091   0.000000007  -0.000000122   0.000000008   0.000000034

   50    2.2  0.5 -0.5  -0.000000014  -0.000000021   0.000000001   0.000000016   0.000000003  -0.000000064   0.000000007   0.000000021
                        -0.000000000  -0.000000012  -0.000000019   0.000000054   0.000000009  -0.000000033   0.000000015   0.000000029

   51    3.2  0.5 -0.5   0.000000014  -0.000000012  -0.000000016  -0.000000017  -0.000000003   0.000000080   0.000000006   0.000000006
                         0.000000024  -0.000000019  -0.000000006   0.000000010  -0.000000025  -0.000000071   0.000000007   0.000000018

   52    4.2  0.5 -0.5  -0.000000073   0.000000013   0.000000015   0.000000193   0.000000040  -0.000000370  -0.000000004   0.000000126
                        -0.000000081   0.000000106  -0.000000022   0.000000048   0.000000010   0.000000210  -0.000000003  -0.000000024

   53    5.2  0.5 -0.5  -0.000000047  -0.000000048  -0.000000008  -0.000000065  -0.000000027  -0.000000019   0.000000040  -0.000000012
                         0.000000042  -0.000000049  -0.000000010   0.000000099   0.000000028  -0.000000243   0.000000012   0.000000062

   54    6.2  0.5 -0.5  -0.000000033   0.000000008   0.000000004   0.000000034   0.000000017  -0.000000047  -0.000000011   0.000000014
                        -0.000000022   0.000000024   0.000000007   0.000000000   0.000000006   0.000000058  -0.000000002  -0.000000012

   55    7.2  0.5 -0.5   0.000000030  -0.000000007   0.000000000  -0.000000121  -0.000000014   0.000000161   0.000000007  -0.000000069
                         0.000000043  -0.000000070   0.000000009   0.000000001   0.000000007  -0.000000143  -0.000000005   0.000000012

   56    8.2  0.5 -0.5  -0.000000043   0.000000001   0.000000001   0.000000144   0.000000010  -0.000000126  -0.000000011   0.000000060
                        -0.000000064   0.000000095   0.000000002  -0.000000050  -0.000000006   0.000000284   0.000000001  -0.000000051


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5  -0.012838544   0.023134560  -0.000001099  -0.000000067   0.000000886  -0.000000065  -0.000000011   0.000001556
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.034249096  -0.060784937  -0.333043128   0.002811982   0.066817744   0.029708575   0.018863321   0.314417694
                        -0.000897153  -0.000757392  -0.000646869  -0.006298819   0.001254763  -0.013099420   0.026561927  -0.003725617

    3    3.2  1.5  1.5   0.026555370  -0.050347121   0.207351704  -0.066055415   0.631422744  -0.079279806   0.037879945  -0.155908818
                         0.002570598   0.002187645  -0.005917917   0.021751478  -0.011590721   0.016040243   0.044884241   0.003025471

    4    4.2  1.5  1.5   0.003194826   0.003438835  -0.007673238   0.090256097  -0.011758214  -0.042466766  -0.025341124   0.003573755
                        -0.021916285  -0.028546807  -0.126933003   0.318349863  -0.235194552  -0.073404681   0.041131982   0.232052649

    5    5.2  1.5  1.5   0.031076976   0.019048674  -0.045468278  -0.041429647  -0.063965347  -0.137280191   0.231574743   0.098948438
                         0.001491146   0.007036961   0.011481517   0.010679593   0.073434902   0.050731783   0.281344808  -0.042813749

    6    6.2  1.5  1.5   0.000520473   0.001762320   0.006066043   0.020573986   0.015605116  -0.010150882  -0.093204698  -0.017454282
                        -0.025997732   0.016034040   0.073689249   0.059320709   0.500412641  -0.100103419   0.027293031  -0.324040970

    7    7.2  1.5  1.5  -0.323411330   0.582774994  -0.000027280  -0.000001690   0.000021894  -0.000001639  -0.000000254   0.000038560
                        -0.000000049  -0.000000052   0.000000007  -0.000000007   0.000000011   0.000000016   0.000000030  -0.000000005

    8    8.2  1.5  1.5  -0.013003234  -0.013456335   0.000000115  -0.000001895   0.000000590   0.000008224   0.000002224  -0.000000079
                        -0.045121052   0.288681904  -0.000005391  -0.000005957   0.000007799   0.000019065  -0.000003241   0.000018011

    9    9.2  1.5  1.5  -0.004041397  -0.006121947   0.000000094  -0.000000835   0.000000565   0.000006142  -0.000001129   0.000000439
                         0.256192220  -0.323065180   0.000019830  -0.000002528  -0.000010721   0.000015847   0.000002467  -0.000026166

   10   10.2  1.5  1.5  -0.103431769  -0.062879122   0.000002817  -0.000008862  -0.000000451  -0.000000190  -0.000025591  -0.000005477
                        -0.004340007  -0.030328340   0.000000558   0.000002752  -0.000000662  -0.000000014  -0.000030069  -0.000001352

   11    1.2  1.5  0.5  -0.001251360  -0.001381324  -0.000000004   0.000000061   0.000000019   0.000000332  -0.000000990  -0.000000001
                         0.009652409   0.005866050   0.000000079   0.000000212  -0.000000006   0.000000834   0.000000831   0.000000289

   12    2.2  1.5  0.5  -0.011517113  -0.007581304  -0.009896893   0.165135187   0.000722876  -0.013532681   0.233973195  -0.001123755
                         0.051793521   0.030181601  -0.072972510   0.579816883   0.090170504  -0.036159235  -0.190787209  -0.026709982

   13    3.2  1.5  0.5   0.020733912   0.008278694   0.001141712  -0.015961545   0.010065449   0.100710069   0.334906041   0.001922308
                        -0.054563726  -0.029236388   0.043721496  -0.045836491   0.057664576   0.231898730  -0.286964574  -0.061811703

   14    4.2  1.5  0.5   0.066431063  -0.050855730   0.530467277   0.045615407  -0.207948051  -0.061113994  -0.064170637  -0.038915597
                         0.008997885   0.006164862   0.000877466  -0.005275719   0.008658071   0.027823436  -0.075462322   0.011624262

   15    5.2  1.5  0.5  -0.006769733  -0.006466632   0.016795034   0.003952127  -0.008209223  -0.013875084  -0.014543603   0.016747131
                        -0.043587466   0.072170518   0.072775312   0.011700240   0.297903330  -0.053355040   0.017068054   0.490402130

   16    6.2  1.5  0.5  -0.044044406  -0.065162842   0.198369792   0.021940364  -0.131011109  -0.005290913   0.026594353   0.090084765
                        -0.016130142  -0.017924097  -0.008735739  -0.001744637  -0.030883584   0.012548470   0.017451833  -0.058157973

   17    7.2  1.5  0.5  -0.031522376  -0.034796330  -0.000000111   0.000001418   0.000000463   0.000008222  -0.000025029  -0.000000023
                         0.243150579   0.147770170   0.000002009   0.000004960  -0.000000182   0.000020671   0.000020994   0.000007355

   18    8.2  1.5  0.5   0.037645442  -0.138317132   0.000011561   0.000001794  -0.000007791  -0.000009386  -0.000008357  -0.000019047
                        -0.016401270  -0.005995892  -0.000000010  -0.000000305   0.000000461   0.000004087  -0.000010297   0.000000101

   19    9.2  1.5  0.5   0.095902608  -0.048222572   0.000012140  -0.000000264  -0.000002449   0.000015150   0.000013298  -0.000010764
                         0.006827379  -0.009259341   0.000000273   0.000000343  -0.000001055  -0.000006219   0.000015873  -0.000000169

   20   10.2  1.5  0.5   0.012991090   0.009834628   0.000000274   0.000000059   0.000000417   0.000001661  -0.000004963   0.000000334
                        -0.190541580   0.353989783  -0.000008408  -0.000000062   0.000016434   0.000001436   0.000005169   0.000005977

   21    1.2  1.5 -0.5  -0.004307859   0.008563672   0.000000221  -0.000000075   0.000000897  -0.000000002   0.000000186  -0.000001292
                        -0.000851582  -0.000724540  -0.000000002   0.000000026  -0.000000026  -0.000000019   0.000000219   0.000000005

   22    2.2  1.5 -0.5  -0.026663575   0.050281116   0.602541605   0.072710888  -0.037668095  -0.083114231  -0.016690621   0.302181792
                        -0.002595109  -0.002209669  -0.005497375  -0.011079875   0.001252995   0.035401633  -0.021420514  -0.005622882

   23    3.2  1.5 -0.5   0.034284522  -0.060761782  -0.049290541  -0.042333668   0.252801880  -0.056682836  -0.040597369   0.441215867
                        -0.000883726  -0.000765512  -0.002319518   0.011279780  -0.001075571   0.013570657  -0.045514525   0.002066283

   24    4.2  1.5 -0.5  -0.022751952  -0.010215118   0.007804165  -0.150746234   0.001467084   0.075230326   0.037306813  -0.000874978
                         0.043931953   0.065207816   0.045345305  -0.508259826  -0.067127893   0.194931857  -0.017083608   0.100195013

   25    5.2  1.5 -0.5  -0.068737985  -0.037594708   0.012382184  -0.075545279  -0.054454034  -0.269381933   0.305770517  -0.022872630
                        -0.016443704  -0.017758949   0.000476199   0.004732012   0.008781031   0.127090353   0.384813528  -0.004068968

   26    6.2  1.5 -0.5  -0.001919650   0.000007833   0.004509021  -0.047520166   0.009206063   0.080150141  -0.105586970   0.009479451
                         0.068854891  -0.049159370   0.021534156  -0.192564672  -0.009806804   0.107921852   0.011667199  -0.031317363

   27    7.2  1.5 -0.5  -0.108517846   0.215724376   0.000005171  -0.000001897   0.000022238  -0.000000021   0.000004738  -0.000032653
                        -0.021452016  -0.018251746  -0.000000057   0.000000673  -0.000000650  -0.000000490   0.000005581   0.000000120

   28    8.2  1.5 -0.5  -0.061461019  -0.020499423   0.000000208  -0.000003258   0.000000039   0.000002724   0.000014615   0.000000256
                         0.105333321   0.014094223   0.000001812  -0.000011070  -0.000010243   0.000007337  -0.000012294   0.000013261

   29    9.2  1.5 -0.5  -0.018913331   0.000535717   0.000000265  -0.000003689   0.000000313   0.000001971   0.000008095  -0.000000102
                         0.041722804   0.075020857  -0.000000350  -0.000011559   0.000016384   0.000001835  -0.000007103  -0.000020668

   30   10.2  1.5 -0.5  -0.349286589  -0.197888338  -0.000000050   0.000007982   0.000001988  -0.000015268   0.000003698  -0.000007216
                        -0.094367880  -0.049493924   0.000000076  -0.000002636   0.000000970   0.000006198   0.000004776  -0.000000773

   31    1.2  1.5 -1.5  -0.007307568  -0.003223064   0.000000019  -0.000000310   0.000000026   0.000000357   0.000001188   0.000000009
                         0.021463937   0.011711979   0.000000065  -0.000001051   0.000000060   0.000000814  -0.000001010  -0.000000008

   32    2.2  1.5 -1.5   0.020746194   0.008271032   0.005231353  -0.094748293   0.000334900   0.028298421   0.242912285   0.002407902
                        -0.054592710  -0.029193500  -0.004436361  -0.318760821  -0.032465506   0.060939263  -0.201821671   0.033162959

   33    3.2  1.5 -1.5   0.011513908   0.007579914  -0.002205180   0.053409761   0.017076748   0.240985227  -0.121880082   0.000003051
                        -0.051861820  -0.030072424   0.069456360   0.201183907   0.079091766   0.583472594   0.097828187   0.058963267

   34    4.2  1.5 -1.5  -0.025695568   0.016682847  -0.331021889  -0.124046004   0.083817542  -0.220201322  -0.145893838   0.046523662
                        -0.003855115  -0.004642146   0.003407326   0.028679489   0.009527034   0.082439947  -0.179035709   0.015165714

   35    5.2  1.5 -1.5   0.000477833   0.000666876   0.001436537  -0.001842701   0.009099160   0.042210502   0.102505398   0.005078825
                         0.014083637  -0.026751829   0.042222519  -0.046996447   0.146162833  -0.087678067  -0.029709019   0.365250467

   36    6.2  1.5 -1.5   0.022120423   0.028778533  -0.062811411   0.072598666   0.095543126   0.465329684   0.196670348   0.088995613
                         0.000812962   0.006191373  -0.002882835  -0.015356504  -0.030799966  -0.184942569   0.259588640  -0.039443864

   37    7.2  1.5 -1.5  -0.184082461  -0.081191019   0.000000487  -0.000007686   0.000000648   0.000008841   0.000029438   0.000000218
                         0.540690666   0.295032537   0.000001617  -0.000026083   0.000001526   0.000020107  -0.000025023  -0.000000152

   38    8.2  1.5 -1.5   0.258084043   0.043247470   0.000006299  -0.000005084  -0.000020747   0.000007392  -0.000011759  -0.000003845
                         0.081503176   0.041031912   0.000000141   0.000001624   0.000000078  -0.000002612  -0.000013721  -0.000001020

   39    9.2  1.5 -1.5  -0.307174321  -0.232139014   0.000002705   0.000018975  -0.000016998  -0.000009623   0.000017258   0.000002515
                        -0.106617184  -0.048591998   0.000000090  -0.000005499   0.000000689   0.000004862   0.000019677   0.000001203

   40   10.2  1.5 -1.5  -0.005328606  -0.000499878  -0.000000125   0.000001330   0.000000011  -0.000000795  -0.000003273   0.000000092
                        -0.051084015   0.089561393   0.000009353   0.000002547   0.000000181  -0.000000152   0.000004517  -0.000039468

   41    1.2  0.5  0.5  -0.000000012  -0.000000025   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000126  -0.000000154   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   42    2.2  0.5  0.5  -0.000000017  -0.000000030   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000040   0.000000074  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   43    3.2  0.5  0.5  -0.000000036  -0.000000094   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000024  -0.000000035   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   44    4.2  0.5  0.5  -0.000000018  -0.000000043   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000006  -0.000000010   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   45    5.2  0.5  0.5   0.000000054   0.000000057  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000067  -0.000000055   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   46    6.2  0.5  0.5  -0.000000009  -0.000000042   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000018  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   47    7.2  0.5  0.5  -0.000000074  -0.000000162   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000057   0.000000044  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   48    8.2  0.5  0.5   0.000000004  -0.000000005   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000024  -0.000000036   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   49    1.2  0.5 -0.5  -0.000000023  -0.000000043   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000006   0.000000005  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   50    2.2  0.5 -0.5  -0.000000004  -0.000000016   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000005  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   51    3.2  0.5 -0.5  -0.000000026  -0.000000030   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000031   0.000000012   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.000000031   0.000000027  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000020   0.000000050  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   53    5.2  0.5 -0.5  -0.000000022  -0.000000055   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000013  -0.000000012   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   54    6.2  0.5 -0.5  -0.000000003   0.000000005  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000032  -0.000000010  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   55    7.2  0.5 -0.5  -0.000000000  -0.000000018   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000004  -0.000000041   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   56    8.2  0.5 -0.5   0.000000017   0.000000028  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000046   0.000000011  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5  -0.000000522  -0.000000016   0.000000010   0.000000078  -0.000000058  -0.000000039  -0.000000260  -0.000000033
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.260150167   0.148692668   0.051150892   0.308381302  -0.066069514  -0.045358215  -0.095037654  -0.033741628
                        -0.009480242   0.066348041   0.006666306  -0.011871333  -0.008602110   0.027113178  -0.001212190   0.002421519

    3    3.2  1.5  1.5   0.031964390   0.078820760   0.018292657   0.115090268   0.093547278   0.056708719  -0.068162664  -0.005280098
                        -0.000714295   0.032559315   0.001458781  -0.002083941   0.025642233  -0.042556303   0.001083690   0.000113721

    4    4.2  1.5  1.5   0.006007937  -0.076519269  -0.038397866   0.010058446  -0.131917240   0.196339702   0.011566615  -0.012987741
                         0.268413662   0.227339731   0.059595659   0.000243234  -0.021900029  -0.045537601  -0.014806004   0.147748251

    5    5.2  1.5  1.5   0.333395205   0.216853760   0.052485246  -0.000462593   0.056047657  -0.010478542  -0.040351260   0.225159253
                         0.025230649   0.083753692   0.036232015   0.003770660  -0.091309765   0.115708925  -0.017712244   0.132985851

    6    6.2  1.5  1.5  -0.041355844  -0.070782646  -0.025969769   0.006991589  -0.040059419   0.040265821   0.012316401  -0.035945770
                         0.276580739   0.112013739   0.023217749  -0.007806040  -0.121512128  -0.113142766   0.032016652   0.045905339

    7    7.2  1.5  1.5  -0.000012745  -0.000000476   0.000000070   0.000001676  -0.000001421  -0.000001108  -0.000006171  -0.000001838
                        -0.000000004  -0.000000051  -0.000000031   0.000000007  -0.000000020   0.000000192  -0.000000112  -0.000000100

    8    8.2  1.5  1.5  -0.000000681   0.000006623  -0.075757600  -0.008176670   0.013160354  -0.037668454   0.041731730  -0.198272032
                        -0.000007065  -0.000016749   0.084568521  -0.282949859   0.059245193  -0.063304225   0.032956264   0.485581470

    9    9.2  1.5  1.5   0.000001178  -0.000002923  -0.069643874   0.016819604   0.011475301  -0.038808032   0.030601008  -0.156133062
                        -0.000008470   0.000006488   0.151164095   0.421269314  -0.026518566  -0.075911239  -0.183311759   0.251494849

   10   10.2  1.5  1.5  -0.000014672  -0.000003647   0.162775078  -0.005364573  -0.081370031  -0.163340770  -0.036884556   0.480356671
                        -0.000000030  -0.000000100   0.113108482   0.001303872   0.169519308  -0.234219842  -0.051759296   0.152199262

   11    1.2  1.5  0.5   0.000000006   0.000000063   0.000000041  -0.000000015   0.000000097  -0.000000128  -0.000000005  -0.000000003
                         0.000000349  -0.000000097  -0.000000055  -0.000000001   0.000000069   0.000000049  -0.000000010   0.000000118

   12    2.2  1.5  0.5  -0.005501020  -0.035215351   0.055260322  -0.001820084  -0.060591820   0.093936403  -0.007106644   0.054639955
                         0.105908875   0.080335659  -0.078860745   0.011589190  -0.040146200  -0.011715379   0.018493536  -0.075276828

   13    3.2  1.5  0.5  -0.000771798   0.020263713  -0.167377922   0.021981800  -0.040551378   0.056138586   0.013113573  -0.045630333
                        -0.186196909  -0.075362918   0.235740026  -0.035410817  -0.017436177  -0.042456818  -0.011470175   0.143829113

   14    4.2  1.5  0.5   0.014283707  -0.267698241  -0.038693835   0.072232105   0.130850235   0.055267996  -0.073184598   0.124307332
                         0.004223693  -0.105809958  -0.036510618   0.005165749   0.059818947  -0.083452006  -0.010584107   0.048299971

   15    5.2  1.5  0.5   0.057816929  -0.045950909   0.015192356  -0.006735918  -0.032103715   0.083531318  -0.000412968  -0.031845573
                        -0.267263419   0.197686444   0.001848981  -0.046428079   0.158659866   0.106647434  -0.025483455   0.001957213

   16    6.2  1.5  0.5   0.437111633   0.231033591   0.103495466  -0.001447831   0.085436220   0.099735200  -0.000310390  -0.252411448
                         0.036974942   0.052640869   0.077282179  -0.005823804  -0.046121355   0.008391326   0.028542386  -0.103202943

   17    7.2  1.5  0.5   0.000000157   0.000001588   0.000000810  -0.000000793   0.000002639  -0.000003513   0.000000005   0.000000875
                         0.000008626  -0.000002417  -0.000001686   0.000000839   0.000001624   0.000000340  -0.000000086  -0.000001579

   18    8.2  1.5  0.5   0.000013129   0.000000179  -0.052516469  -0.380936167  -0.287882479  -0.171812608   0.223492363  -0.034725595
                        -0.000000056   0.000000386   0.003380275   0.002715283   0.121973783  -0.194379513   0.002939870  -0.095537455

   19    9.2  1.5  0.5   0.000004444  -0.000010401  -0.053635606  -0.248256295   0.049591726   0.031671075   0.071584191   0.107253578
                         0.000000747  -0.000005065  -0.018647444   0.013987476  -0.297069169   0.473313669  -0.007998430   0.141744909

   20   10.2  1.5  0.5   0.000001025  -0.000008588  -0.011624998   0.019067804   0.068386373  -0.124500328   0.002660703  -0.000065336
                        -0.000019554   0.000018481   0.070856384   0.424509879  -0.308730642  -0.171900443  -0.073911234  -0.053817810

   21    1.2  1.5 -0.5   0.000000120   0.000000319   0.000000009   0.000000071   0.000000151   0.000000094  -0.000000049  -0.000000003
                        -0.000000022   0.000000146   0.000000003  -0.000000000   0.000000038  -0.000000074  -0.000000000  -0.000000017

   22    2.2  1.5 -0.5  -0.089141541   0.099103194   0.016006545   0.095893791  -0.094580489  -0.062047219   0.086088755  -0.002825012
                         0.000762949   0.037037848   0.002314968  -0.005368728  -0.023678288   0.049341239  -0.001694529  -0.000762638

   23    3.2  1.5 -0.5   0.075523578  -0.170745691  -0.047039695  -0.293856052  -0.063444620  -0.030277330  -0.145975344  -0.011577490
                         0.012100663  -0.075158017  -0.004351410   0.009322621  -0.013590063   0.006915653   0.000753165   0.003617059

   24    4.2  1.5 -0.5  -0.009918416  -0.001810002  -0.036423368   0.013521927  -0.088376386   0.132797903  -0.004201328   0.050249193
                         0.287212193   0.014879213   0.054218340   0.046445848  -0.083200888  -0.049331140  -0.115422465  -0.069090835

   25    5.2  1.5 -0.5  -0.199632628  -0.266731581  -0.040261511   0.006995310  -0.067741794  -0.036021458   0.017510637  -0.015981144
                        -0.036757231  -0.052102382  -0.029043209  -0.019093532   0.111334997  -0.154025207   0.039219532  -0.040908969

   26    6.2  1.5 -0.5   0.043883982  -0.140942273  -0.007553366  -0.000362160  -0.038082741   0.073774437  -0.004007563   0.033346040
                        -0.232763145   0.415818675   0.004355717  -0.120134297   0.024772722   0.041244994   0.292157319   0.033778426

   27    7.2  1.5 -0.5   0.000002996   0.000007884   0.000000268   0.000001735   0.000003776   0.000002491  -0.000001290  -0.000000027
                        -0.000000563   0.000003614  -0.000000035  -0.000000055   0.000000932  -0.000001835   0.000000008   0.000000142

   28    8.2  1.5 -0.5  -0.000000303  -0.000005235   0.228692716  -0.035485154   0.181497737  -0.301678482   0.018217025  -0.116214581
                        -0.000000383   0.000011960  -0.303831184   0.042763141  -0.211177515  -0.153920802   0.045989983   0.131696408

   29    9.2  1.5 -0.5   0.000000544  -0.000001049   0.139782511  -0.031284633  -0.034378250   0.067675187   0.005082177  -0.070934730
                         0.000011675   0.000004348  -0.209369110   0.066045600   0.479178866   0.265444702  -0.152451128   0.121342450

   30   10.2  1.5 -0.5  -0.000020333  -0.000018308   0.352613122  -0.069048179   0.111001575   0.105288282  -0.017829866  -0.068606456
                         0.000000493  -0.000006844   0.252899410  -0.019974895  -0.174238799   0.292767763   0.001213954   0.034198338

   31    1.2  1.5 -1.5   0.000000006  -0.000000204   0.000000049  -0.000000015  -0.000000029   0.000000068   0.000000028  -0.000000035
                        -0.000000014   0.000000474  -0.000000071   0.000000013  -0.000000016  -0.000000052  -0.000000019   0.000000264

   32    2.2  1.5 -1.5   0.001426629  -0.094079848   0.183917356  -0.022348717  -0.044654747   0.059061074   0.008014028  -0.024599688
                         0.162746120   0.241484631  -0.253374866   0.049551379  -0.024525723  -0.036377545  -0.005048828   0.078925940

   33    3.2  1.5 -1.5  -0.001610582   0.012518757   0.067825791  -0.013741344   0.059033944  -0.092754107   0.005305059  -0.047319138
                         0.084917805  -0.028443569  -0.092499290   0.018041462   0.037954458   0.014066332  -0.016631271   0.052500732

   34    4.2  1.5 -1.5   0.239014321  -0.244501146   0.009671420   0.079658014   0.207895999   0.120744354   0.138214719   0.044351564
                         0.020516326  -0.113423393  -0.001868903   0.004593699   0.007051147  -0.020696135   0.006439403   0.011392501

   35    5.2  1.5 -1.5  -0.010257876   0.110292414  -0.000880405   0.007642826   0.037188321  -0.074515571   0.008894407   0.001968517
                         0.230845992  -0.316026323   0.011589798   0.066505947  -0.111835574  -0.095782525   0.256658628   0.013887253

   36    6.2  1.5 -1.5   0.130556206  -0.269069133   0.008611646   0.036136628   0.045384485   0.039084205   0.079942913  -0.005314409
                        -0.020022724  -0.070956250   0.001224472  -0.012652438   0.096568091  -0.116963107  -0.027569189  -0.037124091

   37    7.2  1.5 -1.5   0.000000144  -0.000004978   0.000000691  -0.000000286  -0.000000692   0.000001113   0.000000735  -0.000001990
                        -0.000000442   0.000011583  -0.000001517   0.000000607  -0.000000485  -0.000001563  -0.000000461   0.000004817

   38    8.2  1.5 -1.5  -0.000018000   0.000006143   0.254553206   0.120880335  -0.018767082  -0.003627011   0.510612639  -0.022173343
                        -0.000000594   0.000003390   0.168505212  -0.025246859  -0.035790458   0.083067067   0.013884635  -0.040764757

   39    9.2  1.5 -1.5   0.000007071   0.000008289  -0.329696226   0.176840623  -0.029744264  -0.059664085   0.317717192   0.154295594
                        -0.000000085   0.000002360  -0.251859541   0.021148593   0.006645196   0.001959395  -0.030571740   0.041121666

   40   10.2  1.5 -1.5   0.000001428  -0.000005830  -0.015025863   0.007088018  -0.047200971   0.058008917   0.001226551   0.017821238
                        -0.000003226   0.000013477   0.020825603   0.217381157   0.262988728   0.145934520   0.512290341   0.085933040

   41    1.2  0.5  0.5  -0.000000000   0.000000000  -0.000000114   0.000000001   0.000000071   0.000000154   0.000000028  -0.000000014
                        -0.000000000  -0.000000000   0.000000020  -0.000000132  -0.000000007   0.000000275   0.000000020   0.000000943

   42    2.2  0.5  0.5   0.000000000  -0.000000000   0.000000051  -0.000000045  -0.000000000  -0.000000004   0.000000041   0.000000178
                         0.000000000   0.000000000   0.000000009   0.000000070  -0.000000004  -0.000000156  -0.000000012  -0.000000458

   43    3.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000043  -0.000000117   0.000000041   0.000000148  -0.000000004   0.000000642
                         0.000000000  -0.000000000  -0.000000041  -0.000000073   0.000000009   0.000000033   0.000000027   0.000000445

   44    4.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000012  -0.000000057   0.000000036   0.000000090   0.000000002   0.000000290
                         0.000000000  -0.000000000   0.000000004  -0.000000029   0.000000010  -0.000000001   0.000000008   0.000000170

   45    5.2  0.5  0.5   0.000000000   0.000000000  -0.000000054   0.000000048   0.000000014  -0.000000037   0.000000022  -0.000000382
                        -0.000000000  -0.000000000  -0.000000021  -0.000000001  -0.000000007   0.000000085  -0.000000014   0.000000015

   46    6.2  0.5  0.5  -0.000000000  -0.000000000   0.000000041  -0.000000069   0.000000014   0.000000076  -0.000000039   0.000000364
                         0.000000000  -0.000000000   0.000000008  -0.000000049   0.000000022   0.000000010  -0.000000008   0.000000280

   47    7.2  0.5  0.5  -0.000000000  -0.000000000   0.000000036  -0.000000207   0.000000049   0.000000206  -0.000000035   0.000001241
                         0.000000000  -0.000000000  -0.000000017  -0.000000092   0.000000061  -0.000000083   0.000000050   0.000000290

   48    8.2  0.5  0.5  -0.000000000   0.000000000  -0.000000015  -0.000000003  -0.000000004   0.000000028  -0.000000013   0.000000024
                         0.000000000  -0.000000000  -0.000000049  -0.000000050   0.000000027   0.000000057  -0.000000007   0.000000201

   49    1.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000005  -0.000000048  -0.000000033   0.000000096  -0.000000007   0.000000234
                         0.000000000   0.000000000   0.000000009  -0.000000014  -0.000000026  -0.000000067   0.000000009   0.000000029

   50    2.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000026  -0.000000027  -0.000000016   0.000000051   0.000000004   0.000000116
                         0.000000000  -0.000000000   0.000000012  -0.000000026  -0.000000021  -0.000000041   0.000000010  -0.000000070

   51    3.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000031  -0.000000017  -0.000000031   0.000000025  -0.000000008   0.000000031
                        -0.000000000  -0.000000000   0.000000031  -0.000000021  -0.000000002  -0.000000015  -0.000000036   0.000000175

   52    4.2  0.5 -0.5   0.000000000   0.000000000  -0.000000142   0.000000019  -0.000000001  -0.000000085   0.000000062   0.000000027
                         0.000000000   0.000000000  -0.000000081   0.000000115  -0.000000031  -0.000000188   0.000000013  -0.000000754

   53    5.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000071  -0.000000057  -0.000000019   0.000000125  -0.000000040   0.000000381
                         0.000000000  -0.000000000   0.000000089  -0.000000064   0.000000012  -0.000000002   0.000000037   0.000000195

   54    6.2  0.5 -0.5   0.000000000   0.000000000  -0.000000057   0.000000010   0.000000017  -0.000000020   0.000000023  -0.000000044
                        -0.000000000   0.000000000  -0.000000020   0.000000030   0.000000003  -0.000000037   0.000000011  -0.000000125

   55    7.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000057  -0.000000005   0.000000014   0.000000081  -0.000000020   0.000000069
                        -0.000000000  -0.000000000   0.000000047  -0.000000083   0.000000013   0.000000112   0.000000008   0.000000384

   56    8.2  0.5 -0.5   0.000000000   0.000000000  -0.000000076  -0.000000018   0.000000009  -0.000000128   0.000000006  -0.000000306
                        -0.000000000   0.000000000  -0.000000079   0.000000118  -0.000000013  -0.000000102  -0.000000005  -0.000000461


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5  -0.000000240  -0.000000073  -0.000000097  -0.000000076   0.000000139  -0.000000017   0.000000016  -0.000000015
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000000140   0.000000027   0.000000025   0.000000013  -0.000000030  -0.000000001   0.000000002  -0.000000004
                         0.000000049   0.000000006  -0.000000017  -0.000000002  -0.000000000   0.000000003   0.000000002   0.000000000

    3    3.2  1.5  1.5   0.000000001  -0.000000007  -0.000000000   0.000000009  -0.000000001   0.000000001  -0.000000004  -0.000000002
                         0.000000012  -0.000000006   0.000000001  -0.000000008  -0.000000004  -0.000000013  -0.000000004   0.000000000

    4    4.2  1.5  1.5   0.000000091   0.000000015  -0.000000019  -0.000000007  -0.000000008  -0.000000000   0.000000002  -0.000000001
                         0.000000042  -0.000000003  -0.000000008  -0.000000001  -0.000000002   0.000000002  -0.000000009  -0.000000002

    5    5.2  1.5  1.5   0.000000107  -0.000000005   0.000000012   0.000000001  -0.000000008   0.000000001   0.000000001   0.000000001
                        -0.000000055   0.000000005  -0.000000011  -0.000000013  -0.000000016   0.000000001   0.000000000   0.000000000

    6    6.2  1.5  1.5   0.000000024  -0.000000000  -0.000000003  -0.000000011  -0.000000007  -0.000000015  -0.000000005  -0.000000000
                         0.000000078   0.000000015   0.000000007  -0.000000004  -0.000000009  -0.000000000   0.000000001  -0.000000000

    7    7.2  1.5  1.5   0.000000014   0.000000004   0.000000006   0.000000004  -0.000000008   0.000000001  -0.000000001   0.000000001
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000111   0.000000013  -0.000000005   0.000000008   0.000000005  -0.000000004  -0.000000000  -0.000000000
                         0.000000095   0.000000017   0.000000004  -0.000000001  -0.000000006   0.000000004  -0.000000004   0.000000002

    9    9.2  1.5  1.5   0.000000044   0.000000008   0.000000006   0.000000008   0.000000004  -0.000000002  -0.000000000  -0.000000000
                         0.000000101   0.000000012   0.000000000  -0.000000005   0.000000002  -0.000000000   0.000000000  -0.000000003

   10   10.2  1.5  1.5   0.000000012  -0.000000021   0.000000002   0.000000003  -0.000000007   0.000000000  -0.000000002  -0.000000001
                        -0.000000014   0.000000007   0.000000004   0.000000010   0.000000003   0.000000002   0.000000000   0.000000000

   11    1.2  1.5  0.5  -0.000000865   0.000000101   0.000000057  -0.000000064  -0.000000013   0.000000020   0.000000007  -0.000000000
                        -0.000000485  -0.000000004   0.000000122   0.000000009   0.000000010  -0.000000014  -0.000000005   0.000000002

   12    2.2  1.5  0.5  -0.000000048  -0.000000042  -0.000000002  -0.000000012  -0.000000001   0.000000003   0.000000000   0.000000000
                        -0.000000022   0.000000025  -0.000000019   0.000000003   0.000000004  -0.000000002   0.000000003   0.000000000

   13    3.2  1.5  0.5  -0.000000074  -0.000000054  -0.000000015   0.000000006  -0.000000007  -0.000000004   0.000000000  -0.000000001
                         0.000000109  -0.000000091   0.000000009  -0.000000003  -0.000000015   0.000000012  -0.000000007   0.000000001

   14    4.2  1.5  0.5   0.000000085   0.000000057   0.000000014   0.000000018  -0.000000011   0.000000006   0.000000000  -0.000000002
                        -0.000000143  -0.000000011   0.000000011   0.000000000  -0.000000011  -0.000000001   0.000000002  -0.000000001

   15    5.2  1.5  0.5   0.000000034  -0.000000026   0.000000000   0.000000000   0.000000005   0.000000002   0.000000002   0.000000003
                        -0.000000073  -0.000000010  -0.000000001  -0.000000013   0.000000016   0.000000006  -0.000000002  -0.000000001

   16    6.2  1.5  0.5  -0.000000067  -0.000000073   0.000000014   0.000000006  -0.000000005   0.000000010  -0.000000001  -0.000000000
                         0.000000205   0.000000050   0.000000012  -0.000000008   0.000000006  -0.000000006   0.000000000  -0.000000000

   17    7.2  1.5  0.5   0.000000050  -0.000000006  -0.000000003   0.000000004   0.000000001  -0.000000001  -0.000000000   0.000000000
                         0.000000028   0.000000000  -0.000000007  -0.000000001  -0.000000001   0.000000001   0.000000000  -0.000000000

   18    8.2  1.5  0.5   0.000000007   0.000000014  -0.000000015   0.000000001   0.000000015  -0.000000005  -0.000000001   0.000000001
                         0.000000037  -0.000000017   0.000000020   0.000000008   0.000000011   0.000000001  -0.000000001   0.000000000

   19    9.2  1.5  0.5   0.000000012  -0.000000020  -0.000000013   0.000000005   0.000000006  -0.000000004   0.000000006   0.000000001
                        -0.000000070  -0.000000004   0.000000003  -0.000000009  -0.000000005   0.000000000   0.000000001  -0.000000000

   20   10.2  1.5  0.5  -0.000000050   0.000000008   0.000000010   0.000000000  -0.000000007  -0.000000002   0.000000003   0.000000002
                         0.000000070   0.000000008   0.000000003   0.000000006  -0.000000015  -0.000000007  -0.000000000   0.000000001

   21    1.2  1.5 -0.5  -0.000000207  -0.000000036   0.000000096  -0.000000079  -0.000000026   0.000000045   0.000000003  -0.000000002
                         0.000000009   0.000000091  -0.000000124   0.000000031  -0.000000051   0.000000017   0.000000023   0.000000016

   22    2.2  1.5 -0.5   0.000000032  -0.000000013   0.000000013  -0.000000002   0.000000001  -0.000000004   0.000000002   0.000000001
                         0.000000058  -0.000000006  -0.000000037   0.000000011   0.000000001   0.000000006   0.000000000   0.000000001

   23    3.2  1.5 -0.5   0.000000075   0.000000032  -0.000000011  -0.000000003  -0.000000010   0.000000004   0.000000004   0.000000003
                        -0.000000029  -0.000000003   0.000000049   0.000000003  -0.000000006  -0.000000003   0.000000003   0.000000002

   24    4.2  1.5 -0.5   0.000000020  -0.000000031  -0.000000028  -0.000000014  -0.000000005   0.000000003   0.000000001   0.000000001
                         0.000000064  -0.000000043  -0.000000016  -0.000000012  -0.000000003  -0.000000006   0.000000002  -0.000000002

   25    5.2  1.5 -0.5  -0.000000080   0.000000017  -0.000000029   0.000000002  -0.000000008   0.000000006  -0.000000003  -0.000000001
                         0.000000091   0.000000060  -0.000000001   0.000000015   0.000000012   0.000000004  -0.000000000   0.000000001

   26    6.2  1.5 -0.5   0.000000083   0.000000001  -0.000000010  -0.000000009  -0.000000008  -0.000000001  -0.000000003  -0.000000002
                        -0.000000010  -0.000000039   0.000000004   0.000000029   0.000000011  -0.000000000  -0.000000001   0.000000002

   27    7.2  1.5 -0.5   0.000000012   0.000000002  -0.000000006   0.000000005   0.000000001  -0.000000003  -0.000000000   0.000000000
                        -0.000000001  -0.000000005   0.000000007  -0.000000002   0.000000003  -0.000000001  -0.000000001  -0.000000001

   28    8.2  1.5 -0.5   0.000000041   0.000000027   0.000000022  -0.000000004   0.000000003  -0.000000004  -0.000000001  -0.000000001
                        -0.000000082   0.000000053  -0.000000001  -0.000000001  -0.000000001  -0.000000007  -0.000000000   0.000000001

   29    9.2  1.5 -0.5   0.000000041   0.000000022   0.000000011  -0.000000005   0.000000011   0.000000008   0.000000004   0.000000001
                        -0.000000065   0.000000025   0.000000006   0.000000009   0.000000007   0.000000003  -0.000000002   0.000000000

   30   10.2  1.5 -0.5   0.000000006  -0.000000057   0.000000036  -0.000000003  -0.000000000  -0.000000000   0.000000002   0.000000000
                         0.000000148  -0.000000033   0.000000003  -0.000000006   0.000000003  -0.000000003   0.000000001  -0.000000000

   31    1.2  1.5 -1.5  -0.000000535   0.000000231  -0.000000050   0.000000023  -0.000000010   0.000000005  -0.000000018   0.000000002
                         0.000000377   0.000000064   0.000000114  -0.000000027   0.000000014  -0.000000026   0.000000041  -0.000000006

   32    2.2  1.5 -1.5  -0.000000033   0.000000006   0.000000039  -0.000000005   0.000000005  -0.000000006   0.000000001  -0.000000000
                        -0.000000124   0.000000172  -0.000000022   0.000000001   0.000000000   0.000000003  -0.000000002   0.000000001

   33    3.2  1.5 -1.5   0.000000097   0.000000001   0.000000016   0.000000001   0.000000007  -0.000000002  -0.000000002   0.000000000
                        -0.000000113   0.000000004  -0.000000015   0.000000007  -0.000000006  -0.000000002   0.000000005  -0.000000001

   34    4.2  1.5 -1.5  -0.000000048  -0.000000046   0.000000027   0.000000019   0.000000008   0.000000009   0.000000001  -0.000000000
                        -0.000000059   0.000000002  -0.000000035   0.000000010  -0.000000009  -0.000000001   0.000000000  -0.000000001

   35    5.2  1.5 -1.5   0.000000001   0.000000020   0.000000015   0.000000009  -0.000000018  -0.000000005  -0.000000002  -0.000000001
                        -0.000000040  -0.000000012  -0.000000012   0.000000013   0.000000007  -0.000000013  -0.000000003   0.000000000

   36    6.2  1.5 -1.5   0.000000051   0.000000035   0.000000019   0.000000001   0.000000012   0.000000008  -0.000000005   0.000000001
                         0.000000092   0.000000001  -0.000000012   0.000000006  -0.000000000   0.000000001  -0.000000002  -0.000000000

   37    7.2  1.5 -1.5   0.000000031  -0.000000013   0.000000003  -0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000000
                        -0.000000022  -0.000000004  -0.000000007   0.000000002  -0.000000001   0.000000001  -0.000000002   0.000000000

   38    8.2  1.5 -1.5  -0.000000027  -0.000000068   0.000000007   0.000000006   0.000000006   0.000000000  -0.000000005   0.000000001
                        -0.000000028   0.000000014  -0.000000019   0.000000003   0.000000004  -0.000000000  -0.000000000   0.000000002

   39    9.2  1.5 -1.5  -0.000000047   0.000000060   0.000000008   0.000000002   0.000000005  -0.000000002   0.000000003  -0.000000001
                         0.000000068  -0.000000032  -0.000000029  -0.000000000  -0.000000000   0.000000003   0.000000002   0.000000001

   40   10.2  1.5 -1.5   0.000000021   0.000000008   0.000000010   0.000000000  -0.000000006  -0.000000003   0.000000001   0.000000002
                        -0.000000011  -0.000000010   0.000000007   0.000000019   0.000000008  -0.000000000  -0.000000001  -0.000000000

   41    1.2  0.5  0.5   0.524803197   0.126464356  -0.065254049  -0.216095236   0.145836969  -0.078572696   0.016840342  -0.025830149
                         0.206669905   0.137912827  -0.066591792   0.052191770  -0.024036594  -0.186898093  -0.150919048  -0.098163353

   42    2.2  0.5  0.5  -0.128097457  -0.020302217  -0.154982193  -0.367474905  -0.361068389  -0.058666414  -0.008679988  -0.003314434
                        -0.179132663  -0.083996786  -0.089513351  -0.000754298  -0.007943442  -0.032012178  -0.189120597  -0.198578305

   43    3.2  0.5  0.5   0.145752921  -0.158912641   0.128038740  -0.020593816  -0.214158015   0.420541170  -0.219745525   0.019807598
                         0.172134433   0.078909195   0.057168932  -0.137701905   0.038256527   0.221387024  -0.005542132  -0.071934133

   44    4.2  0.5  0.5   0.047147826  -0.015386849   0.005240689  -0.203096568  -0.158547911  -0.195151864  -0.165630019   0.079667705
                         0.031974014   0.012761018  -0.058808568  -0.166380714   0.180686849  -0.057700153   0.155544474   0.513433427

   45    5.2  0.5  0.5   0.315575000   0.095482822   0.153076932   0.127191360  -0.358703179  -0.170633674   0.256681901  -0.185676192
                         0.136644795  -0.006880989  -0.165699808   0.086385919   0.077941077   0.273486051   0.126930140   0.003677822

   46    6.2  0.5  0.5  -0.148354243  -0.020285544   0.012998921   0.078903802  -0.073214421   0.173216579   0.295675054   0.043080266
                         0.096079362  -0.034206929  -0.208192375   0.080275784   0.461479882  -0.289089743   0.024096268  -0.108846562

   47    7.2  0.5  0.5  -0.220345262  -0.208422356   0.007410286   0.013179046   0.033261283  -0.165746805   0.144744729  -0.121991815
                         0.188234033   0.170152307   0.033337160   0.256369294  -0.177923680   0.049629348   0.059369231   0.036987738

   48    8.2  0.5  0.5   0.065053337  -0.072151445   0.060605680   0.342064490  -0.244007590  -0.151583677  -0.179935852   0.330858729
                         0.120893949  -0.022638990   0.045151626   0.106193521  -0.104367409  -0.221004134  -0.248622096   0.024054185

   49    1.2  0.5 -0.5   0.016380923  -0.033997939   0.124785293   0.581780361   0.253274149   0.108561965  -0.010700659   0.016745544
                        -0.084085695  -0.064811968  -0.039880227   0.037006760   0.067373003   0.011603832   0.162642888   0.228984235

   50    2.2  0.5 -0.5   0.066748731  -0.007908462   0.198500416   0.073079758   0.025497262   0.400465914   0.071344618  -0.031315875
                        -0.044144361   0.060958504  -0.014151728   0.177089892  -0.256612937  -0.093588110  -0.105736458  -0.394448268

   51    3.2  0.5 -0.5  -0.144306593   0.111683409   0.473202045  -0.005655680  -0.134783798  -0.161732321   0.184524971   0.223370359
                        -0.178526099  -0.244959072   0.040960137   0.040220360   0.110228776  -0.086126915  -0.180325288  -0.033136974

   52    4.2  0.5 -0.5   0.300240933  -0.347970187   0.141701892  -0.093010318   0.001647048   0.039204692  -0.154283869   0.119036201
                         0.004387187   0.149005202   0.362719614   0.014608800   0.197375613  -0.149405721  -0.129714064   0.034684878

   53    5.2  0.5 -0.5  -0.125712883  -0.119024620   0.188321595  -0.076778403   0.001844341  -0.152679859   0.041132805  -0.007348611
                        -0.033648244   0.594489595  -0.230532141  -0.028345755   0.033783870   0.133796462  -0.082465389   0.054446151

   54    6.2  0.5 -0.5   0.166919701  -0.178556683  -0.225360971   0.088417007  -0.161347083  -0.153528906   0.538563777   0.048548606
                        -0.024295489   0.089151669   0.015243407   0.064942368  -0.021386079  -0.089296889   0.204681451  -0.065442837

   55    7.2  0.5 -0.5  -0.105465268   0.206073436  -0.198045138   0.144498256  -0.176431077  -0.046970959  -0.208310517   0.439766871
                         0.098477958   0.118834537  -0.047154060   0.144747970   0.044417702  -0.220113201  -0.056233928  -0.040787880

   56    8.2  0.5 -0.5   0.313703887  -0.310996916  -0.056754483  -0.021627745   0.015887247  -0.038247439  -0.096481594   0.135427226
                        -0.075493350  -0.226191537  -0.465342221   0.220552082  -0.144545277   0.067397792  -0.078417956   0.039106735


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  41.147%  47.077%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.016%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.048%   0.050%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.003%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.475%   4.186%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.046%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.026%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%   0.013%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  45.353%  33.535%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.011%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.005%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.008%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.793%  14.971%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.014%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.023%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.014%
   41    1.2  0.5  0.5   1.542%   0.130%   3.442%   3.935%  10.068%   2.219%   5.952%  21.956%   0.000%   0.000%
   42    2.2  0.5  0.5   3.229%   1.437%   0.909%   5.176%  29.356%   9.782%   0.862%   5.927%   0.000%   0.000%
   43    3.2  0.5  0.5   0.155%  10.509%   7.305%  15.555%   3.737%   2.693%   4.119%  11.079%   0.000%   0.000%
   44    4.2  0.5  0.5  25.082%   7.781%   7.973%   1.612%   3.133%   2.144%   0.468%   2.122%   0.000%   0.000%
   45    5.2  0.5  0.5   4.566%   9.927%   1.942%  18.142%   0.858%   3.372%   1.968%   3.515%   0.000%   0.000%
   46    6.2  0.5  0.5   2.536%   3.193%  24.204%  11.844%   1.062%   1.306%   0.399%   3.196%   0.000%   0.000%
   47    7.2  0.5  0.5   0.809%   5.658%   1.148%   5.074%   0.139%   1.848%  23.142%  29.496%   0.000%   0.000%
   48    8.2  0.5  0.5  12.422%   3.458%   9.634%  19.167%   1.345%   1.733%   0.718%   1.017%   0.000%   0.000%
   49    1.2  0.5 -0.5   6.092%   4.520%   2.077%   0.850%  26.845%   4.068%   1.300%   1.290%   0.000%   0.000%
   50    2.2  0.5 -0.5  13.508%   8.067%  14.771%   4.004%   2.933%   3.595%   3.296%   0.330%   0.000%   0.000%
   51    3.2  0.5 -0.5   5.930%   3.276%   4.498%   2.574%   3.775%  21.581%   4.512%   0.467%   0.000%   0.000%
   52    4.2  0.5 -0.5   2.204%   4.518%   0.082%   3.709%   2.510%  10.899%  15.802%   8.998%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.053%   2.905%   2.678%   0.614%   0.745%  12.707%  23.773%   3.156%   0.000%   0.000%
   54    6.2  0.5 -0.5   1.498%  30.687%   2.860%   5.331%   3.022%   0.989%   2.621%   0.196%   0.000%   0.000%
   55    7.2  0.5 -0.5  18.034%   2.349%  15.095%   1.105%   0.566%   8.309%   3.179%   2.757%   0.000%   0.000%
   56    8.2  0.5 -0.5   2.342%   1.584%   1.383%   1.309%   9.905%  12.756%   7.888%   4.498%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   5.942%   5.603%   0.000%   0.000%   0.000%   0.001%   0.088%   0.013%   0.015%   0.010%
    2    2.2  1.5  1.5   0.000%   0.000%   1.098%   0.843%   0.815%   0.046%   8.571%   1.316%   4.077%   2.800%
    3    3.2  1.5  1.5   0.000%   0.000%   8.956%   6.858%   9.742%   0.192%   0.715%   0.100%   0.939%   0.753%
    4    4.2  1.5  1.5   0.000%   0.000%   1.478%   5.390%   2.821%   7.868%   0.004%   0.054%   2.072%   1.826%
    5    5.2  1.5  1.5   0.000%   0.000%   1.238%   3.382%   0.076%  10.562%   0.013%   0.097%   1.726%   1.512%
    6    6.2  1.5  1.5   0.000%   0.000%  11.201%   3.945%   8.007%   2.649%   0.042%   0.050%   1.335%   2.360%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.037%   0.062%  10.441%   1.583%  11.333%   7.752%
    8    8.2  1.5  1.5   0.002%   0.044%   0.847%   1.108%   0.156%   3.921%   5.655%   1.201%   1.261%   1.941%
    9    9.2  1.5  1.5   0.010%   0.001%   0.370%   0.484%   0.032%   2.825%  11.903%   1.514%   3.138%   1.385%
   10   10.2  1.5  1.5   0.003%   0.038%   1.214%   1.588%   0.117%   6.589%   0.049%   0.070%   0.534%   1.034%
   11    1.2  1.5  0.5   6.526%  82.581%   0.000%   0.000%   0.002%   0.100%   0.000%   0.001%   0.008%   0.011%
   12    2.2  1.5  0.5   0.000%   0.000%   6.842%   8.973%   0.176%   8.937%   0.125%   1.511%   0.377%   0.562%
   13    3.2  1.5  0.5   0.000%   0.000%   0.844%   1.097%   0.018%   1.571%   1.329%   7.830%   3.052%   4.322%
   14    4.2  1.5  0.5   0.000%   0.000%   6.171%   4.716%   0.029%   0.015%  10.329%   0.376%   2.226%   2.698%
   15    5.2  1.5  0.5   0.000%   0.000%   7.451%   5.685%   0.033%   0.062%   8.722%   1.931%   2.017%   2.222%
   16    6.2  1.5  0.5   0.000%   0.000%   1.479%   1.131%   0.004%   0.096%   0.917%   9.730%   2.943%   1.510%
   17    7.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.217%  11.783%   0.017%   0.106%   5.939%   8.643%
   18    8.2  1.5  0.5   0.010%   0.014%   0.344%   1.442%   5.285%   0.862%   4.744%   0.865%   3.568%   3.034%
   19    9.2  1.5  0.5   0.002%   0.004%   1.751%   1.136%   2.853%   1.448%   1.907%   0.206%   2.159%   1.132%
   20   10.2  1.5  0.5   0.016%   0.004%   0.586%   0.353%   9.713%   0.276%   5.127%   0.748%   0.069%   0.122%
   21    1.2  1.5 -0.5  17.759%   3.122%   0.000%   0.000%   0.100%   0.002%   0.000%   0.000%   0.014%   0.011%
   22    2.2  1.5 -0.5   0.000%   0.000%   8.973%   6.842%   9.740%   0.194%   0.716%   0.097%   0.939%   0.753%
   23    3.2  1.5 -0.5   0.000%   0.000%   1.097%   0.844%   0.814%   0.045%   8.578%   1.311%   4.074%   2.804%
   24    4.2  1.5 -0.5   0.000%   0.000%   4.716%   6.171%   0.005%   0.102%   0.375%  10.266%   2.414%   1.988%
   25    5.2  1.5 -0.5   0.000%   0.000%   5.685%   7.451%   0.000%   0.056%   1.981%   8.710%   2.623%   2.464%
   26    6.2  1.5 -0.5   0.000%   0.000%   1.131%   1.479%   0.030%   0.021%   9.787%   0.911%   1.696%   3.175%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%  11.868%   0.208%   0.033%   0.014%  10.973%   8.063%
   28    8.2  1.5 -0.5   0.032%   0.021%   1.442%   0.344%   1.148%   6.484%   0.660%   3.464%   3.097%   3.644%
   29    9.2  1.5 -0.5   0.022%   0.013%   1.136%   1.751%   1.188%   3.326%   0.377%   1.523%   0.987%   1.933%
   30   10.2  1.5 -0.5   0.020%   0.075%   0.353%   0.586%   0.212%   7.950%   0.827%   6.875%   0.015%   0.007%
   31    1.2  1.5 -1.5  69.543%   8.462%   0.000%   0.000%   0.000%   0.001%   0.014%   0.088%   0.012%   0.017%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.843%   1.098%   0.017%   1.571%   1.336%   7.824%   3.048%   4.326%
   33    3.2  1.5 -1.5   0.000%   0.000%   6.858%   8.956%   0.174%   8.940%   0.126%   1.507%   0.376%   0.562%
   34    4.2  1.5 -1.5   0.000%   0.000%   5.390%   1.478%   7.893%   2.763%   0.040%   0.052%   1.728%   1.928%
   35    5.2  1.5 -1.5   0.000%   0.000%   3.382%   1.238%  10.638%   0.068%   0.031%   0.011%   2.076%   2.243%
   36    6.2  1.5 -1.5   0.000%   0.000%   3.945%  11.201%   2.707%   7.983%   0.002%   0.057%   2.466%   1.394%
   37    7.2  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.070%   1.632%  10.420%   9.311%  13.099%
   38    8.2  1.5 -1.5   0.027%   0.003%   1.108%   0.847%   4.686%   0.119%   0.664%   5.464%   2.283%   1.680%
   39    9.2  1.5 -1.5   0.075%   0.010%   0.484%   0.370%   1.981%   0.107%   2.091%  12.097%   1.768%   3.547%
   40   10.2  1.5 -1.5   0.010%   0.001%   1.588%   1.214%   6.663%   0.126%   0.030%   0.006%   1.312%   0.733%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   1.529%   0.035%   0.215%   0.030%   1.231%  29.989%   0.194%   0.235%   3.409%   0.152%
    3    3.2  1.5  1.5   6.629%   0.120%   1.752%   0.247%   0.113%   3.073%   3.622%   2.523%   0.501%   0.153%
    4    4.2  1.5  1.5   0.332%   4.210%   0.154%   0.714%   0.835%   0.041%   8.245%   7.841%   0.240%   9.051%
    5    5.2  1.5  1.5   0.132%   5.069%   0.067%   0.517%   2.235%   0.062%   5.252%   5.378%   1.689%  15.727%
    6    6.2  1.5  1.5   3.950%   0.796%   1.887%   0.028%   0.255%   0.020%   2.162%   5.731%   0.229%   2.803%
    7    7.2  1.5  1.5  18.117%   0.354%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   1.280%   2.005%   1.904%  13.563%   0.536%   3.016%   0.290%   0.270%   0.161%   8.173%
    9    9.2  1.5  1.5   4.656%   0.476%   0.832%   5.926%   1.166%   5.454%   0.093%   0.061%   1.419%   2.802%
   10   10.2  1.5  1.5   0.063%   2.418%   2.728%  19.436%   1.104%   0.016%   1.133%   1.216%   0.301%   9.794%
   11    1.2  1.5  0.5   0.001%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.160%   7.343%   0.245%   1.754%   3.623%   0.137%   1.847%   2.660%   0.353%   1.366%
   13    3.2  1.5  0.5   0.122%   0.945%   0.031%   0.215%  24.564%   0.930%   1.022%   1.121%   0.189%   7.387%
   14    4.2  1.5  0.5   3.110%   0.407%   1.207%   0.169%   0.876%   0.750%   8.277%   4.596%   0.571%   3.875%
   15    5.2  1.5  0.5   4.166%   0.036%   1.457%   0.204%   0.067%   1.464%   7.239%   5.537%   0.117%   0.431%
   16    6.2  1.5  0.5   0.987%   2.999%   0.289%   0.041%   4.799%   0.023%   0.435%   1.092%   0.815%  26.833%
   17    7.2  1.5  0.5   0.724%  22.251%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.073%   0.299%   1.438%  12.688%   0.255%   3.866%   2.398%   4.210%   1.379%   0.116%
   19    9.2  1.5  0.5   0.030%   0.484%   8.563%  14.271%   0.018%   1.877%   5.600%   5.892%   0.017%   0.271%
   20   10.2  1.5  0.5   9.033%   0.188%   6.616%   0.812%   0.299%   6.912%   2.028%   1.178%   0.672%   0.018%
   21    1.2  1.5 -0.5   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   6.630%   0.119%   1.754%   0.245%   0.157%   3.648%   2.930%   2.089%   1.024%   0.137%
   23    3.2  1.5 -0.5   1.528%   0.035%   0.215%   0.031%   0.980%  24.784%   0.992%   0.937%   7.345%   0.174%
   24    4.2  1.5 -0.5   1.081%   2.958%   0.169%   1.207%   0.702%   0.824%   5.684%   8.155%   2.754%   0.826%
   25    5.2  1.5 -0.5   0.026%   3.328%   0.204%   1.457%   1.467%   0.073%   5.141%   7.251%   0.818%   0.105%
   26    6.2  1.5 -0.5   3.203%   0.365%   0.041%   0.289%   0.011%   4.633%   0.157%   0.227%  27.995%   0.974%
   27    7.2  1.5 -0.5  18.186%   0.335%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.016%   0.217%  12.688%   1.438%   3.871%   0.270%   4.197%   2.556%   0.171%   1.158%
   29    9.2  1.5 -0.5   0.768%   0.118%  14.271%   8.563%   1.910%   0.025%   6.022%   5.536%   0.134%   0.048%
   30   10.2  1.5 -0.5   0.189%   9.200%   0.812%   6.616%   6.947%   0.298%   1.120%   2.133%   0.068%   0.540%
   31    1.2  1.5 -1.5   0.001%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.122%   0.945%   0.030%   0.215%  30.159%   1.273%   0.230%   0.251%   0.095%   3.203%
   33    3.2  1.5 -1.5   0.162%   7.341%   0.247%   1.752%   3.089%   0.131%   2.335%   3.336%   0.353%   0.742%
   34    4.2  1.5 -1.5   3.918%   0.866%   0.714%   0.154%   0.050%   0.894%   7.883%   8.232%   9.048%   0.146%
   35    5.2  1.5 -1.5   4.115%   0.006%   0.517%   0.067%   0.101%   2.313%   7.032%   6.205%  13.789%   0.904%
   36    6.2  1.5 -1.5   0.300%   4.280%   0.028%   1.887%   0.017%   0.267%   4.649%   1.933%   3.994%   0.342%
   37    7.2  1.5 -1.5   0.529%  14.617%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   1.171%   1.354%  13.563%   1.904%   3.151%   0.560%   0.529%   0.378%   7.703%   0.124%
   39    9.2  1.5 -1.5   0.920%   3.420%   5.926%   0.832%   5.387%   1.216%   0.218%   0.169%   2.704%   1.301%
   40   10.2  1.5 -1.5   1.991%   0.013%  19.436%   2.728%   0.026%   1.160%   1.042%   1.070%   9.941%   0.325%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.009%   0.001%   0.016%   0.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.307%   0.018%   0.117%   0.370%  11.092%   0.005%   0.447%   0.105%   0.106%   9.887%
    3    3.2  1.5  1.5   0.461%   0.026%   0.071%   0.254%   4.303%   0.484%  39.883%   0.654%   0.345%   2.432%
    4    4.2  1.5  1.5   0.253%   0.426%   0.049%   0.083%   1.617%  10.949%   5.545%   0.719%   0.233%   5.386%
    5    5.2  1.5  1.5   0.022%   0.651%   0.097%   0.041%   0.220%   0.183%   0.948%   2.142%  13.278%   1.162%
    6    6.2  1.5  1.5   0.478%   0.239%   0.068%   0.026%   0.547%   0.394%  25.066%   1.012%   0.943%  10.531%
    7    7.2  1.5  1.5   5.515%   0.381%  10.459%  33.963%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.385%   5.675%   0.220%   8.352%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   2.984%   1.791%   6.565%  10.441%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.486%   7.089%   1.072%   0.487%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.004%   0.062%   0.009%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.027%   0.406%   0.282%   0.097%   0.542%  36.346%   0.813%   0.149%   9.114%   0.071%
   13    3.2  1.5  0.5   0.017%   0.362%   0.341%   0.092%   0.191%   0.236%   0.343%   6.392%  19.451%   0.382%
   14    4.2  1.5  0.5   0.056%   0.043%   0.449%   0.262%  28.140%   0.211%   4.332%   0.451%   0.981%   0.165%
   15    5.2  1.5  0.5   0.088%   0.003%   0.195%   0.525%   0.558%   0.015%   8.881%   0.304%   0.050%  24.077%
   16    6.2  1.5  0.5   0.039%   0.095%   0.220%   0.457%   3.943%   0.048%   1.812%   0.019%   0.101%   1.150%
   17    7.2  1.5  0.5   2.374%  39.628%   6.012%   2.305%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5  11.131%   2.516%   0.169%   1.917%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   6.577%   0.841%   0.924%   0.241%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   4.740%   0.302%   3.647%  12.541%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.066%   0.004%   0.002%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.461%   0.026%   0.072%   0.253%  36.309%   0.541%   0.142%   0.816%   0.074%   9.135%
   23    3.2  1.5 -0.5   0.307%   0.018%   0.118%   0.369%   0.243%   0.192%   6.391%   0.340%   0.372%  19.468%
   24    4.2  1.5 -0.5   0.039%   0.092%   0.245%   0.436%   0.212%  28.105%   0.451%   4.366%   0.168%   1.004%
   25    5.2  1.5 -0.5   0.006%   0.132%   0.500%   0.173%   0.015%   0.573%   0.304%   8.872%  24.158%   0.054%
   26    6.2  1.5 -0.5   0.056%   0.039%   0.474%   0.242%   0.048%   3.934%   0.018%   1.807%   1.128%   0.107%
   27    7.2  1.5 -0.5  42.067%   2.341%   1.224%   4.687%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   2.648%  11.535%   1.487%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.794%   7.017%   0.210%   0.563%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.374%   3.605%  13.091%   4.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.001%   0.013%   0.051%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.017%   0.362%   0.341%   0.092%   0.005%  11.059%   0.105%   0.451%   9.974%   0.111%
   33    3.2  1.5 -1.5   0.027%   0.406%   0.282%   0.096%   0.483%   4.333%   0.655%  39.851%   2.443%   0.348%
   34    4.2  1.5 -1.5   0.463%   0.250%   0.068%   0.030%  10.959%   1.621%   0.712%   5.528%   5.334%   0.239%
   35    5.2  1.5 -1.5   0.694%   0.025%   0.020%   0.072%   0.178%   0.221%   2.145%   0.947%   1.139%  13.343%
   36    6.2  1.5 -1.5   0.238%   0.437%   0.049%   0.087%   0.395%   0.551%   1.008%  25.074%  10.607%   0.948%
   37    7.2  1.5 -1.5   0.362%   7.969%  32.623%   9.364%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   6.489%   0.463%   7.325%   0.355%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   1.341%   4.243%  10.572%   5.625%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   7.598%   0.470%   0.264%   0.802%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   6.777%   2.651%   0.266%   9.524%   0.444%   0.279%   0.903%   0.114%   0.000%   0.000%
    3    3.2  1.5  1.5   0.102%   0.727%   0.034%   1.325%   0.941%   0.503%   0.465%   0.003%   0.000%   0.000%
    4    4.2  1.5  1.5   7.208%   5.754%   0.503%   0.010%   1.788%   4.062%   0.035%   2.200%   0.000%   0.000%
    5    5.2  1.5  1.5  11.179%   5.404%   0.407%   0.001%   1.148%   1.350%   0.194%   6.838%   0.000%   0.000%
    6    6.2  1.5  1.5   7.821%   1.756%   0.121%   0.011%   1.637%   1.442%   0.118%   0.340%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   1.289%   8.013%   0.368%   0.543%   0.283%  27.510%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   2.770%  17.775%   0.083%   0.727%   3.454%   8.763%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   3.929%   0.003%   3.536%   8.154%   0.404%  25.391%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   1.125%   0.769%   0.927%   0.014%   0.528%   0.896%   0.039%   0.865%   0.000%   0.000%
   13    3.2  1.5  0.5   3.467%   0.609%   8.359%   0.174%   0.195%   0.495%   0.030%   2.277%   0.000%   0.000%
   14    4.2  1.5  0.5   0.022%   8.286%   0.283%   0.524%   2.070%   1.002%   0.547%   1.779%   0.000%   0.000%
   15    5.2  1.5  0.5   7.477%   4.119%   0.023%   0.220%   2.620%   1.835%   0.065%   0.102%   0.000%   0.000%
   16    6.2  1.5  0.5  19.243%   5.615%   1.668%   0.004%   0.943%   1.002%   0.081%   7.436%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.277%  14.512%   9.775%   6.730%   4.996%   1.033%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   0.322%   6.183%   9.071%  22.503%   0.519%   3.159%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   0.516%  18.057%   9.999%   4.505%   0.547%   0.290%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.795%   1.119%   0.026%   0.922%   0.951%   0.628%   0.741%   0.001%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.585%   3.480%   0.223%   8.644%   0.421%   0.096%   2.131%   0.015%   0.000%   0.000%
   24    4.2  1.5 -0.5   8.259%   0.022%   0.427%   0.234%   1.473%   2.007%   1.334%   0.730%   0.000%   0.000%
   25    5.2  1.5 -0.5   4.120%   7.386%   0.246%   0.041%   1.698%   2.502%   0.184%   0.193%   0.000%   0.000%
   26    6.2  1.5 -0.5   5.610%  19.277%   0.008%   1.443%   0.206%   0.714%   8.537%   0.225%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%  14.461%   0.309%   7.754%  11.470%   0.245%   3.085%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   6.337%   0.534%  23.079%   7.504%   2.327%   1.976%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%  18.829%   0.517%   4.268%   9.680%   0.032%   0.588%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   2.649%   6.717%   9.802%   0.295%   0.260%   0.481%   0.009%   0.683%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.721%   0.097%   1.316%   0.051%   0.493%   0.880%   0.030%   0.500%   0.000%   0.000%
   34    4.2  1.5 -1.5   5.755%   7.265%   0.010%   0.637%   4.327%   1.501%   1.914%   0.210%   0.000%   0.000%
   35    5.2  1.5 -1.5   5.340%  11.204%   0.014%   0.448%   1.389%   1.473%   6.595%   0.020%   0.000%   0.000%
   36    6.2  1.5 -1.5   1.745%   7.743%   0.008%   0.147%   1.139%   1.521%   0.715%   0.141%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   9.319%   1.525%   0.163%   0.691%  26.092%   0.215%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%  17.213%   3.172%   0.093%   0.356%  10.188%   2.550%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.066%   4.730%   7.139%   2.466%  26.244%   0.770%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.813%   3.501%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.850%   0.747%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.087%   3.148%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.325%   0.040%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.826%   0.916%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.124%   0.158%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.398%   7.239%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.885%   0.572%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.734%   0.536%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.640%   0.378%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.270%   7.248%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.016%  14.329%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.694%  36.758%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.845%   3.983%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.082%   5.659%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.411%  14.788%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.869%   4.942%   2.185%   4.110%   2.306%   1.030%
   42    2.2  0.5  0.5   3.203%  13.504%  13.043%   0.447%   3.584%   3.944%
   43    3.2  0.5  0.5   1.966%   1.939%   4.733%  22.587%   4.832%   0.557%
   44    4.2  0.5  0.5   0.349%   6.893%   5.779%   4.141%   5.163%  26.996%
   45    5.2  0.5  0.5   5.089%   2.364%  13.474%  10.391%   8.200%   3.449%
   46    6.2  0.5  0.5   4.351%   1.267%  21.832%  11.358%   8.800%   1.370%
   47    7.2  0.5  0.5   0.117%   6.590%   3.276%   2.994%   2.448%   1.625%
   48    8.2  0.5  0.5   0.571%  12.829%   7.043%   7.182%   9.419%  11.005%
   49    1.2  0.5 -0.5   1.716%  33.984%   6.869%   1.192%   2.657%   5.271%
   50    2.2  0.5 -0.5   3.960%   3.670%   6.650%  16.913%   1.627%  15.657%
   51    3.2  0.5 -0.5  22.560%   0.165%   3.032%   3.358%   6.657%   5.099%
   52    4.2  0.5 -0.5  15.164%   0.886%   3.896%   2.386%   4.063%   1.537%
   53    5.2  0.5 -0.5   8.861%   0.670%   0.114%   4.121%   0.849%   0.302%
   54    6.2  0.5 -0.5   5.102%   1.204%   2.649%   3.155%  33.195%   0.664%
   55    7.2  0.5 -0.5   4.145%   4.183%   3.310%   5.066%   4.656%  19.506%
   56    8.2  0.5 -0.5  21.976%   4.911%   2.115%   0.601%   1.546%   1.987%


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
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1514.67       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    109244.06  93831.97   7439.20   7967.53      4.27      0.77
 REAL TIME  *    110380.94 SEC
 DISK USED  *         1.52 GB (local),       24.42 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy= 881811.747809935128

              CI              CI           MULTI
   -214.15124679   -213.98997371   -213.50053857
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
