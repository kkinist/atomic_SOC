
 Working directory              : /wrk/irikura/molpro.ANARHaY9FO/
 Global scratch directory       : /wrk/irikura/molpro.ANARHaY9FO/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ANARHaY9FO/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! b 4F term preferred
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
                                                                                 ! first pass gets b4F below 4P
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
 weight,7[0],10[1]
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Preparatory energies and LL values
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,14;
                                                                                 !weight,7[1],7[4]
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Preparatory energies and LL values
 
 {ci;option,natorb=1,nstate=14;wf,sym=1,spin=3;state,14;save,5103.2}
 hlsdiag = energd4
 
 table, hlsdiag
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                           
  64 bit mpp version                                                                     DATE: 22-Feb-24          TIME: 09:27:33  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
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

     13.894 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.55
 REAL TIME  *         1.51 SEC
 DISK USED  *        29.10 MB (local),      404.39 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            17
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.115D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.167D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.166D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 3 5 1 4 6 2 5 3 2   6 4 5 3 1 711 91415  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.852D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.721D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.146D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 3   1 2 9 7 5 4 6 810 3   1 2 6 5 4 7 9 810 2   1 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.10000
                                          0.10000   0.10000   0.10000   0.10000   0.10000   0.10000   0.10000   0.10000
                                          0.10000
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1405
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.24337192    -109.32489902   -0.08152710    0.51525412 0.00134634 0.00000000  0.25E+00      0.12
   2    2    2    0   -109.32072337    -109.32113891   -0.00041554    0.03467279 0.00020098 0.00000000  0.18E-01      0.22
   3    3    3    0   -109.32114087    -109.32114089   -0.00000002    0.00021854 0.00000000 0.00000000  0.15E-03      0.33
   4    2    2    0   -109.32114089    -109.32114089    0.00000000    0.00000001 0.00000000 0.00000000  0.86E-08      0.42

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.23E-12)
                       Final energy:   -109.32114089
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.356833321284
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.356833321284
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.356833321283
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.356833321282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.356833321282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.356833321250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.356833321250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19588876
 One electron energy                          -195.21223177
 Two electron energy                            85.85539845
 Virial ratio                                    3.59164664
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                      -109.329654654419
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                      -109.329654654419
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                     -109.329654654400
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                     -109.329654654400
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                     -109.329654654398
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                     -109.329654654374
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                     -109.329654654374
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.70701408
 One electron energy                          -190.77795486
 Two electron energy                            81.44830021
 Virial ratio                                    3.75340912
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                     -109.301275454236
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19702333
 One electron energy                          -195.20207590
 Two electron energy                            85.90080044
 Virial ratio                                    3.59026033
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1
 ======================
 !MCSCF STATE 16.1 Energy                     -109.301275454236
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19702333
 One electron energy                          -195.20207590
 Two electron energy                            85.90080044
 Virial ratio                                    3.59026033
 
 !MCSCF STATE 16.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1
 ======================
 !MCSCF STATE 17.1 Energy                     -109.301275454208
 Nuclear energy                                  0.00000000
 Kinetic energy                                 42.19702333
 One electron energy                          -195.20207590
 Two electron energy                            85.90080044
 Virial ratio                                    3.59026033
 
 !MCSCF STATE 17.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.958760326894
 !MCSCF expec                      <2.1|LXLX|2.1>     2.198940310840
 !MCSCF expec                      <3.1|LXLX|3.1>     4.000000000710
 !MCSCF expec                      <4.1|LXLX|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     5.999951307796
 !MCSCF expec                      <6.1|LXLX|6.1>     3.041332734485
 !MCSCF expec                      <7.1|LXLX|7.1>     7.801015319275
 !MCSCF expec                      <8.1|LXLX|8.1>     3.999922582671
 !MCSCF expec                      <9.1|LXLX|9.1>     4.000083005606
 !MCSCF expec                    <10.1|LXLX|10.1>     2.025739555459
 !MCSCF expec                    <11.1|LXLX|11.1>     1.270470399137
 !MCSCF expec                    <12.1|LXLX|12.1>     5.999215812296
 !MCSCF expec                    <13.1|LXLX|13.1>     4.131420568762
 !MCSCF expec                    <14.1|LXLX|14.1>     6.573148076069
 !MCSCF expec                    <15.1|LXLX|15.1>     0.000000034754
 !MCSCF expec                    <16.1|LXLX|16.1>     1.000000000000
 !MCSCF expec                    <17.1|LXLX|17.1>     0.999999965246
 
 !MCSCF expec                      <1.1|LYLY|1.1>     2.214037200540
 !MCSCF expec                      <2.1|LYLY|2.1>     0.967728547661
 !MCSCF expec                      <3.1|LYLY|3.1>     3.999999999290
 !MCSCF expec                      <4.1|LYLY|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     5.999935472498
 !MCSCF expec                      <6.1|LYLY|6.1>     7.785957898552
 !MCSCF expec                      <7.1|LYLY|7.1>     3.032340881460
 !MCSCF expec                      <8.1|LYLY|8.1>     4.000055814422
 !MCSCF expec                      <9.1|LYLY|9.1>     3.999913666372
 !MCSCF expec                    <10.1|LYLY|10.1>     1.250137241763
 !MCSCF expec                    <11.1|LYLY|11.1>     1.999441700374
 !MCSCF expec                    <12.1|LYLY|12.1>     5.998731457060
 !MCSCF expec                    <13.1|LYLY|13.1>     6.600244747181
 !MCSCF expec                    <14.1|LYLY|14.1>     4.151475372827
 !MCSCF expec                    <15.1|LYLY|15.1>     1.000000000000
 !MCSCF expec                    <16.1|LYLY|16.1>     0.000000000000
 !MCSCF expec                    <17.1|LYLY|17.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     8.827202472566
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.833331141499
 !MCSCF expec                      <3.1|LZLZ|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     0.000113219706
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.172709366963
 !MCSCF expec                      <7.1|LZLZ|7.1>     1.166643799265
 !MCSCF expec                      <8.1|LZLZ|8.1>     4.000021602907
 !MCSCF expec                      <9.1|LZLZ|9.1>     4.000003328022
 !MCSCF expec                    <10.1|LZLZ|10.1>     8.724123202778
 !MCSCF expec                    <11.1|LZLZ|11.1>     8.730087900488
 !MCSCF expec                    <12.1|LZLZ|12.1>     0.002052730644
 !MCSCF expec                    <13.1|LZLZ|13.1>     1.268334684057
 !MCSCF expec                    <14.1|LZLZ|14.1>     1.275376551104
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.999999965246
 !MCSCF expec                    <16.1|LZLZ|16.1>     1.000000000000
 !MCSCF expec                    <17.1|LZLZ|17.1>     0.000000034754
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>    12.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>    12.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>    12.000000000000
 !MCSCF expec                    <11.1|L**2|11.1>    12.000000000000
 !MCSCF expec                    <12.1|L**2|12.1>    12.000000000000
 !MCSCF expec                    <13.1|L**2|13.1>    12.000000000000
 !MCSCF expec                    <14.1|L**2|14.1>    12.000000000000
 !MCSCF expec                    <15.1|L**2|15.1>     2.000000000000
 !MCSCF expec                    <16.1|L**2|16.1>     2.000000000000
 !MCSCF expec                    <17.1|L**2|17.1>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.82473     1  1  s    0.99938
    2.1     1.70000    -0.20900     1  2  s    1.01711
    3.1     1.46046    -0.35045     1  1  d2+  1.00318
    4.1     1.46046    -0.35045     1  1  d1+  1.00318
    5.1     1.46046    -0.35045     1  1  d1-  1.00318
    6.1     1.46046    -0.35045     1  1  d2-  1.00318
    7.1     1.46046    -0.35045     1  1  d0   1.00318
    1.2     1.99924    -2.44394     1  1  py   0.99884
    2.2     1.99924    -2.44394     1  1  px   0.99884
    3.2     1.99924    -2.44394     1  1  pz   0.99884
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.728D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.210D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.129D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.444D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.234D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.399D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.399D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.608D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.608D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.203D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.202D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.203D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.576D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.576D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.395D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.395D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.488D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.488D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.264D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.264D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.912D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.912D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.161D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.432D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.157D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.228D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.174D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.350D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.350D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 5 4 6 3 2 1 2 4   6 5 3 1 6 4 2 5 3 2   6 4 5 3 1 7 9111415  1310 812 2 6 4 3 5 1
                                        71415131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.167D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.167D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.243D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.237D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.633D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.633D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.111D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.128D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.208D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.208D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.337D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.262D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.863D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.508D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.510D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.343D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.482D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.482D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.344D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.152D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   1 2 9 7 4 5 610 8 3   1 2 6 4 5 7 910 8 1   2 3 810 6 7 9 5 4 1
                                        2 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 2a222aa 222      0.00000000      0.00000000      1.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa222a 222     -0.01532630      0.04065928      0.00000000      0.99905540      0.00021142      0.00011308     -0.00043062
 22aaa22 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 222aaa2 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2a2aa22 222      0.00000290     -0.00000769      0.00000000     -0.00018892      0.89442717     -0.00000002      0.00000008
 22a22aa 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa22a2 222     -0.00000145      0.00000384     -0.00000000      0.00009446     -0.44721359      0.00000001     -0.00000004
 22aa22a 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22a2a2a 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a22a2a 222      0.06630747      0.06220550     -0.00000000     -0.00129744     -0.00000000      0.25672178      0.57081174
 2a2a22a 222     -0.06241631      0.06726975      0.00000000     -0.00352004     -0.00000000     -0.57072419      0.25659403
 2222aaa 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222a2aa 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa2a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2aa2 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2aaa222 222     -0.42033109      0.45518299      0.00000000     -0.02515389      0.00000000      0.58755901     -0.26508850
 2aa2a22 222     -0.45684800     -0.42053233      0.00000000      0.01032938      0.00000000      0.26422484      0.58695912
 2a22aa2 222     -0.52843931      0.57169761      0.00000000     -0.03125078      0.00000000     -0.40096429      0.17934539
 2a2a2a2 222      0.57169590      0.52827542     -0.00000000     -0.01257661     -0.00000000      0.18043033      0.40171581
 222aa2a 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:       -109.35683332   -109.35683332   -109.35683332   -109.35683332   -109.35683332   -109.35683332   -109.35683332

 State:                8               9              10              11              12              13              14
 2a222aa 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa222a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22aaa22 222      0.98285984      0.18178036      0.00043680      0.00005588     -0.00000000      0.00174306     -0.00097940
 222aaa2 222     -0.18178195      0.98285717     -0.00005753      0.00252278      0.00000000      0.00145426      0.00061743
 2a2aa22 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22a22aa 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.89400750      0.00000000     -0.00000000
 2aa22a2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22aa22a 222     -0.00012067     -0.00183794     -0.03138425      0.79679577     -0.00000000      0.01508538     -0.40391828
 22a2a2a 222     -0.00091356     -0.00081689      0.79432930      0.03121030     -0.00000000      0.40876179      0.01511876
 2a22a2a 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a2a22a 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2222aaa 222      0.00100627     -0.00171471     -0.02313339      0.59026308      0.00000000     -0.02491816      0.67058100
 222a2aa 222     -0.00068831     -0.00110448     -0.59432840     -0.02341997     -0.00000000      0.66697319      0.02489432
 22aa2a2 222     -0.00092484     -0.00110931      0.11547057      0.00449775      0.00000000      0.62107588      0.02310156
 22a2aa2 222     -0.00065064     -0.00007114     -0.00476364      0.11924170     -0.00000000      0.02309605     -0.62036245
 2aaa222 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa2a22 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a22aa2 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2a2a2a2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 222aa2a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.44700375     -0.00000000      0.00000000
 
 Energy:       -109.32965465   -109.32965465   -109.32965465   -109.32965465   -109.32965465   -109.32965465   -109.32965465

 State:               15              16              17
 2a222aa 222     -0.00000000      0.00000000      0.00000000
 2aa222a 222      0.00000000     -0.00000000      0.00000000
 22aaa22 222     -0.00000000     -0.00000000      0.00000000
 222aaa2 222      0.00000000      0.00000000     -0.00000000
 2a2aa22 222     -0.00000000      0.00000000      0.44685367
 22a22aa 222      0.00000000      0.00000000      0.00032201
 2aa22a2 222      0.00000000     -0.00000000      0.89370735
 22aa22a 222     -0.00031322     -0.00007470     -0.00000000
 22a2a2a 222     -0.00007470      0.00031322      0.00000000
 2a22a2a 222     -0.17955631      0.75285732     -0.00000000
 2a2a22a 222      0.75285732      0.17955631     -0.00000000
 2222aaa 222      0.00031322      0.00007470     -0.00000000
 222a2aa 222     -0.00007470      0.00031322      0.00000000
 22aa2a2 222      0.00012939     -0.00054251     -0.00000000
 22a2aa2 222      0.00054251      0.00012939      0.00000000
 2aaa222 222      0.43466238      0.10366688      0.00000000
 2aa2a22 222      0.10366688     -0.43466238     -0.00000000
 2a22aa2 222     -0.43466238     -0.10366688      0.00000000
 2a2a2a2 222      0.10366688     -0.43466238     -0.00000000
 222aa2a 222     -0.00000000     -0.00000000      0.00064401
 
 Energy:       -109.30127545   -109.30127545   -109.30127545
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        2.76       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.23      0.51      0.55
 REAL TIME  *         2.14 SEC
 DISK USED  *        34.86 MB (local),      473.53 MB (total)
 SF USED    *        12.07 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Preparatory energies and LL values

         ENERGY      LL
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3568333   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3296547   12.0
    -109.3012755    2.0
    -109.3012755    2.0
    -109.3012755    2.0
                                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            14
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 5 4 6 3 2 1 2 4   6 5 3 1 6 4 2 5 3 2   6 4 5 3 1 7 9111415  1310 812 2 6 4 3 5 1
                                        71415131011 9 812 2   6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   1 2 9 7 4 5 610 8 3   1 2 6 4 5 7 910 8 1   2 3 810 6 7 9 5 4 1
                                        2 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
                                          0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1237
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.34324399    -109.34513643   -0.00189244    0.09429988 0.00000339 0.00000000  0.28E-01      0.15
   2    3    3    0   -109.34514659    -109.34514674   -0.00000015    0.00074531 0.00000000 0.00000000  0.30E-03      0.27
   3    2    2    0   -109.34514674    -109.34514674   -0.00000000    0.00000007 0.00000000 0.00000000  0.38E-07      0.37

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.33E-12)
                       Final energy:   -109.34514674
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.368618695296
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.368618695296
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.368618695293
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.368618695293
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.368618695293
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.368618695263
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.368618695262
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.83643198
 One electron energy                          -194.76836740
 Two electron energy                            85.39974870
 Virial ratio                                    3.61419565
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                      -109.321674777317
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844606
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                      -109.321674777316
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844606
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                     -109.321674777298
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844605
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                     -109.321674777297
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844605
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                     -109.321674777294
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844605
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                     -109.321674777272
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844605
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                     -109.321674777272
 Nuclear energy                                  0.00000000
 Kinetic energy                                 39.37844605
 One electron energy                          -190.35540815
 Two electron energy                            81.03373337
 Virial ratio                                    3.77618052
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.971472751844
 !MCSCF expec                      <2.1|LXLX|2.1>     2.194985923401
 !MCSCF expec                      <3.1|LXLX|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     4.836388900351
 !MCSCF expec                      <5.1|LXLX|5.1>     5.163523090951
 !MCSCF expec                      <6.1|LXLX|6.1>     7.677590087120
 !MCSCF expec                      <7.1|LXLX|7.1>     3.156039246333
 !MCSCF expec                      <8.1|LXLX|8.1>     3.999996830712
 !MCSCF expec                      <9.1|LXLX|9.1>     3.999922761622
 !MCSCF expec                    <10.1|LXLX|10.1>     0.967703134684
 !MCSCF expec                    <11.1|LXLX|11.1>     2.291202965645
 !MCSCF expec                    <12.1|LXLX|12.1>     5.999999982710
 !MCSCF expec                    <13.1|LXLX|13.1>     3.187583716745
 !MCSCF expec                    <14.1|LXLX|14.1>     7.553590607882
 
 !MCSCF expec                      <1.1|LYLY|1.1>     2.194126755390
 !MCSCF expec                      <2.1|LYLY|2.1>     0.970931106659
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     4.836358468240
 !MCSCF expec                      <5.1|LYLY|5.1>     5.163446140925
 !MCSCF expec                      <6.1|LYLY|6.1>     3.156524208059
 !MCSCF expec                      <7.1|LYLY|7.1>     7.678613320725
 !MCSCF expec                      <8.1|LYLY|8.1>     3.999999526436
 !MCSCF expec                      <9.1|LYLY|9.1>     3.999876449734
 !MCSCF expec                    <10.1|LYLY|10.1>     2.319158464767
 !MCSCF expec                    <11.1|LYLY|11.1>     0.982749257783
 !MCSCF expec                    <12.1|LYLY|12.1>     6.000000017290
 !MCSCF expec                    <13.1|LYLY|13.1>     7.525309286585
 !MCSCF expec                    <14.1|LYLY|14.1>     3.172906997406
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     8.834400492766
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.834082969940
 !MCSCF expec                      <3.1|LZLZ|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     2.327252631409
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.673030768123
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.165885704821
 !MCSCF expec                      <7.1|LZLZ|7.1>     1.165347432941
 !MCSCF expec                      <8.1|LZLZ|8.1>     4.000003642852
 !MCSCF expec                      <9.1|LZLZ|9.1>     4.000200788643
 !MCSCF expec                    <10.1|LZLZ|10.1>     8.713138400549
 !MCSCF expec                    <11.1|LZLZ|11.1>     8.726047776572
 !MCSCF expec                    <12.1|LZLZ|12.1>    -0.000000000000
 !MCSCF expec                    <13.1|LZLZ|13.1>     1.287106996670
 !MCSCF expec                    <14.1|LZLZ|14.1>     1.273502394712
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>    12.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>    12.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>    12.000000000000
 !MCSCF expec                    <11.1|L**2|11.1>    12.000000000000
 !MCSCF expec                    <12.1|L**2|12.1>    12.000000000000
 !MCSCF expec                    <13.1|L**2|13.1>    12.000000000000
 !MCSCF expec                    <14.1|L**2|14.1>    12.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.79229     1  1  s    1.00016
    2.1     1.50018    -0.33458     1  1  d0   1.00383
    3.1     1.50018    -0.33458     1  1  d1+  1.00383
    4.1     1.50018    -0.33458     1  1  d1-  1.00383
    5.1     1.50018    -0.33458     1  1  d2-  1.00383
    6.1     1.50018    -0.33458     1  1  d2+  1.00383
    7.1     1.50000    -0.17556     1  2  s    1.01215
    1.2     1.99970    -2.41459     1  1  pz   0.99928
    2.2     1.99970    -2.41459     1  1  px   0.99928
    3.2     1.99970    -2.41459     1  1  py   0.99928
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.149D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.927D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.133D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.163D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.163D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.547D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.547D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.319D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.319D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.979D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.781D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.378D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.378D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.152D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.388D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.388D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.182D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.641D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.641D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.899D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.898D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.859D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.529D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.529D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.215D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.215D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 5 3 1 6 4 2 3 5 2   4 6 5 3 114151310 9  11 7 812 2 6 4 5 3 1
                                        71415131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.132D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.132D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.353D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.353D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.624D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.624D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.637D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.638D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.412D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.412D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.399D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.398D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.204D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.317D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.505D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.179D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.179D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.462D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.473D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.201D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 1 2 3 3   1 2 7 9 5 4 6 810 3   1 2 6 5 4 9 7 810 1   2 3 810 6 9 7 5 4 2
                                        1 3
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 2a222aa 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      1.00000000     -0.00000000     -0.00000000
 2a22a2a 222     -0.00000001     -0.00001968      0.00000072      1.00000000     -0.00000000     -0.00002031      0.00000112
 22aa2a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22aaa22 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa22a 222      0.00051346      0.03046434      0.89390571      0.00000000      0.00000000      0.00205647      0.00007019
 2a22aa2 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a2a2a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa22a2 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 222aa2a 222      0.77827671     -0.00063706     -0.00051611      0.00000000      0.00000000      0.02443480      0.44009957
 22a2a2a 222      0.00063047      0.77725722     -0.02547633      0.00000633      0.00000000     -0.44116074      0.02447403
 2aa2a22 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a22aa 222     -0.62134997      0.00043093      0.00021012     -0.00000000     -0.00000000      0.03549659      0.64238927
 222a2aa 222      0.00040718      0.62181722     -0.02266489      0.00002532      0.00000000      0.64153853     -0.03546545
 2a2a22a 222     -0.00012892     -0.08974333      0.00162318      0.00001097      0.00000000      0.62509672     -0.03460607
 2aa222a 222     -0.09060169      0.00011901      0.00017666     -0.00000000     -0.00000000     -0.03460140     -0.62497522
 222aaa2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22a2aa2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2222aaa 222      0.00025673      0.01523217      0.44695286     -0.00000000      0.00000000      0.00102824      0.00003510
 2aaa222 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:       -109.36861870   -109.36861870   -109.36861870   -109.36861870   -109.36861870   -109.36861870   -109.36861870

 State:                8               9              10              11              12              13              14
 2a222aa 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22a2a 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22aa2a2 222     -0.09063882      0.99542609     -0.00113480     -0.00015396     -0.00043947      0.00005096      0.00004782
 22aaa22 222      0.99542280      0.09063698     -0.00198540      0.00039744      0.00164760      0.00125679     -0.00002411
 22aa22a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22aa2 222     -0.00147463      0.00027018      0.01048687     -0.01467736      0.89383385     -0.00211269     -0.00096927
 2a2a2a2 222     -0.00038678      0.00009622     -0.01493152      0.79775442      0.01283469     -0.00101556     -0.40307695
 2aa22a2 222      0.00099835      0.00097787      0.79725949      0.01485315     -0.00815477      0.40417600     -0.00141549
 222aa2a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a2a2a 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa2a22 222     -0.00026613      0.00002612     -0.01143476      0.58957280      0.01055165      0.00345588      0.67187932
 2a2aa22 222     -0.00195371     -0.00088348     -0.59052565     -0.01193145      0.00831215      0.67106289     -0.00316334
 22a22aa 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 222a2aa 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2a2a22a 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa222a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 222aaa2 222      0.00055158     -0.00005449     -0.11935784     -0.00168685     -0.00009086     -0.62078947      0.00264359
 22a2aa2 222      0.00006966     -0.00004047      0.00201886     -0.12019372     -0.00131812      0.00258159      0.62062629
 2222aaa 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2aaa222 222     -0.00073732      0.00013509      0.00524343     -0.00733868      0.44691693     -0.00105635     -0.00048463
 
 Energy:       -109.32167478   -109.32167478   -109.32167478   -109.32167478   -109.32167478   -109.32167478   -109.32167478
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.09       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       5        5.67       700     1000      520     2140     2141   
                                         GEOM     BASIS   MCVARS    MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI       INT
 CPU TIMES  *         1.72      0.48      0.51      0.55
 REAL TIME  *         2.72 SEC
 DISK USED  *        37.81 MB (local),      508.95 MB (total)
 SF USED    *        12.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Preparatory energies and LL values

         ENERGY      LL
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3686187   12.0
    -109.3216748   12.0
    -109.3216748   12.0
    -109.3216748   12.0
    -109.3216748   12.0
    -109.3216748   12.0
    -109.3216748   12.0
    -109.3216748   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 14  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14
 Number of reference states: 14  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14

 Program parameters:       NSTATE= 14    NSTATI= 14    NSTATR= 14    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 42    MAXVI = 42    NOSING=  0    NOPAIR=  0
                           MXSHRF=  3    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  1    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.5282735E-15. Vector removed
 Catastrophic failure in diagonalization(hsdel)
 The expansion set has become singular
 This difficulty can arise for many reasons
 Sometimes it helps to redefine P space
 Otherwise, try increasing or decreasing reference space or nstati

 GLOBAL ERROR fehler on processor   0                                         
