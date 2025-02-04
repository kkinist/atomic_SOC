
 Working directory              : /wrk/irikura/molpro.lz6W2GkQ0d/
 Global scratch directory       : /wrk/irikura/molpro.lz6W2GkQ0d/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.lz6W2GkQ0d/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis=AWCVQZ-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 09:52:24  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVQZ-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  TE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          169   (   86Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021


 Eigenvalues of metric

         1 0.111E-05 0.491E-04 0.491E-04 0.491E-04 0.491E-04 0.491E-04 0.545E-03 0.138E-02
         2 0.155E-03 0.155E-03 0.155E-03 0.135E-02 0.135E-02 0.135E-02 0.106E-01 0.106E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     115.868 MB (compressed) written to integral file ( 15.7%)

     Node minimum: 1.049 MB, node maximum: 6.291 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1858160.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1858160      RECORD LENGTH: 524288

 Memory used in sort:       2.42 MW

 SORT1 READ    92659037. AND WROTE      346699. INTEGRALS IN      1 RECORDS. CPU TIME:     0.67 SEC, REAL TIME:     0.70 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    112 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     1855590.  Node maximum:     1873009. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.60      3.26
 REAL TIME  *         4.91 SEC
 DISK USED  *        29.74 MB (local),        1.03 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67491608    -266.67491608     0.00D+00     0.76D-01     0     0       0.02      0.04    start
   2     -266.71779782      -0.04288174     0.36D-02     0.47D-02     1     0       0.01      0.05    diag2
   3     -266.72022728      -0.00242946     0.20D-02     0.13D-02     2     0       0.02      0.07    diag2
   4     -266.72066840      -0.00044113     0.36D-03     0.89D-03     3     0       0.02      0.09    diag2
   5     -266.72069309      -0.00002468     0.79D-04     0.25D-03     4     0       0.02      0.11    diag2
   6     -266.72069324      -0.00000015     0.83D-05     0.43D-04     5     0       0.01      0.12    diag2
   7     -266.72069324      -0.00000000     0.10D-05     0.29D-05     6     0       0.02      0.14    diag2
   8     -266.72069324      -0.00000000     0.70D-07     0.63D-06     0     0       0.02      0.16    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720693241956
  RHF One-electron energy            -459.058011011557
  RHF Two-electron energy             192.337317769601
  RHF Kinetic energy                  102.493269940091
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602323971104

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45865     1  1  s    1.00127
    2.1     2.00000    -2.27829     1  1  d2+ -0.62605    1  1  d1-  0.78129
    3.1     2.00000    -2.27829     1  1  d0   1.00120
    4.1     2.00000    -2.27829     1  1  d1+  0.99973
    5.1     2.00000    -2.27829     1  1  d2-  0.98452
    6.1     2.00000    -2.27829     1  1  d2+  0.76634    1  1  d1-  0.61579
    7.1     2.00000    -1.03505     1  2  s    1.01514
    1.2     2.00000    -5.42339     1  1  py   0.29145    1  1  pz   0.95349
    2.2     2.00000    -5.42339     1  1  px   0.99531
    3.2     2.00000    -5.42339     1  1  py   0.95607    1  1  pz  -0.28745
    4.2     1.00000    -0.69091     1  1  px  -0.34670    1  4  px   0.52195    1  5  px   0.54638
    5.2     1.00000    -0.69091     1  1  py  -0.34648    1  4  py   0.52162    1  5  py   0.54603
    6.2     1.00000    -0.69091     1  1  pz  -0.34648    1  4  pz   0.52162    1  5  pz   0.54603


 HOMO      6.2    -0.690910 =     -18.8006eV
 LUMO      8.1    -0.113254 =      -3.0818eV
 LUMO-HOMO         0.577656 =      15.7188eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.84       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.77      0.17      3.26
 REAL TIME  *         5.12 SEC
 DISK USED  *        31.97 MB (local),        1.09 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     156 (   79   77)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.287D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.787D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.527D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 4 3 5 1 1 2 4   6 5 3 1 4 6 5 3 2 3   5 6 4 2 8121310 7 9  111514 1 3 5 4 6 2 8
                                       12 91415111310 7 1 5   3 4 6 2 812151411 9   71310 1 5 6 4 3 2 8  121514 711 91310 1 2
                                        5 6 4 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.279D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.343D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.343D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 210 8 5 4 7 9 610   8 5 4 7 9 6 2 1 3 5   4 7 9 810 6 2 1 3 9
                                        7 5 4 610 816141915  17211312111820 6 5 4   810 7 9 2 3 1 3 2 1   9 7 6 5 410 8 3 2 1
                                        2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1030  ( 15 closed/active, 705 closed/virtual, 0 active/active, 310 active/virtual )
 Total number of variables:    1099
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.93135364    -266.96475147   -0.03339783    0.22524154 0.00001575 0.00000000  0.19E+00      0.49
   2    6   10    0   -266.96588384    -266.96599965   -0.00011581    0.01258729 0.00000207 0.00000000  0.12E-01      1.06
   3   19   38    0   -266.96599992    -266.96599992   -0.00000000    0.00004795 0.00000001 0.00000000  0.40E-04      1.76

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.31E-07)
                       Final energy:   -266.96599992
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999083720879
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996514
 Two electron energy                           199.60088142
 Virial ratio                                    3.60043595
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999083720868
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996514
 Two electron energy                           199.60088142
 Virial ratio                                    3.60043595
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999083720648
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996516
 Two electron energy                           199.60088144
 Virial ratio                                    3.60043595
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956153694082
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473936
 One electron energy                          -466.59996513
 Two electron energy                           199.64381144
 Virial ratio                                    3.60001784
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956153694041
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996514
 Two electron energy                           199.64381145
 Virial ratio                                    3.60001784
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956153694035
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996514
 Two electron energy                           199.64381145
 Virial ratio                                    3.60001784
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956153693908
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996516
 Two electron energy                           199.64381147
 Virial ratio                                    3.60001784
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956153693907
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67473937
 One electron energy                          -466.59996516
 Two electron energy                           199.64381147
 Virial ratio                                    3.60001784
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.915979661804
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66446927
 One electron energy                          -466.47499558
 Two electron energy                           199.55901592
 Virial ratio                                    3.59988662
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.067515632628
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.932467088099
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.930929106060
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.069088978993
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.001555261313
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.998443932908
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 2   3 5 6 1 4 2 3 5 6 4   2 3 5 6 9 7 8121415  131011 1 4 2 3 5 6 9
                                        7 8121415131011 1 4   2 5 3 6 9 7 8121415  131011 1 4 2 5 3 6 9   7 8121415131011 1 4
                                        2 3 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 6 810 9 7 5 4   6 810 9 7 5 1 3 2 4   6 810 9 7 5 1 3 2 4
                                        6 810 9 7 511192113  14161517201812 4 6 8  10 9 7 5 1 3 2 1 3 2   4 610 8 9 7 5 1 3 2
                                        1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13714     1  1  s    1.00213
    2.1     2.00000    -1.95761     1  1  d1+  1.00012
    3.1     2.00000    -1.95761     1  1  d0   1.00012
    4.1     2.00000    -1.95761     1  1  d2-  1.00012
    5.1     2.00000    -1.95761     1  1  d2+  1.00012
    6.1     2.00000    -1.95761     1  1  d1-  1.00012
    7.1     1.99350    -0.74952     1  2  s    1.00290
    1.2     2.00000    -5.10254     1  1  px   0.99974
    2.2     2.00000    -5.10254     1  1  pz   0.99974
    3.2     2.00000    -5.10254     1  1  py   0.99974
    4.2     1.33550    -0.24256     1  1  py  -0.32168    1  4  py   0.42130    1  5  py   0.52126
    5.2     1.33550    -0.24256     1  1  pz  -0.32168    1  4  pz   0.42130    1  5  pz   0.52126
    6.2     1.33550    -0.24256     1  1  px  -0.32168    1  4  px   0.42130    1  5  px   0.52126
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa         -0.00000000      1.00000000     -0.00000000
 2 a2a          0.00000000      0.00000000      1.00000000
 2 aa2          1.00000000      0.00000000     -0.00000000
 
 Energy:     -266.99908372   -266.99908372   -266.99908372
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.81633783      0.00000000     -0.00000000     -0.01610001      0.00000000      0.56884559
 2 220         -0.39422590     -0.00000000      0.00000000      0.71501930     -0.00000000      0.56884559
 2 2ab          0.00000000      0.00000000      0.70710678     -0.00000000     -0.00000000      0.00000000
 2 2ba         -0.00000000     -0.00000000     -0.70710678      0.00000000      0.00000000     -0.00000000
 2 a2b          0.00000000      0.00000000      0.00000000      0.00000000      0.70710678     -0.00000000
 2 ab2         -0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 b2a         -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.70710678      0.00000000
 2 ba2          0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000      0.00000000
 2 022         -0.42211193     -0.00000000      0.00000000     -0.69891930      0.00000000      0.56884559
 0 222         -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.17100902
 
 Energy:     -266.95615369   -266.95615369   -266.95615369   -266.95615369   -266.95615369   -266.91597966
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.44       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.42      1.64      0.17      3.26
 REAL TIME  *         7.35 SEC
 DISK USED  *        46.53 MB (local),        1.49 GB (total)
 SF USED    *        38.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9990837   2.0
    -266.9990837   2.0
    -266.9990837   2.0
    -266.9561537   6.0
    -266.9561537   6.0
    -266.9561537   6.0
    -266.9561537   6.0
    -266.9561537   6.0
    -266.9159797  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     156 (  79  77 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99908372
     2      -266.99908372
     3      -266.99908372

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         43974
 Number of doubly external configurations:       2995188
 Total number of contracted configurations:      3039198
 Total number of uncontracted configurations:    9677631

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    928637 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99908372     0.00000000    -1.09979028  0.35D-01  0.14D+00     0.60
    1     2     2     1.00000000     0.00000000  -266.99908372     0.00000000    -1.09958996  0.35D-01  0.14D+00     0.60
    1     3     3     1.00000000     0.00000000  -266.99908372     0.00000000    -1.09976679  0.35D-01  0.14D+00     0.60
    2     1     1     1.11102733    -0.86750432  -267.86658805    -0.86750432    -0.02782135  0.31D-02  0.29D-02     7.98
    2     2     2     1.11114166    -0.86738525  -267.86646898    -0.86738525    -0.02795809  0.31D-02  0.29D-02     7.98
    2     3     3     1.11117316    -0.86737733  -267.86646105    -0.86737733    -0.02795012  0.31D-02  0.29D-02     7.98
    3     1     1     1.09493977    -0.89362962  -267.89271334    -0.02612529    -0.00041636  0.40D-04  0.51D-04    14.89
    3     2     2     1.09493740    -0.89362749  -267.89271121    -0.02624224    -0.00041848  0.40D-04  0.51D-04    14.89
    3     3     3     1.09494647    -0.89362490  -267.89270862    -0.02624757    -0.00042153  0.41D-04  0.52D-04    14.89
    4     1     1     1.09395128    -0.89405120  -267.89313492    -0.00042158    -0.00001043  0.17D-05  0.11D-05    21.82
    4     2     2     1.09395002    -0.89405119  -267.89313491    -0.00042370    -0.00001044  0.17D-05  0.11D-05    21.82
    4     3     3     1.09395125    -0.89405106  -267.89313478    -0.00042616    -0.00001056  0.17D-05  0.11D-05    21.82
    5     1     1     1.09391546    -0.89406219  -267.89314591    -0.00001100    -0.00000030  0.25D-07  0.40D-07    28.76
    5     2     2     1.09391540    -0.89406219  -267.89314591    -0.00001100    -0.00000030  0.25D-07  0.40D-07    28.76
    5     3     3     1.09391550    -0.89406219  -267.89314591    -0.00001113    -0.00000030  0.25D-07  0.40D-07    28.76
    6     1     1     1.09391022    -0.89406250  -267.89314622    -0.00000031    -0.00000001  0.12D-08  0.11D-08    35.67
    6     2     2     1.09391021    -0.89406250  -267.89314622    -0.00000031    -0.00000001  0.12D-08  0.11D-08    35.67
    6     3     3     1.09391018    -0.89406250  -267.89314622    -0.00000031    -0.00000001  0.12D-08  0.11D-08    35.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.3%
 P   0.8%  15.7%  14.7%

 Initialization:   1.2%
 Other:           67.2%

 Total CPU:       35.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/          -0.0000000  -0.0000000   0.9561108
 2222222222//2          -0.0000000   0.9561108  -0.0000000
 22222222222//           0.9561108   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.956111   -0.000000
 2           0.956111    0.000000   -0.000000
 3          -0.000000   -0.000000    0.956111

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956111    0.000000   -0.000000
 2           0.000000    0.956111   -0.000000
 3          -0.000000   -0.000000    0.956111


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95611076 (fixed)   0.95611076 (relaxed)   0.95611076 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.78270905
 Singles      0.01134023   -0.03784924   -0.04386970
 Pairs        0.08257040    0.00000000   -0.06748375
 Total        1.09391502   -0.03787575   -0.89406250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908372
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280637
 One electron energy                 -466.28069982
 Two electron energy                  198.38755359
 Virial quotient                       -2.58801935
 Correlation energy                    -0.89406250
 !MRCI STATE 1.1 Energy              -267.893146224275

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711212 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711212 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711212 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576183 (Pople, fixed reference)
 Cluster corrected energies          -267.97576183 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576183 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95611077 (fixed)   0.95611077 (relaxed)   0.95611077 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.78270911
 Singles      0.01134017   -0.03784919   -0.04386965
 Pairs        0.08257045   -0.00000000   -0.06748375
 Total        1.09391501   -0.03787570   -0.89406250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908372
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280743
 One electron energy                 -466.28069983
 Two electron energy                  198.38755360
 Virial quotient                       -2.58801933
 Correlation energy                    -0.89406250
 !MRCI STATE 2.1 Energy              -267.893146224254

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711211 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711211 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711211 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576182 (Pople, fixed reference)
 Cluster corrected energies          -267.97576182 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576182 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95611078 (fixed)   0.95611078 (relaxed)   0.95611078 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.00002782
 Singles      0.01134017   -0.03784914   -0.04386964
 Pairs        0.08257043   -0.85618685   -0.85016504
 Total        1.09391499   -0.89406250   -0.89406250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908372
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280780
 One electron energy                 -466.28070137
 Two electron energy                  198.38755515
 Virial quotient                       -2.58801932
 Correlation energy                    -0.89406250
 !MRCI STATE 3.1 Energy              -267.893146224130

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711209 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711209 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711209 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576180 (Pople, fixed reference)
 Cluster corrected energies          -267.97576180 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576180 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       72.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        42.17     36.73      1.64      0.17      3.26
 REAL TIME  *        49.11 SEC
 DISK USED  *       117.36 MB (local),        3.43 GB (total)
 SF USED    *       712.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.97711212  AU                              
 SETTING HLSDIAG(2)     =      -267.97711211  AU                              
 SETTING HLSDIAG(3)     =      -267.97711209  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     156 (  79  77 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95615369
     2      -266.95615369
     3      -266.95615369
     4      -266.95615369
     5      -266.95615369
     6      -266.91597966

 Number of blocks in overlap matrix:   667   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         38056
 Number of doubly external configurations:       5030090
 Total number of contracted configurations:      5068195
 Total number of uncontracted configurations:    8242932

 Diagonal Coupling coefficients finished.               Storage:    441539 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1013925 words, CPU-time:      0.68 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95615369    -0.00000000    -1.09929502  0.37D-01  0.14D+00     0.84
    1     2     2     1.00000000     0.00000000  -266.95615369    -0.00000000    -1.10287208  0.37D-01  0.14D+00     0.84
    1     3     3     1.00000000     0.00000000  -266.95615369     0.00000000    -1.10349278  0.38D-01  0.14D+00     0.84
    1     4     4     1.00000000     0.00000000  -266.95615369    -0.00000000    -1.10196708  0.38D-01  0.14D+00     0.84
    1     5     5     1.00000000     0.00000000  -266.95615369    -0.00000000    -1.10264270  0.38D-01  0.14D+00     0.84
    1     6     6     1.00000000     0.00000000  -266.91597966    -0.00000000    -1.07675233  0.81D-02  0.15D+00     0.84
    2     1     1     1.11204071    -0.87573364  -267.83188733    -0.87573364    -0.02633372  0.31D-02  0.24D-02    24.73
    2     2     2     1.11203632    -0.87520485  -267.83135854    -0.87520485    -0.02704018  0.31D-02  0.25D-02    24.73
    2     3     3     1.11228362    -0.87510638  -267.83126007    -0.87510638    -0.02709727  0.30D-02  0.26D-02    24.73
    2     4     4     1.11231590    -0.87504697  -267.83120067    -0.87504697    -0.02719472  0.31D-02  0.26D-02    24.73
    2     5     5     1.11253876    -0.87475957  -267.83091326    -0.87475957    -0.02752037  0.32D-02  0.26D-02    24.73
    2     6     6     1.10495333    -0.87371932  -267.78969898    -0.87371932    -0.02048133  0.13D-02  0.25D-02    24.73
    3     1     1     1.09811029    -0.90014707  -267.85630076    -0.02441343    -0.00055310  0.51D-04  0.75D-04    48.07
    3     2     2     1.09808235    -0.90014044  -267.85629413    -0.02493559    -0.00056071  0.54D-04  0.75D-04    48.07
    3     3     3     1.09812251    -0.90013582  -267.85628952    -0.02502944    -0.00056665  0.52D-04  0.77D-04    48.07
    3     4     4     1.09807823    -0.90013190  -267.85628560    -0.02508493    -0.00057133  0.54D-04  0.76D-04    48.07
    3     5     5     1.09813215    -0.90013020  -267.85628390    -0.02537063    -0.00057212  0.52D-04  0.78D-04    48.07
    3     6     6     1.09474205    -0.89340385  -267.80938351    -0.01968453    -0.00032316  0.22D-04  0.52D-04    48.07
    4     1     1     1.09697599    -0.90067542  -267.85682911    -0.00052835    -0.00002141  0.31D-05  0.26D-05    71.50
    4     2     2     1.09697880    -0.90067495  -267.85682864    -0.00053451    -0.00002184  0.32D-05  0.27D-05    71.50
    4     3     3     1.09697789    -0.90067485  -267.85682855    -0.00053903    -0.00002196  0.32D-05  0.27D-05    71.50
    4     4     4     1.09697480    -0.90067466  -267.85682835    -0.00054276    -0.00002203  0.32D-05  0.27D-05    71.50
    4     5     5     1.09696937    -0.90067396  -267.85682765    -0.00054375    -0.00002259  0.32D-05  0.28D-05    71.50
    4     6     6     1.09398554    -0.89373079  -267.80971045    -0.00032694    -0.00001318  0.19D-05  0.17D-05    71.50
    5     1     1     1.09684939    -0.90069727  -267.85685096    -0.00002185    -0.00000072  0.77D-07  0.10D-06    94.98
    5     2     2     1.09684852    -0.90069726  -267.85685096    -0.00002232    -0.00000072  0.79D-07  0.99D-07    94.98
    5     3     3     1.09684934    -0.90069726  -267.85685095    -0.00002241    -0.00000073  0.79D-07  0.10D-06    94.98
    5     4     4     1.09684936    -0.90069725  -267.85685095    -0.00002259    -0.00000074  0.80D-07  0.10D-06    94.98
    5     5     5     1.09684846    -0.90069724  -267.85685094    -0.00002329    -0.00000074  0.81D-07  0.10D-06    94.98
    5     6     6     1.09397512    -0.89374418  -267.80972384    -0.00001339    -0.00000044  0.44D-07  0.56D-07    94.98
    6     1     1     1.09682951    -0.90069802  -267.85685171    -0.00000075    -0.00000002  0.13D-08  0.34D-08   118.42
    6     2     2     1.09682922    -0.90069801  -267.85685171    -0.00000075    -0.00000002  0.16D-08  0.33D-08   118.42
    6     3     3     1.09682940    -0.90069801  -267.85685171    -0.00000075    -0.00000002  0.14D-08  0.35D-08   118.42
    6     4     4     1.09682939    -0.90069801  -267.85685171    -0.00000076    -0.00000002  0.15D-08  0.35D-08   118.42
    6     5     5     1.09682920    -0.90069801  -267.85685171    -0.00000077    -0.00000002  0.16D-08  0.35D-08   118.42
    6     6     6     1.09396744    -0.89374463  -267.80972430    -0.00000045    -0.00000001  0.13D-08  0.17D-08   118.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.4%  13.4%  20.0%

 Initialization:   0.6%
 Other:           65.3%

 Total CPU:      118.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\          -0.0000000  -0.0000000   0.0000000   0.9547812  -0.0000000  -0.0000000
 22222222222/\           0.0000000  -0.0000000   0.9547812  -0.0000000  -0.0000000  -0.0000000
 2222222222/\2           0.9547811   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222220          -0.0000000  -0.1921567   0.0000000   0.0000000   0.7555223   0.5449814
 2222222222202          -0.0000000   0.7503798   0.0000000   0.0000000  -0.2113486   0.5449815
 2222222222022          -0.0000000  -0.5582232   0.0000000   0.0000000  -0.5441738   0.5449814
 2222220222222           0.0000000  -0.0000006  -0.0000000  -0.0000000  -0.0000001  -0.1518450

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.954781    0.000000    0.000000   -0.000000   -0.000000
 2           0.923960    0.000000   -0.000000    0.240637   -0.000000    0.000000
 3          -0.000000   -0.000000    0.954781    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.000000    0.954781    0.000000
 5          -0.240637   -0.000000   -0.000000    0.923960   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.955998

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954781    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.954781   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.954781   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.954781   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.954781   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955998


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95478115 (fixed)   0.95478115 (relaxed)   0.95478115 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012251   -0.00038855   -0.78321838
 Singles      0.01323043   -0.04164608   -0.04883006
 Pairs        0.08361095    0.00000000   -0.06864957
 Total        1.09696388   -0.04203463   -0.90069802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615369
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50890309
 One electron energy                 -466.24241155
 Two electron energy                  198.38555984
 Virial quotient                       -2.58776631
 Correlation energy                    -0.90069802
 !MRCI STATE 1.1 Energy              -267.856851709426

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94418689 (Davidson, fixed reference)
 Cluster corrected energies          -267.94418689 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94418689 (Davidson, rotated reference)

 Cluster corrected energies          -267.94387259 (Pople, fixed reference)
 Cluster corrected energies          -267.94387259 (Pople, relaxed reference)
 Cluster corrected energies          -267.94387259 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.92395950 (fixed)   0.95478127 (relaxed)   0.95478127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012251   -0.00038855   -0.78321981
 Singles      0.01322954   -0.04164480   -0.04882920
 Pairs        0.08361155    0.00000006   -0.06864900
 Total        1.09696359   -0.04203329   -0.90069801
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615369
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50892390
 One electron energy                 -466.24239478
 Two electron energy                  198.38554307
 Virial quotient                       -2.58776578
 Correlation energy                    -0.90069801
 !MRCI STATE 2.1 Energy              -267.856851708967

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94418663 (Davidson, fixed reference)
 Cluster corrected energies          -267.94418663 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94418663 (Davidson, rotated reference)

 Cluster corrected energies          -267.94387231 (Pople, fixed reference)
 Cluster corrected energies          -267.94387231 (Pople, relaxed reference)
 Cluster corrected energies          -267.94387231 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95478120 (fixed)   0.95478120 (relaxed)   0.95478120 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012251   -0.00038855   -0.78321853
 Singles      0.01323039   -0.04164601   -0.04883006
 Pairs        0.08361087   -0.00000000   -0.06864943
 Total        1.09696377   -0.04203456   -0.90069801
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615369
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50890767
 One electron energy                 -466.24241747
 Two electron energy                  198.38556576
 Virial quotient                       -2.58776619
 Correlation energy                    -0.90069801
 !MRCI STATE 3.1 Energy              -267.856851708794

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94418678 (Davidson, fixed reference)
 Cluster corrected energies          -267.94418678 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94418678 (Davidson, rotated reference)

 Cluster corrected energies          -267.94387247 (Pople, fixed reference)
 Cluster corrected energies          -267.94387247 (Pople, relaxed reference)
 Cluster corrected energies          -267.94387247 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95478120 (fixed)   0.95478120 (relaxed)   0.95478120 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012251   -0.00038855   -0.78321879
 Singles      0.01323023   -0.04164573   -0.04882992
 Pairs        0.08361102   -0.00000000   -0.06864930
 Total        1.09696375   -0.04203428   -0.90069801
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615369
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50890917
 One electron energy                 -466.24241720
 Two electron energy                  198.38556549
 Virial quotient                       -2.58776615
 Correlation energy                    -0.90069801
 !MRCI STATE 4.1 Energy              -267.856851708651

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94418677 (Davidson, fixed reference)
 Cluster corrected energies          -267.94418677 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94418677 (Davidson, rotated reference)

 Cluster corrected energies          -267.94387246 (Pople, fixed reference)
 Cluster corrected energies          -267.94387246 (Pople, relaxed reference)
 Cluster corrected energies          -267.94387246 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92395952 (fixed)   0.95478129 (relaxed)   0.95478129 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012251   -0.00038855   -0.78321938
 Singles      0.01322978   -0.04164529   -0.04882954
 Pairs        0.08361128    0.00000006   -0.06864909
 Total        1.09696357   -0.04203378   -0.90069801
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615369
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50891005
 One electron energy                 -466.24238442
 Two electron energy                  198.38553271
 Virial quotient                       -2.58776613
 Correlation energy                    -0.90069801
 !MRCI STATE 5.1 Energy              -267.856851708272

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94418660 (Davidson, fixed reference)
 Cluster corrected energies          -267.94418660 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94418660 (Davidson, rotated reference)

 Cluster corrected energies          -267.94387228 (Pople, fixed reference)
 Cluster corrected energies          -267.94387228 (Pople, relaxed reference)
 Cluster corrected energies          -267.94387228 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95599771 (fixed)   0.95607070 (relaxed)   0.95599771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018859   -0.00016402   -0.00030395
 Singles      0.00453052   -0.02117611   -0.02305385
 Pairs        0.08945465   -0.87240451   -0.87038684
 Total        1.09417376   -0.89374464   -0.89374463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.91597966
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50996457
 One electron energy                 -466.10952879
 Two electron energy                  198.29980449
 Virial quotient                       -2.58728447
 Correlation energy                    -0.89374463
 !MRCI STATE 6.1 Energy              -267.809724295431

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.89389159 (Davidson, fixed reference)
 Cluster corrected energies          -267.89374229 (Davidson, relaxed reference)
 Cluster corrected energies          -267.89389159 (Davidson, rotated reference)

 Cluster corrected energies          -267.89338145 (Pople, fixed reference)
 Cluster corrected energies          -267.89322070 (Pople, relaxed reference)
 Cluster corrected energies          -267.89338145 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      305.77       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       166.58    124.40     36.73      1.64      0.17      3.26
 REAL TIME  *       190.57 SEC
 DISK USED  *       350.86 MB (local),        9.81 GB (total)
 SF USED    *         2.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.94418689  AU                              
 SETTING HLSDIAG(5)     =      -267.94418663  AU                              
 SETTING HLSDIAG(6)     =      -267.94418678  AU                              
 SETTING HLSDIAG(7)     =      -267.94418677  AU                              
 SETTING HLSDIAG(8)     =      -267.94418660  AU                              
 SETTING HLSDIAG(9)     =      -267.89389159  AU                              


         HLSDIAG
    -267.9771121
    -267.9771121
    -267.9771121
    -267.9441869
    -267.9441866
    -267.9441868
    -267.9441868
    -267.9441866
    -267.8938916
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.893146   -267.893146   -267.893146
 Replaced energies:   -267.977112   -267.977112   -267.977112

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.856852   -267.856852   -267.856852   -267.856852   -267.856852   -267.809724
 Replaced energies:   -267.944187   -267.944187   -267.944187   -267.944187   -267.944187   -267.893892



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.97711212

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00   -1931.78       0.00      -0.00       0.00   -1365.98       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00    1365.98       0.00       0.00       0.00      -0.00
                         1931.78      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00   -1365.98      -0.00       0.00       0.00       0.00   -1372.00
                           -0.00      -0.00      -0.00    1365.98       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00   -1365.98       0.00       0.00       0.00      -0.00       0.00   -1365.98   -1940.32

    5   2.1  1.0  0.0      -0.00      -0.00   -1365.98       0.00       0.00       0.00       0.00      -0.00    1365.98       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00    1365.98      -0.00       0.00       0.00       0.01      -0.00   -1365.98      -0.00       0.00
                         1365.98       0.00      -0.00      -0.00      -0.00       0.00    1365.98       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00   -1365.98       0.00    1931.78      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -1365.98       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1931.78       0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    1365.98      -0.00       0.00       0.00       0.01   -1372.00
                           -0.00      -0.00      -0.00    1365.98       0.00      -0.00       0.00       0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00   -1372.00       0.00       0.00       0.00      -0.00      -0.00   -1372.00    7226.25
                            0.00       0.00       0.00    1940.32       0.00       0.00      -0.00      -0.00      -0.00       0.00

   11   2.1  0.0  0.0    1134.41       0.00       0.00       0.00       0.00       0.00    1134.41       0.00       0.00       0.00
                           -0.00    -390.50       0.00       0.00       0.00    2156.54       0.00     390.50      -0.00      -0.00

   12   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    1372.00       0.00    1940.32      -0.00      -0.00       0.00   -1372.00      -0.00

   13   4.1  0.0  0.0       0.00    1372.00      -0.00       0.00       0.00       0.00       0.00    1372.00      -0.00       0.00
                        -1372.00      -0.00      -0.00       0.00      -0.00      -0.00    1372.00       0.00       0.00      -0.00

   14   5.1  0.0  0.0    1105.86       0.00       0.00       0.00       0.00       0.00    1105.86       0.00       0.00       0.00
                            0.00    1535.36      -0.00      -0.00       0.00    -607.40      -0.00   -1535.36       0.00      -0.00

   15   6.1  0.0  0.0    2223.93      -0.00      -0.00       0.00       0.00       0.00    2223.93      -0.00      -0.00       0.00
                           -0.00   -2223.92      -0.00       0.00      -0.00   -3145.11       0.00    2223.92       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0    1134.41       0.00       0.00    1105.86    2223.93
                            0.00      -0.00    1372.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00    1372.00       0.00      -0.00
                          390.50       0.00       0.00   -1535.36    2223.92

    3   3.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00
                           -0.00   -1372.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1940.32       0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -2156.54       0.00       0.00     607.40    3145.11

    7   1.1  1.0 -1.0    1134.41       0.00       0.00    1105.86    2223.93
                           -0.00       0.00   -1372.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00    1372.00       0.00      -0.00
                         -390.50      -0.00      -0.00    1535.36   -2223.92

    9   3.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00    1372.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7226.31       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7226.28       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7226.28       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7226.32       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   18264.80
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.97711212 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1931.783      -0.000   -1931.784

    2    1  |1 1>+              0.000       0.003       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000    1931.784      -0.000

    3    1  |1 1>+              0.000       0.000       0.007      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    1931.783       0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1931.783       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.003       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.007       0.000    1931.784
                             1931.783       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000   -1931.784       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1931.784       0.000       0.003
                             1931.784      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000   -1931.784       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000   -1940.300       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1940.316       0.000       0.000       0.000       0.000

    2    1  |0 0>            1604.300       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    2156.540      -0.000    -552.244

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1940.318      -0.000       0.000      -0.000

    4    1  |0 0>               0.000    1940.301      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000   -1940.306      -0.000

    5    1  |0 0>            1563.928       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -607.401       0.000    2171.326

    6    1  |0 0>            3145.105      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -3145.112      -0.000   -3145.104

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000    1604.300       0.000       0.000    1563.928    3145.105
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000    1940.301       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1940.300       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1940.316      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>           -1931.784       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000   -1940.318       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -2156.540       0.000       0.000     607.401    3145.112

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    1940.306      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     552.244       0.000       0.000   -2171.326    3145.104

    3    1  |1 1>-              0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -1940.304       0.000       0.000       0.000

    1    1  |0 0>               0.000    7226.255       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7226.312       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7226.278       0.000       0.000       0.000
                             1940.304      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7226.280       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7226.317       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   18264.797
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.98937332    -0.01226119    -2691.02      0.00000000        0.00      0.0000
    2  -267.98937331    -0.01226119    -2691.02      0.00000001        0.00      0.0000
    3  -267.98937330    -0.01226118    -2691.02      0.00000001        0.00      0.0000
    4  -267.98937325    -0.01226113    -2691.01      0.00000006        0.01      0.0000
    5  -267.98937321    -0.01226109    -2691.00      0.00000011        0.02      0.0000
    6  -267.96831026     0.00880186     1931.79      0.02106305     4622.81      0.5732
    7  -267.96831026     0.00880187     1931.79      0.02106306     4622.81      0.5732
    8  -267.96831024     0.00880188     1931.79      0.02106307     4622.81      0.5732
    9  -267.96783942     0.00927271     2035.12      0.02153390     4726.14      0.5860
   10  -267.94072753     0.03638459     7985.49      0.04864578    10676.51      1.3237
   11  -267.94072744     0.03638468     7985.51      0.04864587    10676.54      1.3237
   12  -267.94072742     0.03638470     7985.52      0.04864589    10676.54      1.3237
   13  -267.94072737     0.03638476     7985.53      0.04864595    10676.55      1.3237
   14  -267.94072732     0.03638480     7985.54      0.04864599    10676.56      1.3237
   15  -267.88556057     0.09155155    20093.24      0.10381274    22784.26      2.8249

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000001  0.00000004  0.70531685 -0.34898097 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000015  0.00000001  0.68150078  0.00000001  0.00000010  0.70710680 -0.00000001 -0.00000008
                          -0.00000000 -0.00000000 -0.00002063  0.00000000  0.00000000  0.00073135  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000146  0.68149986 -0.00000001 -0.00000002 -0.00000002  0.00000001  0.70699729  0.00000051
                          -0.00000000  0.00022496 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01251485  0.00000000

   1    1  |1 0>           0.00000000 -0.00022496  0.00000000  0.00000000  0.00000000  0.00000000 -0.01251481  0.00000000
                           0.00000146  0.68150184 -0.00000001 -0.00000002 -0.00000002 -0.00000001 -0.70699476 -0.00000051

   2    1  |1 0>           0.00160461  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000053
                           0.68149976 -0.00000146 -0.00000015  0.00000000 -0.00000000 -0.00000008  0.00000051 -0.70710580

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000002 -0.00000012 -0.05043180  0.78531247 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00002063 -0.00000000 -0.00000000  0.00073135  0.00000000 -0.00000000
                           0.00000015  0.00000001  0.68150143  0.00000001  0.00000010 -0.70710600  0.00000001  0.00000008

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003  0.00000008 -0.65488424 -0.43633197 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00160461  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000053
                           0.68149829 -0.00000146 -0.00000015  0.00000000 -0.00000000  0.00000008 -0.00000051  0.70710777

   1    1  |0 0>           0.00000057  0.26667034 -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000124 -0.00000000
                          -0.00000000  0.00008803 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000004 -0.08859673  0.25151880 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.26666948 -0.00000057 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000114
                          -0.00062788 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000006 -0.00000000 -0.26666925 -0.00000000 -0.00000004  0.00000033 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000807 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000001  0.00000002 -0.25151943 -0.08859633 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000021  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.54734054 -0.00000000 -0.00000000 -0.00000000  0.12256144  0.17996206  0.18371474
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.18856331 -0.00000001  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00002980 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.18856323  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00004213 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00004213  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.18856559  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00020447  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.18856525 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.54734124  0.00000000  0.00000001  0.00000000 -0.21713159  0.01616034  0.18371509

   1    1  |1 1>-          0.00000000 -0.00000000  0.00002980  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.18856396 -0.00000001  0.00000001 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.54734127 -0.00000000 -0.00000001  0.00000000  0.09457062 -0.19612212  0.18371471

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00020446  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.18856317 -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.96378777 -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00021533  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000018 -0.00000001 -0.00000004 -0.00000000  0.94452869  0.19171456 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000002  0.00000004  0.96378727  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00104506  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.96378809 -0.00000004  0.00000004 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00015231 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000002  0.00000000  0.00000002 -0.00000000 -0.19171470  0.94452853  0.00000005
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.31820345  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000012  0.94802245
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.98937332     -0.01226119    -2691.02      0.00000000        0.00      0.0000
     2   1   -267.98937331     -0.01226119    -2691.02      0.00000001        0.00      0.0000
     3   1   -267.98937330     -0.01226118    -2691.02      0.00000001        0.00      0.0000
     4   1   -267.98937325     -0.01226113    -2691.01      0.00000006        0.01      0.0000
     5   1   -267.98937321     -0.01226109    -2691.00      0.00000011        0.02      0.0000
     6   1   -267.96831026      0.00880186     1931.79      0.02106305     4622.81      0.5732
     7   1   -267.96831026      0.00880187     1931.79      0.02106306     4622.81      0.5732
     8   1   -267.96831024      0.00880188     1931.79      0.02106307     4622.81      0.5732
     9   1   -267.96783942      0.00927271     2035.12      0.02153390     4726.14      0.5860
    10   1   -267.94072753      0.03638459     7985.49      0.04864578    10676.51      1.3237
    11   1   -267.94072744      0.03638468     7985.51      0.04864587    10676.54      1.3237
    12   1   -267.94072742      0.03638470     7985.52      0.04864589    10676.54      1.3237
    13   1   -267.94072737      0.03638476     7985.53      0.04864595    10676.55      1.3237
    14   1   -267.94072732      0.03638480     7985.54      0.04864599    10676.56      1.3237
    15   1   -267.88556057      0.09155155    20093.24      0.10381274    22784.26      2.8249

 E0 =   -267.97711212 is the energy of the lowest zeroth-order state
 E1 =   -267.98937332 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000001  0.00000004  0.70531685 -0.34898097 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000015  0.00000001  0.68150078  0.00000001  0.00000010  0.70710680 -0.00000001 -0.00000008
                               -0.00000000 -0.00000000 -0.00002063  0.00000000  0.00000000  0.00073135  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000146  0.68149986 -0.00000001 -0.00000002 -0.00000002  0.00000001  0.70699729  0.00000051
                               -0.00000000  0.00022496 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01251485  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00022496  0.00000000  0.00000000  0.00000000  0.00000000 -0.01251481  0.00000000
                                0.00000146  0.68150184 -0.00000001 -0.00000002 -0.00000002 -0.00000001 -0.70699476 -0.00000051

  5  1     2    1  |1 0>        0.00160461  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000053
                                0.68149976 -0.00000146 -0.00000015  0.00000000 -0.00000000 -0.00000008  0.00000051 -0.70710580

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000002 -0.00000012 -0.05043180  0.78531247 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00002063 -0.00000000 -0.00000000  0.00073135  0.00000000 -0.00000000
                                0.00000015  0.00000001  0.68150143  0.00000001  0.00000010 -0.70710600  0.00000001  0.00000008

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003  0.00000008 -0.65488424 -0.43633197 -0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00160461  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000053
                                0.68149829 -0.00000146 -0.00000015  0.00000000 -0.00000000  0.00000008 -0.00000051  0.70710777

 10  1     1    1  |0 0>        0.00000057  0.26667034 -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000124 -0.00000000
                               -0.00000000  0.00008803 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000004 -0.08859673  0.25151880 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.26666948 -0.00000057 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000114
                               -0.00062788 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000006 -0.00000000 -0.26666925 -0.00000000 -0.00000004  0.00000033 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000807 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000001  0.00000002 -0.25151943 -0.08859633 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000021  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.54734054 -0.00000000 -0.00000000 -0.00000000  0.12256144  0.17996206  0.18371474
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000  0.18856331 -0.00000001  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00002980 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.18856323  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00004213 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00004213  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.18856559  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00020447  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.18856525 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.54734124  0.00000000  0.00000001  0.00000000 -0.21713159  0.01616034  0.18371509

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00002980  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.18856396 -0.00000001  0.00000001 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.54734127 -0.00000000 -0.00000001  0.00000000  0.09457062 -0.19612212  0.18371471

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00020446  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.18856317 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.96378777 -0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00021533  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000018 -0.00000001 -0.00000004 -0.00000000  0.94452869  0.19171456 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000002  0.00000004  0.96378727  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00104506  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000  0.96378809 -0.00000004  0.00000004 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00015231 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000002  0.00000000  0.00000002 -0.00000000 -0.19171470  0.94452853  0.00000005
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.31820345  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000012  0.94802245
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.75%   12.18%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   46.44%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   46.44%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%   46.44%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>         46.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.25%   61.67%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   46.44%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   42.89%   19.04%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        46.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    7.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.78%    6.33%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          7.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    7.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    6.33%    0.78%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        29.96%    0.00%    0.00%    0.00%    1.50%    3.24%    3.38%
  2  1     2    1  |1 1>+         0.00%    0.00%    3.56%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    3.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    3.56%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         29.96%    0.00%    0.00%    0.00%    4.71%    0.03%    3.38%
  7  1     1    1  |1 1>-         0.00%    0.00%    3.56%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        29.96%    0.00%    0.00%    0.00%    0.89%    3.85%    3.38%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    3.56%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   92.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   89.21%    3.68%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   92.89%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   92.89%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.68%   89.21%    0.00%
 15  1     6    1  |0 0>         10.13%    0.00%    0.00%    0.00%    0.00%    0.00%   89.87%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      305.77       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       291.16    124.58    124.40     36.73      1.64      0.17      3.26
 REAL TIME  *       329.16 SEC
 DISK USED  *       350.86 MB (local),        9.81 GB (total)
 SF USED    *         2.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVQZ-PP energy=   -267.885560570937

              CI              CI           MULTI         RHF-SCF
   -267.80972430   -267.89314622   -266.91597966   -266.72069324
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
