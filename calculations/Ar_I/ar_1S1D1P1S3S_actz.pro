
 Working directory              : /wrk/irikura/molpro.xMbIxaIvq3/
 Global scratch directory       : /wrk/irikura/molpro.xMbIxaIvq3/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xMbIxaIvq3/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Ar SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ar};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,nelec=18,sym=1,spin=0;state,10;
     wf,nelec=18,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ar SO-                                                                        
  64 bit mpp version                                                                     DATE: 28-Feb-24          TIME: 13:28:44  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AR     18.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   18
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     11.010 MB (compressed) written to integral file ( 21.7%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.13 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.199E-02 0.513E-02 0.590E-01 0.129E+00 0.129E+00 0.129E+00 0.129E+00 0.129E+00
         2 0.126E-01 0.126E-01 0.126E-01 0.298E-01 0.298E-01 0.298E-01 0.113E+00 0.113E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.87      1.52
 REAL TIME  *         2.47 SEC
 DISK USED  *        29.05 MB (local),      995.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   2   6

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -527.33573427    -527.33573427     0.00D+00     0.15D+00     0     0       0.01      0.01    start
   2     -527.39152988      -0.05579561     0.13D-01     0.18D-01     1     0       0.00      0.01    diag2
   3     -527.39350046      -0.00197058     0.48D-02     0.32D-02     2     0       0.00      0.01    diag2
   4     -527.39356016      -0.00005970     0.50D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -527.39356303      -0.00000288     0.74D-04     0.21D-03     4     0       0.01      0.02    diag2
   6     -527.39356306      -0.00000003     0.64D-05     0.11D-04     5     0       0.00      0.02    diag2
   7     -527.39356306      -0.00000000     0.58D-06     0.19D-05     6     0       0.00      0.02    diag2
   8     -527.39356306      -0.00000000     0.33D-07     0.69D-07     0     0       0.01      0.03    fixocc

 Final alpha occupancy:   3   6
 Final beta  occupancy:   2   6

 !RHF STATE 1.1 Energy               -527.393563061037
  RHF One-electron energy            -720.546925087995
  RHF Two-electron energy             193.153362026958
  RHF Kinetic energy                  538.353517247656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.979641715275

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.67597     1  1  s    0.99848
    2.1     2.00000   -12.97214     1  2  s    0.99904
    3.1     1.00000    -1.82902     1  3  s    1.12555
    1.2     2.00000   -10.15460     1  1  px   1.00070
    2.2     2.00000   -10.15460     1  1  py   1.00054
    3.2     2.00000   -10.15460     1  1  pz   1.00054
    4.2     2.00000    -1.03123     1  2  pz   1.08893
    5.2     2.00000    -1.03123     1  2  px   1.08894
    6.2     2.00000    -1.03123     1  2  py   1.08893


 HOMO      6.2    -1.031226 =     -28.0611eV
 LUMO      4.1    -0.113559 =      -3.0901eV
 LUMO-HOMO         0.917668 =      24.9710eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.91      0.03      1.52
 REAL TIME  *         2.51 SEC
 DISK USED  *        29.60 MB (local),     1012.41 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 3 5 2 1   2 4 6 3 5 6 4 3 5 2   1 2 6 4 5 3 1 2 4 6   3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.177D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.182D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.239D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.239D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.120D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.951D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 9 7 6 810 4 5 3   1 210 8 6 9 7 4 510   8 5 4 7 9 6 3 1 2 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
                                          0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    27011
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0   -528.18437739    -528.18921937   -0.00484197    0.10699797 0.00037551 0.00051937  0.82E+00      6.09
   2   10   41    0   -528.18924811    -528.18925295   -0.00000484    0.00131994 0.00000022 0.00000047  0.31E-01     15.53
   3    5   18    0   -528.18925295    -528.18925295    0.00000000    0.00000076 0.00000000 0.00000002  0.17E-05     19.43

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.66E-08)
                       Final energy:   -528.18925295
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -528.609940615714
 Nuclear energy                                  0.00000000
 Kinetic energy                                540.54736719
 One electron energy                          -731.85620115
 Two electron energy                           203.24626054
 Virial ratio                                    1.97791604
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -528.151174191952
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.15802062
 One electron energy                          -725.30932967
 Two electron energy                           197.15815547
 Virial ratio                                    1.97958512
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -528.151174191951
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.15802062
 One electron energy                          -725.30932967
 Two electron energy                           197.15815547
 Virial ratio                                    1.97958512
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -528.151174191951
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.15802062
 One electron energy                          -725.30932967
 Two electron energy                           197.15815547
 Virial ratio                                    1.97958512
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -528.151174191847
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.15802062
 One electron energy                          -725.30932967
 Two electron energy                           197.15815547
 Virial ratio                                    1.97958512
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -528.151174191847
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.15802062
 One electron energy                          -725.30932967
 Two electron energy                           197.15815547
 Virial ratio                                    1.97958512
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -528.146555903512
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.14628977
 One electron energy                          -725.29077725
 Two electron energy                           197.14422135
 Virial ratio                                    1.97959787
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -528.146555903512
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.14628977
 One electron energy                          -725.29077725
 Two electron energy                           197.14422135
 Virial ratio                                    1.97959787
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -528.146555903512
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.14628977
 One electron energy                          -725.29077725
 Two electron energy                           197.14422135
 Virial ratio                                    1.97959787
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -528.108510685422
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.71946815
 One electron energy                          -726.45886881
 Two electron energy                           198.35035812
 Virial ratio                                    1.97848705
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -528.167792435065
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.10141932
 One electron energy                          -725.21330523
 Two electron energy                           197.04551279
 Virial ratio                                    1.97971879
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.996088251161
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.001898635139
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.002013111895
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.995340640366
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.004659361439
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.002203950272
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.998976922993
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.998819126735
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.003772253076
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.901675816603
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.094551950472
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.120489521559
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.879510458290
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.998949874894
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.996418278475
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.004631846632
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000139495763
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.096425548258
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.903434937633
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.884169838075
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.115830180271
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.998846174834
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.004604798533
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.996549026633
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 6 5 4 3 2   2 6 4 5 3 6 4 3 5 2   1 2 6 5 3 4 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 2 1 1   2 3 9 7 6 810 5 4 1   2 310 8 6 9 7 5 410   8 5 4 7 9 6 1 3 2 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.37113     1  1  s    0.99850
    2.1     2.00000   -12.65556     1  2  s    1.00156
    3.1     1.99847    -1.52200     1  3  s    1.07993
    4.1     0.00193     1.00048     1  3  s   -0.75920    1  4  s   -1.47009    1  5  s    1.71533    1  6  s    0.47560
    1.2     2.00000    -9.84774     1  1  px   0.99991
    2.2     2.00000    -9.84774     1  1  py   0.99991
    3.2     2.00000    -9.84774     1  1  pz   0.99991
    4.2     1.69653    -0.73252     1  2  px   1.08598
    5.2     1.69653    -0.73252     1  2  py   1.08598
    6.2     1.69653    -0.73252     1  2  pz   1.08598
    7.2     0.30334     0.07256     1  4  pz  -0.26007    1  7  pz   1.18219
    8.2     0.30334     0.07256     1  4  py  -0.26007    1  7  py   1.18219
    9.2     0.30334     0.07256     1  4  px  -0.26007    1  7  px   1.18219
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.97874770     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 20 a2200b      0.07932805      0.00001455     -0.00000642      0.00006742     -0.01969042      0.57659332      0.00000000
 20 b2200a     -0.07932805     -0.00001455      0.00000642     -0.00006742      0.01969042     -0.57659332     -0.00000000
 20 22ab00      0.07932805     -0.00001201     -0.00000307     -0.00006858      0.50918967     -0.27124425      0.00000000
 20 22ba00     -0.07932805      0.00001201      0.00000307      0.00006858     -0.50918967      0.27124425     -0.00000000
 20 22b0a0     -0.00000000     -0.49930970     -0.01256937     -0.01294275     -0.00000627      0.00001376     -0.49915430
 20 22a0b0      0.00000000      0.49930970      0.01256937      0.01294275      0.00000627     -0.00001376      0.49915430
 20 2a2b00      0.00000000      0.49930970      0.01256937      0.01294275      0.00000627     -0.00001376     -0.49915430
 20 2b2a00     -0.00000000     -0.49930970     -0.01256937     -0.01294275     -0.00000627      0.00001376      0.49915430
 20 a220b0      0.00000000     -0.00340700      0.41766917     -0.27418339     -0.00001516      0.00003628     -0.01697399
 20 b220a0     -0.00000000      0.00340700     -0.41766917      0.27418339      0.00001516     -0.00003628      0.01697399
 20 2b200a      0.00000000      0.00340700     -0.41766917      0.27418339      0.00001516     -0.00003628     -0.01697399
 20 2a200b     -0.00000000     -0.00340700      0.41766917     -0.27418339     -0.00001516      0.00003628      0.01697399
 20 a22b00      0.00000000     -0.01771711      0.27391632      0.41748249      0.00003394     -0.00004416      0.01619327
 20 b22a00     -0.00000000      0.01771711     -0.27391632     -0.41748249     -0.00003394      0.00004416     -0.01619327
 20 22b00a     -0.00000000      0.01771711     -0.27391632     -0.41748249     -0.00003394      0.00004416      0.01619327
 20 22a00b      0.00000000     -0.01771711      0.27391632      0.41748249      0.00003394     -0.00004416     -0.01619327
 20 2a20b0      0.07932805     -0.00000254      0.00000950      0.00000116     -0.48949925     -0.30534907     -0.00000000
 20 2b20a0     -0.07932805      0.00000254     -0.00000950     -0.00000116      0.48949925      0.30534907      0.00000000
 
 Energy:     -528.60994062   -528.15117419   -528.15117419   -528.15117419   -528.15117419   -528.15117419   -528.14655590

 State:              8               9              10
 20 222000      0.00000000     -0.00000000     -0.19271823
 20 a2200b     -0.00000000      0.00000000      0.39976764
 20 b2200a      0.00000000     -0.00000000     -0.39976764
 20 22ab00      0.00000000      0.00000000      0.39976764
 20 22ba00     -0.00000000     -0.00000000     -0.39976764
 20 22b0a0      0.01598336     -0.01717179      0.00000000
 20 22a0b0     -0.01598336      0.01717179     -0.00000000
 20 2a2b00      0.01598336     -0.01717179     -0.00000000
 20 2b2a00     -0.01598336      0.01717179      0.00000000
 20 a220b0     -0.49855342      0.02935518     -0.00000000
 20 b220a0      0.49855342     -0.02935518      0.00000000
 20 2b200a     -0.49855342      0.02935518      0.00000000
 20 2a200b      0.49855342     -0.02935518     -0.00000000
 20 a22b00     -0.02990610     -0.49854664     -0.00000000
 20 b22a00      0.02990610      0.49854664      0.00000000
 20 22b00a     -0.02990610     -0.49854664     -0.00000000
 20 22a00b      0.02990610      0.49854664      0.00000000
 20 2a20b0     -0.00000000     -0.00000000      0.39976764
 20 2b20a0      0.00000000      0.00000000     -0.39976764
 
 Energy:     -528.14655590   -528.14655590   -528.10851069
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 20 22aa00      0.57683201
 20 2a20a0      0.57683201
 20 a2200a      0.57683201
 
 Energy:     -528.16779244
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.10      5.18      0.03      1.52
 REAL TIME  *        23.45 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *         9.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -528.6099406  -0.0
    -528.1511742   6.0
    -528.1511742   6.0
    -528.1511742   6.0
    -528.1511742   6.0
    -528.1511742   6.0
    -528.1465559   2.0
    -528.1465559   2.0
    -528.1465559   2.0
    -528.1085107  -0.0
    -528.1677924  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 18
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    13011 conf    32004 CSFs
 N-1 el internal:    15604 conf    64512 CSFs
 N-2 el internal:    10878 conf    69696 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.60994062
     2      -528.15117419
     3      -528.15117419
     4      -528.15117419
     5      -528.15117419
     6      -528.15117419
     7      -528.14655590
     8      -528.14655590
     9      -528.14655590
    10      -528.10851069

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1599D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3693D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3225D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3224D-06

 Number of blocks in overlap matrix:   239   Smallest eigenvalue:  0.16D-06
 Number of N-2 electron functions:    1398
 Number of N-1 electron functions:   64512

 Number of internal configurations:                16212
 Number of singly external configurations:       2000768
 Number of doubly external configurations:       1347540
 Total number of contracted configurations:      3364520
 Total number of uncontracted configurations:   68768804

 Diagonal Coupling coefficients finished.               Storage:16808103 words, CPU-Time:     15.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  939513 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.60994062    -0.00000000    -0.47493663  0.32D-01  0.29D-01    18.70
    1     2     2     1.00000000     0.00000000  -528.15117419     0.00000000    -0.46102263  0.22D-01  0.32D-01    18.70
    1     3     3     1.00000000     0.00000000  -528.15117419    -0.00000000    -0.46076498  0.22D-01  0.31D-01    18.70
    1     4     4     1.00000000     0.00000000  -528.15117419    -0.00000000    -0.46079778  0.22D-01  0.31D-01    18.70
    1     5     5     1.00000000     0.00000000  -528.15117419     0.00000000    -0.46887831  0.22D-01  0.36D-01    18.70
    1     6     6     1.00000000     0.00000000  -528.15117419     0.00000000    -0.47002642  0.22D-01  0.37D-01    18.70
    1     7     7     1.00000000     0.00000000  -528.14655590    -0.00000000    -0.46394550  0.22D-01  0.33D-01    18.70
    1     8     8     1.00000000     0.00000000  -528.14655590    -0.00000000    -0.46383624  0.22D-01  0.33D-01    18.70
    1     9     9     1.00000000     0.00000000  -528.14655590    -0.00000000    -0.46386934  0.22D-01  0.33D-01    18.70
    1    10    10     1.00000000     0.00000000  -528.10851069    -0.00000000    -0.49335215  0.50D-01  0.36D-01    18.70
    2     1     1     1.05817387    -0.46696199  -529.07690260    -0.46696199    -0.02057692  0.35D-02  0.20D-02    76.53
    2     2     2     1.05349680    -0.44892151  -528.60009570    -0.44892151    -0.01086724  0.10D-02  0.13D-02    76.53
    2     3     3     1.05317264    -0.44870210  -528.59987630    -0.44870210    -0.01102346  0.10D-02  0.14D-02    76.53
    2     4     4     1.05048349    -0.44864172  -528.59981591    -0.44864172    -0.01106529  0.11D-02  0.13D-02    76.53
    2     5     5     1.05046163    -0.44863944  -528.59981363    -0.44863944    -0.01106746  0.11D-02  0.13D-02    76.53
    2     6     6     1.05051669    -0.44861623  -528.59979042    -0.44861623    -0.01107494  0.11D-02  0.13D-02    76.53
    2     7     7     1.05166185    -0.44977377  -528.59632968    -0.44977377    -0.01082426  0.99D-03  0.13D-02    76.53
    2     8     8     1.05164037    -0.44976808  -528.59632399    -0.44976808    -0.01082780  0.99D-03  0.13D-02    76.53
    2     9     9     1.05167737    -0.44973100  -528.59628690    -0.44973100    -0.01083903  0.99D-03  0.13D-02    76.53
    2    10    10     1.07066574    -0.45488857  -528.56339925    -0.45488857    -0.01853784  0.57D-02  0.15D-02    76.53
    3     1     1     1.06122104    -0.49118091  -529.10112153    -0.02421892    -0.00223737  0.14D-03  0.22D-03   134.44
    3     2     2     1.05536850    -0.46119085  -528.61236504    -0.01226934    -0.00120646  0.94D-04  0.14D-03   134.44
    3     3     3     1.05536614    -0.46118971  -528.61236390    -0.01248760    -0.00120739  0.94D-04  0.14D-03   134.44
    3     4     4     1.05535204    -0.46117610  -528.61235029    -0.01253438    -0.00121256  0.94D-04  0.14D-03   134.44
    3     5     5     1.05538128    -0.46105014  -528.61222433    -0.01241071    -0.00124810  0.96D-04  0.16D-03   134.44
    3     6     6     1.05529671    -0.46102209  -528.61219628    -0.01240586    -0.00126215  0.95D-04  0.16D-03   134.44
    3     7     7     1.05605750    -0.46209094  -528.60864684    -0.01231717    -0.00119004  0.88D-04  0.14D-03   134.44
    3     8     8     1.05605367    -0.46208941  -528.60864532    -0.01232133    -0.00119106  0.88D-04  0.14D-03   134.44
    3     9     9     1.05603622    -0.46207290  -528.60862881    -0.01234190    -0.00119907  0.88D-04  0.15D-03   134.44
    3    10    10     1.06129127    -0.47333265  -528.58184334    -0.01844409    -0.00150168  0.11D-03  0.19D-03   134.44
    4     1     1     1.06856864    -0.49386904  -529.10380965    -0.00268813    -0.00015749  0.65D-05  0.19D-04   192.30
    4     2     2     1.06107630    -0.46276882  -528.61394301    -0.00157798    -0.00012872  0.52D-05  0.18D-04   192.30
    4     3     3     1.06120320    -0.46276572  -528.61393991    -0.00157601    -0.00012053  0.48D-05  0.17D-04   192.30
    4     4     4     1.06120372    -0.46276549  -528.61393968    -0.00158939    -0.00012072  0.48D-05  0.17D-04   192.30
    4     5     5     1.06120266    -0.46276278  -528.61393697    -0.00171264    -0.00012202  0.49D-05  0.17D-04   192.30
    4     6     6     1.06110922    -0.46276194  -528.61393613    -0.00173985    -0.00013105  0.53D-05  0.18D-04   192.30
    4     7     7     1.06184933    -0.46367569  -528.61023159    -0.00158475    -0.00011792  0.45D-05  0.17D-04   192.30
    4     8     8     1.06185085    -0.46367561  -528.61023151    -0.00158619    -0.00011798  0.45D-05  0.17D-04   192.30
    4     9     9     1.06184592    -0.46367242  -528.61022832    -0.00159952    -0.00011952  0.45D-05  0.17D-04   192.30
    4    10    10     1.06601098    -0.47536219  -528.58387288    -0.00202954    -0.00015905  0.93D-05  0.23D-04   192.30
    5     1     1     1.06937088    -0.49408061  -529.10402123    -0.00021158    -0.00002124  0.12D-05  0.24D-05   250.18
    5     2     2     1.06129375    -0.46293881  -528.61411300    -0.00016999    -0.00001694  0.12D-05  0.20D-05   250.18
    5     3     3     1.06128469    -0.46293735  -528.61411154    -0.00017163    -0.00001784  0.13D-05  0.21D-05   250.18
    5     4     4     1.06125407    -0.46293657  -528.61411077    -0.00017108    -0.00001874  0.13D-05  0.21D-05   250.18
    5     5     5     1.06125416    -0.46293651  -528.61411070    -0.00017373    -0.00001879  0.14D-05  0.21D-05   250.18
    5     6     6     1.06125287    -0.46293588  -528.61411007    -0.00017394    -0.00001910  0.14D-05  0.21D-05   250.18
    5     7     7     1.06188500    -0.46384107  -528.61039698    -0.00016538    -0.00001633  0.84D-06  0.20D-05   250.18
    5     8     8     1.06188539    -0.46384107  -528.61039697    -0.00016546    -0.00001635  0.85D-06  0.20D-05   250.18
    5     9     9     1.06188249    -0.46384025  -528.61039616    -0.00016783    -0.00001673  0.86D-06  0.20D-05   250.18
    5    10    10     1.06685284    -0.47558134  -528.58409202    -0.00021915    -0.00002590  0.28D-05  0.30D-05   250.18
    6     1     1     1.06929187    -0.49410795  -529.10404856    -0.00002733    -0.00000301  0.16D-06  0.30D-06   307.78
    6     2     2     1.06115628    -0.46296024  -528.61413443    -0.00002143    -0.00000323  0.22D-06  0.39D-06   307.78
    6     3     3     1.06114629    -0.46296013  -528.61413432    -0.00002278    -0.00000336  0.25D-06  0.37D-06   307.78
    6     4     4     1.06114601    -0.46296011  -528.61413430    -0.00002354    -0.00000337  0.25D-06  0.37D-06   307.78
    6     5     5     1.06114272    -0.46295992  -528.61413412    -0.00002342    -0.00000346  0.26D-06  0.39D-06   307.78
    6     6     6     1.06114674    -0.46295985  -528.61413404    -0.00002398    -0.00000342  0.22D-06  0.42D-06   307.78
    6     7     7     1.06178723    -0.46386197  -528.61041787    -0.00002090    -0.00000293  0.21D-06  0.35D-06   307.78
    6     8     8     1.06178732    -0.46386197  -528.61041787    -0.00002090    -0.00000293  0.21D-06  0.35D-06   307.78
    6     9     9     1.06178319    -0.46386173  -528.61041763    -0.00002147    -0.00000305  0.22D-06  0.36D-06   307.78
    6    10    10     1.06651990    -0.47561681  -528.58412750    -0.00003547    -0.00000620  0.63D-06  0.67D-06   307.78
    7     1     1     1.06940865    -0.49411168  -529.10405229    -0.00000373    -0.00000046  0.23D-07  0.49D-07   365.84
    7     2     2     1.06131822    -0.46296468  -528.61413887    -0.00000444    -0.00000078  0.53D-07  0.86D-07   365.84
    7     3     3     1.06132362    -0.46296461  -528.61413880    -0.00000448    -0.00000079  0.54D-07  0.86D-07   365.84
    7     4     4     1.06132346    -0.46296460  -528.61413880    -0.00000449    -0.00000080  0.55D-07  0.86D-07   365.84
    7     5     5     1.06131962    -0.46296458  -528.61413877    -0.00000465    -0.00000084  0.57D-07  0.91D-07   365.84
    7     6     6     1.06132328    -0.46296455  -528.61413874    -0.00000470    -0.00000083  0.57D-07  0.89D-07   365.84
    7     7     7     1.06196755    -0.46386606  -528.61042196    -0.00000408    -0.00000073  0.46D-07  0.81D-07   365.84
    7     8     8     1.06196743    -0.46386605  -528.61042196    -0.00000408    -0.00000073  0.46D-07  0.81D-07   365.84
    7     9     9     1.06196738    -0.46386599  -528.61042190    -0.00000426    -0.00000077  0.48D-07  0.85D-07   365.84
    7    10    10     1.06668082    -0.47562576  -528.58413644    -0.00000895    -0.00000210  0.15D-06  0.24D-06   365.84
    8     1     1     1.06942527    -0.49411226  -529.10405287    -0.00000058    -0.00000009  0.36D-08  0.10D-07   423.34
    8     2     2     1.06134788    -0.46296569  -528.61413988    -0.00000101    -0.00000017  0.12D-07  0.20D-07   423.34
    8     3     3     1.06134590    -0.46296567  -528.61413987    -0.00000107    -0.00000020  0.15D-07  0.21D-07   423.34
    8     4     4     1.06134591    -0.46296567  -528.61413987    -0.00000107    -0.00000020  0.15D-07  0.21D-07   423.34
    8     5     5     1.06134756    -0.46296566  -528.61413986    -0.00000109    -0.00000019  0.13D-07  0.22D-07   423.34
    8     6     6     1.06134584    -0.46296566  -528.61413985    -0.00000111    -0.00000020  0.15D-07  0.22D-07   423.34
    8     7     7     1.06198365    -0.46386703  -528.61042294    -0.00000098    -0.00000017  0.89D-08  0.20D-07   423.34
    8     8     8     1.06198367    -0.46386703  -528.61042293    -0.00000098    -0.00000017  0.89D-08  0.20D-07   423.34
    8     9     9     1.06198345    -0.46386702  -528.61042292    -0.00000103    -0.00000018  0.93D-08  0.21D-07   423.34
    8    10    10     1.06671780    -0.47562847  -528.58413915    -0.00000271    -0.00000056  0.43D-07  0.61D-07   423.34
    9     1     1     1.06942500    -0.49411237  -529.10405299    -0.00000011    -0.00000002  0.91D-09  0.18D-08   481.41
    9     2     2     1.06133599    -0.46296591  -528.61414011    -0.00000023    -0.00000005  0.35D-08  0.53D-08   481.41
    9     3     3     1.06133598    -0.46296591  -528.61414010    -0.00000024    -0.00000005  0.35D-08  0.53D-08   481.41
    9     4     4     1.06133550    -0.46296591  -528.61414010    -0.00000024    -0.00000005  0.37D-08  0.55D-08   481.41
    9     5     5     1.06133739    -0.46296590  -528.61414009    -0.00000024    -0.00000004  0.31D-08  0.51D-08   481.41
    9     6     6     1.06133644    -0.46296589  -528.61414009    -0.00000023    -0.00000005  0.33D-08  0.55D-08   481.41
    9     7     7     1.06197132    -0.46386724  -528.61042315    -0.00000021    -0.00000004  0.29D-08  0.53D-08   481.41
    9     8     8     1.06197194    -0.46386724  -528.61042315    -0.00000021    -0.00000004  0.27D-08  0.50D-08   481.41
    9     9     9     1.06197195    -0.46386724  -528.61042315    -0.00000022    -0.00000004  0.27D-08  0.50D-08   481.41
    9    10    10     1.06669482    -0.47562915  -528.58413984    -0.00000068    -0.00000015  0.15D-07  0.17D-07   481.41
   10     1     1     1.06942602    -0.49411238  -529.10405299    -0.00000000    -0.00000001  0.64D-09  0.15D-08   517.92
   10     2     2     1.06133599    -0.46296591  -528.61414011    -0.00000000    -0.00000005  0.36D-08  0.53D-08   517.92
   10     3     3     1.06133598    -0.46296591  -528.61414010    -0.00000000    -0.00000005  0.35D-08  0.53D-08   517.92
   10     4     4     1.06133550    -0.46296591  -528.61414010    -0.00000000    -0.00000005  0.37D-08  0.55D-08   517.92
   10     5     5     1.06133742    -0.46296590  -528.61414009    -0.00000000    -0.00000004  0.31D-08  0.51D-08   517.92
   10     6     6     1.06133643    -0.46296589  -528.61414009    -0.00000000    -0.00000005  0.33D-08  0.55D-08   517.92
   10     7     7     1.06197132    -0.46386724  -528.61042315    -0.00000000    -0.00000004  0.29D-08  0.53D-08   517.92
   10     8     8     1.06197194    -0.46386724  -528.61042315    -0.00000000    -0.00000004  0.27D-08  0.50D-08   517.92
   10     9     9     1.06197195    -0.46386724  -528.61042315    -0.00000000    -0.00000004  0.27D-08  0.50D-08   517.92
   10    10    10     1.06670851    -0.47562943  -528.58414011    -0.00000028    -0.00000002  0.13D-08  0.21D-08   517.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.9%
 S   1.4%   6.8%
 P   1.0%  54.5%  22.3%

 Initialization:   3.0%
 Other:            9.1%

 Total CPU:      517.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222222000           0.9538431   0.0000000   0.0000000  -0.0000000  -0.0000002   0.0000001  -0.0000000  -0.0000000  -0.0000000
                       -0.1390601
 22022222/\00           0.0847175  -0.0002047  -0.0000000   0.0000000  -0.1561747   0.7763499   0.0000000   0.0000000   0.0000000
                        0.5521831
 220222/2200\           0.0847175  -0.0000803   0.0000000  -0.0000000   0.7504258  -0.2529235  -0.0000000  -0.0000000  -0.0000000
                        0.5521829
 220222/220\0          -0.0000000   0.6858090   0.0000000   0.0000000   0.0001441   0.0002098  -0.0000000  -0.6857369  -0.0010857
                       -0.0000000
 220222/22\00           0.0000000  -0.0000000   0.6858077  -0.0012847  -0.0000000   0.0000000  -0.0021211   0.0010857  -0.6857338
                        0.0000000
 22022222/0\0          -0.0000000  -0.0000000   0.0012847   0.6858071  -0.0000000  -0.0000000  -0.6857359  -0.0000033   0.0021211
                        0.0000000
 2202222/200\           0.0000000   0.6858069   0.0000000   0.0000000   0.0001441   0.0002098   0.0000000   0.6857396   0.0010857
                        0.0000000
 2202222/2\00           0.0000000  -0.0000000   0.0012847   0.6858068  -0.0000000  -0.0000000   0.6857362   0.0000033  -0.0021211
                       -0.0000000
 22022222/00\          -0.0000000  -0.0000000   0.6858059  -0.0012847  -0.0000000   0.0000000   0.0021211  -0.0010857   0.6857362
                       -0.0000000
 2202222/20\0           0.0847175   0.0002850  -0.0000000  -0.0000000  -0.5942513  -0.5234265  -0.0000000   0.0000000  -0.0000000
                        0.5521830

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220222\22000  10.2     0.0517534  -0.0000009  -0.0000000   0.0000000   0.0081559  -0.0027489  -0.0000000  -0.0000000  -0.0000000
                       -0.0414414
 2202222\2000  11.2     0.0517527   0.0000031   0.0000000   0.0000000  -0.0064577  -0.0056878  -0.0000000   0.0000000  -0.0000000
                       -0.0414409
 22022222\000  12.2     0.0517527  -0.0000022  -0.0000000  -0.0000000  -0.0016972   0.0084363  -0.0000000  -0.0000000  -0.0000000
                       -0.0414406

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966075   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.041697
 2           0.000000   -0.000000    0.970627   -0.000000    0.000347   -0.000099    0.000000   -0.000001    0.000000    0.000000
 3           0.000000    0.001818    0.000000    0.970626    0.000000    0.000000   -0.000000   -0.000000   -0.000001   -0.000000
 4          -0.000000    0.970626    0.000000   -0.001818   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000204   -0.000000   -0.309909    0.919822    0.000000    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000297    0.000000   -0.919822   -0.309909   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970344    0.000000    0.003001    0.000000
 8          -0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.000000    0.000005    0.970348   -0.001536   -0.000000
 9           0.000000   -0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.003001    0.001536    0.970343    0.000000
 10          0.048749   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.966909

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966968   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.003503
 2          -0.000000    0.970627   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.970627    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.970627    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.970627    0.000000   -0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.970627    0.000000    0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.970349   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.970349    0.000000   -0.000000
 9          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970349   -0.000000
 10          0.003503    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.968131


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96607487 (fixed)   0.96698854 (relaxed)   0.96696795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005778   -0.00041029   -0.44737956
 Singles      0.01567672   -0.05693357   -0.06047952
 Pairs        0.05375332    0.04125963    0.01374670
 Total        1.06948781   -0.01608423   -0.49411238
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.60884520
 Nuclear energy                         0.00000000
 Kinetic energy                       540.21142143
 One electron energy                 -730.73804066
 Two electron energy                  201.63398767
 Virial quotient                       -0.97943885
 Correlation energy                    -0.49520779
 !MRCI STATE 1.1 Energy              -529.104052992251

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -529.13846390 (Davidson, fixed reference)
 Cluster corrected energies          -529.13844135 (Davidson, relaxed reference)
 Cluster corrected energies          -529.13846390 (Davidson, rotated reference)

 Cluster corrected energies          -529.13579935 (Pople, fixed reference)
 Cluster corrected energies          -529.13577742 (Pople, relaxed reference)
 Cluster corrected energies          -529.13579935 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97062716 (fixed)   0.97065871 (relaxed)   0.97062723 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009709   -0.00054686   -0.37668141
 Singles      0.01636399   -0.06318651   -0.06667302
 Pairs        0.04497796    0.00000000   -0.01961149
 Total        1.06143904   -0.06373337   -0.46296591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15117419
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62180432
 One electron energy                 -725.24684817
 Two electron energy                  196.63270806
 Virial quotient                       -0.97960115
 Correlation energy                    -0.46296591
 !MRCI STATE 2.1 Energy              -528.614140105588

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64258429 (Davidson, fixed reference)
 Cluster corrected energies          -528.64255241 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64258429 (Davidson, rotated reference)

 Cluster corrected energies          -528.64021919 (Pople, fixed reference)
 Cluster corrected energies          -528.64018858 (Pople, relaxed reference)
 Cluster corrected energies          -528.64021919 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97062553 (fixed)   0.97065872 (relaxed)   0.97062724 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009709   -0.00054686   -0.37668144
 Singles      0.01636395   -0.06318648   -0.06667301
 Pairs        0.04497799    0.00000000   -0.01961146
 Total        1.06143903   -0.06373334   -0.46296591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15117419
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62180483
 One electron energy                 -725.24684859
 Two electron energy                  196.63270848
 Virial quotient                       -0.97960115
 Correlation energy                    -0.46296591
 !MRCI STATE 3.1 Energy              -528.614140104579

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64258428 (Davidson, fixed reference)
 Cluster corrected energies          -528.64255240 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64258428 (Davidson, rotated reference)

 Cluster corrected energies          -528.64021918 (Pople, fixed reference)
 Cluster corrected energies          -528.64018857 (Pople, relaxed reference)
 Cluster corrected energies          -528.64021918 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97062575 (fixed)   0.97065894 (relaxed)   0.97062746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009709   -0.00054686   -0.37668180
 Singles      0.01636374   -0.06318628   -0.06667290
 Pairs        0.04497772    0.00000000   -0.01961121
 Total        1.06143855   -0.06373313   -0.46296591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15117419
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62180606
 One electron energy                 -725.24685247
 Two electron energy                  196.63271237
 Virial quotient                       -0.97960115
 Correlation energy                    -0.46296591
 !MRCI STATE 4.1 Energy              -528.614140102279

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64258406 (Davidson, fixed reference)
 Cluster corrected energies          -528.64255218 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64258406 (Davidson, rotated reference)

 Cluster corrected energies          -528.64021897 (Pople, fixed reference)
 Cluster corrected energies          -528.64018836 (Pople, relaxed reference)
 Cluster corrected energies          -528.64021897 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.91982189 (fixed)   0.97065806 (relaxed)   0.97062657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009711   -0.00054686   -0.37667973
 Singles      0.01636490   -0.06318775   -0.06667342
 Pairs        0.04497848    0.00000001   -0.01961275
 Total        1.06144049   -0.06373460   -0.46296590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15117419
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62180542
 One electron energy                 -725.24688301
 Two electron energy                  196.63274292
 Virial quotient                       -0.97960115
 Correlation energy                    -0.46296590
 !MRCI STATE 5.1 Energy              -528.614140091117

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64258494 (Davidson, fixed reference)
 Cluster corrected energies          -528.64255306 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64258494 (Davidson, rotated reference)

 Cluster corrected energies          -528.64021981 (Pople, fixed reference)
 Cluster corrected energies          -528.64018920 (Pople, relaxed reference)
 Cluster corrected energies          -528.64021981 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91982241 (fixed)   0.97065852 (relaxed)   0.97062703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009709   -0.00054686   -0.37668022
 Singles      0.01636466   -0.06318767   -0.06667328
 Pairs        0.04497772    0.00000008   -0.01961239
 Total        1.06143948   -0.06373445   -0.46296589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15117419
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62179861
 One electron energy                 -725.24687744
 Two electron energy                  196.63273736
 Virial quotient                       -0.97960116
 Correlation energy                    -0.46296589
 !MRCI STATE 6.1 Energy              -528.614140085153

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64258447 (Davidson, fixed reference)
 Cluster corrected energies          -528.64255259 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64258447 (Davidson, rotated reference)

 Cluster corrected energies          -528.64021936 (Pople, fixed reference)
 Cluster corrected energies          -528.64018875 (Pople, relaxed reference)
 Cluster corrected energies          -528.64021936 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97034447 (fixed)   0.97036884 (relaxed)   0.97034911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007182   -0.00053209   -0.37595541
 Singles      0.01719073   -0.06461803   -0.06835834
 Pairs        0.04478504   -0.00000000   -0.01955350
 Total        1.06204759   -0.06515011   -0.46386724
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14655590
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62119348
 One electron energy                 -725.24144957
 Two electron energy                  196.63102643
 Virial quotient                       -0.97959537
 Correlation energy                    -0.46386724
 !MRCI STATE 7.1 Energy              -528.610423147573

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63920499 (Davidson, fixed reference)
 Cluster corrected energies          -528.63918495 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63920499 (Davidson, rotated reference)

 Cluster corrected energies          -528.63682420 (Pople, fixed reference)
 Cluster corrected energies          -528.63680494 (Pople, relaxed reference)
 Cluster corrected energies          -528.63682420 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97034761 (fixed)   0.97036856 (relaxed)   0.97034882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007182   -0.00053209   -0.37595488
 Singles      0.01719105   -0.06461835   -0.06835850
 Pairs        0.04478534    0.00000000   -0.01955386
 Total        1.06204821   -0.06515044   -0.46386724
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14655590
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62118946
 One electron energy                 -725.24144526
 Two electron energy                  196.63102212
 Virial quotient                       -0.97959538
 Correlation energy                    -0.46386724
 !MRCI STATE 8.1 Energy              -528.610423147081

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63920528 (Davidson, fixed reference)
 Cluster corrected energies          -528.63918524 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63920528 (Davidson, rotated reference)

 Cluster corrected energies          -528.63682448 (Pople, fixed reference)
 Cluster corrected energies          -528.63680522 (Pople, relaxed reference)
 Cluster corrected energies          -528.63682448 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97034296 (fixed)   0.97036855 (relaxed)   0.97034882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007182   -0.00053209   -0.37595487
 Singles      0.01719105   -0.06461836   -0.06835850
 Pairs        0.04478536   -0.00000000   -0.01955387
 Total        1.06204823   -0.06515045   -0.46386724
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14655590
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62118925
 One electron energy                 -725.24144589
 Two electron energy                  196.63102274
 Virial quotient                       -0.97959538
 Correlation energy                    -0.46386724
 !MRCI STATE 9.1 Energy              -528.610423145740

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63920529 (Davidson, fixed reference)
 Cluster corrected energies          -528.63918525 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63920529 (Davidson, rotated reference)

 Cluster corrected energies          -528.63682448 (Pople, fixed reference)
 Cluster corrected energies          -528.63680522 (Pople, relaxed reference)
 Cluster corrected energies          -528.63682448 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96690883 (fixed)   0.96821264 (relaxed)   0.96813060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019884   -0.00060543   -0.00107039
 Singles      0.02130122   -0.07004768   -0.07515252
 Pairs        0.04542055   -0.40453430   -0.39940652
 Total        1.06692061   -0.47518740   -0.47562943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.10960610
 Nuclear energy                         0.00000000
 Kinetic energy                       539.77630437
 One electron energy                 -725.58950454
 Two electron energy                  197.00536443
 Virial quotient                       -0.97926518
 Correlation energy                    -0.47453402
 !MRCI STATE 10.1 Energy             -528.584140113565

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.61589622 (Davidson, fixed reference)
 Cluster corrected energies          -528.61581042 (Davidson, relaxed reference)
 Cluster corrected energies          -528.61589622 (Davidson, rotated reference)

 Cluster corrected energies          -528.61337916 (Pople, fixed reference)
 Cluster corrected energies          -528.61329608 (Pople, relaxed reference)
 Cluster corrected energies          -528.61337916 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      262.25       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       694.01    686.88      5.18      0.03      1.52
 REAL TIME  *       756.78 SEC
 DISK USED  *       294.15 MB (local),        8.74 GB (total)
 SF USED    *         2.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -529.13846390  AU                              
 SETTING HLSDIAG(2)     =      -528.64258429  AU                              
 SETTING HLSDIAG(3)     =      -528.64258428  AU                              
 SETTING HLSDIAG(4)     =      -528.64258406  AU                              
 SETTING HLSDIAG(5)     =      -528.64258494  AU                              
 SETTING HLSDIAG(6)     =      -528.64258447  AU                              
 SETTING HLSDIAG(7)     =      -528.63920499  AU                              
 SETTING HLSDIAG(8)     =      -528.63920528  AU                              
 SETTING HLSDIAG(9)     =      -528.63920529  AU                              
 SETTING HLSDIAG(10)    =      -528.61589622  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 18
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    12717 conf    50904 CSFs
 N-1 el internal:    15304 conf   114396 CSFs
 N-2 el internal:    10058 conf   130322 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.16779244

 Number of blocks in overlap matrix:    62   Smallest eigenvalue:  0.33D-03
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:  114396

 Number of internal configurations:                25428
 Number of singly external configurations:       3547092
 Number of doubly external configurations:        138900
 Total number of contracted configurations:      3711420
 Total number of uncontracted configurations:  128083055

 Diagonal Coupling coefficients finished.               Storage: 7814775 words, CPU-Time:      0.43 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1922796 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.16779244     0.00000000    -0.48904340  0.25D-01  0.48D-01     0.98
    2     1     1     1.06174641    -0.45160511  -528.61939755    -0.45160511    -0.00859966  0.11D-02  0.11D-02     6.42
    3     1     1     1.05776161    -0.46032106  -528.62811350    -0.00871595    -0.00046154  0.26D-04  0.81D-04    11.85
    4     1     1     1.06015323    -0.46089066  -528.62868310    -0.00056960    -0.00003404  0.11D-05  0.59D-05    17.26
    5     1     1     1.06054284    -0.46092569  -528.62871813    -0.00003503    -0.00000247  0.72D-07  0.48D-06    22.64
    6     1     1     1.06053349    -0.46092819  -528.62872062    -0.00000250    -0.00000018  0.57D-08  0.33D-07    28.04
    7     1     1     1.06051780    -0.46092837  -528.62872081    -0.00000018    -0.00000001  0.42D-09  0.27D-08    33.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.7%
 S   3.2%  18.2%
 P   1.3%  65.0%   6.1%

 Initialization:   1.9%
 Other:            1.6%

 Total CPU:       33.4 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/2200/           0.5600293
 2202222/20/0           0.5600291
 22022222//00           0.5600290


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97097675 (fixed)   0.97103272 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014824   -0.00055006   -0.00058301
 Singles      0.01695195   -0.06353409   -0.06726714
 Pairs        0.04357482   -0.39684422   -0.39307823
 Total        1.06067501   -0.46092838   -0.46092837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16779244
 Nuclear energy                         0.00000000
 Kinetic energy                       539.59405868
 One electron energy                 -725.22807579
 Two electron energy                  196.59935499
 Virial quotient                       -0.97967854
 Correlation energy                    -0.46092837
 !MRCI STATE 1.1 Energy              -528.628720807032

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.65668764 (Davidson, fixed reference)
 Cluster corrected energies          -528.65663128 (Davidson, relaxed reference)

 Cluster corrected energies          -528.65376602 (Pople, fixed reference)
 Cluster corrected energies          -528.65371333 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      291.03       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       728.36     34.33    686.88      5.18      0.03      1.52
 REAL TIME  *       792.43 SEC
 DISK USED  *       322.92 MB (local),        9.58 GB (total)
 SF USED    *         2.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -528.65663128  AU                              


         HLSDIAG
    -529.1384639
    -528.6425843
    -528.6425843
    -528.6425841
    -528.6425849
    -528.6425845
    -528.6392050
    -528.6392053
    -528.6392053
    -528.6158962
    -528.6566313
                                                  

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       0.72 sec

 CPU time:      0.72 sec, REAL time:      0.78 sec


 SORTLS1 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.08 sec
 SORTLS2 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      291.03       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       730.04      1.64     34.33    686.88      5.18      0.03      1.52
 REAL TIME  *       794.36 SEC
 DISK USED  *       322.96 MB (local),        9.85 GB (total)
 SF USED    *         2.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -529.104053   -528.614140   -528.614140   -528.614140   -528.614140   -528.614140   -528.610423   -528.610423
                      -528.610423   -528.584140
 Replaced energies:   -529.138464   -528.642584   -528.642584   -528.642584   -528.642585   -528.642584   -528.639205   -528.639205
                      -528.639205   -528.615896

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -528.628721
 Replaced energies:   -528.656631



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -529.13846390

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  108833.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  108833.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  108833.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  108832.85       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  108832.96       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  109574.66       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109574.60       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109574.60       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  114690.35
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00      -0.00       0.80      -0.41     259.92      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00     259.92       0.00      -0.80      -0.00

   12   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     367.59       0.58      -0.00

   13   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00      -0.00       0.80      -0.41     259.92      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -259.92      -0.00       0.80       0.00


   Nr   State  S   Sz       11         12         13

    1   1.1  0.0  0.0       0.00       0.00       0.00
                           -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00
                           -0.00       0.00       0.00

    3   3.1  0.0  0.0      -0.00       0.00      -0.00
                            0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00
                            0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00
                           -0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00       0.00      -0.00
                            0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.80       0.00       0.80
                         -259.92      -0.00     259.92

    8   8.1  0.0  0.0      -0.41       0.00      -0.41
                           -0.00    -367.59       0.00

    9   9.1  0.0  0.0     259.92       0.00     259.92
                            0.80      -0.58      -0.80

   10  10.1  0.0  0.0      -0.00       0.00      -0.00
                            0.00       0.00      -0.00

   11   1.1  1.0  1.0  105750.04      -0.00       0.00
                            0.00       0.00       0.00

   12   1.1  1.0  0.0      -0.00  105750.04      -0.00
                           -0.00       0.00       0.00

   13   1.1  1.0 -1.0       0.00      -0.00  105750.04
                           -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 13)

    The diagonal matrixelements are shifted by   -529.13846390 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  108832.995       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000  108832.996       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000  108833.046       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  108832.852       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  108832.956       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000  109574.664       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  109574.601
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       1.137      -0.582
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000     367.587

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000     367.586       0.002

  State Sym Spin    / Nr.        9          10          11          12          13

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       1.137       0.000       0.000
                                0.000       0.000       0.000      -0.000    -367.586

    8    1  |0 0>               0.000       0.000      -0.582       0.000       0.000
                                0.000       0.000       0.000    -367.587      -0.002

    9    1  |0 0>          109574.600       0.000     367.576       0.000       0.000
                                0.000       0.000       0.000      -0.582       1.137

   10    1  |0 0>               0.000  114690.348      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            367.576      -0.000  105750.035      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000  105750.035       0.000
                                0.582      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000  105750.035
                               -1.137      -0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -529.13846390     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -528.65679080     0.48167310   105715.03      0.48167310   105715.03     13.1070
    3  -528.65679080     0.48167310   105715.03      0.48167310   105715.03     13.1070
    4  -528.65679079     0.48167311   105715.03      0.48167311   105715.03     13.1070
    5  -528.64258494     0.49587896   108832.85      0.49587896   108832.85     13.4936
    6  -528.64258447     0.49587943   108832.96      0.49587943   108832.96     13.4936
    7  -528.64258429     0.49587961   108833.00      0.49587961   108833.00     13.4936
    8  -528.64258428     0.49587962   108833.00      0.49587962   108833.00     13.4936
    9  -528.64258406     0.49587984   108833.05      0.49587984   108833.05     13.4936
   10  -528.63904578     0.49941812   109609.61      0.49941812   109609.61     13.5899
   11  -528.63904577     0.49941813   109609.61      0.49941813   109609.61     13.5899
   12  -528.63904548     0.49941842   109609.67      0.49941842   109609.67     13.5899
   13  -528.61589622     0.52256768   114690.35      0.52256768   114690.35     14.2198

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000  1.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000001  1.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  1.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000017 -0.09480885 -0.00043406 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.09481121 -0.00000052  0.00015111 -0.00000000  0.00000000  0.00000004  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00015112  0.00043407 -0.09480789 -0.00000000  0.00000000  0.00000000  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00001057 -0.00147847  0.99549438  0.00000000 -0.00000000  0.00000000 -0.00000006
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.99549526 -0.00000172 -0.00001057  0.00000000 -0.00000000 -0.00000008 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000174  0.99549430  0.00147847  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           1.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000001  0.00008487 -0.00000008  0.99549540 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00090986  0.99549484  0.00000015 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.99549506  0.00090986 -0.00008487 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  1.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.09480855 -0.00006345  0.00028517 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00006345  0.09481131  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00028519  0.00000019  0.09480942 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -529.13846390      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -528.65679080      0.48167310   105715.03      0.48167310   105715.03     13.1070
     3   1   -528.65679080      0.48167310   105715.03      0.48167310   105715.03     13.1070
     4   1   -528.65679079      0.48167311   105715.03      0.48167311   105715.03     13.1070
     5   1   -528.64258494      0.49587896   108832.85      0.49587896   108832.85     13.4936
     6   1   -528.64258447      0.49587943   108832.96      0.49587943   108832.96     13.4936
     7   1   -528.64258429      0.49587961   108833.00      0.49587961   108833.00     13.4936
     8   1   -528.64258428      0.49587962   108833.00      0.49587962   108833.00     13.4936
     9   1   -528.64258406      0.49587984   108833.05      0.49587984   108833.05     13.4936
    10   1   -528.63904578      0.49941812   109609.61      0.49941812   109609.61     13.5899
    11   1   -528.63904577      0.49941813   109609.61      0.49941813   109609.61     13.5899
    12   1   -528.63904548      0.49941842   109609.67      0.49941842   109609.67     13.5899
    13   1   -528.61589622      0.52256768   114690.35      0.52256768   114690.35     14.2198

 E0 =   -529.13846390 is the energy of the lowest zeroth-order state
 E1 =   -529.13846390 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000  1.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000001  1.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  1.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000017 -0.09480885 -0.00043406 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.09481121 -0.00000052  0.00015111 -0.00000000  0.00000000  0.00000004  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00015112  0.00043407 -0.09480789 -0.00000000  0.00000000  0.00000000  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.00001057 -0.00147847  0.99549438  0.00000000 -0.00000000  0.00000000 -0.00000006
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.99549526 -0.00000172 -0.00001057  0.00000000 -0.00000000 -0.00000008 -0.00000000

 13  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000174  0.99549430  0.00147847  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        1.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000001  0.00008487 -0.00000008  0.99549540 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00090986  0.99549484  0.00000015 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.99549506  0.00090986 -0.00008487 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  1.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000  0.09480855 -0.00006345  0.00028517 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00006345  0.09481131  0.00000000 -0.00000000

 13  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00028519  0.00000019  0.09480942 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.90%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.90%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%   99.10%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%   99.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%   99.10%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   99.10%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   99.10%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   99.10%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
 11  1     1    1  |1 1>+         0.00%    0.90%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.90%    0.00%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.90%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      291.03       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2764.66   2034.62      1.64     34.33    686.88      5.18      0.03      1.52
 REAL TIME  *      2858.61 SEC
 DISK USED  *       322.96 MB (local),        9.85 GB (total)
 SF USED    *         2.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -528.615896221336

              CI              CI           MULTI         RHF-SCF
   -528.62872081   -528.58414011   -528.16779244   -527.39356306
 **********************************************************************************************************************************
 Molpro calculation terminated
