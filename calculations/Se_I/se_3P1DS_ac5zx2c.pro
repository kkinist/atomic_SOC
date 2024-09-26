
 Working directory              : /wrk/irikura/molpro.wxwrbtQ1nQ/
 Global scratch directory       : /wrk/irikura/molpro.wxwrbtQ1nQ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.wxwrbtQ1nQ/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCV5Z-X2C
 set,dkho=101
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,9
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5302.2,5102.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 10:41:27  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCV5Z-X2C
 SETTING DKHO           =       101.00000000                                  
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SE     S aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     P aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     D aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     F aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     G aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     H aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry SE     I aug-cc-pwCV5Z-X      selected for orbital group  1


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

   1  SE     34.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   34
 NUMBER OF PRIMITIVE AOS:         475
 NUMBER OF SYMMETRY AOS:          342
 NUMBER OF CONTRACTIONS:          263   (  130Ag  +  133Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     475.529 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 27.001 MB, node maximum: 47.186 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   25282566.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15984186      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   497186979. AND WROTE     4168817. INTEGRALS IN     13 RECORDS. CPU TIME:     2.04 SEC, REAL TIME:     2.11 SEC
 SORT2 READ    51757926. AND WROTE   303595781. INTEGRALS IN   1632 RECORDS. CPU TIME:     0.51 SEC, REAL TIME:     0.55 SEC

 Node minimum:    25276762.  Node maximum:    25318282. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415161718
                                       19202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920  21111213141516171819
                                       20211112131415161718  192021

 Eigenvalues of metric

         1 0.117E-05 0.400E-04 0.266E-03 0.953E-03 0.953E-03 0.953E-03 0.953E-03 0.953E-03
         2 0.114E-04 0.114E-04 0.114E-04 0.283E-02 0.283E-02 0.283E-02 0.109E-01 0.109E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.20      9.00
 REAL TIME  *        10.39 SEC
 DISK USED  *        31.64 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   8  10
 Initial beta  occupancy:   6   9

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2308.40973236   -2308.40973236     0.00D+00     0.34D+00     0     0       0.14      0.25    start
   2    -2394.63517894     -86.22544658     0.29D+00     0.43D+00     1     0       0.15      0.40    diag2
   3    -2418.94020183     -24.30502289     0.32D+00     0.34D+00     2     0       0.15      0.55    diag2
   4    -2426.65715333      -7.71695151     0.13D+00     0.52D-01     3     0       0.15      0.70    diag2
   5    -2427.73512682      -1.07797349     0.47D-01     0.10D-01     4     0       0.14      0.84    diag2
   6    -2427.84959060      -0.11446378     0.94D-02     0.41D-02     5     0       0.15      0.99    diag2
   7    -2427.85072398      -0.00113338     0.14D-02     0.15D-02     6     0       0.15      1.14    diag2
   8    -2427.85078789      -0.00006391     0.20D-03     0.18D-03     7     0       0.15      1.29    fixocc
   9    -2427.85079260      -0.00000471     0.51D-04     0.54D-04     8     0       0.15      1.44    diag2
  10    -2427.85079271      -0.00000011     0.15D-04     0.60D-05     9     0       0.14      1.58    diag2/orth
  11    -2427.85079272      -0.00000001     0.46D-05     0.16D-05     9     0       0.15      1.73    diag2
  12    -2427.85079272      -0.00000000     0.97D-07     0.32D-06     9     0       0.15      1.88    diag2
  13    -2427.85079272      -0.00000000     0.15D-07     0.26D-07     0     0       0.15      2.03    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2427.850792719801
  RHF One-electron energy           -3366.812522489918
  RHF Two-electron energy             938.961729770117
  RHF Kinetic energy                 2588.703072977471
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.937863758136

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.48550     1  1  s    1.00001
    2.1     2.00000   -62.72192     1  2  s    0.99970
    3.1     2.00000    -9.59424     1  3  s    1.00076
    4.1     2.00000    -2.97362     1  1  d1+  1.00054
    5.1     2.00000    -2.97362     1  1  d0   0.86660    1  1  d2+ -0.50008
    6.1     2.00000    -2.97362     1  1  d0   0.50008    1  1  d2+  0.86658
    7.1     2.00000    -2.97362     1  1  d2-  1.00052
    8.1     2.00000    -2.97362     1  1  d1-  1.00054
    9.1     2.00000    -1.19167     1  4  s    1.02958
    1.2     2.00000   -55.03382     1  1  px   1.00006
    2.2     2.00000   -55.03382     1  1  py   1.00006
    3.2     2.00000   -55.03382     1  1  pz   1.00006
    4.2     2.00000    -7.10060     1  2  px   0.99994
    5.2     2.00000    -7.10060     1  2  py   0.99993
    6.2     2.00000    -7.10060     1  2  pz   0.99993
    7.2     1.00000    -0.78655     1  2  pz  -0.30208    1  8  pz   0.53065    1  9  pz   0.41202
    8.2     1.00000    -0.78655     1  2  py  -0.30208    1  8  py   0.53065    1  9  py   0.41202
    9.2     1.00000    -0.78655     1  2  px  -0.30208    1  8  px   0.53066    1  9  px   0.41203


 HOMO      9.2    -0.786552 =     -21.4032eV
 LUMO     10.1    -0.122673 =      -3.3381eV
 LUMO-HOMO         0.663878 =      18.0650eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.24      2.04      9.00
 REAL TIME  *        12.51 SEC
 DISK USED  *        37.63 MB (local),        1.45 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     245 (  121  124)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.405D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.366D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.369D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.753D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.182D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 5 3 6 1 1   5 4 3 6 2 1 5 4 3 2   611 7 8141015 91312   2 6 4 3 5 111 714 8
                                       1015 91312 2 6 4 3 5   110 913 715 8141211   5 4 3 2 6 110 91315   7 8141112 5 4 3 2 6
                                       16282221201824261923  172725 11013 9 715 8  141112 4 5 3 2 6 110  13 915 7 8141112 5 3
                                        4 6 2 1 5 4 3 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.185D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.660D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.823D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.579D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.420D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.470D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.576D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.572D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.409D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 2 1 3   2 1 3 2 1 6 5 4 810   9 7 3 2 1 6 5 8 410   9 7 6 5 8 410 9 719
                                       12211417161520131811   3 2 1 7 910 8 4 6 5  20131811151716211419  12 2 3 1 7 910 4 8 5
                                        6201318111517161421  1219 7 910 4 8 5 6 1   2 3 7 910 8 4 6 520  18131511161714211912
                                        1 2 3 7 910 8 4 6 5   1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2231  ( 26 closed/active, 1712 closed/virtual, 0 active/active, 493 active/virtual )
 Total number of variables:    2300
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -2428.07662055   -2428.11912996   -0.04250941    0.27755335 0.00001827 0.00000000  0.20E+00      1.85
   2    6   10    0  -2428.12065293   -2428.12081684   -0.00016391    0.01646038 0.00000018 0.00000000  0.13E-01      3.86
   3   21   42    0  -2428.12081727   -2428.12081728   -0.00000000    0.00007091 0.00000008 0.00000000  0.49E-04      6.03

 CONVERGENCE REACHED!  Final gradient:    0.00000007 ( 0.73E-07)
                       Final energy:  -2428.12081728
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2428.158225557070
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837206
 One electron energy                         -3379.27426857
 Two electron energy                           951.11604301
 Virial ratio                                    1.93788640
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2428.158225557046
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837207
 One electron energy                         -3379.27426860
 Two electron energy                           951.11604304
 Virial ratio                                    1.93788640
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2428.158225556926
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837207
 One electron energy                         -3379.27426858
 Two electron energy                           951.11604303
 Virial ratio                                    1.93788640
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2428.109609321734
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837207
 One electron energy                         -3379.27426859
 Two electron energy                           951.16465927
 Virial ratio                                    1.93786762
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2428.109609321710
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837207
 One electron energy                         -3379.27426860
 Two electron energy                           951.16465928
 Virial ratio                                    1.93786762
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2428.109609321654
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837206
 One electron energy                         -3379.27426857
 Two electron energy                           951.16465925
 Virial ratio                                    1.93786762
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2428.109609321545
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837207
 One electron energy                         -3379.27426858
 Two electron energy                           951.16465926
 Virial ratio                                    1.93786762
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2428.109609321541
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.96837206
 One electron energy                         -3379.27426858
 Two electron energy                           951.16465926
 Virial ratio                                    1.93786762
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2428.064632217051
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.90267821
 One electron energy                         -3379.05569606
 Two electron energy                           950.99106384
 Virial ratio                                    1.93787405
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000025155
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999978584
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999994625
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.365422130698
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000994
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999970444
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000029053
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.634544254919
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999996277
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999998190
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000007184
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.114394353928
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000006309
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000022520
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999984490
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.885617039119
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999978567
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000023226
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998190
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.520183515374
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999992696
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000007036
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999986457
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.479838705963
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 5 3 6 1 1   5 3 4 2 6 1 5 3 4 2   610131514 912 8 711   5 3 4 2 6 110131415
                                        912 8 711 5 3 4 2 6   110131415 9 812 711   5 3 4 2 6 113101415   9 812 711 5 3 4 2 6
                                       16222018241928232617  212527 113101514 9 8  12 711 4 5 3 2 6 113  101415 9 812 711 5 3
                                        4 6 2 1 5 3 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 2 1 1   2 3 1 2 3 7 9 410 8   6 5 1 2 3 7 9 4 810   6 5 7 9 4 810 6 520
                                       18171511141613211912   1 2 3 7 9 4 810 6 5  18201715111416132119  12 1 2 3 7 9 410 8 6
                                        5182017151114162113  1912 7 9 410 8 6 5 1   2 3 9 7 4 810 6 518  20151711161421131912
                                        1 2 3 9 7 4 810 6 5   1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.11003     1  1  s    1.00000
    2.1     2.00000   -62.34826     1  2  s    1.00003
    3.1     2.00000    -9.22140     1  3  s    0.99969
    4.1     2.00000    -2.60189     1  1  d1+  1.00006
    5.1     2.00000    -2.60189     1  1  d0   1.00006
    6.1     2.00000    -2.60189     1  1  d2+  1.00006
    7.1     2.00000    -2.60189     1  1  d2-  1.00006
    8.1     2.00000    -2.60189     1  1  d1-  1.00006
    9.1     1.99364    -0.86293     1  4  s    1.00287
    1.2     2.00000   -54.66058     1  1  px   1.00001
    2.2     2.00000   -54.66058     1  1  py   1.00001
    3.2     2.00000   -54.66058     1  1  pz   1.00001
    4.2     2.00000    -6.72930     1  2  px   0.99985
    5.2     2.00000    -6.72930     1  2  py   0.99985
    6.2     2.00000    -6.72930     1  2  pz   0.99985
    7.2     1.33545    -0.26690     1  2  pz  -0.27693    1  8  pz   0.42887    1  9  pz   0.43635
    8.2     1.33545    -0.26690     1  2  py  -0.27693    1  8  py   0.42887    1  9  py   0.43635
    9.2     1.33545    -0.26690     1  2  px  -0.27693    1  8  px   0.42887    1  9  px   0.43635
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a2a         -0.00006101      0.00004254      1.00000000
 2 2aa          0.00014640      0.99999999     -0.00004254
 2 aa2          0.99999999     -0.00014634      0.00007331
 
 Energy:    -2428.15822556  -2428.15822556  -2428.15822556
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.80473656     -0.00010333      0.00004604     -0.00001665     -0.13807181      0.56902672
 2 022         -0.28278863     -0.00000523     -0.00005526      0.00017579      0.76595923      0.56902672
 2 ba2          0.00003434      0.00002657     -0.70710678     -0.00004376     -0.00004118     -0.00000000
 2 ab2         -0.00003434     -0.00002657      0.70710678      0.00004376      0.00004118      0.00000000
 2 2ba         -0.00009550     -0.70710677     -0.00003996      0.00001982     -0.00003693      0.00000000
 2 2ab          0.00009550      0.70710677      0.00003996     -0.00001982      0.00003693     -0.00000000
 2 b2a          0.00001956     -0.00002199      0.00005695     -0.70710676      0.00010286      0.00000000
 2 a2b         -0.00001956      0.00002199     -0.00005695      0.70710676     -0.00010286     -0.00000000
 2 220         -0.52194792      0.00010856      0.00000922     -0.00015914     -0.62788742      0.56902672
 0 222         -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.16919155
 
 Energy:    -2428.10960932  -2428.10960932  -2428.10960932  -2428.10960932  -2428.10960932  -2428.06463222
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        17.70      6.46      2.04      9.00
 REAL TIME  *        20.11 SEC
 DISK USED  *       103.24 MB (local),        2.21 GB (total)
 SF USED    *       167.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2428.158226   2.0
    -2428.158226   2.0
    -2428.158226   2.0
    -2428.109609   6.0
    -2428.109609   6.0
    -2428.109609   6.0
    -2428.109609   6.0
    -2428.109609   6.0
    -2428.064632   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 34
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.78 sec, npass=  1  Memory used:   4.09 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.15822556
     2     -2428.15822556
     3     -2428.15822556

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         69117
 Number of doubly external configurations:       7385988
 Total number of contracted configurations:      7455141
 Total number of uncontracted configurations:   23850063

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1887161 words, CPU-time:      0.77 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.15822556     0.00000000    -1.17997536  0.30D-01  0.89D-01     1.89
    1     2     2     1.00000000     0.00000000 -2428.15822556    -0.00000000    -1.17975547  0.29D-01  0.89D-01     1.89
    1     3     3     1.00000000     0.00000000 -2428.15822556     0.00000000    -1.17986093  0.29D-01  0.89D-01     1.89
    2     1     1     1.08100011    -0.97756990 -2429.13579545    -0.97756990    -0.02512080  0.27D-02  0.20D-02    26.15
    2     2     2     1.08108009    -0.97751251 -2429.13573806    -0.97751251    -0.02516993  0.28D-02  0.20D-02    26.15
    2     3     3     1.08117273    -0.97742842 -2429.13565398    -0.97742842    -0.02525311  0.28D-02  0.20D-02    26.15
    3     1     1     1.06378051    -1.00133794 -2429.15956350    -0.02376805    -0.00039074  0.33D-04  0.40D-04    50.48
    3     2     2     1.06377471    -1.00133789 -2429.15956345    -0.02382538    -0.00039075  0.33D-04  0.40D-04    50.48
    3     3     3     1.06378614    -1.00133769 -2429.15956325    -0.02390927    -0.00039092  0.33D-04  0.40D-04    50.48
    4     1     1     1.06255696    -1.00172036 -2429.15994592    -0.00038242    -0.00001330  0.16D-05  0.10D-05    74.83
    4     2     2     1.06255467    -1.00172034 -2429.15994589    -0.00038245    -0.00001334  0.16D-05  0.10D-05    74.83
    4     3     3     1.06255561    -1.00172033 -2429.15994589    -0.00038264    -0.00001334  0.16D-05  0.10D-05    74.83
    5     1     1     1.06253849    -1.00173333 -2429.15995889    -0.00001297    -0.00000047  0.66D-07  0.36D-07    99.04
    5     2     2     1.06253849    -1.00173333 -2429.15995889    -0.00001299    -0.00000047  0.66D-07  0.36D-07    99.04
    5     3     3     1.06253854    -1.00173333 -2429.15995889    -0.00001300    -0.00000047  0.66D-07  0.36D-07    99.04
    6     1     1     1.06254123    -1.00173380 -2429.15995936    -0.00000047    -0.00000002  0.14D-08  0.17D-08   123.28
    6     2     2     1.06254124    -1.00173380 -2429.15995936    -0.00000047    -0.00000002  0.14D-08  0.17D-08   123.28
    6     3     3     1.06254125    -1.00173380 -2429.15995936    -0.00000047    -0.00000002  0.14D-08  0.17D-08   123.28


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.5%   7.0%  23.2%

 Initialization:   1.4%
 Other:           67.6%

 Total CPU:      123.3 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222//           0.9701222   0.0000000  -0.0000000
 2222222222//2           0.0000000   0.9701222  -0.0000000
 2222222222/2/          -0.0000000  -0.0000000   0.9701222

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.970122   -0.000000
 2           0.970122    0.000000   -0.000000
 3          -0.000000   -0.000000    0.970122

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970122    0.000000   -0.000000
 2           0.000000    0.970122   -0.000000
 3          -0.000000   -0.000000    0.970122


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97012219 (fixed)   0.97012219 (relaxed)   0.97012219 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000307   -0.00001878   -0.90724509
 Singles      0.01010715   -0.03774861   -0.04505484
 Pairs        0.05243427   -0.00000000   -0.04943387
 Total        1.06254449   -0.03776739   -1.00173380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15822556
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.91865682
 One electron energy                -3378.47771336
 Two electron energy                  949.31775400
 Virial quotient                       -0.93792906
 Correlation energy                    -1.00173380
 !MRCI STATE 1.1 Energy             -2429.159959361292

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.22261229 (Davidson, fixed reference)
 Cluster corrected energies         -2429.22261229 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.22261229 (Davidson, rotated reference)

 Cluster corrected energies         -2429.21996688 (Pople, fixed reference)
 Cluster corrected energies         -2429.21996688 (Pople, relaxed reference)
 Cluster corrected energies         -2429.21996688 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97012218 (fixed)   0.97012218 (relaxed)   0.97012218 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000307   -0.00001878   -0.90724514
 Singles      0.01010711   -0.03774854   -0.04505478
 Pairs        0.05243433   -0.00000000   -0.04943388
 Total        1.06254450   -0.03776732   -1.00173380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15822556
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.91866034
 One electron energy                -3378.47771533
 Two electron energy                  949.31775596
 Virial quotient                       -0.93792905
 Correlation energy                    -1.00173380
 !MRCI STATE 2.1 Energy             -2429.159959361229

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.22261230 (Davidson, fixed reference)
 Cluster corrected energies         -2429.22261230 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.22261230 (Davidson, rotated reference)

 Cluster corrected energies         -2429.21996689 (Pople, fixed reference)
 Cluster corrected energies         -2429.21996689 (Pople, relaxed reference)
 Cluster corrected energies         -2429.21996689 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97012218 (fixed)   0.97012218 (relaxed)   0.97012218 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000307   -0.00001878   -0.00002057
 Singles      0.01010715   -0.03774860   -0.04505483
 Pairs        0.05243429   -0.96396642   -0.95665841
 Total        1.06254451   -1.00173380   -1.00173380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15822556
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.91866200
 One electron energy                -3378.47771705
 Two electron energy                  949.31775769
 Virial quotient                       -0.93792905
 Correlation energy                    -1.00173380
 !MRCI STATE 3.1 Energy             -2429.159959361103

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.22261231 (Davidson, fixed reference)
 Cluster corrected energies         -2429.22261231 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.22261231 (Davidson, rotated reference)

 Cluster corrected energies         -2429.21996690 (Pople, fixed reference)
 Cluster corrected energies         -2429.21996690 (Pople, relaxed reference)
 Cluster corrected energies         -2429.21996690 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      176.79       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       143.23    125.52      6.46      2.04      9.00
 REAL TIME  *       154.24 SEC
 DISK USED  *       277.24 MB (local),        4.25 GB (total)
 SF USED    *         1.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2429.22261229  AU                              
 SETTING HLSDIAG(2)     =     -2429.22261230  AU                              
 SETTING HLSDIAG(3)     =     -2429.22261231  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 34
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.10960932
     2     -2428.10960932
     3     -2428.10960932
     4     -2428.10960932
     5     -2428.10960932
     6     -2428.06463222

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.20D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         59792
 Number of doubly external configurations:      12402571
 Total number of contracted configurations:     12462412
 Total number of uncontracted configurations:   20299421

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2002175 words, CPU-time:      1.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.10960932    -0.00000000    -1.18235982  0.31D-01  0.86D-01     1.73
    1     2     2     1.00000000     0.00000000 -2428.10960932    -0.00000000    -1.18415853  0.31D-01  0.87D-01     1.73
    1     3     3     1.00000000     0.00000000 -2428.10960932    -0.00000000    -1.18432729  0.31D-01  0.87D-01     1.73
    1     4     4     1.00000000     0.00000000 -2428.10960932    -0.00000000    -1.18402479  0.31D-01  0.87D-01     1.73
    1     5     5     1.00000000     0.00000000 -2428.10960932    -0.00000000    -1.18291860  0.30D-01  0.86D-01     1.73
    1     6     6     1.00000000     0.00000000 -2428.06463222    -0.00000000    -1.16347024  0.54D-02  0.98D-01     1.73
    2     1     1     1.08087971    -0.98621622 -2429.09582555    -0.98621622    -0.02396267  0.26D-02  0.17D-02    94.88
    2     2     2     1.08101206    -0.98600892 -2429.09561824    -0.98600892    -0.02420791  0.26D-02  0.17D-02    94.88
    2     3     3     1.08128904    -0.98584170 -2429.09545102    -0.98584170    -0.02439891  0.26D-02  0.17D-02    94.88
    2     4     4     1.08136647    -0.98576535 -2429.09537467    -0.98576535    -0.02447586  0.26D-02  0.17D-02    94.88
    2     5     5     1.08138931    -0.98566814 -2429.09527747    -0.98566814    -0.02459969  0.27D-02  0.17D-02    94.88
    2     6     6     1.07373604    -0.98185205 -2429.04648427    -0.98185205    -0.02027645  0.12D-02  0.20D-02    94.88
    3     1     1     1.06644701    -1.00849885 -2429.11810817    -0.02228262    -0.00043749  0.33D-04  0.53D-04   188.61
    3     2     2     1.06648669    -1.00849489 -2429.11810421    -0.02248597    -0.00044425  0.34D-04  0.53D-04   188.61
    3     3     3     1.06643306    -1.00849360 -2429.11810292    -0.02265191    -0.00044286  0.33D-04  0.54D-04   188.61
    3     4     4     1.06647905    -1.00849260 -2429.11810192    -0.02272725    -0.00044624  0.34D-04  0.54D-04   188.61
    3     5     5     1.06647247    -1.00848988 -2429.11809920    -0.02282174    -0.00044925  0.33D-04  0.55D-04   188.61
    3     6     6     1.06322418    -1.00083467 -2429.06546688    -0.01898262    -0.00036785  0.15D-04  0.55D-04   188.61
    4     1     1     1.06511142    -1.00893587 -2429.11854520    -0.00043703    -0.00001497  0.16D-05  0.13D-05   282.32
    4     2     2     1.06511842    -1.00893576 -2429.11854509    -0.00044087    -0.00001519  0.16D-05  0.13D-05   282.32
    4     3     3     1.06511800    -1.00893575 -2429.11854507    -0.00044215    -0.00001520  0.16D-05  0.13D-05   282.32
    4     4     4     1.06511082    -1.00893571 -2429.11854503    -0.00044311    -0.00001511  0.16D-05  0.13D-05   282.32
    4     5     5     1.06511801    -1.00893565 -2429.11854497    -0.00044577    -0.00001527  0.16D-05  0.14D-05   282.32
    4     6     6     1.06202418    -1.00120623 -2429.06583844    -0.00037156    -0.00001273  0.13D-05  0.11D-05   282.32
    5     1     1     1.06502823    -1.00895108 -2429.11856040    -0.00001521    -0.00000052  0.48D-07  0.45D-07   375.41
    5     2     2     1.06502806    -1.00895108 -2429.11856040    -0.00001531    -0.00000052  0.48D-07  0.45D-07   375.41
    5     3     3     1.06503010    -1.00895106 -2429.11856038    -0.00001531    -0.00000054  0.52D-07  0.46D-07   375.41
    5     4     4     1.06503000    -1.00895106 -2429.11856038    -0.00001535    -0.00000054  0.52D-07  0.46D-07   375.41
    5     5     5     1.06503027    -1.00895106 -2429.11856038    -0.00001541    -0.00000054  0.53D-07  0.46D-07   375.41
    5     6     6     1.06198751    -1.00121918 -2429.06585140    -0.00001295    -0.00000048  0.47D-07  0.38D-07   375.41
    6     1     1     1.06502841    -1.00895159 -2429.11856091    -0.00000051    -0.00000002  0.12D-08  0.23D-08   469.47
    6     2     2     1.06502832    -1.00895159 -2429.11856091    -0.00000051    -0.00000002  0.12D-08  0.23D-08   469.47
    6     3     3     1.06502855    -1.00895159 -2429.11856091    -0.00000052    -0.00000002  0.13D-08  0.25D-08   469.47
    6     4     4     1.06502854    -1.00895159 -2429.11856091    -0.00000052    -0.00000002  0.13D-08  0.25D-08   469.47
    6     5     5     1.06502854    -1.00895159 -2429.11856091    -0.00000052    -0.00000002  0.13D-08  0.25D-08   469.47
    6     6     6     1.06199284    -1.00121964 -2429.06585185    -0.00000046    -0.00000002  0.12D-08  0.16D-08   469.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.4%   5.8%  28.7%

 Initialization:   0.3%
 Other:           64.6%

 Total CPU:      469.5 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\2          -0.0000000   0.0000000  -0.0000000   0.9689571  -0.0000000   0.0000000
 22222222222/\           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9689571   0.0000000
 2222222222/2\          -0.0000000   0.0000000   0.9689571   0.0000000  -0.0000000  -0.0000000
 2222222222022          -0.0456408   0.7898327   0.0000000  -0.0000000  -0.0000000   0.5528618
 2222222222202           0.7068355  -0.3553902   0.0000000  -0.0000000  -0.0000000   0.5528618
 2222222222220          -0.6611947  -0.4344424   0.0000000  -0.0000000  -0.0000000   0.5528617
 2222220222222          -0.0000001   0.0000003  -0.0000000   0.0000000   0.0000000  -0.1569546

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.926812    0.000000   -0.000000   -0.000000    0.282663    0.000000
 2          -0.282663   -0.000000    0.000000    0.000000    0.926812   -0.000000
 3          -0.000000   -0.000000   -0.000000    0.968957    0.000000    0.000000
 4           0.000000   -0.000000    0.968957    0.000000   -0.000000   -0.000000
 5          -0.000000    0.968957   -0.000000   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.970335

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968957    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.968957    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.968957    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.968957   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.968957   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970335


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.92681150 (fixed)   0.96895715 (relaxed)   0.96895715 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006832   -0.00026581   -0.90844199
 Singles      0.01159954   -0.04143782   -0.04989356
 Pairs        0.05343331   -0.00000007   -0.05061604
 Total        1.06510117   -0.04170370   -1.00895159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10960932
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.90901363
 One electron energy                -3378.39709923
 Two electron energy                  949.27853832
 Virial quotient                       -0.93791656
 Correlation energy                    -1.00895159
 !MRCI STATE 1.1 Energy             -2429.118560909453

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.18424484 (Davidson, fixed reference)
 Cluster corrected energies         -2429.18424484 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.18424484 (Davidson, rotated reference)

 Cluster corrected energies         -2429.18220199 (Pople, fixed reference)
 Cluster corrected energies         -2429.18220199 (Pople, relaxed reference)
 Cluster corrected energies         -2429.18220199 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92681155 (fixed)   0.96895719 (relaxed)   0.96895719 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006832   -0.00026581   -0.90844217
 Singles      0.01159948   -0.04143776   -0.04989351
 Pairs        0.05343328   -0.00000003   -0.05061591
 Total        1.06510108   -0.04170360   -1.00895159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10960932
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.90899359
 One electron energy                -3378.39708759
 Two electron energy                  949.27852668
 Virial quotient                       -0.93791657
 Correlation energy                    -1.00895159
 !MRCI STATE 2.1 Energy             -2429.118560909119

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.18424475 (Davidson, fixed reference)
 Cluster corrected energies         -2429.18424475 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.18424475 (Davidson, rotated reference)

 Cluster corrected energies         -2429.18220190 (Pople, fixed reference)
 Cluster corrected energies         -2429.18220190 (Pople, relaxed reference)
 Cluster corrected energies         -2429.18220190 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96895708 (fixed)   0.96895708 (relaxed)   0.96895708 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006832   -0.00026581   -0.90844179
 Singles      0.01159972   -0.04143797   -0.04989387
 Pairs        0.05343328   -0.00000000   -0.05061593
 Total        1.06510131   -0.04170378   -1.00895159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10960932
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.90899333
 One electron energy                -3378.39713168
 Two electron energy                  949.27857077
 Virial quotient                       -0.93791657
 Correlation energy                    -1.00895159
 !MRCI STATE 3.1 Energy             -2429.118560908288

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.18424498 (Davidson, fixed reference)
 Cluster corrected energies         -2429.18424498 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.18424498 (Davidson, rotated reference)

 Cluster corrected energies         -2429.18220213 (Pople, fixed reference)
 Cluster corrected energies         -2429.18220213 (Pople, relaxed reference)
 Cluster corrected energies         -2429.18220213 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96895709 (fixed)   0.96895709 (relaxed)   0.96895709 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006832   -0.00026581   -0.90844179
 Singles      0.01159973   -0.04143799   -0.04989388
 Pairs        0.05343325    0.00000000   -0.05061592
 Total        1.06510129   -0.04170381   -1.00895159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10960932
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.90898481
 One electron energy                -3378.39711561
 Two electron energy                  949.27855470
 Virial quotient                       -0.93791657
 Correlation energy                    -1.00895159
 !MRCI STATE 4.1 Energy             -2429.118560908273

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.18424496 (Davidson, fixed reference)
 Cluster corrected energies         -2429.18424496 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.18424496 (Davidson, rotated reference)

 Cluster corrected energies         -2429.18220212 (Pople, fixed reference)
 Cluster corrected energies         -2429.18220212 (Pople, relaxed reference)
 Cluster corrected energies         -2429.18220212 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96895709 (fixed)   0.96895709 (relaxed)   0.96895709 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006832   -0.00026581   -0.90844171
 Singles      0.01159983   -0.04143807   -0.04989397
 Pairs        0.05343315    0.00000000   -0.05061590
 Total        1.06510130   -0.04170388   -1.00895159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10960932
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.90902988
 One electron energy                -3378.39716630
 Two electron energy                  949.27860540
 Virial quotient                       -0.93791656
 Correlation energy                    -1.00895159
 !MRCI STATE 5.1 Energy             -2429.118560908232

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.18424496 (Davidson, fixed reference)
 Cluster corrected energies         -2429.18424496 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.18424496 (Davidson, rotated reference)

 Cluster corrected energies         -2429.18220212 (Pople, fixed reference)
 Cluster corrected energies         -2429.18220212 (Pople, relaxed reference)
 Cluster corrected energies         -2429.18220212 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97033476 (fixed)   0.97036239 (relaxed)   0.97033476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008114   -0.00013104   -0.00019987
 Singles      0.00302379   -0.01869563   -0.02045295
 Pairs        0.05897408   -0.98239296   -0.98056682
 Total        1.06207901   -1.00121963   -1.00121964
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.06463222
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.86496349
 One electron energy                -3378.16077224
 Two electron energy                  949.09492039
 Virial quotient                       -0.93791216
 Correlation energy                    -1.00121964
 !MRCI STATE 6.1 Energy             -2429.065851852761

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.12800657 (Davidson, fixed reference)
 Cluster corrected energies         -2429.12794601 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.12800657 (Davidson, rotated reference)

 Cluster corrected energies         -2429.12591562 (Pople, fixed reference)
 Cluster corrected energies         -2429.12585394 (Pople, relaxed reference)
 Cluster corrected energies         -2429.12591562 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      751.88       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       626.96    483.73    125.52      6.46      2.04      9.00
 REAL TIME  *       667.74 SEC
 DISK USED  *       852.33 MB (local),       10.99 GB (total)
 SF USED    *         5.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2429.18424484  AU                              
 SETTING HLSDIAG(5)     =     -2429.18424475  AU                              
 SETTING HLSDIAG(6)     =     -2429.18424498  AU                              
 SETTING HLSDIAG(7)     =     -2429.18424496  AU                              
 SETTING HLSDIAG(8)     =     -2429.18424496  AU                              
 SETTING HLSDIAG(9)     =     -2429.12800657  AU                              


         HLSDIAG
    -2429.222612
    -2429.222612
    -2429.222612
    -2429.184245
    -2429.184245
    -2429.184245
    -2429.184245
    -2429.184245
    -2429.128007
                                                  

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

 Time for Seward_LS:      41.05 sec

      283505894. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    86875 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     41.05 sec, REAL time:     42.35 sec


 SORTLS1 read   355673347. and wrote   355673347. SO integrals in  1370 records. CPU time:      3.14 sec, REAL time:      5.08 sec
 SORTLS2 read   355673347. and wrote  1807811302. SO integrals in    36 records. CPU time:      2.23 sec, REAL time:      3.04 sec

 FILE SIZES: FILE 1:  5799.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  5799.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5530.41       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      751.88       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       674.19     47.21    483.73    125.52      6.46      2.04      9.00
 REAL TIME  *       719.05 SEC
 DISK USED  *       852.73 MB (local),       29.07 GB (total)
 SF USED    *         5.39 GB
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
  
 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2429.159959  -2429.159959  -2429.159959
 Replaced energies:  -2429.222612  -2429.222612  -2429.222612

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2429.118561  -2429.118561  -2429.118561  -2429.118561  -2429.118561  -2429.065852
 Replaced energies:  -2429.184245  -2429.184245  -2429.184245  -2429.184245  -2429.184245  -2429.128007



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2429.22261231

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00     678.63       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     678.63       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00    -678.63       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00    -959.72      -0.00      -0.00      -0.00       0.00       0.00       0.00    -657.78

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -703.19
                           -0.00     959.72      -0.00    -678.63       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00    -678.63      -0.00       0.00       0.00       0.00      -0.00     678.63       0.00       0.00
                            0.00       0.00     678.63       0.00       0.00       0.00      -0.00       0.00     678.63      64.21

    5   2.1  1.0  0.0     678.63       0.00       0.00       0.00       0.00       0.00    -678.63       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                         -678.63       0.00       0.00      -0.00      -0.00       0.00    -678.63       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -678.63      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     678.63      -0.00      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00     678.63       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     959.72     657.78

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -703.19
                           -0.00      -0.00      -0.00    -678.63       0.00       0.00       0.00    -959.72       0.00      -0.00

   10   1.1  0.0  0.0      -0.00      -0.00    -703.19       0.00       0.00       0.00      -0.00      -0.00    -703.19    8420.69
                           -0.00     657.78      -0.00     -64.21       0.00       0.00       0.00    -657.78       0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00     353.56       0.00       0.00       0.00      -0.00       0.00     353.56       0.00
                           -0.00     432.20       0.00    1111.24      -0.00       0.00       0.00    -432.20      -0.00      -0.00

   12   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          681.62       0.00      -0.00      -0.00    -963.97      -0.00    -681.62      -0.00       0.00      -0.00

   13   4.1  0.0  0.0    -681.63       0.00      -0.00       0.00       0.00       0.00    -681.63       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     963.97      -0.00       0.00       0.00      -0.00

   14   5.1  0.0  0.0       0.00    -681.63      -0.00       0.00       0.00       0.00       0.00    -681.63      -0.00       0.00
                            0.00      -0.00    -681.62       0.00      -0.00       0.00      -0.00       0.00     681.62      -0.00

   15   6.1  0.0  0.0      -0.00      -0.00    1105.06       0.00       0.00       0.00      -0.00      -0.00    1105.06       0.00
                           -0.00    1105.06      -0.00   -1562.81       0.00       0.00       0.00   -1105.06       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00    -681.63       0.00      -0.00
                            0.00    -681.62      -0.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00    -681.63      -0.00
                         -432.20      -0.00       0.00       0.00   -1105.06

    3   3.1  1.0  1.0     353.56       0.00      -0.00      -0.00    1105.06
                           -0.00       0.00       0.00     681.62       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -1111.24       0.00      -0.00      -0.00    1562.81

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     963.97       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -963.97      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00       0.00    -681.63       0.00      -0.00
                           -0.00     681.62       0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00    -681.63      -0.00
                          432.20       0.00      -0.00      -0.00    1105.06

    9   3.1  1.0 -1.0     353.56       0.00      -0.00      -0.00    1105.06
                            0.00      -0.00      -0.00    -681.62      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8420.71       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8420.66       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8420.66       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8420.66       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   20763.56
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2429.22261231 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     959.723       0.000       0.000

    2    1  |1 1>+              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -959.723       0.000       0.000      -0.000     959.724

    1    1  |1 0>              -0.000       0.000       0.000       0.004       0.000       0.000       0.000    -959.724
                                0.000       0.000     959.723       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.001       0.000     959.724       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                             -959.723       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     959.724       0.000       0.004       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    -959.724       0.000      -0.000       0.000       0.001
                               -0.000      -0.000    -959.724       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     959.724      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000    -994.463       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -64.213       0.000       0.000      -0.000     930.247

    2    1  |0 0>              -0.000       0.000     500.008       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1111.238      -0.000       0.000      -0.000     611.227

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -963.974      -0.000     963.960       0.000

    4    1  |0 0>            -963.965       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     963.971       0.000      -0.000

    5    1  |0 0>               0.000    -963.970      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    6    1  |0 0>              -0.000      -0.000    1562.798       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1562.805       0.000       0.000      -0.000    1562.789

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000    -963.965       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000    -963.970      -0.000
                             -959.724       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -994.463     500.008       0.000      -0.000      -0.000    1562.798
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      64.213   -1111.238       0.000      -0.000      -0.000    1562.805

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     963.974       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -963.971      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -963.960      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -930.247    -611.227      -0.000       0.000       0.000   -1562.789

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000     963.963       0.000

    1    1  |0 0>               0.000    8420.687       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8420.707       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8420.656       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8420.659       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8420.659       0.000
                             -963.963      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20763.559
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2429.22786954    -0.00525723    -1153.83      0.00000000        0.00      0.0000
    2 -2429.22786953    -0.00525722    -1153.83      0.00000001        0.00      0.0000
    3 -2429.22786953    -0.00525722    -1153.83      0.00000001        0.00      0.0000
    4 -2429.22786953    -0.00525722    -1153.83      0.00000001        0.00      0.0000
    5 -2429.22786952    -0.00525721    -1153.82      0.00000002        0.00      0.0000
    6 -2429.21823948     0.00437283      959.72      0.00963006     2113.55      0.2620
    7 -2429.21823948     0.00437283      959.73      0.00963006     2113.55      0.2620
    8 -2429.21823947     0.00437284      959.73      0.00963007     2113.56      0.2620
    9 -2429.21560314     0.00700917     1538.33      0.01226640     2692.16      0.3338
   10 -2429.18336056     0.03925174     8614.76      0.04450898     9768.59      1.2112
   11 -2429.18336055     0.03925176     8614.76      0.04450899     9768.59      1.2112
   12 -2429.18336055     0.03925176     8614.77      0.04450899     9768.59      1.2112
   13 -2429.18336044     0.03925187     8614.79      0.04450910     9768.62      1.2112
   14 -2429.18336034     0.03925197     8614.81      0.04450920     9768.64      1.2112
   15 -2429.12627009     0.09634222    21144.67      0.10159945    22298.50      2.7647

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000003  0.70004539 -0.00000008 -0.00000002 -0.00000000  0.00000006  0.70710770 -0.00000005
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.70004630  0.00000003  0.00000000 -0.00000003  0.00000002  0.70710670 -0.00000006 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000004  0.00000002  0.00000008  0.78227491 -0.20363298 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000001 -0.00000003 -0.21478547  0.77928630 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00156887 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00145796
                          -0.00000000  0.00000008  0.70004542 -0.00000007  0.00000001  0.00000000  0.00000005  0.70710427

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000003  0.70004714 -0.00000008 -0.00000002 -0.00000000 -0.00000006 -0.70710587  0.00000005

   1    1  |1 1>-          0.00000000  0.00000000  0.00156887  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00145796
                           0.00000000 -0.00000008 -0.70004361  0.00000007 -0.00000001  0.00000000  0.00000005  0.70710629

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000002  0.00000005  0.56748841  0.57565298 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.70004628 -0.00000003 -0.00000000  0.00000003 -0.00000002  0.70710686 -0.00000006 -0.00000000

   1    1  |0 0>           0.00000001  0.00000000  0.00000001  0.13782844  0.02955280  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.02955311  0.13782871  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000002 -0.14096215  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000098
                          -0.00000000 -0.00000000 -0.00031591 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000001  0.14096260 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.14096236  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000068 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000024 -0.00000053  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.09967528 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.09967592 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.57171094 -0.00000000  0.00000000  0.00000000 -0.10192625  0.05345807  0.08049498
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.57171126  0.00000000 -0.00000000 -0.00000000  0.00466707 -0.11500010  0.08049533

   2    1  |1 0>          -0.00000000 -0.00004155 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.09967636  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.09967593 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00004155  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.09967470 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57171192 -0.00000000  0.00000000  0.00000000 -0.09725895 -0.06154148 -0.08049457

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.09967496  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000004  0.00000000 -0.00000000 -0.00000000  0.98986936 -0.01698821 -0.00000004
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000032 -0.00000000  0.00000000  0.00000000  0.01698824  0.98986931 -0.00000008
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.99001485  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00041273  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.99001492  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99001496  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.13942136 -0.00000000  0.00000000  0.00000000  0.00000010  0.00000019  0.99023315
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2429.22786954     -0.00525723    -1153.83      0.00000000        0.00      0.0000
     2   1  -2429.22786953     -0.00525722    -1153.83      0.00000001        0.00      0.0000
     3   1  -2429.22786953     -0.00525722    -1153.83      0.00000001        0.00      0.0000
     4   1  -2429.22786953     -0.00525722    -1153.83      0.00000001        0.00      0.0000
     5   1  -2429.22786952     -0.00525721    -1153.82      0.00000002        0.00      0.0000
     6   1  -2429.21823948      0.00437283      959.72      0.00963006     2113.55      0.2620
     7   1  -2429.21823948      0.00437283      959.73      0.00963006     2113.55      0.2620
     8   1  -2429.21823947      0.00437284      959.73      0.00963007     2113.56      0.2620
     9   1  -2429.21560314      0.00700917     1538.33      0.01226640     2692.16      0.3338
    10   1  -2429.18336056      0.03925174     8614.76      0.04450898     9768.59      1.2112
    11   1  -2429.18336055      0.03925176     8614.76      0.04450899     9768.59      1.2112
    12   1  -2429.18336055      0.03925176     8614.77      0.04450899     9768.59      1.2112
    13   1  -2429.18336044      0.03925187     8614.79      0.04450910     9768.62      1.2112
    14   1  -2429.18336034      0.03925197     8614.81      0.04450920     9768.64      1.2112
    15   1  -2429.12627009      0.09634222    21144.67      0.10159945    22298.50      2.7647

 E0 =  -2429.22261231 is the energy of the lowest zeroth-order state
 E1 =  -2429.22786954 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000003  0.70004539 -0.00000008 -0.00000002 -0.00000000  0.00000006  0.70710770 -0.00000005
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.70004630  0.00000003  0.00000000 -0.00000003  0.00000002  0.70710670 -0.00000006 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000004  0.00000002  0.00000008  0.78227491 -0.20363298 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000001 -0.00000003 -0.21478547  0.77928630 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00156887 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00145796
                               -0.00000000  0.00000008  0.70004542 -0.00000007  0.00000001  0.00000000  0.00000005  0.70710427

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000003  0.70004714 -0.00000008 -0.00000002 -0.00000000 -0.00000006 -0.70710587  0.00000005

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00156887  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00145796
                                0.00000000 -0.00000008 -0.70004361  0.00000007 -0.00000001  0.00000000  0.00000005  0.70710629

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000002  0.00000005  0.56748841  0.57565298 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.70004628 -0.00000003 -0.00000000  0.00000003 -0.00000002  0.70710686 -0.00000006 -0.00000000

 10  1     1    1  |0 0>        0.00000001  0.00000000  0.00000001  0.13782844  0.02955280  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.02955311  0.13782871  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000002 -0.14096215  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000098
                               -0.00000000 -0.00000000 -0.00031591 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000001  0.14096260 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000028  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.14096236  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000068 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000024 -0.00000053  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.09967528 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.09967592 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.57171094 -0.00000000  0.00000000  0.00000000 -0.10192625  0.05345807  0.08049498
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.57171126  0.00000000 -0.00000000 -0.00000000  0.00466707 -0.11500010  0.08049533

  5  1     2    1  |1 0>       -0.00000000 -0.00004155 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.09967636  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.09967593 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00004155  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.09967470 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57171192 -0.00000000  0.00000000  0.00000000 -0.09725895 -0.06154148 -0.08049457

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.09967496  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000004  0.00000000 -0.00000000 -0.00000000  0.98986936 -0.01698821 -0.00000004
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000032 -0.00000000  0.00000000  0.00000000  0.01698824  0.98986931 -0.00000008
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.99001485  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00041273  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.99001492  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99001496  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.13942136 -0.00000000  0.00000000  0.00000000  0.00000010  0.00000019  0.99023315
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.01%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+        49.01%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   61.20%    4.15%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    4.61%   60.73%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%   49.01%    0.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%   49.01%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   49.01%    0.00%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   32.20%   33.14%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        49.01%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    1.90%    0.09%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.09%    1.90%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    1.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    1.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          1.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.99%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.99%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        32.69%    0.00%    0.00%    0.00%    1.04%    0.29%    0.65%
  4  1     1    1  |1 0>         32.69%    0.00%    0.00%    0.00%    0.00%    1.32%    0.65%
  5  1     2    1  |1 0>          0.00%    0.99%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.99%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.99%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        32.69%    0.00%    0.00%    0.00%    0.95%    0.38%    0.65%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.99%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   97.98%    0.03%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%   97.98%    0.00%
 12  1     3    1  |0 0>          0.00%   98.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.01%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   98.01%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          1.94%    0.00%    0.00%    0.00%    0.00%    0.00%   98.06%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5530.41       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      751.88       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       876.76    202.57     47.21    483.73    125.52      6.46      2.04      9.00
 REAL TIME  *       951.27 SEC
 DISK USED  *       852.73 MB (local),       29.07 GB (total)
 SF USED    *         7.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCV5Z-X2C energy=  -2429.126270088762

              CI              CI           MULTI         RHF-SCF
  -2429.06585185  -2429.15995936  -2428.06463222  -2427.85079272
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
