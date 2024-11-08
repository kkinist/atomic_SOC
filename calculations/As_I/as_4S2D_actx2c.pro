
 Working directory              : /wrk/irikura/molpro.Fy9PoOBd0s/
 Global scratch directory       : /wrk/irikura/molpro.Fy9PoOBd0s/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Fy9PoOBd0s/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,As SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={As};
 
 basis=AWCVTZ-X2C
 
 NQ=1
 ND=5
 PAR=2                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,9
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
                                                                                 !hlsdiag = energd4
 hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5302.2,5102.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Aug-24          TIME: 15:02:30  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVTZ-X2C
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         5.00000000                                  
 SETTING PAR            =         2.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AS     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry AS     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry AS     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry AS     F aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry AS     G aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  AS     33.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   33
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.146E-03 0.247E-02 0.167E-01 0.484E-01 0.484E-01 0.484E-01 0.484E-01 0.484E-01
         2 0.447E-02 0.447E-02 0.447E-02 0.149E-01 0.149E-01 0.149E-01 0.763E-01 0.763E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.991 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107443. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1292756. AND WROTE     6503791. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.06      0.84
 REAL TIME  *         1.88 SEC
 DISK USED  *        29.14 MB (local),      405.66 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2224.38175179   -2224.38175179     0.00D+00     0.78D+00     0     0       0.01      0.01    start
   2    -2224.40228402      -0.02053223     0.11D-01     0.10D-01     1     0       0.00      0.01    diag2
   3    -2224.40990067      -0.00761666     0.81D-02     0.37D-02     2     0       0.01      0.02    diag2
   4    -2224.41033565      -0.00043498     0.39D-03     0.16D-02     3     0       0.00      0.02    diag2
   5    -2224.41038266      -0.00004701     0.13D-03     0.72D-03     4     0       0.01      0.03    diag2
   6    -2224.41038369      -0.00000103     0.34D-04     0.15D-03     5     0       0.00      0.03    diag2
   7    -2224.41038370      -0.00000001     0.30D-05     0.25D-04     6     0       0.01      0.04    diag2
   8    -2224.41038370      -0.00000000     0.30D-06     0.16D-05     7     0       0.00      0.04    fixocc
   9    -2224.41038370      -0.00000000     0.42D-07     0.34D-06     0     0       0.01      0.05    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2224.410383702488
  RHF One-electron energy           -3106.754123827272
  RHF Two-electron energy             882.343740124784
  RHF Kinetic energy                 2335.186086609618
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.952562365996

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.66531     1  1  s    0.74693    1  2  s   -1.34799    1  3  s   -2.08356    1  4  s   -0.49084
                                    1  5  s    0.56090    1  6  s    0.26784    1  7  s    1.58002    1  8  s    0.52357
    2.1     2.00000   -55.83697     1  2  s    2.34334    1  3  s    2.08647    1  4  s    0.47499    1  5  s   -0.54608
                                    1  6  s   -0.25877    1  7  s   -1.63568    1  8  s   -0.45799
    3.1     2.00000    -7.97181     1  2  s   -0.71191    1  4  s   -0.27823    1  5  s    0.31755    1  7  s    0.93026
    4.1     2.00000    -2.12349     1  1  d2-  0.77386    1  1  d2+  0.63942
    5.1     2.00000    -2.12349     1  1  d2- -0.63942    1  1  d2+  0.77386
    6.1     2.00000    -2.12349     1  1  d1+  0.54340    1  1  d1-  0.84406
    7.1     2.00000    -2.12349     1  1  d1+  0.84405    1  1  d1- -0.54340
    8.1     2.00000    -2.12349     1  1  d0   1.00385
    9.1     2.00000    -0.68236     1  3  s    0.34642    1  4  s    1.14453    1  7  s   -0.26131
    1.2     2.00000   -50.02718     1  1  px   1.02055
    2.2     2.00000   -50.02718     1  1  py   1.02052
    3.2     2.00000   -50.02718     1  1  pz   1.02052
    4.2     2.00000    -5.87418     1  2  pz   0.92927
    5.2     2.00000    -5.87418     1  2  py   0.92927
    6.2     2.00000    -5.87418     1  2  px   0.92927
    7.2     1.00000    -0.37024     1  3  py   1.01545
    8.2     1.00000    -0.37024     1  3  px   1.01545
    9.2     1.00000    -0.37024     1  3  pz   1.01545


 HOMO      9.2    -0.370237 =     -10.0747eV
 LUMO     10.1     0.062399 =       1.6980eV
 LUMO-HOMO         0.432636 =      11.7726eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      18       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700   
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER   

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.19      0.12      0.84
 REAL TIME  *         2.87 SEC
 DISK USED  *        30.06 MB (local),      416.59 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             5
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.453D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.454D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.392D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 1   4 6 5 3 2 1 4 6 3 5   2 3 5 4 6 2 1 2 3 5   6 4 812 91114151310
                                        7 1 2 5 3 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.792D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.870D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.422D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.422D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.268D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.268D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 2 1 3 1   2 3 2 1 3 5 4 7 9 6  10 8 2 1 3 6 4 5 9 7   810 810 5 4 6 9 7 2
                                        1 3 6 9 7 810 4 5 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    825
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -2224.35425873   -2224.35485748   -0.00059874    0.01983134 0.00000374 0.00000000  0.37E-01      0.29
   2    3    6    0  -2224.35485968   -2224.35485970   -0.00000002    0.00011440 0.00000001 0.00000000  0.22E-03      0.51
   3    4    8    0  -2224.35485970   -2224.35485970    0.00000000    0.00000001 0.00000001 0.00000000  0.20E-07      0.69

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.67E-08)
                       Final energy:  -2224.35485970
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2224.409777012180
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           881.96708963
 Virial ratio                                    1.95258525
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2224.343876235100
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           882.03299041
 Virial ratio                                    1.95255703
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2224.343876235076
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           882.03299041
 Virial ratio                                    1.95255703
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2224.343876234769
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           882.03299041
 Virial ratio                                    1.95255703
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -2224.343876234746
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           882.03299041
 Virial ratio                                    1.95255703
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -2224.343876234675
 Nuclear energy                                  0.00000000
 Kinetic energy                               2335.12934641
 One electron energy                         -3106.37686664
 Two electron energy                           882.03299041
 Virial ratio                                    1.95255703
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.996133174419
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.003866588689
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.894279975831
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999994409
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.105716848183
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.109586849750
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000005591
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.890416563128
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 4 6 2 1 1   4 3 5 6 2 1 4 3 5 2   6 3 5 4 6 2 1 2 3 5   4 6 8121310 9151411
                                        7 1 2 5 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 3 1 1   3 2 1 2 3 4 7 9 610   8 5 1 2 3 4 9 7 6 5  10 8 810 4 7 9 6 5 1
                                        2 3 9 7 6 810 4 5 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -427.67849     1  1  s    0.74694    1  2  s   -1.34798    1  3  s   -2.08355    1  4  s   -0.49084
                                    1  5  s    0.56089    1  6  s    0.26783    1  7  s    1.58001    1  8  s    0.52357
    2.1     2.00000   -55.84969     1  2  s    2.34332    1  3  s    2.08643    1  4  s    0.47496    1  5  s   -0.54606
                                    1  6  s   -0.25875    1  7  s   -1.63566    1  8  s   -0.45798
    3.1     2.00000    -7.98420     1  2  s   -0.71189    1  4  s   -0.27817    1  5  s    0.31748    1  7  s    0.93026
    4.1     2.00000    -2.13584     1  1  d2+  1.00396
    5.1     2.00000    -2.13584     1  1  d2-  1.00396
    6.1     2.00000    -2.13584     1  1  d1+  1.00396
    7.1     2.00000    -2.13584     1  1  d1-  1.00396
    8.1     2.00000    -2.13584     1  1  d0   1.00396
    9.1     2.00000    -0.68994     1  3  s    0.34667    1  4  s    1.14598    1  7  s   -0.26296
    1.2     2.00000   -50.03990     1  1  px   1.02055
    2.2     2.00000   -50.03990     1  1  py   1.02055
    3.2     2.00000   -50.03990     1  1  pz   1.02055
    4.2     2.00000    -5.88643     1  2  px   0.92927
    5.2     2.00000    -5.88643     1  2  py   0.92927
    6.2     2.00000    -5.88643     1  2  pz   0.92927
    7.2     1.00000    -0.15958     1  3  py   0.97392
    8.2     1.00000    -0.15958     1  3  pz   0.97392
    9.2     1.00000    -0.15958     1  3  px   0.97392
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:    -2224.40977701
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 aab         -0.02538643      0.00000000     -0.00000000      0.00000000      0.81610183
 2 baa          0.71945813      0.00000000      0.00000000     -0.00000000     -0.38606562
 2 2a0          0.00000000     -0.00000000      0.70710680      0.00000000     -0.00000000
 2 a20          0.00000000      0.00000000     -0.00000000      0.70710679     -0.00000000
 2 20a          0.00000000      0.70710678      0.00000000      0.00000000     -0.00000000
 2 02a          0.00000000     -0.70710678     -0.00000000      0.00000000     -0.00000000
 2 a02          0.00000000      0.00000000      0.00000000     -0.70710677      0.00000000
 2 0a2         -0.00000000      0.00000000     -0.70710677     -0.00000000     -0.00000000
 2 aba         -0.69407170     -0.00000000      0.00000000     -0.00000000     -0.43003621
 
 Energy:    -2224.34387624  -2224.34387624  -2224.34387623  -2224.34387623  -2224.34387623
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       38.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.91      0.72      0.12      0.84
 REAL TIME  *         3.78 SEC
 DISK USED  *        39.78 MB (local),      533.31 MB (total)
 SF USED    *        24.11 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2224.409777  -0.0
    -2224.343876   6.0
    -2224.343876   6.0
    -2224.343876   6.0
    -2224.343876   6.0
    -2224.343876   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 33
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:      166 conf      166 CSFs
 N-1 el internal:      238 conf      673 CSFs
 N-2 el internal:       88 conf      793 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.40977701

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     163
 Number of N-1 electron functions:     673

 Number of internal configurations:                   82
 Number of singly external configurations:         27651
 Number of doubly external configurations:        274270
 Total number of contracted configurations:       302003
 Total number of uncontracted configurations:    1353329

 Diagonal Coupling coefficients finished.               Storage:    276275 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    381999 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.40977701     0.00000000    -0.91127952  0.39D-01  0.74D-01     0.07
    2     1     1     1.07218140    -0.73098382 -2225.14076083    -0.73098382    -0.01776536  0.24D-02  0.11D-02     0.55
    3     1     1     1.06094713    -0.74775907 -2225.15753608    -0.01677525    -0.00043146  0.56D-04  0.30D-04     1.03
    4     1     1     1.05986377    -0.74815563 -2225.15793265    -0.00039656    -0.00001547  0.21D-05  0.94D-06     1.47
    5     1     1     1.05993969    -0.74817050 -2225.15794751    -0.00001486    -0.00000045  0.51D-07  0.35D-07     1.91
    6     1     1     1.05997214    -0.74817095 -2225.15794796    -0.00000046    -0.00000001  0.12D-08  0.13D-08     2.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.4%  49.4%
 P   0.4%  21.7%  11.5%

 Initialization:   3.0%
 Other:           13.6%

 Total CPU:        2.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///           0.9712940


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97129396 (fixed)   0.97129396 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000961   -0.00004831   -0.00005236
 Singles      0.01451269   -0.04487821   -0.05257941
 Pairs        0.04546002   -0.70324443   -0.69553918
 Total        1.05998232   -0.74817095   -0.74817095
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.40977701
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.46445629
 One electron energy                -3105.31885716
 Two electron energy                  880.16090920
 Virial quotient                       -0.95276892
 Correlation energy                    -0.74817095
 !CI(SD) STATE 1.2 Energy           -2225.157947963477

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.20282499 (Davidson, fixed reference)
 Cluster corrected energies         -2225.20282499 (Davidson, relaxed reference)

 Cluster corrected energies         -2225.20035795 (Pople, fixed reference)
 Cluster corrected energies         -2225.20035795 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       38.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       6        3.40       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.34      2.42      0.72      0.12      0.84
 REAL TIME  *         6.40 SEC
 DISK USED  *        42.36 MB (local),      564.29 MB (total)
 SF USED    *        42.11 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2225.20282499  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 33
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:      286 conf      488 CSFs
 N-1 el internal:      613 conf     1943 CSFs
 N-2 el internal:      637 conf     3149 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2224.34387624
     2     -2224.34387624
     3     -2224.34387623
     4     -2224.34387623
     5     -2224.34387623

 Number of blocks in overlap matrix:   606   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     666
 Number of N-1 electron functions:    1943

 Number of internal configurations:                  248
 Number of singly external configurations:         79725
 Number of doubly external configurations:       1121684
 Total number of contracted configurations:      1201657
 Total number of uncontracted configurations:    5361100

 Diagonal Coupling coefficients finished.               Storage:    547885 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    476234 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2224.34387624    -0.00000000    -0.92293026  0.43D-01  0.76D-01     0.16
    1     2     2     1.00000000     0.00000000 -2224.34387624    -0.00000000    -0.92232102  0.43D-01  0.76D-01     0.16
    1     3     3     1.00000000     0.00000000 -2224.34387623    -0.00000000    -0.92265577  0.43D-01  0.76D-01     0.16
    1     4     4     1.00000000     0.00000000 -2224.34387623     0.00000000    -0.92282293  0.43D-01  0.76D-01     0.16
    1     5     5     1.00000000     0.00000000 -2224.34387623    -0.00000000    -0.92346569  0.44D-01  0.76D-01     0.16
    2     1     1     1.07603474    -0.74015560 -2225.08403183    -0.74015560    -0.01840986  0.25D-02  0.12D-02     5.14
    2     2     2     1.07620330    -0.74008531 -2225.08396154    -0.74008531    -0.01848201  0.25D-02  0.12D-02     5.14
    2     3     3     1.07620796    -0.74004170 -2225.08391793    -0.74004170    -0.01855053  0.25D-02  0.12D-02     5.14
    2     4     4     1.07646047    -0.73989887 -2225.08377510    -0.73989887    -0.01867527  0.26D-02  0.12D-02     5.14
    2     5     5     1.07694493    -0.73957836 -2225.08345460    -0.73957836    -0.01902732  0.28D-02  0.13D-02     5.14
    3     1     1     1.06566878    -0.75730197 -2225.10117820    -0.01714637    -0.00041304  0.48D-04  0.34D-04    10.04
    3     2     2     1.06567473    -0.75730071 -2225.10117694    -0.01721540    -0.00041421  0.48D-04  0.35D-04    10.04
    3     3     3     1.06566257    -0.75729898 -2225.10117522    -0.01725728    -0.00041525  0.49D-04  0.34D-04    10.04
    3     4     4     1.06568690    -0.75729690 -2225.10117314    -0.01739804    -0.00042147  0.50D-04  0.35D-04    10.04
    3     5     5     1.06567005    -0.75729474 -2225.10117097    -0.01771638    -0.00042174  0.50D-04  0.35D-04    10.04
    4     1     1     1.06461212    -0.75769874 -2225.10157498    -0.00039678    -0.00001728  0.26D-05  0.13D-05    15.41
    4     2     2     1.06461042    -0.75769873 -2225.10157497    -0.00039803    -0.00001730  0.26D-05  0.13D-05    15.41
    4     3     3     1.06460978    -0.75769861 -2225.10157485    -0.00039963    -0.00001744  0.26D-05  0.13D-05    15.41
    4     4     4     1.06461066    -0.75769842 -2225.10157466    -0.00040152    -0.00001777  0.26D-05  0.13D-05    15.41
    4     5     5     1.06461148    -0.75769820 -2225.10157443    -0.00040346    -0.00001795  0.27D-05  0.13D-05    15.41
    5     1     1     1.06462343    -0.75771535 -2225.10159158    -0.00001661    -0.00000061  0.97D-07  0.46D-07    20.33
    5     2     2     1.06462381    -0.75771535 -2225.10159158    -0.00001661    -0.00000061  0.96D-07  0.46D-07    20.33
    5     3     3     1.06462445    -0.75771534 -2225.10159158    -0.00001673    -0.00000062  0.98D-07  0.47D-07    20.33
    5     4     4     1.06462525    -0.75771534 -2225.10159157    -0.00001692    -0.00000062  0.99D-07  0.48D-07    20.33
    5     5     5     1.06462344    -0.75771533 -2225.10159157    -0.00001713    -0.00000063  0.10D-06  0.48D-07    20.33
    6     1     1     1.06461778    -0.75771597 -2225.10159221    -0.00000063    -0.00000002  0.20D-08  0.24D-08    25.28
    6     2     2     1.06461763    -0.75771597 -2225.10159221    -0.00000063    -0.00000002  0.19D-08  0.25D-08    25.28
    6     3     3     1.06461764    -0.75771597 -2225.10159221    -0.00000063    -0.00000002  0.20D-08  0.24D-08    25.28
    6     4     4     1.06461749    -0.75771597 -2225.10159221    -0.00000063    -0.00000002  0.20D-08  0.24D-08    25.28
    6     5     5     1.06461802    -0.75771597 -2225.10159221    -0.00000064    -0.00000002  0.20D-08  0.25D-08    25.28


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   1.8%
 P   0.4%  21.2%  27.7%

 Initialization:   0.5%
 Other:           48.1%

 Total CPU:       25.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\          -0.0000000   0.8783001  -0.0000000  -0.0000000   0.4095836
 2222222222/\/          -0.0000000  -0.4095837   0.0000000  -0.0000000   0.8782999
 22222222220/2          -0.0000000   0.0000000  -0.6852629  -0.0000000   0.0000000
 2222222222/02           0.0000000   0.0000000  -0.0000000   0.6852628  -0.0000000
 222222222202/          -0.6852628  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222/20          -0.0000000   0.0000000   0.0000000  -0.6852626  -0.0000000
 222222222220/           0.6852625  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222222222/0          -0.0000000   0.0000000   0.6852624   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.969108   -0.000000    0.000000   -0.000000
 2          -0.382072   -0.000000    0.000000   -0.000000    0.890613
 3           0.000000    0.000000    0.969108   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.969108   -0.000000
 5           0.890612   -0.000000    0.000000    0.000000    0.382072

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969108    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.969108    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.969108    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.969108    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.969108


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96910769 (fixed)   0.96910769 (relaxed)   0.96910769 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014323   -0.00043864   -0.66389041
 Singles      0.01754081   -0.05093373   -0.06031586
 Pairs        0.04708623    0.00000000   -0.03350970
 Total        1.06477027   -0.05137237   -0.75771597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.34387624
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.45051593
 One electron energy                -3105.18340735
 Two electron energy                  880.08181514
 Virial quotient                       -0.95275048
 Correlation energy                    -0.75771597
 !MRCI STATE 1.2 Energy             -2225.101592209136

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.15066968 (Davidson, fixed reference)
 Cluster corrected energies         -2225.15066968 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.15066968 (Davidson, rotated reference)

 Cluster corrected energies         -2225.14868657 (Pople, fixed reference)
 Cluster corrected energies         -2225.14868657 (Pople, relaxed reference)
 Cluster corrected energies         -2225.14868657 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.89061261 (fixed)   0.96910777 (relaxed)   0.96910777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014323   -0.00043865   -0.05424566
 Singles      0.01754074   -0.05093348   -0.06031583
 Pairs        0.04708614   -0.64913187   -0.64315449
 Total        1.06477011   -0.70050399   -0.75771597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.34387623
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.45048369
 One electron energy                -3105.18343006
 Two electron energy                  880.08183785
 Virial quotient                       -0.95275049
 Correlation energy                    -0.75771597
 !MRCI STATE 2.2 Energy             -2225.101592209089

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.15066956 (Davidson, fixed reference)
 Cluster corrected energies         -2225.15066956 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.15066956 (Davidson, rotated reference)

 Cluster corrected energies         -2225.14868645 (Pople, fixed reference)
 Cluster corrected energies         -2225.14868645 (Pople, relaxed reference)
 Cluster corrected energies         -2225.14868645 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96910776 (fixed)   0.96910776 (relaxed)   0.96910776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014323   -0.00043864   -0.66389057
 Singles      0.01754075   -0.05093365   -0.06031583
 Pairs        0.04708615    0.00000000   -0.03350957
 Total        1.06477013   -0.05137230   -0.75771597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.34387623
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.45051185
 One electron energy                -3105.18341208
 Two electron energy                  880.08181987
 Virial quotient                       -0.95275048
 Correlation energy                    -0.75771597
 !MRCI STATE 3.2 Energy             -2225.101592209030

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.15066957 (Davidson, fixed reference)
 Cluster corrected energies         -2225.15066957 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.15066957 (Davidson, rotated reference)

 Cluster corrected energies         -2225.14868646 (Pople, fixed reference)
 Cluster corrected energies         -2225.14868646 (Pople, relaxed reference)
 Cluster corrected energies         -2225.14868646 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.96910783 (fixed)   0.96910783 (relaxed)   0.96910783 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014323   -0.00043864   -0.66389089
 Singles      0.01754057   -0.05093341   -0.06031569
 Pairs        0.04708618    0.00000000   -0.03350939
 Total        1.06476998   -0.05137206   -0.75771597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.34387623
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.45050574
 One electron energy                -3105.18340727
 Two electron energy                  880.08181507
 Virial quotient                       -0.95275048
 Correlation energy                    -0.75771597
 !MRCI STATE 4.2 Energy             -2225.101592208981

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.15066946 (Davidson, fixed reference)
 Cluster corrected energies         -2225.15066946 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.15066946 (Davidson, rotated reference)

 Cluster corrected energies         -2225.14868634 (Pople, fixed reference)
 Cluster corrected energies         -2225.14868634 (Pople, relaxed reference)
 Cluster corrected energies         -2225.14868634 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.89061243 (fixed)   0.96910759 (relaxed)   0.96910759 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014323   -0.00043865   -0.40235297
 Singles      0.01754116   -0.05093412   -0.06031612
 Pairs        0.04708612   -0.27847681   -0.29504689
 Total        1.06477051   -0.32984957   -0.75771597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2224.34387624
 Nuclear energy                         0.00000000
 Kinetic energy                      2335.45049955
 One electron energy                -3105.18339664
 Two electron energy                  880.08180443
 Virial quotient                       -0.95275048
 Correlation energy                    -0.75771597
 !MRCI STATE 5.2 Energy             -2225.101592208333

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2225.15066986 (Davidson, fixed reference)
 Cluster corrected energies         -2225.15066986 (Davidson, relaxed reference)
 Cluster corrected energies         -2225.15066986 (Davidson, rotated reference)

 Cluster corrected energies         -2225.14868675 (Pople, fixed reference)
 Cluster corrected energies         -2225.14868675 (Pople, relaxed reference)
 Cluster corrected energies         -2225.14868675 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       38.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                           T        V       H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   

              2       7       49.81       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        31.11     26.76      2.42      0.72      0.12      0.84
 REAL TIME  *        37.43 SEC
 DISK USED  *        88.78 MB (local),        1.09 GB (total)
 SF USED    *       490.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -2225.15066968  AU                              
 SETTING HLSDIAG(3)     =     -2225.15066956  AU                              
 SETTING HLSDIAG(4)     =     -2225.15066957  AU                              
 SETTING HLSDIAG(5)     =     -2225.15066946  AU                              
 SETTING HLSDIAG(6)     =     -2225.15066986  AU                              


         HLSDIAG
    -2225.202825
    -2225.150670
    -2225.150670
    -2225.150670
    -2225.150669
    -2225.150670
                                                  

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       4.78 sec

 CPU time:      4.79 sec, REAL time:      5.15 sec


 SORTLS1 read     7822754. and wrote     7822754. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.13 sec
 SORTLS2 read     7822754. and wrote    38256242. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    41.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    41.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7       49.81       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        36.34      5.19     26.76      2.42      0.72      0.12      0.84
 REAL TIME  *        44.02 SEC
 DISK USED  *        89.00 MB (local),        1.48 GB (total)
 SF USED    *       490.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================


 Preparing effective Fock matrices
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:  -2225.157948
 Replaced energies:  -2225.202825

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:  -2225.101592  -2225.101592  -2225.101592  -2225.101592  -2225.101592
 Replaced energies:  -2225.150670  -2225.150670  -2225.150670  -2225.150669  -2225.150670



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2225.20282499

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11446.77       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -1.85      -0.00      -0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   11446.79       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       2.12      -0.00      -0.00      -1.56

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11446.79       0.00       0.00      -1.84
                            0.00       0.00      -0.00      -0.00       0.00      -2.12      -0.00      -0.00      -3.02      -0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11446.82       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       1.85       0.00       0.00       0.00       0.00      -0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11446.73      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       3.02      -0.00      -0.00       3.34

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -1.84      -0.00      -0.00   11446.77
                           -0.00      -0.00       0.00       0.00       0.00       1.56       0.00       0.00      -3.34      -0.00

   11   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.68      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -1.56       0.00       0.00       0.00      -0.00       0.00

   12   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       1.84       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -1.85       0.00      -0.00

   13   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -3.68       0.00      -0.00       0.32       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       1.85       0.00      -0.00      -1.85

   14   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.32      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       3.34       0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

    4   1.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00

    5   1.2  0.5  0.5       0.00       1.84       0.00       0.00
                            1.56       0.00       0.00      -3.34

    6   2.2  0.5  0.5      -0.00       0.00      -3.68       0.00
                           -0.00       0.00       0.00      -0.00

    7   3.2  0.5  0.5      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -1.85       0.00

    8   4.2  0.5  0.5       3.68      -0.00      -0.00      -0.32
                           -0.00       1.85      -0.00      -0.00

    9   5.2  0.5  0.5      -0.00       0.00       0.32      -0.00
                            0.00      -0.00       0.00       0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.85       0.00

   11   2.2  0.5 -0.5   11446.79       0.00       0.00       0.00
                           -0.00      -2.12       0.00       0.00

   12   3.2  0.5 -0.5       0.00   11446.79       0.00       0.00
                            2.12       0.00       0.00       3.02

   13   4.2  0.5 -0.5       0.00       0.00   11446.82       0.00
                           -0.00      -0.00      -0.00      -0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11446.73
                           -0.00      -3.02       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2225.20282499     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2225.20282499     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2225.20282499     0.00000000        0.00      0.00000000        0.00      0.0000
     4 -2225.20282499     0.00000000        0.00      0.00000000        0.00      0.0000
     5 -2225.15069493     0.05213006    11441.23      0.05213006    11441.23      1.4185
     6 -2225.15069493     0.05213006    11441.23      0.05213006    11441.23      1.4185
     7 -2225.15069480     0.05213019    11441.25      0.05213019    11441.25      1.4185
     8 -2225.15069480     0.05213019    11441.25      0.05213019    11441.25      1.4185
     9 -2225.15065296     0.05217203    11450.44      0.05217203    11450.44      1.4197
    10 -2225.15065296     0.05217203    11450.44      0.05217203    11450.44      1.4197
    11 -2225.15065277     0.05217223    11450.48      0.05217223    11450.48      1.4197
    12 -2225.15065277     0.05217223    11450.48      0.05217223    11450.48      1.4197
    13 -2225.15065266     0.05217233    11450.50      0.05217233    11450.50      1.4197
    14 -2225.15065266     0.05217233    11450.50      0.05217233    11450.50      1.4197


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.072498352  -0.371595170   0.925557261   0.002185070  -0.000000031   0.000000000   0.000000021   0.000000005
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.923595048   0.182324028   0.000120705   0.311152333   0.000000000   0.000000020  -0.000000007   0.000000029
                        -0.123745051  -0.024497156  -0.000217012   0.031644145   0.000000000   0.000000000  -0.000000000   0.000000000

    3    1.2  1.5 -0.5  -0.179913496   0.907905484   0.378596340   0.001891453  -0.000000020   0.000000000  -0.000000029  -0.000000007
                        -0.000000023   0.000000106   0.000000044  -0.000000005  -0.000000000   0.000000000  -0.000000000  -0.000000000

    4    1.2  1.5 -1.5  -0.300784994  -0.060365784  -0.002916188   0.949114405   0.000000000   0.000000031   0.000000005  -0.000000021
                         0.059689699   0.011767416  -0.000037992   0.036828914   0.000000000   0.000000001   0.000000000  -0.000000000

    5    1.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000025   0.000000087   0.000000028   0.000000020
                         0.000000009  -0.000000046   0.000000036   0.000000000   0.579542938  -0.003406832  -0.245477806  -0.060267268

    6    2.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000099026  -0.016843801  -0.150810361   0.614273585
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000002034  -0.000346541  -0.001346094   0.005482989

    7    3.2  0.5  0.5  -0.000000009  -0.000000002  -0.000000000   0.000000002  -0.000061145  -0.010414345   0.000802846  -0.003270201
                        -0.000000067  -0.000000013  -0.000000000  -0.000000023   0.002975321   0.506138966  -0.089946508   0.366365803

    8    4.2  0.5  0.5  -0.000000000   0.000000002   0.000000016   0.000000000   0.071406228  -0.000419770  -0.609109623  -0.149542555
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000038  -0.000000012   0.000000010  -0.000000033

    9    5.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.003728352   0.634237597  -0.004113717   0.016755755
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000076619   0.013050083  -0.000036726   0.000149598

   10    1.2  0.5 -0.5   0.000000007   0.000000001   0.000000000   0.000000001  -0.000069997  -0.011922145  -0.000537901   0.002191008
                         0.000000043   0.000000009   0.000000000  -0.000000040   0.003406113   0.579420296   0.060264867  -0.245468028

   11    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.016847365   0.000099047   0.614298055   0.150816368
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000038   0.000000004  -0.000000013   0.000000032

   12    3.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000013  -0.000000075  -0.000000038   0.000000013
                         0.000000013  -0.000000066  -0.000000028  -0.000000000  -0.506246098   0.002975949  -0.366380398  -0.089950091

   13    4.2  0.5 -0.5   0.000000003   0.000000001  -0.000000000   0.000000016  -0.000419681  -0.071391118  -0.149536598   0.609085360
                        -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000008623  -0.001468907  -0.001334724   0.005436677

   14    5.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.634371842  -0.003729139   0.016756423   0.004113881
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000010  -0.000000095  -0.000000037  -0.000000007


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5   0.000000030   0.000000000  -0.000000023  -0.000000002  -0.000000003  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000000  -0.000000003  -0.000000005   0.000000064  -0.000000000  -0.000000020
                        -0.000000000   0.000000001  -0.000000002   0.000000020  -0.000000000  -0.000000002

    3    1.2  1.5 -0.5   0.000000003   0.000000000   0.000000067   0.000000005  -0.000000020   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.000000000  -0.000000029   0.000000002  -0.000000022  -0.000000000  -0.000000003
                        -0.000000000   0.000000006   0.000000001  -0.000000007   0.000000000  -0.000000000

    5    1.2  0.5  0.5   0.000000037  -0.000000578  -0.000000015  -0.000000151   0.000000026  -0.000000088
                        -0.584243782  -0.002128224   0.483238172   0.038346367  -0.154570304   0.000001235

    6    2.2  0.5  0.5   0.000245567  -0.067409302   0.034955954  -0.440511850  -0.000004929  -0.612522163
                        -0.000054297   0.014923887   0.011024622  -0.138933224  -0.000000216  -0.070439244

    7    3.2  0.5  0.5   0.000223461  -0.061420034   0.016893342  -0.212891319   0.000000044   0.014687307
                         0.001010641  -0.277426500  -0.053563997   0.675008793  -0.000001029  -0.127717164

    8    4.2  0.5  0.5   0.015735829   0.000057321  -0.150450936  -0.011938722   0.760590447  -0.000006072
                         0.000000001  -0.000000016  -0.000000004  -0.000000046   0.000000129  -0.000000430

    9    5.2  0.5  0.5  -0.002692127   0.739003142   0.011545645  -0.145497200   0.000000245   0.030421626
                         0.000595250  -0.163609453   0.003641337  -0.045888426   0.000000010   0.003498447

   10    1.2  0.5 -0.5   0.000459468  -0.126288985  -0.011533880   0.145350939  -0.000000054  -0.017658999
                         0.002078035  -0.570431319   0.036570664  -0.460860321   0.000001237   0.153558258

   11    2.2  0.5 -0.5  -0.069041555  -0.000251498   0.461901646   0.036653253   0.616559070  -0.000004921
                        -0.000000004   0.000000068   0.000000016   0.000000146   0.000000106  -0.000000348

   12    3.2  0.5 -0.5  -0.000000018   0.000000280  -0.000000022  -0.000000222   0.000000021  -0.000000074
                         0.284144125   0.001035051   0.707784985   0.056164818  -0.128558901   0.000001028

   13    4.2  0.5 -0.5   0.000055969  -0.015363808   0.011385876  -0.143483836   0.000006082   0.755610497
                        -0.000012375   0.003401426   0.003590949  -0.045253431   0.000000266   0.086894216

   14    5.2  0.5 -0.5   0.756897416   0.002757148   0.152562062   0.012106249  -0.030622124   0.000000245
                         0.000000048  -0.000000748   0.000000004   0.000000048  -0.000000005   0.000000018


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.526%  13.808%  85.666%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  86.834%   3.384%   0.000%   9.782%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   3.237%  82.429%  14.334%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   9.403%   0.378%   0.001%  90.217%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.587%   0.001%   6.026%   0.363%  34.134%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   2.275%  37.736%   0.000%   0.477%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%  25.629%   0.809%  13.423%   0.000%   8.074%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.510%   0.000%  37.101%   2.236%   0.025%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%  40.243%   0.002%   0.028%   0.001%  57.289%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.587%   0.363%   6.026%   0.000%  34.134%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%  37.736%   2.275%   0.477%   0.000%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  25.629%   0.001%  13.423%   0.809%   8.074%   0.000%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.510%   2.236%  37.101%   0.000%   0.025%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  40.243%   0.001%   0.028%   0.002%  57.289%   0.001%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5  23.352%   0.147%   2.389%   0.000%
    6    2.2  0.5  0.5   0.134%  21.335%   0.000%  38.015%
    7    3.2  0.5  0.5   0.315%  50.096%   0.000%   1.653%
    8    4.2  0.5  0.5   2.264%   0.014%  57.850%   0.000%
    9    5.2  0.5  0.5   0.015%   2.328%   0.000%   0.094%
   10    1.2  0.5 -0.5   0.147%  23.352%   0.000%   2.389%
   11    2.2  0.5 -0.5  21.335%   0.134%  38.015%   0.000%
   12    3.2  0.5 -0.5  50.096%   0.315%   1.653%   0.000%
   13    4.2  0.5 -0.5   0.014%   2.264%   0.000%  57.850%
   14    5.2  0.5 -0.5   2.328%   0.015%   0.094%   0.000%


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
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1200     1210     1080     1600     1650     1700     1380     1700(1)
                                         EKIN      POT      H0       H01     AOSYM     SMH    MOLCAS    OPER     JKOP     OPER   
                                         1101     1401     1411     1700(2)
                                          SR      EKINR    POTR     OPER   

              2       7       49.81       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        80.58     44.24      5.19     26.76      2.42      0.72      0.12      0.84
 REAL TIME  *        92.48 SEC
 DISK USED  *        89.00 MB (local),        1.48 GB (total)
 SF USED    *       490.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVTZ-X2C energy=  -2225.150652661890

              CI              CI           MULTI         RHF-SCF
  -2225.10159221  -2225.15794796  -2224.34387623  -2224.41038370
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
