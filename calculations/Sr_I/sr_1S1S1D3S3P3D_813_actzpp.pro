
 Working directory              : /wrk/irikura/molpro.iMJcOkbrle/
 Global scratch directory       : /wrk/irikura/molpro.iMJcOkbrle/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.iMJcOkbrle/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Sr SO-CI
 memory,3000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (8/13)
 {multi
     closed,1,0
     occ,8,6
     wf,sym=1,spin=2;state,9;
     wf,sym=1,spin=0;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag(10) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5201.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 08-Mar-24          TIME: 08:29:22  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


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

     10.224 MB (compressed) written to integral file ( 21.7%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     167320.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     167320      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     6063679. AND WROTE       34957. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     32 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      166504.  Node maximum:      170063. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.96      0.73
 REAL TIME  *         2.30 SEC
 DISK USED  *        29.00 MB (local),      532.61 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.00      0.01    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.00      0.01    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.00      0.01    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.00      0.01    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.01      0.02    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.00      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586651
  RHF Two-electron energy              19.477105286036
  RHF Kinetic energy                    9.485913008600
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
 CPU TIMES  *         0.98      0.02      0.73
 REAL TIME  *         2.32 SEC
 DISK USED  *        29.34 MB (local),      538.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:          117012   (183996 determinants, 368082 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:           71729   (255725 determinants, 511225 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 2 4   6 3 5 1 6 4 2 3 5 1   4 6 3 5 2 4 6 3 5 2   1 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.330D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.330D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.582D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.561D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.260D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 1 2 3 3   1 2 6 5 4 810 9 7 3   1 2 4 5 6 810 7 9 3   1 2 5 4 6 810 9 7 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  463  ( 7 closed/active, 30 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    3446502
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   22  107    5    -30.19451461     -30.30668956   -0.11217495    0.04810585 0.00015901 0.00041973  0.24E+01     30.73
   2   13   76    0    -30.27889292     -30.29185579   -0.01296286    0.09402841 0.00001201 0.00001989  0.60E+00     51.58
   3   10   50    0    -30.29247491     -30.29254947   -0.00007456    0.00616197 0.00000227 0.00000634  0.37E-01     66.24
   4    9   37    0    -30.29254968     -30.29254968   -0.00000000    0.00002807 0.00000000 0.00000001  0.18E-03     78.73
   5    2    4    0    -30.29254968     -30.29254968   -0.00000000    0.00000001 0.00000000 0.00000000  0.43E-08     80.50

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.27E-08)
                       Final energy:    -30.29254968
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.299297403879
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.29172456
 One electron energy                           -48.45476707
 Two electron energy                            18.15546966
 Virial ratio                                    4.26089062
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.288830587819
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.18263040
 One electron energy                           -50.73358636
 Two electron energy                            20.44475577
 Virial ratio                                    3.97455858
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.288830587819
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.18263040
 One electron energy                           -50.73358636
 Two electron energy                            20.44475577
 Virial ratio                                    3.97455858
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.288830587819
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.18263040
 One electron energy                           -50.73358636
 Two electron energy                            20.44475577
 Virial ratio                                    3.97455858
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -30.288830587815
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.18263040
 One electron energy                           -50.73358636
 Two electron energy                            20.44475577
 Virial ratio                                    3.97455858
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -30.288830587814
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.18263040
 One electron energy                           -50.73358636
 Two electron energy                            20.44475577
 Virial ratio                                    3.97455858
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -30.259907814461
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.44907046
 One electron energy                           -48.99208477
 Two electron energy                            18.73217695
 Virial ratio                                    4.20242165
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -30.259907814461
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.44907046
 One electron energy                           -48.99208477
 Two electron energy                            18.73217695
 Virial ratio                                    4.20242165
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -30.259907814461
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.44907046
 One electron energy                           -48.99208477
 Two electron energy                            18.73217695
 Virial ratio                                    4.20242165
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.433267769513
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.36678596
 One electron energy                           -49.55649290
 Two electron energy                            19.12322514
 Virial ratio                                    4.24906194
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.287582206018
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.33794283
 One electron energy                           -48.60502554
 Two electron energy                            18.31744334
 Virial ratio                                    4.24349621
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -30.287354237204
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.01424909
 One electron energy                           -50.28872327
 Two electron energy                            20.00136903
 Virial ratio                                    4.02442589
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -30.287354237204
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.01424909
 One electron energy                           -50.28872327
 Two electron energy                            20.00136903
 Virial ratio                                    4.02442589
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -30.287354237204
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.01424909
 One electron energy                           -50.28872327
 Two electron energy                            20.00136903
 Virial ratio                                    4.02442589
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -30.287354237201
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.01424909
 One electron energy                           -50.28872327
 Two electron energy                            20.00136903
 Virial ratio                                    4.02442589
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -30.287354237200
 Nuclear energy                                  0.00000000
 Kinetic energy                                 10.01424909
 One electron energy                           -50.28872327
 Two electron energy                            20.00136903
 Virial ratio                                    4.02442589
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.431444911049
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     2.539424116960
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.029070190525
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000699710729
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     2.999361070737
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.270646744020
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.986924311202
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.742428944779
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999445949319
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000030926581
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000604697055
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.238895287961
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.761023139085
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.656091176760
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.895784235645
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.448111113919
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999375218587
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.000638255089
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.929625207432
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.125957819329
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.944416973238
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000440956726
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.188151241978
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.811336699515
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.740237545482
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.259833556299
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.912463912190
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.564791647395
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.522818695556
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999925070685
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000674174
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.799728048548
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.887117869469
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.313154081983
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000113093954
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.811817831441
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.188058603430
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.020867166558
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.979143304617
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 2 5 2 6   4 5 3 1 2 5 4 6 3 1   5 6 4 3 2 4 6 5 3 2   1 4 6 5 3 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 1   2 3 6 810 5 4 9 7 3   2 1 5 4 810 6 9 7 1   2 3 5 4 8 9 710 6 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.92733     1  1  s    0.98700
    2.1     0.78213    -0.07958     1  2  s    1.03103
    3.1     0.13241     0.04066     1  2  s   -0.80418    1  3  s   -0.29312    1  8  s    1.42659
    4.1     0.12162     0.18181     1  1  d1+  1.22671    1  2  d1+ -0.33818    1  3  d1+ -0.28534
    5.1     0.12162     0.18181     1  1  d1-  1.22671    1  2  d1- -0.33818    1  3  d1- -0.28534
    6.1     0.12162     0.18181     1  1  d2-  1.22671    1  2  d2- -0.33818    1  3  d2- -0.28534
    7.1     0.12162     0.18181     1  1  d0   1.22671    1  2  d0  -0.33818    1  3  d0  -0.28534
    8.1     0.12162     0.18181     1  1  d2+  1.22671    1  2  d2+ -0.33818    1  3  d2+ -0.28534
    1.2     1.98125    -1.05579     1  1  pz   0.98328
    2.2     1.98125    -1.05579     1  1  px   0.98328
    3.2     1.98125    -1.05579     1  1  py   0.98328
    4.2     0.17787     0.04173     1  2  pz   0.95023
    5.2     0.17787     0.04173     1  2  py   0.95023
    6.2     0.17787     0.04173     1  2  px   0.95023
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 a0000a0 222000      0.00000000      0.00031035     -0.00041293     -0.00008785      0.00018019      0.98433960      0.00000000
 a00000a 222000     -0.00000000      0.00545204      0.00119798      0.00023885      0.98432388     -0.00018138     -0.00000000
 aa00000 222000      0.98373262     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 222a0a      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.26067731
 0000000 222aa0     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.83919645
 0000000 2220aa     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.43974888
 a00a000 222000     -0.00000000      0.67994028      0.70512115     -0.09689665     -0.00460074      0.00007362     -0.00000000
 a000a00 222000     -0.00000000      0.54283816     -0.42709736      0.70130748     -0.00265713     -0.00028724     -0.00000000
 a0a0000 222000      0.00000000     -0.46032910      0.53788024      0.68388854      0.00172921      0.00043149     -0.00000000
 
 Energy:           -30.29929740    -30.28883059    -30.28883059    -30.28883059    -30.28883059    -30.28883059    -30.25990781

 State:                   8               9
 a0000a0 222000      0.00000000      0.00000000
 a00000a 222000      0.00000000     -0.00000000
 aa00000 222000     -0.00000000     -0.00000000
 0000000 222a0a      0.91867282      0.23166785
 0000000 222aa0     -0.11236394     -0.49870440
 0000000 2220aa     -0.33014694      0.81437481
 a00a000 222000      0.00000000      0.00000000
 a000a00 222000     -0.00000000     -0.00000000
 a0a0000 222000     -0.00000000     -0.00000000
 
 Energy:           -30.25990781    -30.25990781
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 222000      0.93562642      0.14300980     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 ab00000 222000     -0.10308524      0.65556539     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 ba00000 222000      0.10308524     -0.65556539      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b00a000 222000     -0.00000000     -0.00000000     -0.60688887     -0.00166455      0.00801646     -0.00016149      0.00089570
 a00b000 222000      0.00000000      0.00000000      0.60688887      0.00166455     -0.00801646      0.00016149     -0.00089570
 b00000a 222000      0.00000000      0.00000000     -0.00089576     -0.00030397     -0.00112087     -0.04380728     -0.60536000
 a00000b 222000     -0.00000000     -0.00000000      0.00089576      0.00030397      0.00112087      0.04380728      0.60536000
 b0000a0 222000      0.00000000      0.00000000      0.00018860     -0.00100546     -0.00302011     -0.60535300      0.04381259
 a0000b0 222000     -0.00000000     -0.00000000     -0.00018860      0.00100546      0.00302011      0.60535300     -0.04381259
 b000a00 222000      0.00000000      0.00000000      0.00361894     -0.58760069      0.15196792      0.00021839     -0.00000749
 a000b00 222000     -0.00000000     -0.00000000     -0.00361894      0.58760069     -0.15196792     -0.00021839      0.00000749
 b0a0000 222000     -0.00000000      0.00000000     -0.00734357     -0.15199842     -0.58754836      0.00324948      0.00093993
 a0b0000 222000      0.00000000     -0.00000000      0.00734357      0.15199842      0.58754836     -0.00324948     -0.00093993
 0000000 222200     -0.15154247     -0.00462216      0.00012099     -0.00064502     -0.00193747     -0.38834876      0.02810685
 0000000 222002     -0.15154247     -0.00462216     -0.00055816      0.00015363      0.00034601      0.16983609     -0.35037721
 0000000 222ab0      0.00000000     -0.00000000     -0.33717319     -0.00092479      0.00445376     -0.00008972      0.00049763
 0000000 222ba0     -0.00000000      0.00000000      0.33717319      0.00092479     -0.00445376      0.00008972     -0.00049763
 0000000 2220ab     -0.00000000      0.00000000      0.00201060     -0.32645713      0.08442981      0.00012133     -0.00000416
 0000000 2220ba      0.00000000     -0.00000000     -0.00201060      0.32645713     -0.08442981     -0.00012133      0.00000416
 0000000 222b0a     -0.00000000     -0.00000000      0.00407992      0.08444675      0.32642805     -0.00180533     -0.00052220
 0000000 222a0b      0.00000000      0.00000000     -0.00407992     -0.08444675     -0.32642805      0.00180533      0.00052220
 0000000 222020     -0.15154247     -0.00462216      0.00043717      0.00049139      0.00159147      0.21851268      0.32227036
 0200000 222000     -0.00653541     -0.29181481      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0a0b000 222000      0.00000000      0.00000000      0.05108668      0.00014012     -0.00067481      0.00001359     -0.00007540
 0b0a000 222000     -0.00000000     -0.00000000     -0.05108668     -0.00014012      0.00067481     -0.00001359      0.00007540
 0a0000b 222000      0.00000000     -0.00000000      0.00007540      0.00002559      0.00009435      0.00368761      0.05095799
 0b0000a 222000     -0.00000000      0.00000000     -0.00007540     -0.00002559     -0.00009435     -0.00368761     -0.05095799
 0a000b0 222000      0.00000000     -0.00000000     -0.00001588      0.00008464      0.00025423      0.05095740     -0.00368806
 0b000a0 222000     -0.00000000      0.00000000      0.00001588     -0.00008464     -0.00025423     -0.05095740      0.00368806
 
 Energy:           -30.43326777    -30.28758221    -30.28735424    -30.28735424    -30.28735424    -30.28735424    -30.28735424
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        80.26     79.28      0.02      0.73
 REAL TIME  *        88.71 SEC
 DISK USED  *        33.43 MB (local),      603.56 MB (total)
 SF USED    *        40.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.29929740   0.0
    -30.28883059   6.0
    -30.28883059   6.0
    -30.28883059   6.0
    -30.28883059   6.0
    -30.28883059   6.0
    -30.25990781   2.0
    -30.25990781   2.0
    -30.25990781   2.0
    -30.43326777  -0.0
    -30.28758221  -0.0
    -30.28735424   6.0
    -30.28735424   6.0
    -30.28735424   6.0
    -30.28735424   6.0
    -30.28735424   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:    25667 conf   117012 CSFs
 N elec internal:   268268 conf  1756755 CSFs
 N-1 el internal:   167853 conf  1691375 CSFs
 N-2 el internal:    66136 conf  1047135 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.29929740
     2       -30.28883059
     3       -30.28883059
     4       -30.28883059
     5       -30.28883059
     6       -30.28883059
     7       -30.25990781
     8       -30.25990781
     9       -30.25990781

 Number of blocks in overlap matrix:    25   Smallest eigenvalue:  0.14D-05
 Number of N-2 electron functions:    1764
 Number of N-1 electron functions: 1691375

 Number of internal configurations:               878115
 Number of singly external configurations:      55814850
 Number of doubly external configurations:       1925478
 Total number of contracted configurations:     58618443
 Total number of uncontracted configurations: 1192057920

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:  11995.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1989860 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.29929740    -0.00000000    -0.13956144  0.37D-01  0.96D-02 12243.98
    1     2     2     1.00000000     0.00000000   -30.28883059    -0.00000000    -0.18001571  0.66D-01  0.12D-01 12243.98
    1     3     3     1.00000000     0.00000000   -30.28883059     0.00000000    -0.18003321  0.66D-01  0.12D-01 12243.98
    1     4     4     1.00000000     0.00000000   -30.28883059     0.00000000    -0.17981200  0.66D-01  0.12D-01 12243.98
    1     5     5     1.00000000     0.00000000   -30.28883059     0.00000000    -0.17976755  0.66D-01  0.12D-01 12243.98
    1     6     6     1.00000000     0.00000000   -30.28883059     0.00000000    -0.17985008  0.66D-01  0.12D-01 12243.98
    1     7     7     1.00000000     0.00000000   -30.25990781     0.00000000    -0.13849684  0.34D-01  0.96D-02 12243.98
    1     8     8     1.00000000     0.00000000   -30.25990781     0.00000000    -0.13849511  0.34D-01  0.96D-02 12243.98
    1     9     9     1.00000000     0.00000000   -30.25990781    -0.00000000    -0.13852473  0.34D-01  0.96D-02 12243.98
    2     1     1     1.07635875    -0.17041758   -30.46971498    -0.17041758    -0.01110824  0.35D-02  0.99D-03 22046.58
    2     2     2     1.07634780    -0.18087351   -30.46970410    -0.18087351    -0.01111866  0.35D-02  0.99D-03 22046.58
    2     3     3     1.07641924    -0.18081583   -30.46964642    -0.18081583    -0.01118621  0.36D-02  0.10D-02 22046.58
    2     4     4     1.07639606    -0.18080746   -30.46963805    -0.18080746    -0.01117944  0.36D-02  0.10D-02 22046.58
    2     5     5     1.07637566    -0.18079357   -30.46962416    -0.18079357    -0.01119334  0.36D-02  0.10D-02 22046.58
    2     6     6     1.04944019    -0.15666089   -30.44549147    -0.15666089    -0.00616909  0.12D-02  0.68D-03 22046.58
    2     7     7     1.04587008    -0.14493706   -30.40484488    -0.14493706    -0.00623303  0.10D-02  0.74D-03 22046.58
    2     8     8     1.04589058    -0.14493051   -30.40483833    -0.14493051    -0.00623599  0.10D-02  0.74D-03 22046.58
    2     9     9     1.04589042    -0.14493006   -30.40483788    -0.14493006    -0.00623628  0.10D-02  0.74D-03 22046.58
    3     1     1     1.09720829    -0.18307362   -30.48237103    -0.01265605    -0.00199289  0.14D-02  0.14D-03 31871.38
    3     2     2     1.09719215    -0.19353919   -30.48236978    -0.01266568    -0.00199397  0.14D-02  0.14D-03 31871.38
    3     3     3     1.09720396    -0.19353916   -30.48236975    -0.01272333    -0.00199342  0.14D-02  0.14D-03 31871.38
    3     4     4     1.09723080    -0.19353768   -30.48236827    -0.01273022    -0.00199679  0.14D-02  0.14D-03 31871.38
    3     5     5     1.09720728    -0.19353489   -30.48236548    -0.01274132    -0.00199808  0.14D-02  0.14D-03 31871.38
    3     6     6     1.05527368    -0.16313877   -30.45196936    -0.00647788    -0.00065897  0.41D-03  0.44D-04 31871.38
    3     7     7     1.04903554    -0.15152720   -30.41143501    -0.00659014    -0.00090831  0.50D-03  0.10D-03 31871.38
    3     8     8     1.04904145    -0.15152145   -30.41142926    -0.00659094    -0.00090971  0.50D-03  0.10D-03 31871.38
    3     9     9     1.04904135    -0.15152143   -30.41142924    -0.00659136    -0.00090968  0.50D-03  0.10D-03 31871.38
    4     1     1     1.12909937    -0.18607368   -30.48537109    -0.00300006    -0.00055929  0.17D-03  0.51D-04 41671.88
    4     2     2     1.12909182    -0.19654016   -30.48537075    -0.00300097    -0.00055938  0.17D-03  0.51D-04 41671.88
    4     3     3     1.12898685    -0.19653708   -30.48536767    -0.00299792    -0.00055989  0.17D-03  0.51D-04 41671.88
    4     4     4     1.12897099    -0.19653631   -30.48536690    -0.00299863    -0.00056035  0.17D-03  0.51D-04 41671.88
    4     5     5     1.12895326    -0.19653546   -30.48536605    -0.00300057    -0.00056150  0.18D-03  0.51D-04 41671.88
    4     6     6     1.06256758    -0.16396873   -30.45279931    -0.00082996    -0.00012804  0.51D-04  0.97D-05 41671.88
    4     7     7     1.05851574    -0.15312251   -30.41303032    -0.00159531    -0.00052030  0.13D-03  0.64D-04 41671.88
    4     8     8     1.05853499    -0.15311995   -30.41302776    -0.00159850    -0.00052187  0.13D-03  0.65D-04 41671.88
    4     9     9     1.05853484    -0.15311990   -30.41302772    -0.00159848    -0.00052190  0.13D-03  0.65D-04 41671.88
    5     1     1     1.14100229    -0.18679243   -30.48608983    -0.00071874    -0.00014644  0.67D-04  0.14D-04 51506.87
    5     2     2     1.14100080    -0.19725920   -30.48608979    -0.00071904    -0.00014649  0.67D-04  0.14D-04 51506.87
    5     3     3     1.14097525    -0.19725857   -30.48608916    -0.00072149    -0.00014715  0.67D-04  0.14D-04 51506.87
    5     4     4     1.14098263    -0.19725838   -30.48608897    -0.00072207    -0.00014724  0.67D-04  0.14D-04 51506.87
    5     5     5     1.14097050    -0.19725828   -30.48608887    -0.00072282    -0.00014728  0.67D-04  0.14D-04 51506.87
    5     6     6     1.06560063    -0.16412097   -30.45295156    -0.00015224    -0.00002148  0.60D-05  0.21D-05 51506.87
    5     7     7     1.06697594    -0.15404232   -30.41395013    -0.00091981    -0.00026418  0.45D-04  0.33D-04 51506.87
    5     8     8     1.06699114    -0.15404198   -30.41394979    -0.00092203    -0.00026434  0.45D-04  0.33D-04 51506.87
    5     9     9     1.06699052    -0.15404195   -30.41394976    -0.00092204    -0.00026434  0.45D-04  0.33D-04 51506.87
    6     1     1     1.14563464    -0.18698998   -30.48628739    -0.00019756    -0.00005605  0.22D-04  0.58D-05 61320.05
    6     2     2     1.14563560    -0.19745678   -30.48628736    -0.00019757    -0.00005606  0.22D-04  0.58D-05 61320.05
    6     3     3     1.14562739    -0.19745663   -30.48628722    -0.00019806    -0.00005606  0.22D-04  0.58D-05 61320.05
    6     4     4     1.14562284    -0.19745652   -30.48628710    -0.00019813    -0.00005610  0.22D-04  0.58D-05 61320.05
    6     5     5     1.14561475    -0.19745643   -30.48628701    -0.00019814    -0.00005608  0.22D-04  0.58D-05 61320.05
    6     6     6     1.06628866    -0.16414550   -30.45297609    -0.00002453    -0.00000432  0.17D-05  0.45D-06 61320.05
    6     7     7     1.06902814    -0.15436582   -30.41427363    -0.00032350    -0.00008316  0.22D-04  0.11D-04 61320.05
    6     8     8     1.06903424    -0.15436546   -30.41427328    -0.00032348    -0.00008316  0.22D-04  0.12D-04 61320.05
    6     9     9     1.06903392    -0.15436544   -30.41427326    -0.00032349    -0.00008316  0.22D-04  0.12D-04 61320.05
    7     1     1     1.14924590    -0.18706957   -30.48636698    -0.00007959    -0.00002885  0.76D-05  0.28D-05 71137.60
    7     2     2     1.14924513    -0.19753638   -30.48636697    -0.00007960    -0.00002885  0.76D-05  0.28D-05 71137.60
    7     3     3     1.14923735    -0.19753624   -30.48636683    -0.00007961    -0.00002889  0.77D-05  0.28D-05 71137.60
    7     4     4     1.14923456    -0.19753617   -30.48636676    -0.00007966    -0.00002891  0.77D-05  0.28D-05 71137.60
    7     5     5     1.14923599    -0.19753614   -30.48636673    -0.00007971    -0.00002897  0.77D-05  0.28D-05 71137.60
    7     6     6     1.06675637    -0.16415109   -30.45298168    -0.00000559    -0.00000160  0.30D-06  0.19D-06 71137.60
    7     7     7     1.07154179    -0.15448711   -30.41439493    -0.00012130    -0.00005514  0.13D-04  0.70D-05 71137.60
    7     8     8     1.07155190    -0.15448693   -30.41439474    -0.00012146    -0.00005531  0.13D-04  0.70D-05 71137.60
    7     9     9     1.07155158    -0.15448691   -30.41439472    -0.00012147    -0.00005532  0.13D-04  0.70D-05 71137.60
    8     1     1     1.15050790    -0.18710403   -30.48640143    -0.00003445    -0.00001237  0.48D-05  0.13D-05 80955.68
    8     2     2     1.15050760    -0.19757084   -30.48640143    -0.00003446    -0.00001238  0.48D-05  0.13D-05 80955.68
    8     3     3     1.15050495    -0.19757079   -30.48640137    -0.00003455    -0.00001242  0.48D-05  0.13D-05 80955.68
    8     4     4     1.15050358    -0.19757074   -30.48640133    -0.00003457    -0.00001243  0.48D-05  0.13D-05 80955.68
    8     5     5     1.15050356    -0.19757073   -30.48640132    -0.00003459    -0.00001243  0.48D-05  0.13D-05 80955.68
    8     6     6     1.06690105    -0.16415323   -30.45298381    -0.00000213    -0.00000077  0.22D-06  0.84D-07 80955.68
    8     7     7     1.07321302    -0.15457009   -30.41447790    -0.00008298    -0.00003572  0.78D-05  0.38D-05 80955.68
    8     8     8     1.07321796    -0.15457006   -30.41447787    -0.00008313    -0.00003571  0.77D-05  0.38D-05 80955.68
    8     9     9     1.07321759    -0.15457005   -30.41447786    -0.00008314    -0.00003572  0.77D-05  0.38D-05 80955.68
    9     1     1     1.15151552    -0.18711946   -30.48641686    -0.00001543    -0.00000594  0.13D-05  0.73D-06 90785.03
    9     2     2     1.15151596    -0.19758628   -30.48641686    -0.00001543    -0.00000594  0.13D-05  0.73D-06 90785.03
    9     3     3     1.15151212    -0.19758626   -30.48641684    -0.00001547    -0.00000595  0.13D-05  0.73D-06 90785.03
    9     4     4     1.15151054    -0.19758622   -30.48641681    -0.00001548    -0.00000595  0.13D-05  0.73D-06 90785.03
    9     5     5     1.15150670    -0.19758621   -30.48641680    -0.00001548    -0.00000595  0.13D-05  0.73D-06 90785.03
    9     6     6     1.06692520    -0.16415415   -30.45298474    -0.00000093    -0.00000035  0.81D-07  0.42D-07 90785.03
    9     7     7     1.07415570    -0.15461250   -30.41452031    -0.00004241    -0.00001359  0.28D-05  0.18D-05 90785.03
    9     8     8     1.07415848    -0.15461246   -30.41452028    -0.00004240    -0.00001358  0.28D-05  0.18D-05 90785.03
    9     9     9     1.07415834    -0.15461246   -30.41452027    -0.00004241    -0.00001358  0.28D-05  0.18D-05 90785.03
   10     1     1     1.15224158    -0.18712785   -30.48642525    -0.00000839    -0.00000368  0.89D-06  0.39D-06100578.62
   10     2     2     1.15224121    -0.19759467   -30.48642525    -0.00000839    -0.00000368  0.89D-06  0.39D-06100578.62
   10     3     3     1.15223833    -0.19759465   -30.48642524    -0.00000839    -0.00000368  0.89D-06  0.39D-06100578.62
   10     4     4     1.15223809    -0.19759462   -30.48642521    -0.00000840    -0.00000369  0.89D-06  0.39D-06100578.62
   10     5     5     1.15223978    -0.19759462   -30.48642521    -0.00000841    -0.00000369  0.89D-06  0.39D-06100578.62
   10     6     6     1.06694594    -0.16415461   -30.45298520    -0.00000046    -0.00000019  0.51D-07  0.22D-07100578.62
   10     7     7     1.07515601    -0.15463175   -30.41453956    -0.00001925    -0.00000936  0.20D-05  0.12D-05100578.62
   10     8     8     1.07515988    -0.15463173   -30.41453954    -0.00001926    -0.00000938  0.21D-05  0.12D-05100578.62
   10     9     9     1.07515970    -0.15463172   -30.41453954    -0.00001926    -0.00000938  0.21D-05  0.12D-05100578.62
   11     1     1     1.15242827    -0.18713221   -30.48642961    -0.00000436    -0.00000185  0.65D-06  0.21D-06110380.99
   11     2     2     1.15242830    -0.19759902   -30.48642961    -0.00000436    -0.00000185  0.65D-06  0.21D-06110380.99
   11     3     3     1.15242738    -0.19759902   -30.48642960    -0.00000437    -0.00000185  0.66D-06  0.21D-06110380.99
   11     4     4     1.15242704    -0.19759899   -30.48642958    -0.00000437    -0.00000186  0.66D-06  0.21D-06110380.99
   11     5     5     1.15242757    -0.19759899   -30.48642958    -0.00000437    -0.00000186  0.66D-06  0.21D-06110380.99
   11     6     6     1.06692215    -0.16415486   -30.45298545    -0.00000025    -0.00000011  0.33D-07  0.12D-07110380.99
   11     7     7     1.07575092    -0.15464529   -30.41455310    -0.00001354    -0.00000666  0.18D-05  0.65D-06110380.99
   11     8     8     1.07575329    -0.15464528   -30.41455310    -0.00001356    -0.00000665  0.17D-05  0.65D-06110380.99
   11     9     9     1.07575310    -0.15464528   -30.41455310    -0.00001356    -0.00000665  0.17D-05  0.65D-06110380.99
   12     1     1     1.15272310    -0.18713441   -30.48643181    -0.00000220    -0.00000095  0.21D-06  0.12D-06120180.10
   12     2     2     1.15272286    -0.19760122   -30.48643181    -0.00000220    -0.00000095  0.21D-06  0.12D-06120180.10
   12     3     3     1.15272210    -0.19760122   -30.48643181    -0.00000220    -0.00000095  0.21D-06  0.12D-06120180.10
   12     4     4     1.15272135    -0.19760120   -30.48643179    -0.00000221    -0.00000095  0.21D-06  0.12D-06120180.10
   12     5     5     1.15272009    -0.19760120   -30.48643179    -0.00000221    -0.00000095  0.21D-06  0.12D-06120180.10
   12     6     6     1.06692296    -0.16415499   -30.45298558    -0.00000013    -0.00000006  0.16D-07  0.65D-08120180.10
   12     7     7     1.07616947    -0.15465289   -30.41456070    -0.00000760    -0.00000269  0.51D-06  0.36D-06120180.10
   12     8     8     1.07617132    -0.15465288   -30.41456070    -0.00000760    -0.00000269  0.50D-06  0.36D-06120180.10
   12     9     9     1.07617127    -0.15465288   -30.41456070    -0.00000760    -0.00000269  0.50D-06  0.36D-06120180.10
   13     1     1     1.15291662    -0.18713572   -30.48643312    -0.00000131    -0.00000062  0.16D-06  0.65D-07129984.06
   13     2     2     1.15291643    -0.19760253   -30.48643312    -0.00000131    -0.00000062  0.16D-06  0.65D-07129984.06
   13     3     3     1.15291567    -0.19760253   -30.48643312    -0.00000131    -0.00000062  0.16D-06  0.65D-07129984.06
   13     4     4     1.15291666    -0.19760251   -30.48643310    -0.00000131    -0.00000062  0.16D-06  0.65D-07129984.06
   13     5     5     1.15291576    -0.19760251   -30.48643310    -0.00000131    -0.00000062  0.16D-06  0.65D-07129984.06
   13     6     6     1.06693091    -0.16415506   -30.45298565    -0.00000007    -0.00000003  0.99D-08  0.37D-08129984.06
   13     7     7     1.07655134    -0.15465665   -30.41456447    -0.00000376    -0.00000187  0.39D-06  0.24D-06129984.06
   13     8     8     1.07655278    -0.15465665   -30.41456446    -0.00000377    -0.00000187  0.39D-06  0.24D-06129984.06
   13     9     9     1.07655268    -0.15465665   -30.41456446    -0.00000377    -0.00000187  0.39D-06  0.24D-06129984.06
   14     1     1     1.15294788    -0.18713645   -30.48643385    -0.00000073    -0.00000033  0.11D-06  0.37D-07139780.72
   14     2     2     1.15294789    -0.19760326   -30.48643385    -0.00000073    -0.00000033  0.11D-06  0.37D-07139780.72
   14     3     3     1.15294750    -0.19760326   -30.48643385    -0.00000073    -0.00000033  0.11D-06  0.37D-07139780.72
   14     4     4     1.15294754    -0.19760324   -30.48643383    -0.00000073    -0.00000033  0.11D-06  0.37D-07139780.72
   14     5     5     1.15294737    -0.19760324   -30.48643383    -0.00000073    -0.00000033  0.11D-06  0.37D-07139780.72
   14     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000004    -0.00000002  0.61D-08  0.21D-08139780.72
   14     7     7     1.07675691    -0.15465932   -30.41456714    -0.00000267    -0.00000140  0.42D-06  0.13D-06139780.72
   14     8     8     1.07675784    -0.15465932   -30.41456714    -0.00000267    -0.00000140  0.42D-06  0.13D-06139780.72
   14     9     9     1.07675775    -0.15465932   -30.41456714    -0.00000267    -0.00000140  0.42D-06  0.13D-06139780.72
   15     1     1     1.15305624    -0.18713682   -30.48643423    -0.00000038    -0.00000017  0.43D-07  0.21D-07149485.86
   15     2     2     1.15305613    -0.19760364   -30.48643423    -0.00000038    -0.00000017  0.43D-07  0.21D-07149485.86
   15     3     3     1.15305584    -0.19760364   -30.48643423    -0.00000038    -0.00000017  0.43D-07  0.21D-07149485.86
   15     4     4     1.15305494    -0.19760362   -30.48643421    -0.00000038    -0.00000017  0.43D-07  0.21D-07149485.86
   15     5     5     1.15305550    -0.19760362   -30.48643421    -0.00000038    -0.00000017  0.43D-07  0.21D-07149485.86
   15     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000000    -0.00000002  0.61D-08  0.21D-08149485.86
   15     7     7     1.07758893    -0.15466286   -30.41457067    -0.00000353    -0.00000020  0.46D-07  0.15D-07149485.86
   15     8     8     1.07695056    -0.15466087   -30.41456869    -0.00000155    -0.00000058  0.11D-06  0.76D-07149485.86
   15     9     9     1.07695155    -0.15466087   -30.41456869    -0.00000155    -0.00000058  0.11D-06  0.76D-07149485.86
   16     1     1     1.15312268    -0.18713706   -30.48643446    -0.00000023    -0.00000011  0.32D-07  0.12D-07159197.94
   16     2     2     1.15312277    -0.19760387   -30.48643446    -0.00000023    -0.00000011  0.32D-07  0.12D-07159197.94
   16     3     3     1.15312246    -0.19760387   -30.48643446    -0.00000023    -0.00000011  0.32D-07  0.12D-07159197.94
   16     4     4     1.15312308    -0.19760386   -30.48643444    -0.00000023    -0.00000011  0.32D-07  0.12D-07159197.94
   16     5     5     1.15312255    -0.19760385   -30.48643444    -0.00000023    -0.00000011  0.32D-07  0.12D-07159197.94
   16     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000000    -0.00000002  0.61D-08  0.21D-08159197.94
   16     7     7     1.07756995    -0.15466303   -30.41457084    -0.00000017    -0.00000001  0.13D-08  0.25D-08159197.94
   16     8     8     1.07754507    -0.15466293   -30.41457074    -0.00000205    -0.00000016  0.40D-07  0.84D-08159197.94
   16     9     9     1.07711172    -0.15466168   -30.41456949    -0.00000081    -0.00000040  0.82D-07  0.51D-07159197.94
   17     1     1     1.15313092    -0.18713719   -30.48643459    -0.00000013    -0.00000006  0.21D-07  0.71D-08168844.15
   17     2     2     1.15313093    -0.19760401   -30.48643459    -0.00000013    -0.00000006  0.21D-07  0.71D-08168844.15
   17     3     3     1.15313079    -0.19760401   -30.48643459    -0.00000013    -0.00000006  0.21D-07  0.71D-08168844.15
   17     4     4     1.15313078    -0.19760399   -30.48643458    -0.00000013    -0.00000006  0.21D-07  0.71D-08168844.15
   17     5     5     1.15313072    -0.19760399   -30.48643458    -0.00000013    -0.00000006  0.21D-07  0.71D-08168844.15
   17     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000000    -0.00000002  0.61D-08  0.21D-08168844.15
   17     7     7     1.07755984    -0.15466306   -30.41457087    -0.00000003    -0.00000001  0.91D-09  0.14D-08168844.15
   17     8     8     1.07757004    -0.15466303   -30.41457084    -0.00000010    -0.00000001  0.13D-08  0.25D-08168844.15
   17     9     9     1.07719017    -0.15466225   -30.41457006    -0.00000057    -0.00000031  0.10D-06  0.29D-07168844.15
   18     1     1     1.15317453    -0.18713726   -30.48643467    -0.00000007    -0.00000003  0.92D-08  0.40D-08178433.23
   18     2     2     1.15317448    -0.19760408   -30.48643467    -0.00000007    -0.00000003  0.92D-08  0.40D-08178433.23
   18     3     3     1.15317435    -0.19760408   -30.48643467    -0.00000007    -0.00000003  0.92D-08  0.41D-08178433.23
   18     4     4     1.15317392    -0.19760406   -30.48643465    -0.00000007    -0.00000003  0.91D-08  0.41D-08178433.23
   18     5     5     1.15317417    -0.19760406   -30.48643465    -0.00000007    -0.00000003  0.92D-08  0.41D-08178433.23
   18     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000000    -0.00000002  0.61D-08  0.21D-08178433.23
   18     7     7     1.07756952    -0.15466306   -30.41457087    -0.00000000    -0.00000003  0.71D-08  0.21D-08178433.23
   18     8     8     1.07755989    -0.15466306   -30.41457087    -0.00000003    -0.00000001  0.90D-09  0.14D-08178433.23
   18     9     9     1.07757004    -0.15466303   -30.41457084    -0.00000078    -0.00000001  0.13D-08  0.25D-08178433.23
   19     1     1     1.15325585    -0.18713736   -30.48643476    -0.00000010    -0.00000001  0.17D-08  0.21D-09187948.63
   19     2     2     1.15325585    -0.19760418   -30.48643476    -0.00000010    -0.00000001  0.17D-08  0.21D-09187948.63
   19     3     3     1.15325589    -0.19760418   -30.48643476    -0.00000010    -0.00000001  0.17D-08  0.21D-09187948.63
   19     4     4     1.15325600    -0.19760416   -30.48643475    -0.00000010    -0.00000001  0.17D-08  0.20D-09187948.63
   19     5     5     1.15325590    -0.19760416   -30.48643475    -0.00000010    -0.00000001  0.17D-08  0.21D-09187948.63
   19     6     6     1.06691968    -0.16415510   -30.45298569    -0.00000000    -0.00000002  0.61D-08  0.21D-08187948.63
   19     7     7     1.07756955    -0.15466306   -30.41457087    -0.00000000    -0.00000003  0.70D-08  0.21D-08187948.63
   19     8     8     1.07755990    -0.15466306   -30.41457087    -0.00000000    -0.00000001  0.90D-09  0.14D-08187948.63
   19     9     9     1.07757004    -0.15466303   -30.41457084    -0.00000000    -0.00000001  0.13D-08  0.25D-08187948.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.4%   1.5%
 P   1.2%  20.0%  69.9%

 Initialization:   6.4%
 Other:            0.3%

 Total CPU:   187948.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9539604  -0.0000000   0.0000000
                         -0.0000000
 20000000222//0           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9355226
                         -0.0000000
 200000002220//           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9355202   0.0000000
                         -0.0000000
 20000000222/0/          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                          0.9355135
 2/0/0000222000           0.0000000   0.9180722  -0.0000000  -0.0000210  -0.0000236  -0.0000000   0.0000000  -0.0000000
                         -0.0000000
 2/00/000222000           0.9180621  -0.0000000  -0.0043001  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000
 2/000/00222000           0.0043001   0.0000000   0.9180621   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/00000/222000           0.0000000   0.0000223   0.0000000  -0.0547976   0.9164353   0.0000000   0.0000000  -0.0000000
                          0.0000000
 2/0000/0222000           0.0000000   0.0000224  -0.0000000   0.9164353   0.0547976  -0.0000000   0.0000000  -0.0000000
                         -0.0000000
 20000/0/222000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.1461798  -0.0000000
                          0.0000000
 200/00/0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.1266211
 2000/0/0222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.1266032
                          0.0000000
 2000//00222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0731048
 200/000/222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0731048
 200/0/00222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0730944
                         -0.0000000
 2000/00/222000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0730944
                          0.0000000
 200//000222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0730899   0.0000000
                         -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/000000222000  23.1    -0.0000000   0.1982411   0.0000000  -0.0000045  -0.0000051  -0.0000000  -0.0000000   0.0000000
                          0.0000001
 2/000000222000  24.1     0.0009285  -0.0000000   0.1982389   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000
 2/000000222000  22.1     0.1982389  -0.0000000  -0.0009285   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000002
                         -0.0000000
 2/000000222000  25.1     0.0000000   0.0000048  -0.0000000   0.1978878   0.0118326   0.0000001  -0.0000000   0.0000000
                         -0.0000000
 2/000000222000  21.1     0.0000000   0.0000048  -0.0000000  -0.0118326   0.1978877   0.0000000  -0.0000000   0.0000000
                          0.0000000
 2/000000222000  17.1     0.0000000   0.1598703  -0.0000000  -0.0000037  -0.0000041  -0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/000000222000  19.1     0.0007488   0.0000000   0.1598686  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/000000222000  18.1     0.1598686  -0.0000000  -0.0007488   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000
 2/000000222000  15.1    -0.0000000   0.0000039  -0.0000000   0.1595855   0.0095423  -0.0000000  -0.0000000   0.0000000
                          0.0000000
 2/000000222000  16.1     0.0000000   0.0000039   0.0000000  -0.0095423   0.1595854  -0.0000000  -0.0000000   0.0000000
                         -0.0000000
 2/000000222000  26.1     0.0000000  -0.1029341  -0.0000000   0.0000024   0.0000026  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/000000222000  29.1    -0.0004821   0.0000000  -0.1029330  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/000000222000  27.1    -0.1029329   0.0000000   0.0004821   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000001
                         -0.0000000
 2/000000222000  30.1    -0.0000000  -0.0000025  -0.0000000  -0.1027506  -0.0061439  -0.0000001  -0.0000000   0.0000000
                          0.0000000
 2/000000222000  28.1    -0.0000000  -0.0000025   0.0000000   0.0061439  -0.1027506  -0.0000000  -0.0000000  -0.0000000
                         -0.0000000
 20/00000222000  20.1    -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0913316   0.0000000   0.0000000
                          0.0000000
 20/00000222000  14.1     0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0734926  -0.0000000  -0.0000000
                          0.0000000
 2000000/222000  19.1    -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0680902   0.0000000
                         -0.0000000
 20000/00222000  16.1     0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0680901  -0.0000000
                          0.0000000
 2000000/222000  24.1    -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0642531  -0.0000000
                         -0.0000000
 20000/00222000  21.1     0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0642529   0.0000000
                          0.0000000
 200/0000222000  15.1     0.0000000   0.0014227   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0589800
 200000/0222000  17.1    -0.0000000   0.0014226  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0589797
 200000/0222000  18.1     0.0014227  -0.0000000  -0.0000067  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0589626
                         -0.0000000
 2000/000222000  15.1     0.0014226   0.0000000  -0.0000067   0.0000000   0.0000000   0.0000000   0.0000000   0.0589622
                          0.0000000
 2/000000222000  11.1    -0.0000000  -0.0575839   0.0000000   0.0000013   0.0000015   0.0000000  -0.0000000  -0.0000000
                         -0.0000001
 2/000000222000  13.1    -0.0002697  -0.0000000  -0.0575833   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/000000222000  10.1    -0.0575833  -0.0000000   0.0002697  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000
 2/000000222000   9.1     0.0000000  -0.0000014   0.0000000  -0.0574815  -0.0034371   0.0000001   0.0000000  -0.0000000
                         -0.0000000
 2/000000222000  12.1    -0.0000000  -0.0000014  -0.0000000   0.0034371  -0.0574814   0.0000000   0.0000000  -0.0000000
                          0.0000000
 200/0000222000  25.1    -0.0000000   0.0022116   0.0000000  -0.0000001  -0.0000001  -0.0000000   0.0000000   0.0000000
                          0.0556560
 200000/0222000  23.1     0.0000000   0.0022116  -0.0000000  -0.0000001  -0.0000001   0.0000000  -0.0000000  -0.0000000
                         -0.0556559
 200000/0222000  22.1     0.0022116  -0.0000000  -0.0000104  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0556450
                         -0.0000000
 2000/000222000  25.1     0.0022115   0.0000000  -0.0000104   0.0000000   0.0000000   0.0000000   0.0000000   0.0556448
                          0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.927954    0.004346    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.927964   -0.000000    0.000000    0.000023    0.000023    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000   -0.004346    0.927954   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000021   -0.000000    0.000000    0.926310   -0.055374   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000024   -0.000000   -0.000000    0.055374    0.926310    0.000000   -0.000000   -0.000000
 6           0.967614   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.955297
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.955300    0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.955293   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.927964   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.927964   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.927964    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.927964   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.927964   -0.000000    0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.967614   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.955297   -0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.955300   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.955293


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.92795369 (fixed)   0.93065200 (relaxed)   0.92796387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00695997   -0.00323412   -0.06074036
 Singles      0.13301176   -0.11790311   -0.12296304
 Pairs        0.02131074    0.00000000   -0.00343396
 Total        1.16128247   -0.12113723   -0.18713736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28883059
 Nuclear energy                         0.00000000
 Kinetic energy                         9.96308100
 One electron energy                  -50.21940569
 Two electron energy                   19.73297093
 Virial quotient                       -3.05994047
 Correlation energy                    -0.19760418
 !MRCI STATE 1.1 Energy               -30.486434764981

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51830485 (Davidson, fixed reference)
 Cluster corrected energies           -30.51698112 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51830485 (Davidson, rotated reference)

 Cluster corrected energies           -30.51228562 (Pople, fixed reference)
 Cluster corrected energies           -30.51113429 (Pople, relaxed reference)
 Cluster corrected energies           -30.51228562 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.92796386 (fixed)   0.93065200 (relaxed)   0.92796386 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00695997   -0.00323412   -0.06981625
 Singles      0.13301177   -0.11790311   -0.12416189
 Pairs        0.02131074    0.00000000   -0.00362604
 Total        1.16128247   -0.12113723   -0.19760418
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28883059
 Nuclear energy                         0.00000000
 Kinetic energy                         9.96308102
 One electron energy                  -50.21940571
 Two electron energy                   19.73297094
 Virial quotient                       -3.05994046
 Correlation energy                    -0.19760418
 !MRCI STATE 2.1 Energy               -30.486434764941

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51830486 (Davidson, fixed reference)
 Cluster corrected energies           -30.51698112 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51830486 (Davidson, rotated reference)

 Cluster corrected energies           -30.51228562 (Pople, fixed reference)
 Cluster corrected energies           -30.51113429 (Pople, relaxed reference)
 Cluster corrected energies           -30.51228562 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92795367 (fixed)   0.93065198 (relaxed)   0.92796385 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00695997   -0.00323412   -0.06981622
 Singles      0.13301182   -0.11790314   -0.12416189
 Pairs        0.02131073    0.00000000   -0.00362606
 Total        1.16128251   -0.12113725   -0.19760418
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28883059
 Nuclear energy                         0.00000000
 Kinetic energy                         9.96308081
 One electron energy                  -50.21940560
 Two electron energy                   19.73297084
 Virial quotient                       -3.05994053
 Correlation energy                    -0.19760418
 !MRCI STATE 3.1 Energy               -30.486434764845

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51830486 (Davidson, fixed reference)
 Cluster corrected energies           -30.51698113 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51830486 (Davidson, rotated reference)

 Cluster corrected energies           -30.51228563 (Pople, fixed reference)
 Cluster corrected energies           -30.51113430 (Pople, relaxed reference)
 Cluster corrected energies           -30.51228563 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92631017 (fixed)   0.93065194 (relaxed)   0.92796382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00695993   -0.00323411   -0.06981619
 Singles      0.13301194   -0.11790315   -0.12416188
 Pairs        0.02131072    0.00000000   -0.00362610
 Total        1.16128258   -0.12113725   -0.19760416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28883059
 Nuclear energy                         0.00000000
 Kinetic energy                         9.96308047
 One electron energy                  -50.21940559
 Two electron energy                   19.73297084
 Virial quotient                       -3.05994063
 Correlation energy                    -0.19760416
 !MRCI STATE 4.1 Energy               -30.486434747837

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51830486 (Davidson, fixed reference)
 Cluster corrected energies           -30.51698113 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51830486 (Davidson, rotated reference)

 Cluster corrected energies           -30.51228562 (Pople, fixed reference)
 Cluster corrected energies           -30.51113430 (Pople, relaxed reference)
 Cluster corrected energies           -30.51228562 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92631020 (fixed)   0.93065199 (relaxed)   0.92796385 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00695995   -0.00323411   -0.06981621
 Singles      0.13301183   -0.11790313   -0.12416187
 Pairs        0.02131072    0.00000000   -0.00362608
 Total        1.16128250   -0.12113724   -0.19760416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28883059
 Nuclear energy                         0.00000000
 Kinetic energy                         9.96308060
 One electron energy                  -50.21940563
 Two electron energy                   19.73297089
 Virial quotient                       -3.05994059
 Correlation energy                    -0.19760416
 !MRCI STATE 5.1 Energy               -30.486434746824

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51830484 (Davidson, fixed reference)
 Cluster corrected energies           -30.51698111 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51830484 (Davidson, rotated reference)

 Cluster corrected energies           -30.51228560 (Pople, fixed reference)
 Cluster corrected energies           -30.51113428 (Pople, relaxed reference)
 Cluster corrected energies           -30.51228560 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96761408 (fixed)   0.96771747 (relaxed)   0.96761408 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106878   -0.00260699   -0.07400362
 Singles      0.05194380   -0.08529024   -0.08783830
 Pairs        0.01504740   -0.00000000   -0.00231318
 Total        1.06805998   -0.08789723   -0.16415510
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.29929740
 Nuclear energy                         0.00000000
 Kinetic energy                         9.58207325
 One electron energy                  -48.59657539
 Two electron energy                   18.14358971
 Virial quotient                       -3.17812074
 Correlation energy                    -0.15368828
 !MRCI STATE 6.1 Energy               -30.452985688085

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.46344571 (Davidson, fixed reference)
 Cluster corrected energies           -30.46341064 (Davidson, relaxed reference)
 Cluster corrected energies           -30.46344571 (Davidson, rotated reference)

 Cluster corrected energies           -30.46109953 (Pople, fixed reference)
 Cluster corrected energies           -30.46107142 (Pople, relaxed reference)
 Cluster corrected energies           -30.46109953 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95529715 (fixed)   0.96294371 (relaxed)   0.95529715 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01689879   -0.00243988   -0.00461184
 Singles      0.05668135   -0.08354362   -0.08423799
 Pairs        0.02219903   -0.06867949   -0.06581322
 Total        1.09577917   -0.15466299   -0.15466306
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.25990781
 Nuclear energy                         0.00000000
 Kinetic energy                         9.68332758
 One electron energy                  -48.97161415
 Two electron energy                   18.55704328
 Virial quotient                       -3.14092141
 Correlation energy                    -0.15466306
 !MRCI STATE 7.1 Energy               -30.414570873079

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42938437 (Davidson, fixed reference)
 Cluster corrected energies           -30.42670349 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42938437 (Davidson, rotated reference)

 Cluster corrected energies           -30.42621776 (Pople, fixed reference)
 Cluster corrected energies           -30.42403001 (Pople, relaxed reference)
 Cluster corrected energies           -30.42621776 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95530021 (fixed)   0.96294801 (relaxed)   0.95530021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01690136   -0.00243988   -0.06728930
 Singles      0.05667418   -0.08354334   -0.08423940
 Pairs        0.02219658   -0.00000000   -0.00313436
 Total        1.09577213   -0.08598322   -0.15466306
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.25990781
 Nuclear energy                         0.00000000
 Kinetic energy                         9.68338894
 One electron energy                  -48.97170164
 Two electron energy                   18.55713077
 Virial quotient                       -3.14090150
 Correlation energy                    -0.15466306
 !MRCI STATE 8.1 Energy               -30.414570872331

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42938328 (Davidson, fixed reference)
 Cluster corrected energies           -30.42670200 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42938328 (Davidson, rotated reference)

 Cluster corrected energies           -30.42621686 (Pople, fixed reference)
 Cluster corrected energies           -30.42402880 (Pople, relaxed reference)
 Cluster corrected energies           -30.42621686 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95529269 (fixed)   0.96294346 (relaxed)   0.95529269 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01690782   -0.00243993   -0.06729198
 Singles      0.05668132   -0.08354020   -0.08424027
 Pairs        0.02220027    0.00000000   -0.00313078
 Total        1.09578940   -0.08598013   -0.15466303
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.25990781
 Nuclear energy                         0.00000000
 Kinetic energy                         9.68342765
 One electron energy                  -48.97177852
 Two electron energy                   18.55720767
 Virial quotient                       -3.14088894
 Correlation energy                    -0.15466303
 !MRCI STATE 9.1 Energy               -30.414570844050

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42938592 (Davidson, fixed reference)
 Cluster corrected energies           -30.42670355 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42938592 (Davidson, rotated reference)

 Cluster corrected energies           -30.42621903 (Pople, fixed reference)
 Cluster corrected energies           -30.42403004 (Pople, relaxed reference)
 Cluster corrected energies           -30.42621903 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4162.89       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    203263.69 203183.42     79.28      0.02      0.73
 REAL TIME  *    204621.54 SEC
 DISK USED  *         4.10 GB (local),       65.62 GB (total)
 SF USED    *        43.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.51830485  AU                              
 SETTING HLSDIAG(2)     =       -30.51830486  AU                              
 SETTING HLSDIAG(3)     =       -30.51830486  AU                              
 SETTING HLSDIAG(4)     =       -30.51830486  AU                              
 SETTING HLSDIAG(5)     =       -30.51830484  AU                              
 SETTING HLSDIAG(6)     =       -30.46344571  AU                              
 SETTING HLSDIAG(7)     =       -30.42938437  AU                              
 SETTING HLSDIAG(8)     =       -30.42938328  AU                              
 SETTING HLSDIAG(9)     =       -30.42938592  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:    26382 conf    71729 CSFs
 N elec internal:   270270 conf  1002001 CSFs
 N-1 el internal:   168168 conf   910910 CSFs
 N-2 el internal:    66851 conf   540092 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.43326777
     2       -30.28758221
     3       -30.28735424
     4       -30.28735424
     5       -30.28735424
     6       -30.28735424
     7       -30.28735424

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1083D-06

 Number of blocks in overlap matrix:    36   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1370
 Number of N-1 electron functions:  910910

 Number of internal configurations:               501473
 Number of singly external configurations:      30059400
 Number of doubly external configurations:       1495332
 Total number of contracted configurations:     32056205
 Total number of uncontracted configurations:  617426915

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:   4032.79 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1836741 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.43326777    -0.00000000    -0.13749058  0.30D-01  0.98D-02  4145.92
    1     2     2     1.00000000     0.00000000   -30.28758221     0.00000000    -0.14301101  0.43D-01  0.10D-01  4145.92
    1     3     3     1.00000000     0.00000000   -30.28735424     0.00000000    -0.17038443  0.62D-01  0.12D-01  4145.92
    1     4     4     1.00000000     0.00000000   -30.28735424     0.00000000    -0.17043816  0.62D-01  0.12D-01  4145.92
    1     5     5     1.00000000     0.00000000   -30.28735424     0.00000000    -0.17028098  0.62D-01  0.12D-01  4145.92
    1     6     6     1.00000000     0.00000000   -30.28735424     0.00000000    -0.17010219  0.62D-01  0.12D-01  4145.92
    1     7     7     1.00000000     0.00000000   -30.28735424     0.00000000    -0.17031916  0.62D-01  0.12D-01  4145.92
    2     1     1     1.04307977    -0.14606350   -30.57933127    -0.14606350    -0.00550986  0.10D-02  0.61D-03  7698.62
    2     2     2     1.07406534    -0.17404328   -30.46162548    -0.17404328    -0.01077504  0.32D-02  0.10D-02  7698.62
    2     3     3     1.07405011    -0.17426402   -30.46161825    -0.17426402    -0.01078217  0.32D-02  0.10D-02  7698.62
    2     4     4     1.07407307    -0.17422542   -30.46157966    -0.17422542    -0.01081328  0.32D-02  0.10D-02  7698.62
    2     5     5     1.07410940    -0.17422037   -30.46157461    -0.17422037    -0.01082026  0.32D-02  0.10D-02  7698.62
    2     6     6     1.07409919    -0.17420672   -30.46156095    -0.17420672    -0.01083245  0.32D-02  0.10D-02  7698.62
    2     7     7     1.05476096    -0.14903706   -30.43639130    -0.14903706    -0.00715862  0.17D-02  0.77D-03  7698.62
    3     1     1     1.04666441    -0.15178382   -30.58505159    -0.00572032    -0.00053111  0.15D-03  0.53D-04 11249.67
    3     2     2     1.09144457    -0.18610164   -30.47368384    -0.01205836    -0.00205338  0.15D-02  0.14D-03 11249.67
    3     3     3     1.09139858    -0.18632735   -30.47368159    -0.01206334    -0.00205199  0.15D-02  0.14D-03 11249.67
    3     4     4     1.09140099    -0.18632687   -30.47368110    -0.01210144    -0.00205193  0.15D-02  0.14D-03 11249.67
    3     5     5     1.09141917    -0.18632463   -30.47367887    -0.01210426    -0.00205303  0.15D-02  0.14D-03 11249.67
    3     6     6     1.09142211    -0.18632012   -30.47367436    -0.01211340    -0.00205391  0.15D-02  0.14D-03 11249.67
    3     7     7     1.05735028    -0.15595367   -30.44330791    -0.00691661    -0.00082590  0.46D-03  0.69D-04 11249.67
    4     1     1     1.04970613    -0.15247943   -30.58574720    -0.00069561    -0.00010562  0.30D-04  0.11D-04 14831.79
    4     2     2     1.12289852    -0.18921147   -30.47679368    -0.00310983    -0.00065026  0.22D-03  0.56D-04 14831.79
    4     3     3     1.12290102    -0.18943939   -30.47679363    -0.00311204    -0.00065042  0.22D-03  0.56D-04 14831.79
    4     4     4     1.12278700    -0.18943651   -30.47679075    -0.00310964    -0.00065011  0.22D-03  0.56D-04 14831.79
    4     5     5     1.12283021    -0.18943625   -30.47679049    -0.00311162    -0.00065092  0.22D-03  0.56D-04 14831.79
    4     6     6     1.12281140    -0.18943367   -30.47678791    -0.00311355    -0.00065214  0.22D-03  0.56D-04 14831.79
    4     7     7     1.06436145    -0.15694974   -30.44430398    -0.00099607    -0.00019683  0.58D-04  0.22D-04 14831.79
    5     1     1     1.05122696    -0.15262633   -30.58589410    -0.00014690    -0.00002601  0.52D-05  0.32D-05 18400.96
    5     2     2     1.13533404    -0.19003634   -30.47761855    -0.00082487    -0.00017482  0.69D-04  0.17D-04 18400.96
    5     3     3     1.13533130    -0.19026430   -30.47761853    -0.00082490    -0.00017488  0.69D-04  0.17D-04 18400.96
    5     4     4     1.13529448    -0.19026342   -30.47761766    -0.00082691    -0.00017570  0.69D-04  0.18D-04 18400.96
    5     5     5     1.13530366    -0.19026330   -30.47761754    -0.00082705    -0.00017578  0.69D-04  0.18D-04 18400.96
    5     6     6     1.13531112    -0.19026304   -30.47761728    -0.00082937    -0.00017603  0.69D-04  0.18D-04 18400.96
    5     7     7     1.06824776    -0.15722807   -30.44458231    -0.00027833    -0.00006575  0.11D-04  0.91D-05 18400.96
    6     1     1     1.05149604    -0.15266100   -30.58592877    -0.00003467    -0.00000833  0.14D-05  0.10D-05 21957.49
    6     2     2     1.14030275    -0.19026859   -30.47785079    -0.00023225    -0.00006788  0.29D-04  0.67D-05 21957.49
    6     3     3     1.14030583    -0.19049656   -30.47785079    -0.00023226    -0.00006787  0.29D-04  0.67D-05 21957.49
    6     4     4     1.14029969    -0.19049653   -30.47785076    -0.00023310    -0.00006787  0.29D-04  0.67D-05 21957.49
    6     5     5     1.14030296    -0.19049652   -30.47785076    -0.00023322    -0.00006786  0.29D-04  0.67D-05 21957.49
    6     6     6     1.14030283    -0.19049643   -30.47785066    -0.00023339    -0.00006785  0.29D-04  0.67D-05 21957.49
    6     7     7     1.06873985    -0.15732430   -30.44467853    -0.00009622    -0.00003594  0.10D-04  0.43D-05 21957.49
    7     1     1     1.05163207    -0.15267180   -30.58593957    -0.00001080    -0.00000366  0.72D-06  0.41D-06 25524.99
    7     2     2     1.14467395    -0.19036472   -30.47794693    -0.00009614    -0.00003910  0.11D-04  0.36D-05 25524.99
    7     3     3     1.14467471    -0.19059269   -30.47794692    -0.00009613    -0.00003912  0.11D-04  0.36D-05 25524.99
    7     4     4     1.14466427    -0.19059258   -30.47794681    -0.00009605    -0.00003909  0.11D-04  0.36D-05 25524.99
    7     5     5     1.14466135    -0.19059255   -30.47794679    -0.00009603    -0.00003908  0.11D-04  0.36D-05 25524.99
    7     6     6     1.14466198    -0.19059250   -30.47794674    -0.00009608    -0.00003913  0.11D-04  0.36D-05 25524.99
    7     7     7     1.06939635    -0.15737154   -30.44472578    -0.00004725    -0.00002324  0.59D-05  0.25D-05 25524.99
    8     1     1     1.05170512    -0.15267642   -30.58594419    -0.00000462    -0.00000158  0.25D-06  0.17D-06 29116.04
    8     2     2     1.14629611    -0.19041103   -30.47799323    -0.00004630    -0.00001793  0.67D-05  0.18D-05 29116.04
    8     3     3     1.14629676    -0.19063899   -30.47799323    -0.00004631    -0.00001792  0.67D-05  0.18D-05 29116.04
    8     4     4     1.14629161    -0.19063893   -30.47799317    -0.00004636    -0.00001799  0.67D-05  0.18D-05 29116.04
    8     5     5     1.14629054    -0.19063891   -30.47799315    -0.00004636    -0.00001798  0.67D-05  0.18D-05 29116.04
    8     6     6     1.14629118    -0.19063889   -30.47799313    -0.00004639    -0.00001798  0.67D-05  0.18D-05 29116.04
    8     7     7     1.06945239    -0.15739896   -30.44475320    -0.00002742    -0.00001159  0.27D-05  0.14D-05 29116.04
    9     1     1     1.05169709    -0.15267844   -30.58594621    -0.00000202    -0.00000071  0.15D-06  0.81D-07 32698.63
    9     2     2     1.14762087    -0.19043361   -30.47801581    -0.00002258    -0.00000904  0.21D-05  0.10D-05 32698.63
    9     3     3     1.14761967    -0.19066158   -30.47801581    -0.00002258    -0.00000904  0.21D-05  0.10D-05 32698.63
    9     4     4     1.14761812    -0.19066157   -30.47801581    -0.00002264    -0.00000904  0.21D-05  0.10D-05 32698.63
    9     5     5     1.14762042    -0.19066156   -30.47801580    -0.00002265    -0.00000904  0.20D-05  0.10D-05 32698.63
    9     6     6     1.14761991    -0.19066156   -30.47801579    -0.00002266    -0.00000904  0.20D-05  0.10D-05 32698.63
    9     7     7     1.06942625    -0.15741416   -30.44476840    -0.00001520    -0.00000687  0.16D-05  0.82D-06 32698.63
   10     1     1     1.05171369    -0.15267935   -30.58594712    -0.00000091    -0.00000038  0.81D-07  0.40D-07 36278.67
   10     2     2     1.14864084    -0.19044635   -30.47802855    -0.00001274    -0.00000622  0.16D-05  0.61D-06 36278.67
   10     3     3     1.14864143    -0.19067431   -30.47802855    -0.00001274    -0.00000622  0.16D-05  0.61D-06 36278.67
   10     4     4     1.14863935    -0.19067430   -30.47802854    -0.00001273    -0.00000622  0.16D-05  0.61D-06 36278.67
   10     5     5     1.14863683    -0.19067430   -30.47802854    -0.00001273    -0.00000622  0.16D-05  0.61D-06 36278.67
   10     6     6     1.14863911    -0.19067430   -30.47802853    -0.00001274    -0.00000622  0.16D-05  0.61D-06 36278.67
   10     7     7     1.06971868    -0.15742319   -30.44477742    -0.00000902    -0.00000491  0.14D-05  0.51D-06 36278.67
   11     1     1     1.05172889    -0.15267981   -30.58594758    -0.00000046    -0.00000018  0.33D-07  0.19D-07 39847.60
   11     2     2     1.14889013    -0.19045364   -30.47803584    -0.00000729    -0.00000335  0.12D-05  0.34D-06 39847.60
   11     3     3     1.14889041    -0.19068160   -30.47803584    -0.00000729    -0.00000335  0.12D-05  0.34D-06 39847.60
   11     4     4     1.14888886    -0.19068159   -30.47803583    -0.00000729    -0.00000336  0.12D-05  0.34D-06 39847.60
   11     5     5     1.14888944    -0.19068159   -30.47803583    -0.00000730    -0.00000336  0.12D-05  0.34D-06 39847.60
   11     6     6     1.14888870    -0.19068159   -30.47803583    -0.00000729    -0.00000336  0.12D-05  0.34D-06 39847.60
   11     7     7     1.06974176    -0.15742875   -30.44478299    -0.00000557    -0.00000267  0.74D-06  0.29D-06 39847.60
   12     1     1     1.05172571    -0.15268004   -30.58594781    -0.00000023    -0.00000009  0.19D-07  0.99D-08 43403.37
   12     2     2     1.14932823    -0.19045767   -30.47803987    -0.00000403    -0.00000181  0.37D-06  0.21D-06 43403.37
   12     3     3     1.14932774    -0.19068563   -30.47803987    -0.00000403    -0.00000181  0.38D-06  0.21D-06 43403.37
   12     4     4     1.14932716    -0.19068563   -30.47803987    -0.00000404    -0.00000181  0.38D-06  0.21D-06 43403.37
   12     5     5     1.14932733    -0.19068563   -30.47803987    -0.00000404    -0.00000181  0.37D-06  0.21D-06 43403.37
   12     6     6     1.14932760    -0.19068563   -30.47803987    -0.00000404    -0.00000181  0.37D-06  0.21D-06 43403.37
   12     7     7     1.06977907    -0.15743209   -30.44478632    -0.00000333    -0.00000162  0.40D-06  0.19D-06 43403.37
   13     1     1     1.05173151    -0.15268015   -30.58594792    -0.00000011    -0.00000005  0.12D-07  0.54D-08 46959.90
   13     2     2     1.14964677    -0.19046018   -30.47804239    -0.00000251    -0.00000130  0.34D-06  0.13D-06 46959.90
   13     3     3     1.14964748    -0.19068815   -30.47804238    -0.00000251    -0.00000130  0.34D-06  0.13D-06 46959.90
   13     4     4     1.14964774    -0.19068815   -30.47804238    -0.00000251    -0.00000130  0.34D-06  0.13D-06 46959.90
   13     5     5     1.14964746    -0.19068815   -30.47804238    -0.00000251    -0.00000130  0.34D-06  0.13D-06 46959.90
   13     6     6     1.14964624    -0.19068814   -30.47804238    -0.00000251    -0.00000130  0.34D-06  0.13D-06 46959.90
   13     7     7     1.06991943    -0.15743421   -30.44478845    -0.00000213    -0.00000119  0.36D-06  0.12D-06 46959.90
   14     1     1     1.05173563    -0.15268021   -30.58594798    -0.00000006    -0.00000003  0.54D-08  0.27D-08 50533.23
   14     2     2     1.14969473    -0.19046170   -30.47804391    -0.00000152    -0.00000074  0.27D-06  0.74D-07 50533.23
   14     3     3     1.14969516    -0.19068967   -30.47804391    -0.00000153    -0.00000074  0.27D-06  0.74D-07 50533.23
   14     4     4     1.14969528    -0.19068967   -30.47804391    -0.00000153    -0.00000074  0.27D-06  0.74D-07 50533.23
   14     5     5     1.14969439    -0.19068967   -30.47804391    -0.00000153    -0.00000074  0.27D-06  0.74D-07 50533.23
   14     6     6     1.14969474    -0.19068967   -30.47804391    -0.00000153    -0.00000074  0.27D-06  0.74D-07 50533.23
   14     7     7     1.06991374    -0.15743555   -30.44478979    -0.00000134    -0.00000068  0.22D-06  0.71D-07 50533.23
   15     1     1     1.05172801    -0.15268024   -30.58594801    -0.00000003    -0.00000002  0.39D-08  0.14D-08 54032.92
   15     2     2     1.14987947    -0.19046258   -30.47804478    -0.00000087    -0.00000041  0.93D-07  0.48D-07 54032.92
   15     3     3     1.14987900    -0.19069054   -30.47804478    -0.00000087    -0.00000041  0.93D-07  0.48D-07 54032.92
   15     4     4     1.14987902    -0.19069054   -30.47804478    -0.00000087    -0.00000041  0.95D-07  0.48D-07 54032.92
   15     5     5     1.14987917    -0.19069054   -30.47804478    -0.00000087    -0.00000041  0.95D-07  0.48D-07 54032.92
   15     6     6     1.14987891    -0.19069054   -30.47804478    -0.00000087    -0.00000041  0.95D-07  0.48D-07 54032.92
   15     7     7     1.07010357    -0.15743768   -30.44479191    -0.00000213    -0.00000021  0.71D-07  0.11D-07 54032.92
   16     1     1     1.05172883    -0.15268025   -30.58594802    -0.00000000    -0.00000001  0.25D-08  0.13D-08 57538.84
   16     2     2     1.15029417    -0.19046394   -30.47804615    -0.00000136    -0.00000012  0.36D-07  0.53D-08 57538.84
   16     3     3     1.15000372    -0.19069111   -30.47804534    -0.00000056    -0.00000030  0.81D-07  0.30D-07 57538.84
   16     4     4     1.15000403    -0.19069111   -30.47804534    -0.00000056    -0.00000030  0.81D-07  0.30D-07 57538.84
   16     5     5     1.15000377    -0.19069111   -30.47804534    -0.00000056    -0.00000030  0.82D-07  0.30D-07 57538.84
   16     6     6     1.15000389    -0.19069110   -30.47804534    -0.00000056    -0.00000030  0.82D-07  0.30D-07 57538.84
   16     7     7     1.07009147    -0.15743784   -30.44479208    -0.00000017    -0.00000001  0.12D-08  0.17D-08 57538.84
   17     1     1     1.05172883    -0.15268025   -30.58594802    -0.00000000    -0.00000001  0.25D-08  0.13D-08 61015.84
   17     2     2     1.15030497    -0.19046403   -30.47804624    -0.00000009    -0.00000001  0.76D-09  0.93D-09 61015.84
   17     3     3     1.15001807    -0.19069146   -30.47804570    -0.00000035    -0.00000018  0.66D-07  0.18D-07 61015.84
   17     4     4     1.15001800    -0.19069146   -30.47804570    -0.00000035    -0.00000018  0.66D-07  0.18D-07 61015.84
   17     5     5     1.15001816    -0.19069146   -30.47804570    -0.00000035    -0.00000018  0.66D-07  0.18D-07 61015.84
   17     6     6     1.15001821    -0.19069146   -30.47804570    -0.00000035    -0.00000018  0.66D-07  0.18D-07 61015.84
   17     7     7     1.07009147    -0.15743784   -30.44479208    -0.00000000    -0.00000001  0.12D-08  0.17D-08 61015.84
   18     1     1     1.05172883    -0.15268025   -30.58594802    -0.00000000    -0.00000001  0.25D-08  0.13D-08 64451.96
   18     2     2     1.15030499    -0.19046403   -30.47804624    -0.00000000    -0.00000001  0.76D-09  0.93D-09 64451.96
   18     3     3     1.15030311    -0.19069200   -30.47804624    -0.00000054    -0.00000002  0.60D-08  0.14D-08 64451.96
   18     4     4     1.15030309    -0.19069200   -30.47804624    -0.00000054    -0.00000002  0.61D-08  0.14D-08 64451.96
   18     5     5     1.15010198    -0.19069166   -30.47804590    -0.00000021    -0.00000010  0.26D-07  0.12D-07 64451.96
   18     6     6     1.15010216    -0.19069166   -30.47804590    -0.00000021    -0.00000010  0.25D-07  0.12D-07 64451.96
   18     7     7     1.07009147    -0.15743784   -30.44479208    -0.00000000    -0.00000001  0.12D-08  0.17D-08 64451.96
   19     1     1     1.05172883    -0.15268025   -30.58594802     0.00000000    -0.00000001  0.25D-08  0.13D-08 67807.68
   19     2     2     1.15028653    -0.19046403   -30.47804624    -0.00000000    -0.00000002  0.75D-08  0.97D-09 67807.68
   19     3     3     1.15028636    -0.19069200   -30.47804624    -0.00000000    -0.00000002  0.76D-08  0.97D-09 67807.68
   19     4     4     1.15030499    -0.19069200   -30.47804624    -0.00000000    -0.00000001  0.76D-09  0.93D-09 67807.68
   19     5     5     1.15030310    -0.19069200   -30.47804624    -0.00000033    -0.00000002  0.60D-08  0.14D-08 67807.68
   19     6     6     1.15030308    -0.19069200   -30.47804624    -0.00000033    -0.00000002  0.61D-08  0.14D-08 67807.68
   19     7     7     1.07009147    -0.15743784   -30.44479208    -0.00000000    -0.00000001  0.12D-08  0.17D-08 67807.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.5%   1.8%
 P   1.1%  20.9%  68.9%

 Initialization:   6.0%
 Other:            0.3%

 Total CPU:    67807.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9145280   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.1665322
 2/\00000222000          -0.1806040   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8831566
 2/000\00222000           0.0000000   0.0012464  -0.0037348   0.8421978  -0.0019559  -0.0008836   0.0000000
 2/0\0000222000          -0.0000000   0.0002303   0.0010412   0.0009019   0.0060608   0.8421859   0.0000000
 2/00\000222000          -0.0000000  -0.0015345   0.0001663   0.0019525   0.8421833  -0.0060627  -0.0000000
 2/00000\222000           0.0000000   0.8289194   0.1490432  -0.0005628   0.0014791  -0.0004209   0.0000000
 2/0000\0222000           0.0000000  -0.1490389   0.8289120   0.0038944  -0.0004514  -0.0009850   0.0000000
 20000000222/0\           0.0000000  -0.0001000  -0.0004520  -0.0003915  -0.0026307  -0.3655558   0.0000000
 200000002220/\           0.0000000  -0.0005410   0.0016211  -0.3655550   0.0008490   0.0003833  -0.0000000
 20000000222/\0          -0.0000000   0.0006661  -0.0000722  -0.0008475  -0.3655546   0.0026315  -0.0000000
 20200000222000           0.0005188  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.3043036
 20000000222200          -0.1292985   0.0528203  -0.2937716  -0.0013802   0.0001600   0.0003491  -0.0332205
 20000000222002          -0.1292984  -0.2808261   0.1011407   0.0008628  -0.0005340  -0.0000454  -0.0332205
 20000000222020          -0.1292984   0.2280058   0.1926309   0.0005174   0.0003740  -0.0003037  -0.0332205
 20000/\0222000           0.0000000   0.0000866  -0.0002595   0.0585207  -0.0001359  -0.0000615  -0.0000000
 200000/\222000           0.0000000   0.0575962   0.0103560  -0.0000391   0.0001028  -0.0000292   0.0000000
 200/\000222000          -0.0000000  -0.0000750   0.0002247  -0.0506805   0.0001177   0.0000532   0.0000000
 200/000\222000           0.0000000  -0.0000139  -0.0000627  -0.0000543  -0.0003647  -0.0506775  -0.0000000
 2000/\00222000           0.0000000  -0.0000139  -0.0000627  -0.0000543  -0.0003647  -0.0506775  -0.0000000
 2000/00\222000          -0.0000000  -0.0000923   0.0000100   0.0001175   0.0506773  -0.0003648  -0.0000000
 200/0\00222000           0.0000000   0.0000923  -0.0000100  -0.0001175  -0.0506773   0.0003648  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\000000222000  24.1    -0.0000000   0.0002787  -0.0008352   0.1883368  -0.0004374  -0.0001975  -0.0000000
 2\000000222000  23.1     0.0000000   0.0000515   0.0002328   0.0002017   0.0013554   0.1883349  -0.0000000
 2\000000222000  22.1    -0.0000000  -0.0003431   0.0000372   0.0004366   0.1883343  -0.0013558  -0.0000000
 2\000000222000  21.1    -0.0000000   0.1853552   0.0333277  -0.0001258   0.0003308  -0.0000942  -0.0000000
 2\000000222000  25.1    -0.0000000  -0.0333267   0.1853536   0.0008709  -0.0001009  -0.0002203  -0.0000000
 2\000000222000  17.1     0.0000000   0.0000464   0.0002105   0.0001824   0.0012259   0.1703460  -0.0000000
 2\000000222000  18.1    -0.0000000  -0.0003102   0.0000337   0.0003949   0.1703455  -0.0012263  -0.0000000
 2\000000222000  19.1    -0.0000000   0.0002520  -0.0007553   0.1703431  -0.0003956  -0.0001785  -0.0000000
 2\000000222000  16.1    -0.0000000   0.1676235   0.0301394  -0.0001138   0.0002993  -0.0000853  -0.0000000
 2\000000222000  15.1    -0.0000001  -0.0301385   0.1676215   0.0007876  -0.0000912  -0.0001993  -0.0000000
 2\000000222000  29.1    -0.0000000  -0.0001340   0.0004017  -0.0905770   0.0002103   0.0000951  -0.0000000
 2\000000222000  26.1     0.0000000  -0.0000248  -0.0001120  -0.0000970  -0.0006518  -0.0905756  -0.0000000
 2\000000222000  27.1    -0.0000000   0.0001650  -0.0000179  -0.0002100  -0.0905753   0.0006520   0.0000000
 2\000000222000  28.1    -0.0000000  -0.0891513  -0.0160298   0.0000605  -0.0001591   0.0000453   0.0000000
 2\000000222000  30.1    -0.0000000   0.0160294  -0.0891506  -0.0004188   0.0000486   0.0001059  -0.0000000
 2\000000222000  13.1    -0.0000000  -0.0000968   0.0002900  -0.0654121   0.0001519   0.0000691   0.0000000
 2\000000222000  11.1     0.0000000  -0.0000178  -0.0000808  -0.0000700  -0.0004707  -0.0654102   0.0000000
 2\000000222000  10.1     0.0000000   0.0001191  -0.0000129  -0.0001516  -0.0654101   0.0004709   0.0000000
 2\000000222000  12.1     0.0000000  -0.0643655  -0.0115732   0.0000437  -0.0001149   0.0000327   0.0000000
 2\000000222000   9.1     0.0000002   0.0115728  -0.0643648  -0.0003024   0.0000350   0.0000765   0.0000001
 2\000000222000  14.1    -0.0377334   0.0000000  -0.0000001   0.0000000  -0.0000000  -0.0000000  -0.0624638
 20\00000222000  20.1     0.0086287  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0604316
 2\000000222000  20.1     0.0567283  -0.0000000   0.0000003   0.0000000  -0.0000000   0.0000000   0.0573250

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.972957   -0.039512   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.000253   -0.001683    0.001367   -0.169631    0.907892
 3          -0.000000   -0.000000    0.001142    0.000182   -0.004096    0.907884    0.169636
 4           0.000000   -0.000000    0.000989    0.002141    0.923584    0.004275   -0.000588
 5           0.000000   -0.000000    0.006647    0.923571   -0.002145   -0.000506    0.001619
 6          -0.000000   -0.000000    0.923574   -0.006649   -0.000969   -0.001077   -0.000469
 7           0.042812    0.963911    0.000000   -0.000000    0.000000    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973757    0.000000    0.000000    0.000000    0.000000   -0.000000    0.001840
 2           0.000000    0.923606   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.923606    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.923597   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.923599   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.923599   -0.000000
 7           0.001840    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.964860

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 20967       0.00236730    -1.34789668       21000001222000                  

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 20987       0.00236727    -1.34787567       21000010222000                  

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 17405       0.00560696     1.17095741       20000000222011                  
 21037       0.00244411    -1.39154729       21000100222000                  

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 17407       0.00560606     1.17084299       20000000222110                  
 21135       0.00244382    -1.39144101       21001000222000                  

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 17406       0.00560609     1.17084968       20000000222101                  
 21303       0.00244384    -1.39144908       21010000222000                  


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97295724 (fixed)   0.97469055 (relaxed)   0.97375749 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275446   -0.00257512   -0.06719675
 Singles      0.03603963   -0.08223337   -0.08319113
 Pairs        0.01583168   -0.00000000   -0.00229237
 Total        1.05462577   -0.08480849   -0.15268025
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.43300505
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64643701
 One electron energy                  -49.72447168
 Two electron energy                   19.13852366
 Virial quotient                       -3.17069898
 Correlation energy                    -0.15294296
 !MRCI STATE 1.1 Energy               -30.585948015907

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.59430264 (Davidson, fixed reference)
 Cluster corrected energies           -30.59399397 (Davidson, relaxed reference)
 Cluster corrected energies           -30.59430264 (Davidson, rotated reference)

 Cluster corrected energies           -30.59285468 (Pople, fixed reference)
 Cluster corrected energies           -30.59259144 (Pople, relaxed reference)
 Cluster corrected energies           -30.59285468 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.90789238 (fixed)   0.93186398 (relaxed)   0.92360598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01910868   -0.00307714   -0.00661333
 Singles      0.13239557   -0.11332802   -0.11818638
 Pairs        0.02076273   -0.07302294   -0.06566432
 Total        1.17226698   -0.18942810   -0.19046403
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28735424
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91805138
 One electron energy                  -49.99347997
 Two electron energy                   19.51543373
 Virial quotient                       -3.07298733
 Correlation energy                    -0.19069200
 !MRCI STATE 2.1 Energy               -30.478046240639

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51089618 (Davidson, fixed reference)
 Cluster corrected energies           -30.50695176 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51089618 (Davidson, rotated reference)

 Cluster corrected energies           -30.50718453 (Pople, fixed reference)
 Cluster corrected energies           -30.50337205 (Pople, relaxed reference)
 Cluster corrected energies           -30.50718453 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90788419 (fixed)   0.93186405 (relaxed)   0.92360601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01910874   -0.00307714   -0.05746461
 Singles      0.13239541   -0.11332802   -0.11821213
 Pairs        0.02076274   -0.01364401   -0.01501526
 Total        1.17226688   -0.13004917   -0.19069200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28735424
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91805180
 One electron energy                  -49.99348030
 Two electron energy                   19.51543406
 Virial quotient                       -3.07298720
 Correlation energy                    -0.19069200
 !MRCI STATE 3.1 Energy               -30.478046239784

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51089616 (Davidson, fixed reference)
 Cluster corrected energies           -30.50695173 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51089616 (Davidson, rotated reference)

 Cluster corrected energies           -30.50718451 (Pople, fixed reference)
 Cluster corrected energies           -30.50337202 (Pople, relaxed reference)
 Cluster corrected energies           -30.50718451 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92358435 (fixed)   0.93185650 (relaxed)   0.92359744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01911115   -0.00307714   -0.06914107
 Singles      0.13241687   -0.11333035   -0.11821255
 Pairs        0.02076063    0.00004729   -0.00333838
 Total        1.17228865   -0.11636020   -0.19069200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28735424
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91802497
 One electron energy                  -49.99345420
 Two electron energy                   19.51540797
 Virial quotient                       -3.07299551
 Correlation energy                    -0.19069200
 !MRCI STATE 4.1 Energy               -30.478046237652

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51090030 (Davidson, fixed reference)
 Cluster corrected energies           -30.50695528 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51090030 (Davidson, rotated reference)

 Cluster corrected energies           -30.50718856 (Pople, fixed reference)
 Cluster corrected energies           -30.50337541 (Pople, relaxed reference)
 Cluster corrected energies           -30.50718856 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92357088 (fixed)   0.93185728 (relaxed)   0.92359884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01910974   -0.00307713   -0.06898921
 Singles      0.13241340   -0.11333087   -0.11821205
 Pairs        0.02076195   -0.00013018   -0.00349073
 Total        1.17228510   -0.11653818   -0.19069200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28735424
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91800653
 One electron energy                  -49.99345022
 Two electron energy                   19.51540399
 Virial quotient                       -3.07300123
 Correlation energy                    -0.19069200
 !MRCI STATE 5.1 Energy               -30.478046235699

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51089962 (Davidson, fixed reference)
 Cluster corrected energies           -30.50695491 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51089962 (Davidson, rotated reference)

 Cluster corrected energies           -30.50718790 (Pople, fixed reference)
 Cluster corrected energies           -30.50337506 (Pople, relaxed reference)
 Cluster corrected energies           -30.50718790 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.92357366 (fixed)   0.93185728 (relaxed)   0.92359885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01910974   -0.00307713   -0.06913242
 Singles      0.13241340   -0.11333088   -0.11821205
 Pairs        0.02076193    0.00003771   -0.00334753
 Total        1.17228508   -0.11637030   -0.19069200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28735424
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91800621
 One electron energy                  -49.99344995
 Two electron energy                   19.51540372
 Virial quotient                       -3.07300133
 Correlation energy                    -0.19069200
 !MRCI STATE 6.1 Energy               -30.478046235578

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51089962 (Davidson, fixed reference)
 Cluster corrected energies           -30.50695491 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51089962 (Davidson, rotated reference)

 Cluster corrected energies           -30.50718790 (Pople, fixed reference)
 Cluster corrected energies           -30.50337506 (Pople, relaxed reference)
 Cluster corrected energies           -30.50718790 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96391142 (fixed)   0.96628870 (relaxed)   0.96485993 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00380778   -0.00259952   -0.06594983
 Singles      0.05356753   -0.08719625   -0.08902835
 Pairs        0.01679083   -0.00000000   -0.00245966
 Total        1.07416614   -0.08979578   -0.15743784
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.28784492
 Nuclear energy                         0.00000000
 Kinetic energy                         9.59433706
 One electron energy                  -48.62940090
 Two electron energy                   18.18460882
 Virial quotient                       -3.17320435
 Correlation energy                    -0.15694716
 !MRCI STATE 7.1 Energy               -30.444792081174

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45643225 (Davidson, fixed reference)
 Cluster corrected energies           -30.45593406 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45643225 (Davidson, rotated reference)

 Cluster corrected energies           -30.45452852 (Pople, fixed reference)
 Cluster corrected energies           -30.45409406 (Pople, relaxed reference)
 Cluster corrected energies           -30.45452852 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     5936.08       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    274172.56  70908.87 203183.42     79.28      0.02      0.73
 REAL TIME  *    276195.37 SEC
 DISK USED  *         5.83 GB (local),       93.33 GB (total)
 SF USED    *        43.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =       -30.59430264  AU                              
 SETTING HLSDIAG(11)    =       -30.51089618  AU                              
 SETTING HLSDIAG(12)    =       -30.51089616  AU                              
 SETTING HLSDIAG(13)    =       -30.51090030  AU                              
 SETTING HLSDIAG(14)    =       -30.51089962  AU                              
 SETTING HLSDIAG(15)    =       -30.51089962  AU                              
 SETTING HLSDIAG(16)    =       -30.45643225  AU                              


        HLSDIAG
    -30.51830485
    -30.51830486
    -30.51830486
    -30.51830486
    -30.51830484
    -30.46344571
    -30.42938437
    -30.42938328
    -30.42938592
    -30.59430264
    -30.51089618
    -30.51089616
    -30.51090030
    -30.51089962
    -30.51089962
    -30.45643225
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:    -30.486435    -30.486435    -30.486435    -30.486435    -30.486435    -30.452986    -30.414571    -30.414571
                       -30.414571
 Replaced energies:    -30.518305    -30.518305    -30.518305    -30.518305    -30.518305    -30.463446    -30.429384    -30.429383
                       -30.429386

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -30.585948    -30.478046    -30.478046    -30.478046    -30.478046    -30.478046    -30.444792
 Replaced energies:    -30.594303    -30.510896    -30.510896    -30.510900    -30.510900    -30.510900    -30.456432



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.59430264

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0   16679.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      36.46      -0.00      -0.02       0.34       0.00       0.00      -0.00     -10.05       0.00

    2   2.1  1.0  1.0       0.00   16679.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                          -36.46       0.00       0.17      -0.00       0.00      -0.00       0.00      10.05       0.00       0.12

    3   3.1  1.0  1.0       0.00       0.00   16679.58       0.00       0.00       0.00       0.00       0.00       0.00      25.78
                            0.00      -0.17      -0.00      -4.35      72.78       0.00       0.00      -0.00       0.05      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   16679.59       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.02       0.00       4.35       0.00      -0.00       0.00      11.58      -0.00       0.00      43.03

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   16679.59       0.00       0.00       0.00       0.00       0.00
                           -0.34      -0.00     -72.78       0.00       0.00      -0.00       0.69      -0.00       0.00      28.40

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   28719.78       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      24.53      -0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   36195.38       0.00       0.00      -7.10
                           -0.00      -0.00      -0.00     -11.58      -0.69     -24.53       0.00      -0.00      -0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   36195.62       0.00      -0.03
                            0.00     -10.05       0.00       0.00       0.00       0.00       0.00       0.00     182.85      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   36195.04      -0.00
                           10.05      -0.00      -0.05      -0.00      -0.00       0.00       0.00    -182.85       0.00       0.03

   10   1.1  1.0  0.0       0.00      -0.00      25.78      -0.00       0.00       0.00      -7.10      -0.03      -0.00   16679.59
                           -0.00      -0.12       0.00     -43.03     -28.40      -0.00      -0.00       0.00      -0.03       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00     -46.11      23.07      -0.00      -0.00      -0.00      -0.00       0.00
                            0.12      -0.00      25.78       0.00      -0.00       0.00       7.10       0.00      -0.00      -0.00

   12   3.1  1.0  0.0     -25.78      -0.00      -0.00       0.00      -0.00      -0.00       0.03      -7.10      -0.00       0.00
                           -0.00     -25.78      -0.00       0.20       0.13       0.00       0.00       0.00      -7.10      -0.00

   13   4.1  1.0  0.0       0.00      46.11      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.67       0.00
                           43.03      -0.00      -0.20       0.00       0.00      -0.00      -0.00      -4.52       0.00      -0.00

   14   5.1  1.0  0.0      -0.00     -23.07       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -7.34       0.00
                           28.40       0.00      -0.13      -0.00      -0.00      -0.00      -0.00       6.85       0.00      -0.00

   15   6.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      17.34       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      17.34      -0.00      -0.00

   16   7.1  1.0  0.0       7.10       0.00      -0.03       0.00       0.00      -0.00      -0.00     129.29      -0.00       0.00
                            0.00      -7.10      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -129.29      -0.00

   17   8.1  1.0  0.0       0.03       0.00       7.10       0.00       0.00      -0.00    -129.29       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       4.52      -6.85     -17.34       0.00      -0.00      -0.00      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       3.67       7.34     -17.34       0.00      -0.00      -0.00       0.00
                            0.03       0.00       7.10      -0.00      -0.00       0.00     129.29       0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.12

   21   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      43.03

   23   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      28.40

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.03

   28   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -70.33       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -70.33       0.00       0.00

   29   2.1  0.0  0.0      -0.04     -35.91      -0.05      -0.01       0.01       0.00       0.12      -0.09     -56.44       0.00
                           18.86      -0.04      -0.08       0.08       0.06       0.00       0.02      69.51      -0.09       0.37

   30   3.1  0.0  0.0       0.12      42.51       0.00      -0.06       0.03      -0.00      -0.01       0.28     -47.68       0.00
                           52.36       0.12      -0.21      -0.01      -0.01       0.00       0.08     -25.03       0.28       0.11

   31   4.1  0.0  0.0     -27.82       0.24       0.19      -0.05       0.03      -0.00      -0.15     -63.98      -0.13       0.00
                            0.20     -27.82       0.03      -0.11      -0.07      -0.00       0.07      -0.21     -63.98       0.04

   32   5.1  0.0  0.0       0.19      -0.07      27.82      -0.36       0.18      -0.00     -63.98       0.15      -0.09       0.00
                            0.02       0.06       0.20     -46.44     -30.65      -0.00       0.46       0.13       0.15       0.28

   33   6.1  0.0  0.0       0.03      -0.04      -0.20     -49.76      24.90      -0.00       0.46       0.07       0.08       0.00
                            0.06       0.03      27.82       0.33       0.22       0.00      63.98       0.01       0.07      39.35

   34   7.1  0.0  0.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       5.28       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       5.28      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00     -25.78       0.00      -0.00      -0.00       7.10       0.03       0.00       0.00       0.00
                           -0.12       0.00     -43.03     -28.40      -0.00      -0.00       0.00      -0.03       0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00      46.11     -23.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      25.78       0.00      -0.00       0.00       7.10       0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00      -0.03       7.10       0.00       0.00       0.00
                          -25.78       0.00       0.20       0.13       0.00       0.00       0.00      -7.10       0.00       0.00

    4   4.1  1.0  1.0     -46.11       0.00      -0.00       0.00       0.00       0.00       0.00       3.67       0.00       0.00
                           -0.00      -0.20      -0.00       0.00      -0.00      -0.00      -4.52       0.00       0.00       0.00

    5   5.1  1.0  1.0      23.07      -0.00      -0.00      -0.00       0.00       0.00       0.00       7.34       0.00       0.00
                            0.00      -0.13      -0.00       0.00      -0.00      -0.00       6.85       0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -17.34       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      17.34      -0.00       0.00       0.00

    7   7.1  1.0  1.0      -0.00       0.03      -0.00      -0.00       0.00      -0.00    -129.29       0.00       0.00       0.00
                           -7.10      -0.00       0.00       0.00      -0.00       0.00      -0.00    -129.29       0.00       0.00

    8   8.1  1.0  1.0      -0.00      -7.10      -0.00      -0.00       0.00     129.29       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       4.52      -6.85     -17.34       0.00       0.00      -0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -0.00      -3.67      -7.34      17.34      -0.00       0.00      -0.00       0.00       0.00
                            0.00       7.10      -0.00      -0.00       0.00     129.29       0.00      -0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.12

   11   2.1  1.0  0.0   16679.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12       0.00

   12   3.1  1.0  0.0       0.00   16679.58       0.00       0.00       0.00       0.00       0.00       0.00      25.78       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -25.78

   13   4.1  1.0  0.0       0.00       0.00   16679.59       0.00       0.00       0.00       0.00       0.00      -0.00     -46.11
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      43.03      -0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00   16679.59       0.00       0.00       0.00       0.00       0.00      23.07
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      28.40       0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00   28719.78       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   36195.38       0.00       0.00      -7.10      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -7.10

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   36195.62       0.00      -0.03      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   36195.04      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.03       0.00

   19   1.1  1.0 -1.0      -0.00      25.78      -0.00       0.00       0.00      -7.10      -0.03      -0.00   16679.59       0.00
                           -0.12       0.00     -43.03     -28.40      -0.00      -0.00       0.00      -0.03      -0.00     -36.46

   20   2.1  1.0 -1.0       0.00       0.00     -46.11      23.07      -0.00      -0.00      -0.00      -0.00       0.00   16679.59
                           -0.00      25.78       0.00      -0.00       0.00       7.10       0.00      -0.00      36.46      -0.00

   21   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.03      -7.10      -0.00       0.00       0.00
                          -25.78      -0.00       0.20       0.13       0.00       0.00       0.00      -7.10      -0.00       0.17

   22   4.1  1.0 -1.0      46.11      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.67       0.00       0.00
                           -0.00      -0.20       0.00       0.00      -0.00      -0.00      -4.52       0.00      -0.02      -0.00

   23   5.1  1.0 -1.0     -23.07       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -7.34       0.00       0.00
                            0.00      -0.13      -0.00      -0.00      -0.00      -0.00       6.85       0.00       0.34       0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      17.34       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      17.34      -0.00       0.00      -0.00

   25   7.1  1.0 -1.0       0.00      -0.03       0.00       0.00      -0.00      -0.00     129.29      -0.00       0.00       0.00
                           -7.10      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -129.29       0.00       0.00

   26   8.1  1.0 -1.0       0.00       7.10       0.00       0.00      -0.00    -129.29       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.52      -6.85     -17.34       0.00      -0.00      -0.00      -0.00      10.05

   27   9.1  1.0 -1.0       0.00       0.00       3.67       7.34     -17.34       0.00      -0.00      -0.00       0.00       0.00
                            0.00       7.10      -0.00      -0.00       0.00     129.29       0.00       0.00     -10.05       0.00

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      99.47      -0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.04     -35.91
                            0.07      77.46       0.01      -0.12       0.00      18.49      -0.02      -0.16     -18.86       0.04

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12      42.51
                           -0.01      13.93      -0.02       0.35       0.00    -102.83      -0.11       0.02     -52.36      -0.12

   31   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -27.82       0.24
                           -0.09      -0.05       4.70     -78.55      -0.00      -0.48      -0.10       0.21      -0.20      27.82

   32   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.19      -0.07
                          -39.35       0.14      -0.01       0.18      -0.00       0.06      -0.65      90.48      -0.02      -0.06

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.04
                            0.28      -0.22      -0.00       0.08       0.00       0.12     -90.48      -0.65      -0.06      -0.03

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -7.46       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.04       0.12
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.86     -52.36

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -35.91      42.51
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.12

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.05       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.08       0.21

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.06
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.08       0.01

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01       0.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.06       0.01

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.12      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.02      -0.08

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.09       0.28
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      70.33     -69.51      25.03

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -70.33     -56.44     -47.68
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.09      -0.28

   10   1.1  1.0  0.0     -25.78       0.00      -0.00      -0.00       7.10       0.03       0.00       0.00       0.00       0.00
                            0.00     -43.03     -28.40      -0.00      -0.00       0.00      -0.03      -0.00      -0.37      -0.11

   11   2.1  1.0  0.0      -0.00      46.11     -23.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.78       0.00      -0.00       0.00       7.10       0.00      -0.00      -0.00      -0.07       0.01

   12   3.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.03       7.10       0.00       0.00       0.00       0.00
                            0.00       0.20       0.13       0.00       0.00       0.00      -7.10      -0.00     -77.46     -13.93

   13   4.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       3.67       0.00       0.00       0.00
                           -0.20      -0.00       0.00      -0.00      -0.00      -4.52       0.00      -0.00      -0.01       0.02

   14   5.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       7.34       0.00       0.00       0.00
                           -0.13      -0.00       0.00      -0.00      -0.00       6.85       0.00       0.00       0.12      -0.35

   15   6.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -17.34       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      17.34      -0.00      -0.00      -0.00      -0.00

   16   7.1  1.0  0.0       0.03      -0.00      -0.00       0.00      -0.00    -129.29       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00    -129.29     -99.47     -18.49     102.83

   17   8.1  1.0  0.0      -7.10      -0.00      -0.00       0.00     129.29       0.00      -0.00       0.00       0.00       0.00
                           -0.00       4.52      -6.85     -17.34       0.00       0.00      -0.00       0.00       0.02       0.11

   18   9.1  1.0  0.0      -0.00      -3.67      -7.34      17.34      -0.00       0.00      -0.00       0.00       0.00       0.00
                            7.10      -0.00      -0.00       0.00     129.29       0.00      -0.00      -0.00       0.16      -0.02

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.04       0.12
                            0.00       0.02      -0.34      -0.00      -0.00       0.00      10.05      -0.00      18.86      52.36

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -35.91      42.51
                           -0.17       0.00      -0.00       0.00      -0.00     -10.05      -0.00      -0.00      -0.04       0.12

   21   3.1  1.0 -1.0   16679.58       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.05       0.00
                            0.00       4.35     -72.78      -0.00      -0.00       0.00      -0.05       0.00      -0.08      -0.21

   22   4.1  1.0 -1.0       0.00   16679.59       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.06
                           -4.35      -0.00       0.00      -0.00     -11.58       0.00      -0.00       0.00       0.08      -0.01

   23   5.1  1.0 -1.0       0.00       0.00   16679.59       0.00       0.00       0.00       0.00      -0.00       0.01       0.03
                           72.78      -0.00      -0.00       0.00      -0.69       0.00      -0.00       0.00       0.06      -0.01

   24   6.1  1.0 -1.0       0.00       0.00       0.00   28719.78       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00     -24.53       0.00       0.00       0.00       0.00       0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   36195.38       0.00       0.00      -0.00       0.12      -0.01
                            0.00      11.58       0.69      24.53      -0.00       0.00       0.00       0.00       0.02       0.08

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   36195.62       0.00       0.00      -0.09       0.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -182.85     -70.33      69.51     -25.03

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   36195.04     -70.33     -56.44     -47.68
                            0.05       0.00       0.00      -0.00      -0.00     182.85      -0.00       0.00      -0.09       0.28

   28   1.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -70.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      70.33      -0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0      -0.05      -0.01       0.01       0.00       0.12      -0.09     -56.44       0.00   18305.60       0.00
                            0.08      -0.08      -0.06      -0.00      -0.02     -69.51       0.09      -0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00      -0.06       0.03      -0.00      -0.01       0.28     -47.68       0.00       0.00   18305.61
                            0.21       0.01       0.01      -0.00      -0.08      25.03      -0.28      -0.00      -0.00       0.00

   31   4.1  0.0  0.0       0.19      -0.05       0.03      -0.00      -0.15     -63.98      -0.13       0.00       0.00       0.00
                           -0.03       0.11       0.07       0.00      -0.07       0.21      63.98      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0      27.82      -0.36       0.18      -0.00     -63.98       0.15      -0.09       0.00       0.00       0.00
                           -0.20      46.44      30.65       0.00      -0.46      -0.13      -0.15      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0      -0.20     -49.76      24.90      -0.00       0.46       0.07       0.08       0.00       0.00       0.00
                          -27.82      -0.33      -0.22      -0.00     -63.98      -0.01      -0.07      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.00       5.28       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -5.28       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  1.0  1.0     -27.82       0.19       0.03      -0.00
                           -0.20      -0.02      -0.06      -0.00

    2   2.1  1.0  1.0       0.24      -0.07      -0.04       0.00
                           27.82      -0.06      -0.03       0.00

    3   3.1  1.0  1.0       0.19      27.82      -0.20       0.00
                           -0.03      -0.20     -27.82       0.00

    4   4.1  1.0  1.0      -0.05      -0.36     -49.76      -0.00
                            0.11      46.44      -0.33       0.00

    5   5.1  1.0  1.0       0.03       0.18      24.90       0.00
                            0.07      30.65      -0.22       0.00

    6   6.1  1.0  1.0      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00

    7   7.1  1.0  1.0      -0.15     -63.98       0.46       0.00
                           -0.07      -0.46     -63.98       0.00

    8   8.1  1.0  1.0     -63.98       0.15       0.07      -0.00
                            0.21      -0.13      -0.01      -5.28

    9   9.1  1.0  1.0      -0.13      -0.09       0.08       5.28
                           63.98      -0.15      -0.07       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.04      -0.28     -39.35      -0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.09      39.35      -0.28       0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.05      -0.14       0.22      -0.00

   13   4.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -4.70       0.01       0.00      -0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00       0.00
                           78.55      -0.18      -0.08       0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.48      -0.06      -0.12       7.46

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.10       0.65      90.48      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.21     -90.48       0.65       0.00

   19   1.1  1.0 -1.0     -27.82       0.19       0.03      -0.00
                            0.20       0.02       0.06       0.00

   20   2.1  1.0 -1.0       0.24      -0.07      -0.04       0.00
                          -27.82       0.06       0.03      -0.00

   21   3.1  1.0 -1.0       0.19      27.82      -0.20       0.00
                            0.03       0.20      27.82      -0.00

   22   4.1  1.0 -1.0      -0.05      -0.36     -49.76      -0.00
                           -0.11     -46.44       0.33      -0.00

   23   5.1  1.0 -1.0       0.03       0.18      24.90       0.00
                           -0.07     -30.65       0.22      -0.00

   24   6.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00

   25   7.1  1.0 -1.0      -0.15     -63.98       0.46       0.00
                            0.07       0.46      63.98      -0.00

   26   8.1  1.0 -1.0     -63.98       0.15       0.07      -0.00
                           -0.21       0.13       0.01       5.28

   27   9.1  1.0 -1.0      -0.13      -0.09       0.08       5.28
                          -63.98       0.15       0.07      -0.00

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0   18304.70       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00   18304.85       0.00       0.00
                           -0.00       0.00       0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00   18304.85       0.00
                           -0.00      -0.00       0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00   30259.05
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -30.59430264 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+          16679.587       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   16679.587       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   16679.585       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   16679.586       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   16679.590       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   28719.777       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   36195.377       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   36195.616
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.173       0.000     -60.854     -40.159      -0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.173       0.000      36.455       0.000      -0.000       0.000      10.046       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000     -36.455       0.000       0.286       0.189       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               60.854      -0.000      -0.286       0.000       0.000      -0.000      -0.000      -6.389

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               40.159       0.000      -0.189      -0.000       0.000      -0.000      -0.000       9.681

    6    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      24.527

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000     -10.046      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       6.389      -9.681     -24.527       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.047       0.000      10.046      -0.000      -0.000       0.000     182.850       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      36.455      -0.000      -0.021       0.340       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -36.455       0.000       0.169      -0.000       0.000      -0.000       0.000      10.045

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.169      -0.000      -4.352      72.781       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.021       0.000       4.352       0.000      -0.000       0.000      11.579      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.340      -0.000     -72.781       0.000       0.000      -0.000       0.692      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      24.527      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -11.579      -0.692     -24.527       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -10.045       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.046      -0.000      -0.047      -0.000      -0.000       0.000       0.000    -182.854

    1    1  |0 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.059     -50.790      -0.071      -0.018       0.011       0.000       0.165      -0.134
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.175      60.116       0.007      -0.088       0.042      -0.000      -0.018       0.401
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -39.346       0.341       0.276      -0.075       0.038      -0.000      -0.210     -90.480
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.276      -0.106      39.345      -0.506       0.253      -0.000     -90.480       0.210
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.040      -0.061      -0.283     -70.376      35.208      -0.000       0.651       0.095
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.173       0.000     -60.854     -40.159      -0.000      -0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.173       0.000      36.455       0.000      -0.000       0.000      10.046

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000     -36.455       0.000       0.286       0.189       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      60.854      -0.000      -0.286       0.000       0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      40.159       0.000      -0.189      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000     -10.046      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       6.389      -9.681     -24.527       0.000

    9    1  |1 1>+          36195.037      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.047       0.000      10.046      -0.000      -0.000       0.000     182.850

    1    1  |1 0>              -0.000   16679.587       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.047       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000   16679.587       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   16679.585       0.000       0.000       0.000       0.000
                              -10.046      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000   16679.586       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000   16679.590       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000   28719.777       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   36195.377
                             -182.850      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000     -36.456       0.000      -0.000      -0.000      10.046
                              -10.046       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000      -0.000       0.000      -0.000      65.206     -32.622       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000      36.456       0.000       0.000      -0.000       0.000       0.000      -0.047
                                0.047      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000      -0.000     -65.206       0.000       0.000       0.002       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000      32.622      -0.000      -0.002       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000     -10.046      -0.000       0.047      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.047      -0.000     -10.045      -0.000      -0.000       0.000     182.848
                              182.854       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000      -0.000      -0.000      -5.190     -10.374      24.527      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |0 0>             -99.467       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      99.466

    2    1  |0 0>             -79.813       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.374       0.072      77.457       0.007      -0.116       0.000      18.489

    3    1  |0 0>             -67.430       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.114      -0.008      13.927      -0.021       0.348       0.000    -102.830

    4    1  |0 0>              -0.181       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.042      -0.093      -0.053       4.697     -78.553      -0.000      -0.483

    5    1  |0 0>              -0.131       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.284     -39.346       0.137      -0.010       0.183      -0.000       0.056

    6    1  |0 0>               0.106       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      39.345       0.283      -0.224      -0.005       0.082       0.000       0.122

    7    1  |0 0>               7.461       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -7.461

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.047       0.000      36.455      -0.000      -0.021       0.340       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -36.455       0.000       0.169      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -10.046       0.000      -0.169      -0.000      -4.352      72.781       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.389       0.000       0.021       0.000       4.352       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                9.681       0.000      -0.340      -0.000     -72.781       0.000       0.000      -0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.527      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -182.850      -0.000      -0.000      -0.000     -11.579      -0.692     -24.527

    8    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -10.045       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      10.046      -0.000      -0.047      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000      36.456      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -65.206      32.622      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000     -36.456      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000      65.206      -0.000       0.000      -0.002      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000      -0.000     -32.622       0.000       0.002       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      10.046       0.000      -0.047       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>           36195.616       0.000       0.047       0.000      10.045       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000   36195.037       0.000       0.000       0.000       5.190      10.374     -24.527
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.047       0.000   16679.587       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000   16679.587       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             10.045       0.000       0.000       0.000   16679.585       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       5.190       0.000       0.000       0.000   16679.586       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      10.374       0.000       0.000       0.000       0.000   16679.590       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000     -24.527       0.000       0.000       0.000       0.000       0.000   28719.777
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-           -182.848       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.025      -0.165      26.668      -0.058      -0.114       0.120       0.079       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.112       0.018      74.043       0.174      -0.298      -0.013      -0.009       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.097       0.210       0.289     -39.347       0.041      -0.151      -0.099      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.651      90.483       0.034       0.089       0.283     -65.679     -43.343      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.481      -0.651       0.085       0.041      39.346       0.473       0.312       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.059       0.175     -39.346       0.276
                                0.000      -0.000     -10.046       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000     -50.790      60.116       0.341      -0.106
                                0.000      10.045       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.071       0.007       0.276      39.345
                                0.000      -0.000       0.047       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.018      -0.088      -0.075      -0.506
                               11.579      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.011       0.042       0.038       0.253
                                0.692      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               24.527      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.165      -0.018      -0.210     -90.480
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.134       0.401     -90.480       0.210
                                0.000       0.000     182.854       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000     -99.467     -79.813     -67.430      -0.181      -0.131
                                0.000    -182.854       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             -10.046      -0.047      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.374      -0.114      -0.042      -0.284

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.072       0.008       0.093      39.346

    3    1  |1 0>               0.047     -10.045      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -77.457     -13.927       0.053      -0.137

    4    1  |1 0>              -0.000      -0.000      -5.190       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.007       0.021      -4.697       0.010

    5    1  |1 0>              -0.000      -0.000     -10.374       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.116      -0.348      78.553      -0.183

    6    1  |1 0>               0.000       0.000      24.527       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000     182.848      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -99.466     -18.489     102.830       0.483      -0.056

    8    1  |1 0>            -182.848       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.025       0.112       0.097       0.651

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.165      -0.018      -0.210     -90.483

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.668     -74.043      -0.289      -0.034

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.058      -0.174      39.347      -0.089

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.114       0.298      -0.041      -0.283

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.120       0.013       0.151      65.679

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.079       0.009       0.099      43.343

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-          36195.377       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.025      -0.112      -0.097      -0.651

    8    1  |1 1>-              0.000   36195.616       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      99.466     -98.300      35.403       0.302      -0.187

    9    1  |1 1>-              0.000       0.000   36195.037       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.134      -0.401      90.481      -0.210

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -99.466       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000   18305.604       0.000       0.000       0.000
                                0.025      98.300      -0.134      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000   18305.608       0.000       0.000
                                0.112     -35.403       0.401      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   18304.698       0.000
                                0.097      -0.302     -90.481      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   18304.847
                                0.651       0.187       0.210      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               90.480       0.016       0.095      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       7.461      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34

    1    1  |1 1>+              0.040      -0.000
                                0.000       0.000

    2    1  |1 1>+             -0.061       0.000
                                0.000       0.000

    3    1  |1 1>+             -0.283       0.000
                                0.000       0.000

    4    1  |1 1>+            -70.376      -0.000
                                0.000       0.000

    5    1  |1 1>+             35.208       0.000
                                0.000       0.000

    6    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    7    1  |1 1>+              0.651       0.000
                                0.000       0.000

    8    1  |1 1>+              0.095      -0.000
                                0.000       0.000

    9    1  |1 1>+              0.106       7.461
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                              -39.345      -0.000

    2    1  |1 0>               0.000       0.000
                               -0.283       0.000

    3    1  |1 0>               0.000       0.000
                                0.224      -0.000

    4    1  |1 0>               0.000       0.000
                                0.005      -0.000

    5    1  |1 0>               0.000       0.000
                               -0.082       0.000

    6    1  |1 0>               0.000       0.000
                               -0.000       0.000

    7    1  |1 0>               0.000       0.000
                               -0.122       7.461

    8    1  |1 0>               0.000       0.000
                               90.481      -0.000

    9    1  |1 0>               0.000       0.000
                                0.651       0.000

    1    1  |1 1>-              0.000       0.000
                               -0.085      -0.000

    2    1  |1 1>-              0.000       0.000
                               -0.041       0.000

    3    1  |1 1>-              0.000       0.000
                              -39.346       0.000

    4    1  |1 1>-              0.000       0.000
                               -0.473       0.000

    5    1  |1 1>-              0.000       0.000
                               -0.312       0.000

    6    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    7    1  |1 1>-              0.000       0.000
                              -90.480       0.000

    8    1  |1 1>-              0.000       0.000
                               -0.016      -7.461

    9    1  |1 1>-              0.000       0.000
                               -0.095       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>           18304.848       0.000
                                0.000       0.000

    7    1  |0 0>               0.000   30259.055
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.59430642    -0.00000377       -0.83      0.00000000        0.00      0.0000
    2   -30.51880321     0.07549944    16570.21      0.07550321    16571.04      2.0545
    3   -30.51880320     0.07549944    16570.21      0.07550321    16571.04      2.0545
    4   -30.51880320     0.07549944    16570.21      0.07550321    16571.04      2.0545
    5   -30.51849649     0.07580616    16637.53      0.07580993    16638.36      2.0629
    6   -30.51849648     0.07580616    16637.53      0.07580993    16638.36      2.0629
    7   -30.51849648     0.07580616    16637.53      0.07580993    16638.36      2.0629
    8   -30.51849648     0.07580617    16637.53      0.07580994    16638.36      2.0629
    9   -30.51849648     0.07580617    16637.53      0.07580994    16638.36      2.0629
   10   -30.51797265     0.07632999    16752.50      0.07633377    16753.33      2.0771
   11   -30.51797265     0.07632999    16752.50      0.07633377    16753.33      2.0771
   12   -30.51797265     0.07632999    16752.50      0.07633377    16753.33      2.0771
   13   -30.51797265     0.07633000    16752.50      0.07633377    16753.33      2.0771
   14   -30.51797264     0.07633000    16752.50      0.07633378    16753.33      2.0771
   15   -30.51797264     0.07633000    16752.50      0.07633378    16753.33      2.0771
   16   -30.51797264     0.07633000    16752.50      0.07633378    16753.33      2.0771
   17   -30.51087897     0.08342368    18309.38      0.08342745    18310.21      2.2702
   18   -30.51087829     0.08342435    18309.53      0.08342813    18310.36      2.2702
   19   -30.51087829     0.08342436    18309.53      0.08342813    18310.36      2.2702
   20   -30.51087485     0.08342779    18310.28      0.08343157    18311.11      2.2703
   21   -30.51087483     0.08342781    18310.29      0.08343159    18311.12      2.2703
   22   -30.46344646     0.13085618    28719.61      0.13085996    28720.44      3.5609
   23   -30.46344646     0.13085618    28719.61      0.13085996    28720.44      3.5609
   24   -30.46344646     0.13085618    28719.61      0.13085996    28720.44      3.5609
   25   -30.45643238     0.13787026    30259.02      0.13787403    30259.85      3.7517
   26   -30.43104687     0.16325577    35830.50      0.16325955    35831.33      4.4425
   27   -30.43021748     0.16408516    36012.53      0.16408894    36013.36      4.4651
   28   -30.43021696     0.16408569    36012.65      0.16408946    36013.47      4.4651
   29   -30.43021615     0.16408649    36012.82      0.16409027    36013.65      4.4651
   30   -30.42854796     0.16575468    36378.95      0.16575845    36379.78      4.5105
   31   -30.42854783     0.16575481    36378.98      0.16575859    36379.80      4.5105
   32   -30.42854726     0.16575538    36379.10      0.16575915    36379.93      4.5105
   33   -30.42854652     0.16575613    36379.26      0.16575990    36380.09      4.5106
   34   -30.42854644     0.16575620    36379.28      0.16575997    36380.11      4.5106

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.54769568 -0.00524738 -0.00000016 -0.00067744  0.00120490 -0.00054590  0.06738254
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00002096 -0.00060841 -0.00147693  0.44945380 -0.67056072
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000014 -0.00000000

   3    1  |1 1>+          0.00000000  0.00524743 -0.54770166  0.00000037  0.00005172  0.40757689  0.00056879 -0.00070243
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000008  0.00000019  0.28297563  0.72898415 -0.00009137  0.00293038  0.00148348
                          -0.00000000  0.00000000 -0.00000000  0.00002907 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000017  0.00000038  0.56561061 -0.36469324  0.00004577 -0.00148264 -0.00071731
                           0.00000000  0.00000000 -0.00000000  0.00005811  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000191  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000231 -0.00047168  0.00000000 -0.00000011 -0.00088716 -0.00000123  0.00000084
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00047165  0.00000231  0.00000000 -0.00000147 -0.00000153 -0.00000119  0.00014667
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00277604  0.00000000 -0.00000000  0.00000000 -0.00000444 -0.00000048  0.00085453  0.00055723
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00005627  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000016  0.00000037  0.54771912  0.40753480 -0.00005611  0.00545492  0.00104903

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00266662  0.54771932 -0.00000037  0.00004858  0.40755765  0.00056623 -0.00039007

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000001  0.00000025  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00256549 -0.00527971 -0.00106992  0.81362263  0.04873143

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.63132144  0.00307890  0.00000018 -0.00008089 -0.00009340 -0.00006549  0.00804370

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.03774730  0.00017077  0.00000001  0.00135289  0.00139523  0.00109510 -0.13452515

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000190 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00277597 -0.00000000 -0.00000000 -0.00000000  0.00000155 -0.00000137  0.00006187 -0.00100834

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00047164 -0.00088712  0.00000011 -0.00000358 -0.00000179

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000231  0.00047168 -0.00000000 -0.00000011 -0.00088720 -0.00000123  0.00000084

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000001  0.00000011  0.00000000
                          -0.00000001  0.00000000 -0.00000000 -0.00256542 -0.00084603  0.00040653  0.36417679  0.71929040

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.54771627 -0.00268762 -0.00000016  0.00067767  0.00073123  0.00054859 -0.06738450

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00005627  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000016 -0.00000037 -0.54772217  0.40758019 -0.00005301 -0.00006169 -0.00254823

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000
                           0.00000000 -0.00169327  0.34835704 -0.00000023  0.00008102  0.68033591  0.00094514 -0.00064414

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00259882 -0.52785329  0.00000035  0.00005346  0.44896596  0.00062371 -0.00042436

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000191 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00047168  0.00088715 -0.00000011  0.00000358  0.00000179

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00277596 -0.00000000 -0.00000000 -0.00000000 -0.00000289 -0.00000185  0.00091633 -0.00045111

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00047169  0.00000231  0.00000000  0.00000147  0.00000153  0.00000119 -0.00014668

   1    1  |0 0>           0.99998844  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000085  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00020400  0.00001684  0.05738453 -0.00665178
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00005659  0.00005148  0.00677232  0.05655369
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000014  0.00000000  0.00000000 -0.00003447 -0.00023350 -0.00013245  0.00981884
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000044  0.00000000  0.00040895 -0.05780319  0.00002475  0.00000907
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000030  0.05780322  0.00040892  0.00020909  0.00003771
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000205  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.40196408  0.00000015 -0.00284517  0.00000009  0.38507565  0.03738379  0.61938507  0.00000013
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.11302207 -0.57732755  0.00000042 -0.00517412  0.00000023  0.00000003 -0.00000001  0.00147480
                           0.00000000  0.00017451 -0.00000000  0.00000883 -0.00000000  0.00000000  0.00000000 -0.00000081

   3    1  |1 1>+          0.00110308  0.00000027  0.43197095  0.00000171  0.00183386 -0.58770401  0.03631576  0.00000001
                           0.00000000  0.00000000  0.00000022 -0.00000004  0.00000000 -0.00000003  0.00000000  0.00000000

   4    1  |1 1>+         -0.00098415  0.00571351  0.00000221 -0.56304431  0.00000020 -0.00000001 -0.00000008  0.26393200
                           0.00000000 -0.00000174  0.00000005  0.00096195  0.00000000 -0.00000000  0.00000000 -0.00014465

   5    1  |1 1>+          0.00049653  0.00049254 -0.00000059  0.14988000 -0.00000006  0.00000000 -0.00000014  0.72399568
                          -0.00000000 -0.00000015 -0.00000001 -0.00025607 -0.00000000 -0.00000000  0.00000000 -0.00039680

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000170 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00087492 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00009225 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000119  0.00000006  0.00109117  0.00000000 -0.00000000  0.00000000 -0.00019409
                          -0.00051856 -0.00389920 -0.00000251  0.63867714 -0.00000023  0.00000001  0.00000011 -0.35412676

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000035  0.00000006 -0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00076011  0.00000049  0.67809672  0.00000267  0.00733218  0.27052873 -0.01673674 -0.00000001

   3    1  |1 0>          -0.00000000  0.00017451 -0.00000000  0.00000370 -0.00000000  0.00000000  0.00000000  0.00000011
                           0.00706974  0.57734403 -0.00000041  0.00217364 -0.00000023 -0.00000003  0.00000001  0.00020849

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.04798209  0.00000031 -0.00800303  0.00000025  0.77258941  0.00195341  0.04567688  0.00000002

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.80246805 -0.00000001 -0.00073576 -0.00000004 -0.01363898  0.03787988  0.57678035  0.00000012

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00016912  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000120  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000170 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00017451  0.00000000 -0.00000479  0.00000000 -0.00000000 -0.00000000  0.00000216
                           0.12008506 -0.57733731  0.00000041 -0.00281119  0.00000023  0.00000003 -0.00000001  0.00393201

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.40196110  0.00000020 -0.00440441  0.00000020  0.50451849 -0.03525435 -0.52680774 -0.00000010

   3    1  |1 1>-         -0.00000000 -0.00000015  0.00000004  0.00085862  0.00000000  0.00000000 -0.00000000  0.00029040
                          -0.00111415 -0.00046091 -0.00000198  0.50255974 -0.00000019  0.00000001 -0.00000008  0.52985508

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000030 -0.00000005  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00131062 -0.00000042 -0.58065626 -0.00000228 -0.00633627 -0.27700107  0.01733468  0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000006 -0.00000001  0.00000000 -0.00000003  0.00000000  0.00000000
                          -0.00086919 -0.00000005 -0.12779731 -0.00000052 -0.00037116  0.70753762 -0.04662989 -0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000120 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00007687 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00087500  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00127980 -0.00000045  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00973120 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.05696974 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000006 -0.00000089 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00023817 -0.00000000  0.00000018 -0.00000000 -0.00000000 -0.00000091  0.00000006 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00003060 -0.00000000 -0.00000000 -0.00000017  0.00000000  0.00000001 -0.00000000 -0.00000080
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.02360311  0.00016532  0.00002481 -0.00003464  0.00010477  0.00000001 -0.00000277  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00020478 -0.00006337 -0.00003645 -0.03028490  0.03618396  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00016524  0.02360062 -0.00016538 -0.00004288  0.00000431  0.00000278  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00004663 -0.00029551 -0.04221434 -0.00001123 -0.00005305 -0.00000000  0.00000000 -0.00000144
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00002332  0.00014784  0.02111927  0.00000674  0.00002520  0.00000000 -0.00000000 -0.00000287
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000005  0.00000008  0.99998763
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00145293

   7    1  |1 1>+          0.00001149  0.00495968 -0.00003473 -0.00000905  0.00000101 -0.00336314  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00495955 -0.00001151 -0.00000536  0.00000724 -0.00002202 -0.00000000 -0.00336300  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000992  0.00000720 -0.00000585  0.00439229  0.00367615 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002592 -0.00016560 -0.02360087 -0.00022437 -0.00006730  0.00000000 -0.00000000 -0.00000279

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00005583  0.02360119 -0.00016527 -0.00004304  0.00000480 -0.00000279  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00003168 -0.00008228  0.00013428 -0.04647865 -0.00813518  0.00000000  0.00000000  0.00000001

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00281769  0.00000600  0.00000306 -0.00000411  0.00001250  0.00000000  0.00000321 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.04712318 -0.00010996 -0.00005106  0.00006875 -0.00020913  0.00000000  0.00000019 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000024  0.99998869 -0.00000008

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002647  0.00000306  0.00000671  0.00098744 -0.00564155  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000489
                          -0.00000548 -0.00003472 -0.00495971 -0.00000140 -0.00000614 -0.00000000  0.00000000  0.00336299

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001149  0.00495996 -0.00003473 -0.00000905  0.00000101  0.00336327 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00017334 -0.00002046 -0.00005079 -0.01619423 -0.04431903  0.00000000  0.00000000  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02360362 -0.00005321 -0.00002559  0.00003443 -0.00010475  0.00000000 -0.00000277  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002526 -0.00016512 -0.02360121  0.00006919  0.00017839 -0.00000000  0.00000000  0.00000278

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00009075  0.03939685 -0.00027587 -0.00007185  0.00000802 -0.00000177  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00005964  0.02599913 -0.00018206 -0.00004742  0.00000530  0.00000268  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.99998869 -0.00000024  0.00000005

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000489
                           0.00000548  0.00003472  0.00495970  0.00000140  0.00000614 -0.00000000  0.00000000  0.00336313

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001655  0.00001026  0.00000086  0.00537950 -0.00196561 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00495982  0.00001151  0.00000536 -0.00000724  0.00002202 -0.00000000 -0.00336327  0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000017  0.00000311 -0.00000318  0.99829340 -0.00461707 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000125  0.00000211 -0.00000243  0.00461707  0.99829341 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.99830251  0.00000126 -0.00003352  0.00000018  0.00000124  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000126  0.99830279  0.00019607 -0.00000312 -0.00000210  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00003352 -0.00019607  0.99830280  0.00000319  0.00000242  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000171  0.00036563  0.00000000 -0.00000000  0.00000162 -0.00034553
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000001  0.00015254 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00036552 -0.00000171  0.00000000  0.00000000  0.00034564  0.00000162
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00018896 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000126  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00037715 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000251  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00475599  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00003164 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.70677027 -0.00000000 -0.00000000  0.00000070  0.70741704 -0.00000079
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.70653941  0.00000000  0.00000099  0.00000079  0.70764762
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00133915  0.57765261  0.00000000  0.00000000 -0.00000000  0.79616914 -0.00000075 -0.00000145
                           0.00000001 -0.00414681  0.00000000  0.00000000  0.00000000 -0.00000977 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000243 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00036546 -0.00000238 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00036519 -0.00000001 -0.00000000  0.00000000  0.00034598  0.00000002

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000033 -0.00000000 -0.00000000  0.00000171 -0.00050794  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00042108 -0.00000000 -0.00000000 -0.00000001 -0.00004159

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00002576 -0.00000000  0.00000000 -0.00000001  0.00069035

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00475619  0.00000000  0.00000000  0.00000000  0.00000357

   7    1  |1 0>          -0.00000001  0.00414419  0.00000000 -0.00000000  0.00000000 -0.00000680 -0.00000000  0.00000000
                          -0.00133914  0.57728770 -0.00000000 -0.00000000  0.00000000 -0.55433334  0.00000066 -0.00000036

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00470238 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.70685221  0.00000008 -0.00000001  0.00000578

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.70742683  0.00000000  0.00000000  0.00000070  0.70676047 -0.00000079

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000
                          -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000171 -0.00066048  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00036506  0.00000000  0.00000000  0.00000002  0.00034607

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000243  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00036520  0.00000309 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00023209 -0.00000001 -0.00000000  0.00000000  0.00057736 -0.00000001

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00035230 -0.00000001  0.00000000  0.00000000  0.00038079 -0.00000001

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00475629 -0.00000000 -0.00000000  0.00000000  0.00000211 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00470545  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70731368 -0.00000008  0.00000001 -0.00000578

   8    1  |1 1>-          0.00000001 -0.00414242 -0.00000000  0.00000000  0.00000000  0.00000297  0.00000000 -0.00000000
                           0.00133908 -0.57704103 -0.00000000  0.00000000  0.00000000  0.24244269 -0.00000009 -0.00000181

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.70765740  0.00000000 -0.00000098 -0.00000079 -0.70652960

   1    1  |0 0>           0.00001321 -0.00480801 -0.00000000 -0.00000000  0.00000000  0.00000163 -0.00000000 -0.00000000
                          -0.00000000  0.00003452  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000309  0.00000001  0.00000001 -0.00000000 -0.00426475  0.00001289 -0.00001045
                          -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000100 -0.00000000 -0.00000003 -0.00000000 -0.00564584 -0.00000139  0.00003138
                          -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000578 -0.00000000 -0.00001874 -0.00001641 -0.00707486
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000001 -0.00000348 -0.00000001 -0.00000002 -0.00000656 -0.00707503  0.00001644
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000003 -0.00000001 -0.00000230  0.00000821  0.00005093  0.00000747
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.99999731  0.00231940  0.00000000  0.00000000 -0.00000000 -0.00000079  0.00000000 -0.00000000
                          -0.00000668 -0.00001665 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000001 -0.00067456
                          -0.00000000  0.00000001

   3    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   4    1  |1 1>+          0.00061845  0.00000002
                           0.00000000 -0.00000000

   5    1  |1 1>+         -0.00030954  0.00000002
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000146 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>+          0.00000001 -0.00000013
                          -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000579  0.00000134
                          -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000046  0.17992110
                           0.00000000 -0.00000145

   1    1  |1 0>          -0.00000000 -0.00000000
                           0.00034569 -0.00000220

   2    1  |1 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000
                          -0.00000162 -0.00046936

   4    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000
                          -0.00000001  0.00000000

   6    1  |1 0>           0.00000000  0.00000000
                          -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000483
                          -0.00000116  0.59949390

   8    1  |1 0>          -0.00000023 -0.00000000
                           0.70731953  0.00000144

   9    1  |1 0>           0.00000000 -0.00000000
                           0.00000001 -0.00000013

   1    1  |1 1>-         -0.00000000  0.00000000
                           0.00000162  0.00020519

   2    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000
                           0.00034590 -0.00000096

   4    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>-          0.00000023  0.00000000
                          -0.70685805 -0.00000144

   8    1  |1 1>-         -0.00000000  0.00000629
                          -0.00000161  0.77986197

   9    1  |1 1>-         -0.00000000  0.00000000
                           0.00000578 -0.00000134

   1    1  |0 0>          -0.00000000  0.00000122
                           0.00000000 -0.00000000

   2    1  |0 0>           0.00000195 -0.00564574
                           0.00000000  0.00000005

   3    1  |0 0>           0.00000874  0.00426446
                           0.00000000 -0.00000003

   4    1  |0 0>           0.00000763  0.00002722
                           0.00000000 -0.00000000

   5    1  |0 0>           0.00005091 -0.00001122
                           0.00000000  0.00000000

   6    1  |0 0>           0.00707487 -0.00000366
                           0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000055
                          -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.59430642     -0.00000377       -0.83      0.00000000        0.00      0.0000
     2   1    -30.51880321      0.07549944    16570.21      0.07550321    16571.04      2.0545
     3   1    -30.51880320      0.07549944    16570.21      0.07550321    16571.04      2.0545
     4   1    -30.51880320      0.07549944    16570.21      0.07550321    16571.04      2.0545
     5   1    -30.51849649      0.07580616    16637.53      0.07580993    16638.36      2.0629
     6   1    -30.51849648      0.07580616    16637.53      0.07580993    16638.36      2.0629
     7   1    -30.51849648      0.07580616    16637.53      0.07580993    16638.36      2.0629
     8   1    -30.51849648      0.07580617    16637.53      0.07580994    16638.36      2.0629
     9   1    -30.51849648      0.07580617    16637.53      0.07580994    16638.36      2.0629
    10   1    -30.51797265      0.07632999    16752.50      0.07633377    16753.33      2.0771
    11   1    -30.51797265      0.07632999    16752.50      0.07633377    16753.33      2.0771
    12   1    -30.51797265      0.07632999    16752.50      0.07633377    16753.33      2.0771
    13   1    -30.51797265      0.07633000    16752.50      0.07633377    16753.33      2.0771
    14   1    -30.51797264      0.07633000    16752.50      0.07633378    16753.33      2.0771
    15   1    -30.51797264      0.07633000    16752.50      0.07633378    16753.33      2.0771
    16   1    -30.51797264      0.07633000    16752.50      0.07633378    16753.33      2.0771
    17   1    -30.51087897      0.08342368    18309.38      0.08342745    18310.21      2.2702
    18   1    -30.51087829      0.08342435    18309.53      0.08342813    18310.36      2.2702
    19   1    -30.51087829      0.08342436    18309.53      0.08342813    18310.36      2.2702
    20   1    -30.51087485      0.08342779    18310.28      0.08343157    18311.11      2.2703
    21   1    -30.51087483      0.08342781    18310.29      0.08343159    18311.12      2.2703
    22   1    -30.46344646      0.13085618    28719.61      0.13085996    28720.44      3.5609
    23   1    -30.46344646      0.13085618    28719.61      0.13085996    28720.44      3.5609
    24   1    -30.46344646      0.13085618    28719.61      0.13085996    28720.44      3.5609
    25   1    -30.45643238      0.13787026    30259.02      0.13787403    30259.85      3.7517
    26   1    -30.43104687      0.16325577    35830.50      0.16325955    35831.33      4.4425
    27   1    -30.43021748      0.16408516    36012.53      0.16408894    36013.36      4.4651
    28   1    -30.43021696      0.16408569    36012.65      0.16408946    36013.47      4.4651
    29   1    -30.43021615      0.16408649    36012.82      0.16409027    36013.65      4.4651
    30   1    -30.42854796      0.16575468    36378.95      0.16575845    36379.78      4.5105
    31   1    -30.42854783      0.16575481    36378.98      0.16575859    36379.80      4.5105
    32   1    -30.42854726      0.16575538    36379.10      0.16575915    36379.93      4.5105
    33   1    -30.42854652      0.16575613    36379.26      0.16575990    36380.09      4.5106
    34   1    -30.42854644      0.16575620    36379.28      0.16575997    36380.11      4.5106

 E0 =    -30.59430264 is the energy of the lowest zeroth-order state
 E1 =    -30.59430642 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.54769568 -0.00524738 -0.00000016 -0.00067744  0.00120490 -0.00054590  0.06738254
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00002096 -0.00060841 -0.00147693  0.44945380 -0.67056072
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000014 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00524743 -0.54770166  0.00000037  0.00005172  0.40757689  0.00056879 -0.00070243
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000008  0.00000019  0.28297563  0.72898415 -0.00009137  0.00293038  0.00148348
                               -0.00000000  0.00000000 -0.00000000  0.00002907 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00000017  0.00000038  0.56561061 -0.36469324  0.00004577 -0.00148264 -0.00071731
                                0.00000000  0.00000000 -0.00000000  0.00005811  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000191  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00000231 -0.00047168  0.00000000 -0.00000011 -0.00088716 -0.00000123  0.00000084
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00047165  0.00000231  0.00000000 -0.00000147 -0.00000153 -0.00000119  0.00014667
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00277604  0.00000000 -0.00000000  0.00000000 -0.00000444 -0.00000048  0.00085453  0.00055723
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00005627  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000016  0.00000037  0.54771912  0.40753480 -0.00005611  0.00545492  0.00104903

 11  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00266662  0.54771932 -0.00000037  0.00004858  0.40755765  0.00056623 -0.00039007

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000001  0.00000025  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00256549 -0.00527971 -0.00106992  0.81362263  0.04873143

 13  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.63132144  0.00307890  0.00000018 -0.00008089 -0.00009340 -0.00006549  0.00804370

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.03774730  0.00017077  0.00000001  0.00135289  0.00139523  0.00109510 -0.13452515

 15  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000190 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00277597 -0.00000000 -0.00000000 -0.00000000  0.00000155 -0.00000137  0.00006187 -0.00100834

 17  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00047164 -0.00088712  0.00000011 -0.00000358 -0.00000179

 18  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000231  0.00047168 -0.00000000 -0.00000011 -0.00088720 -0.00000123  0.00000084

 19  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000001  0.00000011  0.00000000
                               -0.00000001  0.00000000 -0.00000000 -0.00256542 -0.00084603  0.00040653  0.36417679  0.71929040

 20  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.54771627 -0.00268762 -0.00000016  0.00067767  0.00073123  0.00054859 -0.06738450

 21  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00005627  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000016 -0.00000037 -0.54772217  0.40758019 -0.00005301 -0.00006169 -0.00254823

 22  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000
                                0.00000000 -0.00169327  0.34835704 -0.00000023  0.00008102  0.68033591  0.00094514 -0.00064414

 23  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00259882 -0.52785329  0.00000035  0.00005346  0.44896596  0.00062371 -0.00042436

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000191 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00047168  0.00088715 -0.00000011  0.00000358  0.00000179

 26  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00277596 -0.00000000 -0.00000000 -0.00000000 -0.00000289 -0.00000185  0.00091633 -0.00045111

 27  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00047169  0.00000231  0.00000000  0.00000147  0.00000153  0.00000119 -0.00014668

 28  1     1    1  |0 0>        0.99998844  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000085  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00020400  0.00001684  0.05738453 -0.00665178
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000

 30  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00005659  0.00005148  0.00677232  0.05655369
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00000014  0.00000000  0.00000000 -0.00003447 -0.00023350 -0.00013245  0.00981884
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000044  0.00000000  0.00040895 -0.05780319  0.00002475  0.00000907
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000030  0.05780322  0.00040892  0.00020909  0.00003771
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     7    1  |0 0>       -0.00000205  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.40196408  0.00000015 -0.00284517  0.00000009  0.38507565  0.03738379  0.61938507  0.00000013
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.11302207 -0.57732755  0.00000042 -0.00517412  0.00000023  0.00000003 -0.00000001  0.00147480
                                0.00000000  0.00017451 -0.00000000  0.00000883 -0.00000000  0.00000000  0.00000000 -0.00000081

  3  1     3    1  |1 1>+       0.00110308  0.00000027  0.43197095  0.00000171  0.00183386 -0.58770401  0.03631576  0.00000001
                                0.00000000  0.00000000  0.00000022 -0.00000004  0.00000000 -0.00000003  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00098415  0.00571351  0.00000221 -0.56304431  0.00000020 -0.00000001 -0.00000008  0.26393200
                                0.00000000 -0.00000174  0.00000005  0.00096195  0.00000000 -0.00000000  0.00000000 -0.00014465

  5  1     5    1  |1 1>+       0.00049653  0.00049254 -0.00000059  0.14988000 -0.00000006  0.00000000 -0.00000014  0.72399568
                               -0.00000000 -0.00000015 -0.00000001 -0.00025607 -0.00000000 -0.00000000  0.00000000 -0.00039680

  6  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000170 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00087492 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00009225 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000119  0.00000006  0.00109117  0.00000000 -0.00000000  0.00000000 -0.00019409
                               -0.00051856 -0.00389920 -0.00000251  0.63867714 -0.00000023  0.00000001  0.00000011 -0.35412676

 11  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000035  0.00000006 -0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00076011  0.00000049  0.67809672  0.00000267  0.00733218  0.27052873 -0.01673674 -0.00000001

 12  1     3    1  |1 0>       -0.00000000  0.00017451 -0.00000000  0.00000370 -0.00000000  0.00000000  0.00000000  0.00000011
                                0.00706974  0.57734403 -0.00000041  0.00217364 -0.00000023 -0.00000003  0.00000001  0.00020849

 13  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.04798209  0.00000031 -0.00800303  0.00000025  0.77258941  0.00195341  0.04567688  0.00000002

 14  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.80246805 -0.00000001 -0.00073576 -0.00000004 -0.01363898  0.03787988  0.57678035  0.00000012

 15  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00016912  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000120  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001

 18  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000170 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000

 19  1     1    1  |1 1>-      -0.00000000 -0.00017451  0.00000000 -0.00000479  0.00000000 -0.00000000 -0.00000000  0.00000216
                                0.12008506 -0.57733731  0.00000041 -0.00281119  0.00000023  0.00000003 -0.00000001  0.00393201

 20  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.40196110  0.00000020 -0.00440441  0.00000020  0.50451849 -0.03525435 -0.52680774 -0.00000010

 21  1     3    1  |1 1>-      -0.00000000 -0.00000015  0.00000004  0.00085862  0.00000000  0.00000000 -0.00000000  0.00029040
                               -0.00111415 -0.00046091 -0.00000198  0.50255974 -0.00000019  0.00000001 -0.00000008  0.52985508

 22  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000030 -0.00000005  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00131062 -0.00000042 -0.58065626 -0.00000228 -0.00633627 -0.27700107  0.01733468  0.00000001

 23  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000006 -0.00000001  0.00000000 -0.00000003  0.00000000  0.00000000
                               -0.00086919 -0.00000005 -0.12779731 -0.00000052 -0.00037116  0.70753762 -0.04662989 -0.00000001

 24  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000120 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00007687 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00087500  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

 28  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00127980 -0.00000045  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     3    1  |0 0>        0.00973120 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.05696974 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000006 -0.00000089 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     5    1  |0 0>        0.00023817 -0.00000000  0.00000018 -0.00000000 -0.00000000 -0.00000091  0.00000006 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00003060 -0.00000000 -0.00000000 -0.00000017  0.00000000  0.00000001 -0.00000000 -0.00000080
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.02360311  0.00016532  0.00002481 -0.00003464  0.00010477  0.00000001 -0.00000277  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00020478 -0.00006337 -0.00003645 -0.03028490  0.03618396  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00016524  0.02360062 -0.00016538 -0.00004288  0.00000431  0.00000278  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00004663 -0.00029551 -0.04221434 -0.00001123 -0.00005305 -0.00000000  0.00000000 -0.00000144
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00002332  0.00014784  0.02111927  0.00000674  0.00002520  0.00000000 -0.00000000 -0.00000287
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000005  0.00000008  0.99998763
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00145293

  7  1     7    1  |1 1>+       0.00001149  0.00495968 -0.00003473 -0.00000905  0.00000101 -0.00336314  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00495955 -0.00001151 -0.00000536  0.00000724 -0.00002202 -0.00000000 -0.00336300  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000992  0.00000720 -0.00000585  0.00439229  0.00367615 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002592 -0.00016560 -0.02360087 -0.00022437 -0.00006730  0.00000000 -0.00000000 -0.00000279

 11  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00005583  0.02360119 -0.00016527 -0.00004304  0.00000480 -0.00000279  0.00000000 -0.00000000

 12  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00003168 -0.00008228  0.00013428 -0.04647865 -0.00813518  0.00000000  0.00000000  0.00000001

 13  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00281769  0.00000600  0.00000306 -0.00000411  0.00001250  0.00000000  0.00000321 -0.00000000

 14  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.04712318 -0.00010996 -0.00005106  0.00006875 -0.00020913  0.00000000  0.00000019 -0.00000000

 15  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000024  0.99998869 -0.00000008

 16  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002647  0.00000306  0.00000671  0.00098744 -0.00564155  0.00000000 -0.00000000  0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000489
                               -0.00000548 -0.00003472 -0.00495971 -0.00000140 -0.00000614 -0.00000000  0.00000000  0.00336299

 18  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001149  0.00495996 -0.00003473 -0.00000905  0.00000101  0.00336327 -0.00000000  0.00000000

 19  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00017334 -0.00002046 -0.00005079 -0.01619423 -0.04431903  0.00000000  0.00000000  0.00000001

 20  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02360362 -0.00005321 -0.00002559  0.00003443 -0.00010475  0.00000000 -0.00000277  0.00000000

 21  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002526 -0.00016512 -0.02360121  0.00006919  0.00017839 -0.00000000  0.00000000  0.00000278

 22  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00009075  0.03939685 -0.00027587 -0.00007185  0.00000802 -0.00000177  0.00000000  0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00005964  0.02599913 -0.00018206 -0.00004742  0.00000530  0.00000268  0.00000000  0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.99998869 -0.00000024  0.00000005

 25  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000489
                                0.00000548  0.00003472  0.00495970  0.00000140  0.00000614 -0.00000000  0.00000000  0.00336313

 26  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001655  0.00001026  0.00000086  0.00537950 -0.00196561 -0.00000000 -0.00000000  0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00495982  0.00001151  0.00000536 -0.00000724  0.00002202 -0.00000000 -0.00336327  0.00000000

 28  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>       -0.00000017  0.00000311 -0.00000318  0.99829340 -0.00461707 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.00000125  0.00000211 -0.00000243  0.00461707  0.99829341 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>        0.99830251  0.00000126 -0.00003352  0.00000018  0.00000124  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>       -0.00000126  0.99830279  0.00019607 -0.00000312 -0.00000210  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00003352 -0.00019607  0.99830280  0.00000319  0.00000242  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 34  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000171  0.00036563  0.00000000 -0.00000000  0.00000162 -0.00034553
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000001  0.00015254 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.00036552 -0.00000171  0.00000000  0.00000000  0.00034564  0.00000162
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00018896 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000126  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00037715 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000251  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00475599  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00003164 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.70677027 -0.00000000 -0.00000000  0.00000070  0.70741704 -0.00000079
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.70653941  0.00000000  0.00000099  0.00000079  0.70764762
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00133915  0.57765261  0.00000000  0.00000000 -0.00000000  0.79616914 -0.00000075 -0.00000145
                                0.00000001 -0.00414681  0.00000000  0.00000000  0.00000000 -0.00000977 -0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000243 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00036546 -0.00000238 -0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00036519 -0.00000001 -0.00000000  0.00000000  0.00034598  0.00000002

 12  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000033 -0.00000000 -0.00000000  0.00000171 -0.00050794  0.00000000  0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00042108 -0.00000000 -0.00000000 -0.00000001 -0.00004159

 14  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00002576 -0.00000000  0.00000000 -0.00000001  0.00069035

 15  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00475619  0.00000000  0.00000000  0.00000000  0.00000357

 16  1     7    1  |1 0>       -0.00000001  0.00414419  0.00000000 -0.00000000  0.00000000 -0.00000680 -0.00000000  0.00000000
                               -0.00133914  0.57728770 -0.00000000 -0.00000000  0.00000000 -0.55433334  0.00000066 -0.00000036

 17  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00470238 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.70685221  0.00000008 -0.00000001  0.00000578

 18  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.70742683  0.00000000  0.00000000  0.00000070  0.70676047 -0.00000079

 19  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000
                               -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000171 -0.00066048  0.00000000  0.00000000

 20  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00036506  0.00000000  0.00000000  0.00000002  0.00034607

 21  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000243  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00036520  0.00000309 -0.00000000  0.00000000

 22  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00023209 -0.00000001 -0.00000000  0.00000000  0.00057736 -0.00000001

 23  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00035230 -0.00000001  0.00000000  0.00000000  0.00038079 -0.00000001

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00475629 -0.00000000 -0.00000000  0.00000000  0.00000211 -0.00000000

 25  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00470545  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70731368 -0.00000008  0.00000001 -0.00000578

 26  1     8    1  |1 1>-       0.00000001 -0.00414242 -0.00000000  0.00000000  0.00000000  0.00000297  0.00000000 -0.00000000
                                0.00133908 -0.57704103 -0.00000000  0.00000000  0.00000000  0.24244269 -0.00000009 -0.00000181

 27  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.70765740  0.00000000 -0.00000098 -0.00000079 -0.70652960

 28  1     1    1  |0 0>        0.00001321 -0.00480801 -0.00000000 -0.00000000  0.00000000  0.00000163 -0.00000000 -0.00000000
                               -0.00000000  0.00003452  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00000000 -0.00000309  0.00000001  0.00000001 -0.00000000 -0.00426475  0.00001289 -0.00001045
                               -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000

 30  1     3    1  |0 0>        0.00000000 -0.00000100 -0.00000000 -0.00000003 -0.00000000 -0.00564584 -0.00000139  0.00003138
                               -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000578 -0.00000000 -0.00001874 -0.00001641 -0.00707486
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>        0.00000000 -0.00000001 -0.00000348 -0.00000001 -0.00000002 -0.00000656 -0.00707503  0.00001644
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000003 -0.00000001 -0.00000230  0.00000821  0.00005093  0.00000747
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000

 34  1     7    1  |0 0>        0.99999731  0.00231940  0.00000000  0.00000000 -0.00000000 -0.00000079  0.00000000 -0.00000000
                               -0.00000668 -0.00001665 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000001 -0.00067456
                               -0.00000000  0.00000001

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00061845  0.00000002
                                0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00030954  0.00000002
                               -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000146 -0.00000000
                               -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000001 -0.00000013
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000579  0.00000134
                               -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000046  0.17992110
                                0.00000000 -0.00000145

 10  1     1    1  |1 0>       -0.00000000 -0.00000000
                                0.00034569 -0.00000220

 11  1     2    1  |1 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000
                               -0.00000162 -0.00046936

 13  1     4    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000
                               -0.00000001  0.00000000

 15  1     6    1  |1 0>        0.00000000  0.00000000
                               -0.00000000  0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000483
                               -0.00000116  0.59949390

 17  1     8    1  |1 0>       -0.00000023 -0.00000000
                                0.70731953  0.00000144

 18  1     9    1  |1 0>        0.00000000 -0.00000000
                                0.00000001 -0.00000013

 19  1     1    1  |1 1>-      -0.00000000  0.00000000
                                0.00000162  0.00020519

 20  1     2    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 21  1     3    1  |1 1>-      -0.00000000 -0.00000000
                                0.00034590 -0.00000096

 22  1     4    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 23  1     5    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000 -0.00000000

 25  1     7    1  |1 1>-       0.00000023  0.00000000
                               -0.70685805 -0.00000144

 26  1     8    1  |1 1>-      -0.00000000  0.00000629
                               -0.00000161  0.77986197

 27  1     9    1  |1 1>-      -0.00000000  0.00000000
                                0.00000578 -0.00000134

 28  1     1    1  |0 0>       -0.00000000  0.00000122
                                0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.00000195 -0.00564574
                                0.00000000  0.00000005

 30  1     3    1  |0 0>        0.00000874  0.00426446
                                0.00000000 -0.00000003

 31  1     4    1  |0 0>        0.00000763  0.00002722
                                0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.00005091 -0.00001122
                                0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00707487 -0.00000366
                                0.00000000  0.00000000

 34  1     7    1  |0 0>        0.00000000 -0.00000055
                               -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.20%   44.97%
  3  1     3    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%   16.61%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    8.01%   53.14%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%   31.99%   13.30%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%   30.00%   16.61%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%   16.61%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.20%    0.24%
 13  1     4    1  |1 0>          0.00%   39.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 14  1     5    1  |1 0>          0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    1.81%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   13.26%   51.74%
 20  1     2    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%   16.61%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%   12.14%    0.00%    0.00%   46.29%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%   27.86%    0.00%    0.00%   20.16%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.32%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.33%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.33%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        16.16%    0.00%    0.00%    0.00%   14.83%    0.14%   38.36%    0.00%
  2  1     2    1  |1 1>+         1.28%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   18.66%    0.00%    0.00%   34.54%    0.13%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%   31.70%    0.00%    0.00%    0.00%    6.97%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    2.25%    0.00%    0.00%    0.00%   52.42%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%   40.79%    0.00%    0.00%    0.00%   12.54%
 11  1     2    1  |1 0>          0.00%    0.00%   45.98%    0.00%    0.01%    7.32%    0.03%    0.00%
 12  1     3    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.23%    0.00%    0.01%    0.00%   59.69%    0.00%    0.21%    0.00%
 14  1     5    1  |1 0>         64.40%    0.00%    0.00%    0.00%    0.02%    0.14%   33.27%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         1.44%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-        16.16%    0.00%    0.00%    0.00%   25.45%    0.12%   27.75%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%   25.26%    0.00%    0.00%    0.00%   28.07%
 22  1     4    1  |1 1>-         0.00%    0.00%   33.72%    0.00%    0.00%    7.67%    0.03%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    1.63%    0.00%    0.00%   50.06%    0.22%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.09%    0.13%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.22%    0.01%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.20%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%   99.66%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.66%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>         99.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%   99.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%   99.66%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.04%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%   49.92%    0.00%    0.00%    0.00%   50.08%
  9  1     9    1  |1 1>+         0.00%   33.37%    0.00%    0.00%    0.00%   63.39%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%   30.73%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%   50.05%    0.00%    0.00%    0.00%   49.95%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.03%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%   33.30%    0.00%    0.00%    0.00%    5.88%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%   50.08%    0.00%    0.00%    0.00%   49.92%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    3.24%
 10  1     1    1  |1 0>          0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   35.94%
 17  1     8    1  |1 0>         50.03%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%
 25  1     7    1  |1 1>-        49.96%    0.00%
 26  1     8    1  |1 1>-         0.00%   60.82%
 27  1     9    1  |1 1>-         0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%
 33  1     6    1  |0 0>          0.01%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     5936.08       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   1069363.72 795191.16  70908.87 203183.42     79.28      0.02      0.73
 REAL TIME  *   1075503.42 SEC
 DISK USED  *         5.83 GB (local),       93.33 GB (total)
 SF USED    *        43.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.428546444493

              CI              CI           MULTI         RHF-SCF
    -30.44479208    -30.41457084    -30.28735424    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
