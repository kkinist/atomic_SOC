
 Working directory              : /wrk/irikura/molpro.nqfImJgfho/
 Global scratch directory       : /wrk/irikura/molpro.nqfImJgfho/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.nqfImJgfho/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Sn SO-CI
                                                                                 ! Basis set from BSE instead of built-in
 memory,1500,M;
 
 gprint,orbitals,civector;
                                                                     !gthresh,twoint=1.d-14,step=1.d-9,gradient=1.d-9,energy=1.d-10
 
 symmetry,xyz
 geometry={Sn};
 
 basis={
 ecp,sn,ECP28MDF
                                                             ! tin                  (18s,15p,16d,6f,4g,1h) -&gt; [10s,10p,8d,6f,4g,1h]
 s, SN , 11606.9000000, 1754.8000000, 397.1780000, 90.2990000, 31.4890000, 19.6685000, 7.882900E+00, 7.0675900, 4.4149000, 3.099900E+00, 2.1635600, 1.219000E+00, 1.1428000, 0.5795400, 0.2607870, 0.1188950, 0.0531420, 0.0218000
 c, 6.6, 1.000000E+00
 c, 7.7, 1.000000E+00
 c, 10.10, 1.000000E+00
 c, 12.12, 1.000000E+00
 c, 1.17, 0.0000290, 0.0002060, 0.0008070, 0.0024710, -0.0400250, 0.1631520, 0.00000000, -0.5569830, -0.1699320, 0.00000000, 0.6510280, 0.00000000, 0.6316850, 0.1305790, 0.0012750, 0.0007000, -0.0000840
 c, 14.14, 1.0000000
 c, 15.15, 1.0000000
 c, 16.16, 1.0000000
 c, 17.17, 1.0000000
 c, 18.18, 1.0000000
 p, SN , 195.4950000, 18.2563000, 11.4094000, 6.9056700, 3.675500E+00, 2.9820600, 1.835400E+00, 1.6084300, 9.166000E-01, 0.8317670, 0.3937310, 0.1818010, 0.0818500, 0.0359930, 0.0145000
 c, 4.4, 1.000000E+00
 c, 5.5, 1.000000E+00
 c, 7.7, 1.000000E+00
 c, 1.14, 0.0002580, 0.0443410, -0.1091420, -0.1386060, 0.00000000, 0.3437430, 0.00000000, 0.5182710, 0.00000000, 0.2787060, 0.0408180, 0.0006310, 0.0007480, -0.0000860
 c, 9.9, 1.000000E+00
 c, 11.11, 1.0000000
 c, 12.12, 1.0000000
 c, 13.13, 1.0000000
 c, 14.14, 1.0000000
 c, 15.15, 1.0000000
 d, SN , 308.5020000, 93.6846000, 34.2925000, 13.7172000, 6.4494700, 4.520000E+00, 3.8827200, 2.2913500, 2.041300E+00, 1.3112700, 9.218000E-01, 0.7302100, 0.3944110, 0.2031800, 0.0866000, 0.0336000
 c, 6.6, 1.000000E+00
 c, 9.9, 1.000000E+00
 c, 1.15, 0.0000530, 0.0004410, 0.0025780, -0.0126510, 0.0267690, 0.00000000, 0.1591330, 0.2867000, 0.00000000, 0.3230030, 0.00000000, 0.2475480, 0.1182630, 0.0286880, 0.0019830
 c, 11.11, 1.000000E+00
 c, 13.13, 1.0000000
 c, 14.14, 1.0000000
 c, 15.15, 1.0000000
 c, 16.16, 1.0000000
 f, SN , 8.749200E+00, 3.094300E+00, 1.094300E+00, 0.4315000, 0.1772000, 0.0730000
 c, 1.1, 1.000000E+00
 c, 2.2, 1.000000E+00
 c, 3.3, 1.000000E+00
 c, 4.4, 1.0000000
 c, 5.5, 1.0000000
 c, 6.6, 1.0000000
 g, SN , 3.767400E+00, 1.110500E+00, 0.3774000, 0.1720000
 c, 1.1, 1.000000E+00
 c, 2.2, 1.000000E+00
 c, 3.3, 1.0000000
 c, 4.4, 1.0000000
 h, SN , 1.160400E+00
 c, 1.1, 1.000000E+00
 }
 
                                                                                 ! spherical anion orbitals (4S odd)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
                                                                                 ! add 6p to active space
 {multi
     closed,6,3
     occ,7,9
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
     wf,nelec=22,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Apr-24          TIME: 10:39:54  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sn   ECP ECP28MDF                 selected for group  1


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

   1  SN     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
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

         1 0.521E-04 0.521E-04 0.521E-04 0.521E-04 0.521E-04 0.124E-03 0.143E-02 0.627E-02
         2 0.171E-04 0.171E-04 0.171E-04 0.308E-02 0.308E-02 0.308E-02 0.107E-01 0.107E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     111.673 MB (compressed) written to integral file ( 15.2%)

     Node minimum: 3.670 MB, node maximum: 12.583 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4343202.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4343202      RECORD LENGTH: 524288

 Memory used in sort:       4.90 MW

 SORT1 READ    92659037. AND WROTE      765407. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    240 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4342000.  Node maximum:     4358043. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.38       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.98      1.79
 REAL TIME  *         2.85 SEC
 DISK USED  *        29.75 MB (local),      575.09 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.37056066    -213.37056066     0.00D+00     0.74D-01     0     0       0.03      0.05    start
   2     -213.37337525      -0.00281459     0.97D-03     0.21D-02     1     0       0.02      0.07    diag2
   3     -213.37367843      -0.00030317     0.53D-03     0.54D-03     2     0       0.03      0.10    diag2
   4     -213.37376959      -0.00009116     0.17D-03     0.38D-03     3     0       0.02      0.12    diag2
   5     -213.37377989      -0.00001031     0.46D-04     0.11D-03     4     0       0.03      0.15    diag2
   6     -213.37378080      -0.00000090     0.94D-05     0.47D-04     5     0       0.03      0.18    diag2
   7     -213.37378088      -0.00000008     0.25D-05     0.21D-04     6     0       0.02      0.20    diag2
   8     -213.37378088      -0.00000000     0.41D-06     0.45D-05     7     0       0.03      0.23    fixocc
   9     -213.37378088      -0.00000000     0.12D-06     0.90D-06     8     0       0.03      0.26    diag2
  10     -213.37378088      -0.00000000     0.58D-07     0.20D-06     0     0       0.03      0.29    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373780882668
  RHF One-electron energy            -381.083775115748
  RHF Two-electron energy             167.709994233080
  RHF Kinetic energy                   82.648116881720
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581713763521

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62713     1  5  s    0.99984
    2.1     2.00000    -1.07698     1  3  d2- -0.38514    1  3  d1+  0.87778    1  3  d1-  0.25268
    3.1     2.00000    -1.07698     1  3  d0   0.99943
    4.1     2.00000    -1.07698     1  3  d2-  0.36353    1  3  d1-  0.92291
    5.1     2.00000    -1.07698     1  3  d2-  0.68853    1  3  d1+  0.29061    1  3  d2+ -0.60758    1  3  d1- -0.26688
    6.1     2.00000    -1.07698     1  3  d2-  0.49436    1  3  d1+  0.36224    1  3  d2+  0.78179
    7.1     2.00000    -0.29349     1  5  s   -0.34485    1  7  s    0.43574    1  8  s    0.55699    1  9  s    0.25435
    1.2     2.00000    -3.81344     1  4  py  -0.66358    1  4  pz   0.72892
    2.2     2.00000    -3.81344     1  4  px   0.98507
    3.2     2.00000    -3.81344     1  4  py   0.73498    1  4  pz   0.67753
    4.2     1.00000    -0.05737     1  7  px   0.34595    1  8  px   0.40321    1  9  px   0.27340
    5.2     1.00000    -0.05737     1  7  py   0.34506    1  8  py   0.40218    1  9  py   0.27270
    6.2     1.00000    -0.05737     1  7  pz   0.34506    1  8  pz   0.40218    1  9  pz   0.27270


 HOMO      6.2    -0.057367 =      -1.5610eV
 LUMO      7.2     0.130561 =       3.5527eV
 LUMO-HOMO         0.187928 =       5.1138eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.38       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.85       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.27      0.29      1.79
 REAL TIME  *         3.63 SEC
 DISK USED  *        32.20 MB (local),      604.49 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.467D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.363D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.630D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.554D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 6 4   3 5 2 1 4 6 5 3 2 5   3 4 6 2 1 711 91310  12 81514 5 3 4 6 212
                                        8131011 91415 7 1 2   5 3 6 41310 812 7 9  111514 1 2 3 5 4 6 8  12 7 91114151310 1 2
                                        3 6 5 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.533D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.493D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.668D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.668D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.237D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.237D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 3   1 2 810 7 9 6 5 4 3   1 210 8 6 7 9 4 510   8 6 4 5 7 9 3 1 2 7
                                        9 810 4 5 6 3 1 219  14162113111217151820   6 4 5 9 710 8 3 1 2   7 9 4 5 6 810 3 2 1
                                        2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    6778
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   22    0   -213.17246034    -213.21650598   -0.04404563    0.17014286 0.00036787 0.00000000  0.76E+00      1.17
   2    7   12    0   -213.21415612    -213.21462790   -0.00047178    0.05232607 0.00000131 0.00000000  0.26E-01      2.18
   3    4    8    0   -213.21462897    -213.21462898   -0.00000001    0.00017285 0.00000003 0.00000000  0.29E-03      2.91
   4    2    4    0   -213.21462898    -213.21462898    0.00000000    0.00000001 0.00000001 0.00000000  0.16E-07      3.41

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.37E-07)
                       Final energy:   -213.21462898
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.340859921774
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84504161
 One electron energy                          -376.84135780
 Two electron energy                           163.50049787
 Virial ratio                                    3.57517959
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.340859921668
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84504161
 One electron energy                          -376.84135779
 Two electron energy                           163.50049787
 Virial ratio                                    3.57517959
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.340859921658
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84504161
 One electron energy                          -376.84135778
 Two electron energy                           163.50049786
 Virial ratio                                    3.57517959
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.170100824846
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32311170
 One electron energy                          -371.78648987
 Two electron energy                           158.61638905
 Virial ratio                                    3.58943201
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.170100824799
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32311170
 One electron energy                          -371.78648986
 Two electron energy                           158.61638904
 Virial ratio                                    3.58943201
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.170100824713
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32311170
 One electron energy                          -371.78648984
 Two electron energy                           158.61638902
 Virial ratio                                    3.58943201
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.170100824514
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32311169
 One electron energy                          -371.78648980
 Two electron energy                           158.61638897
 Virial ratio                                    3.58943201
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.170100824509
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32311169
 One electron energy                          -371.78648979
 Two electron energy                           158.61638897
 Virial ratio                                    3.58943201
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.166358921097
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38900372
 One electron energy                          -372.13473544
 Two electron energy                           158.96837651
 Virial ratio                                    3.58731565
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.166358920813
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38900373
 One electron energy                          -372.13473551
 Two electron energy                           158.96837659
 Virial ratio                                    3.58731565
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.166358920674
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38900373
 One electron energy                          -372.13473554
 Two electron energy                           158.96837662
 Virial ratio                                    3.58731565
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.164359690268
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32300508
 One electron energy                          -371.78484344
 Two electron energy                           158.62048375
 Virial ratio                                    3.58936563
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.305070716344
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80644532
 One electron energy                          -376.60843768
 Two electron energy                           163.30336696
 Virial ratio                                    3.57594768
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.305070716343
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80644532
 One electron energy                          -376.60843768
 Two electron energy                           163.30336696
 Virial ratio                                    3.57594768
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.305070716295
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80644533
 One electron energy                          -376.60843771
 Two electron energy                           163.30336700
 Virial ratio                                    3.57594768
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.305070716294
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80644532
 One electron energy                          -376.60843769
 Two electron energy                           163.30336697
 Virial ratio                                    3.57594768
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.305070716279
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80644533
 One electron energy                          -376.60843771
 Two electron energy                           163.30336699
 Virial ratio                                    3.57594768
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.275278307371
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.75593709
 One electron energy                          -376.22290936
 Two electron energy                           162.94763105
 Virial ratio                                    3.57715985
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.173931653176
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32317889
 One electron energy                          -371.78753266
 Two electron energy                           158.61360100
 Virial ratio                                    3.58947643
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.173931653041
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32317888
 One electron energy                          -371.78753264
 Two electron energy                           158.61360098
 Virial ratio                                    3.58947643
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.173931652742
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32317888
 One electron energy                          -371.78753259
 Two electron energy                           158.61360094
 Virial ratio                                    3.58947643
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.157860486752
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42973310
 One electron energy                          -372.37647299
 Two electron energy                           159.21861250
 Virial ratio                                    3.58593413
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.157860486721
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42973310
 One electron energy                          -372.37647299
 Two electron energy                           159.21861250
 Virial ratio                                    3.58593413
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.157860486004
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42973312
 One electron energy                          -372.37647308
 Two electron energy                           159.21861259
 Virial ratio                                    3.58593413
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.157860485658
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42973312
 One electron energy                          -372.37647312
 Two electron energy                           159.21861263
 Virial ratio                                    3.58593413
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.157860485500
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42973313
 One electron energy                          -372.37647314
 Two electron energy                           159.21861265
 Virial ratio                                    3.58593413
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.146732764307
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.47519141
 One electron energy                          -372.64140108
 Two electron energy                           159.49466831
 Virial ratio                                    3.58437391
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999995
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.087026142940
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999997061
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999997115
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.912971697732
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000050
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999953
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.026527499741
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000021643
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999899788
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.973519900857
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999995
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000026
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.895444369533
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.999999999918
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     0.104555426771
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999975
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.451117501404
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000006673
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000016734
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.548889659726
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>    -0.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.973705032051
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000004250
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000092111
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999997185
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.026248383288
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>    -0.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.604969394119
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000000000454
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     4.000000000000
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000000007
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     2.395031231540
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000030
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.461856355656
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999996266
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999986150
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.538138642542
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999950
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000047
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999767468208
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999974106
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000008101
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002815
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.000231715855
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000005
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999974
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.499586236348
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999999999628
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     3.999999999993
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     3.500413341689
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 3   5 2 6 1 4 5 3 2 6 4   5 3 2 6 1 913101415   812 711 4 5 3 2 6 9
                                       13101415 812 711 1 4   5 3 2 6 913101415 8  12 711 1 4 3 5 2 6 9  13101415 812 711 1 4
                                        3 5 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 1 2 1   3 2 4 9 7 810 6 5 1   3 2 4 7 9 810 6 5 4   7 9 810 6 5 1 3 2 4
                                        9 7 810 6 5 1 3 211  18201517141621131912   4 9 710 8 6 5 1 3 2   4 7 9 810 6 5 1 3 2
                                        1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.97451     1  5  s    0.99995
    2.1     2.00000    -1.42390     1  3  d1+  1.00088
    3.1     2.00000    -1.42390     1  3  d2-  1.00088
    4.1     2.00000    -1.42390     1  3  d2+  1.00088
    5.1     2.00000    -1.42390     1  3  d0   1.00088
    6.1     2.00000    -1.42390     1  3  d1-  1.00088
    7.1     1.95357    -0.59372     1  5  s   -0.37093    1  7  s    0.51568    1  8  s    0.65895
    1.2     2.00000    -4.16018     1  4  px   0.99992
    2.2     2.00000    -4.16018     1  4  pz   0.99992
    3.2     2.00000    -4.16018     1  4  py   0.99992
    4.2     0.45975    -0.11976     1  4  py  -0.27822    1  7  py   0.49508    1  8  py   0.44745
    5.2     0.45975    -0.11976     1  4  pz  -0.27822    1  7  pz   0.49508    1  8  pz   0.44745
    6.2     0.45975    -0.11976     1  4  px  -0.27823    1  7  px   0.49508    1  8  px   0.44745
    7.2     0.22239     0.01929     1 10  pz   1.16510
    8.2     0.22239     0.01929     1 10  px   1.16510
    9.2     0.22239     0.01929     1 10  py   1.16510
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000       0.98203023      0.00000001      0.00000030     -0.00000000     -0.00000000     -0.00000000     -0.00000024
 2 a0a000      -0.00000030      0.00000013      0.98203020      0.00000000     -0.00000049     -0.00000000      0.00000000
 2 0aa000      -0.00000001      0.98203016     -0.00000013     -0.00000000     -0.00000000     -0.00000025     -0.00000000
 2 00a0a0       0.00000000      0.00000000     -0.00000000      0.79737923      0.00005988     -0.00000008     -0.00002207
 2 0a0a00       0.00000000     -0.00000000      0.00000000     -0.29570627     -0.00003051      0.00000003      0.00012581
 2 00aa00       0.00000000     -0.09951668      0.00000001      0.00000007      0.00000002      0.69818752     -0.00000000
 2 00a00a       0.00000003     -0.00000001     -0.09951634     -0.00005121      0.69818751     -0.00000002     -0.00000050
 2 a00a00       0.09951668      0.00000000      0.00000003      0.00000198      0.00000051      0.00000000      0.69818749
 2 a000a0      -0.00000003      0.00000001      0.09951704     -0.00005121      0.69818749     -0.00000002     -0.00000050
 2 0a000a      -0.09951634     -0.00000000     -0.00000003      0.00000198      0.00000051      0.00000000      0.69818749
 2 0a00a0      -0.00000000      0.09951704     -0.00000001      0.00000007      0.00000002      0.69818748     -0.00000000
 2 a0000a      -0.00000000     -0.00000000     -0.00000000     -0.50167293     -0.00002938      0.00000005     -0.00010373
 0 aa2000      -0.12048130     -0.00000000     -0.00000004      0.00000000      0.00000000      0.00000000      0.00000003
 0 a2a000       0.00000004     -0.00000002     -0.12048129     -0.00000000      0.00000006      0.00000000     -0.00000000
 0 2aa000       0.00000000     -0.12048128      0.00000002      0.00000000      0.00000000      0.00000003     -0.00000000
 0 02a0a0      -0.00000000     -0.00000000     -0.00000000     -0.08972205     -0.00000673      0.00000001      0.00000239
 0 20a0a0      -0.00000000     -0.00000000      0.00000000     -0.08955893     -0.00000673      0.00000001      0.00000257
 0 0a2a00      -0.00000000      0.00000000      0.00000000      0.03272858      0.00000339     -0.00000000     -0.00001418
 0 2a0a00       0.00000000     -0.00000000     -0.00000000      0.03375737      0.00000347     -0.00000000     -0.00001411
 0 a02a00      -0.01039186     -0.00000000     -0.00000000     -0.00000022     -0.00000006     -0.00000000     -0.07876594
 0 0a200a       0.01039182      0.00000000      0.00000000     -0.00000022     -0.00000006     -0.00000000     -0.07876594
 0 02a00a      -0.00000000      0.00000000      0.01039182      0.00000578     -0.07876594      0.00000000      0.00000006
 0 a200a0       0.00000000     -0.00000000     -0.01039190      0.00000578     -0.07876593      0.00000000      0.00000006
 0 20aa00      -0.00000000      0.01039186     -0.00000000     -0.00000001     -0.00000000     -0.07876593      0.00000000
 0 2a00a0       0.00000000     -0.01039190      0.00000000     -0.00000001     -0.00000000     -0.07876593      0.00000000
 0 02aa00      -0.00000000      0.02050906     -0.00000000     -0.00000001     -0.00000000     -0.07821300      0.00000000
 0 20a00a      -0.00000001      0.00000000      0.02050906      0.00000574     -0.07821300      0.00000000      0.00000006
 0 0a20a0       0.00000000     -0.02050907      0.00000000     -0.00000001     -0.00000000     -0.07821300      0.00000000
 0 a020a0       0.00000001     -0.00000000     -0.02050907      0.00000574     -0.07821300      0.00000000      0.00000006
 0 a20a00      -0.02050906     -0.00000000     -0.00000001     -0.00000022     -0.00000006     -0.00000000     -0.07821300
 0 2a000a       0.02050906      0.00000000      0.00000001     -0.00000022     -0.00000006     -0.00000000     -0.07821300
 0 a0200a       0.00000000     -0.00000000      0.00000000      0.05596468      0.00000327     -0.00000001      0.00001172
 0 a2000a       0.00000000      0.00000000     -0.00000000      0.05683036      0.00000334     -0.00000001      0.00001160
 
 Energy:     -213.34085992   -213.34085992   -213.34085992   -213.17010082   -213.17010082   -213.17010082   -213.17010082

 State:              8               9              10              11              12
 2 aa0000       0.00000000     -0.14228575      0.00000001      0.00000101     -0.00000000
 2 a0a000      -0.00000000     -0.00000101      0.00000000     -0.14228600      0.00000000
 2 0aa000      -0.00000000     -0.00000001     -0.14228624     -0.00000000      0.00000000
 2 00a0a0      -0.11891491     -0.00000000     -0.00000000      0.00000000      0.56993004
 2 0a0a00       0.75000810      0.00000000      0.00000000      0.00000000      0.56993007
 2 00aa00       0.00000000     -0.00000005     -0.69110232     -0.00000000     -0.00000000
 2 00a00a       0.00000821     -0.00000489      0.00000000     -0.69110237      0.00000000
 2 a00a00      -0.00011634      0.69110234     -0.00000005     -0.00000489      0.00000000
 2 a000a0       0.00000821      0.00000489     -0.00000000      0.69110231     -0.00000000
 2 0a000a      -0.00011634     -0.69110240      0.00000005      0.00000489     -0.00000000
 2 0a00a0       0.00000000      0.00000005      0.69110231      0.00000000     -0.00000000
 2 a0000a      -0.63109321     -0.00000000      0.00000000      0.00000000      0.56993006
 0 aa2000      -0.00000000      0.02086208     -0.00000000     -0.00000015      0.00000000
 0 a2a000       0.00000000      0.00000015     -0.00000000      0.02086211     -0.00000000
 0 2aa000      -0.00000000      0.00000000      0.02086214      0.00000000      0.00000000
 0 02a0a0       0.01282139      0.00000000      0.00000000     -0.00000000     -0.06469427
 0 20a0a0       0.01391517      0.00000000      0.00000000     -0.00000000     -0.06469426
 0 0a2a00      -0.08451790     -0.00000000     -0.00000000     -0.00000000     -0.06469428
 0 2a0a00      -0.08411226     -0.00000000     -0.00000000     -0.00000000     -0.06469427
 0 a02a00       0.00001312     -0.07809629      0.00000001      0.00000055     -0.00000000
 0 0a200a       0.00001312      0.07809630     -0.00000001     -0.00000055      0.00000000
 0 02a00a      -0.00000093      0.00000055     -0.00000000      0.07809629     -0.00000000
 0 a200a0      -0.00000093     -0.00000055      0.00000000     -0.07809628      0.00000000
 0 20aa00      -0.00000000      0.00000001      0.07809628      0.00000000      0.00000000
 0 2a00a0      -0.00000000     -0.00000001     -0.07809628     -0.00000000      0.00000000
 0 02aa00      -0.00000000      0.00000001      0.07504093      0.00000000      0.00000000
 0 20a00a      -0.00000092      0.00000053     -0.00000000      0.07504092     -0.00000000
 0 0a20a0      -0.00000000     -0.00000001     -0.07504093     -0.00000000      0.00000000
 0 a020a0      -0.00000092     -0.00000053      0.00000000     -0.07504094      0.00000000
 0 a20a00       0.00001303     -0.07504093      0.00000001      0.00000053     -0.00000000
 0 2a000a       0.00001303      0.07504093     -0.00000001     -0.00000053      0.00000000
 0 a0200a       0.07129088      0.00000000     -0.00000000     -0.00000000     -0.06469427
 0 a2000a       0.07060273      0.00000000     -0.00000000     -0.00000000     -0.06469427
 
 Energy:     -213.17010082   -213.16635892   -213.16635892   -213.16635892   -213.16435969
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.00604333      0.00000038      0.00007441     -0.00000001      0.79259822      0.54125495     -0.00000000
 2 200000       0.68943193     -0.00001421     -0.00004576      0.00000004     -0.39106547      0.54125502     -0.00000000
 2 ab0000       0.00000904     -0.00005827      0.68643017     -0.00010256     -0.00006437     -0.00000000     -0.00000000
 2 ba0000      -0.00000904      0.00005827     -0.68643017      0.00010256      0.00006437      0.00000000      0.00000000
 2 b0a000      -0.00001403     -0.68643014     -0.00005827     -0.00002591      0.00000023     -0.00000000      0.00000035
 2 a0b000       0.00001403      0.68643014      0.00005827      0.00002591     -0.00000023      0.00000000     -0.00000035
 2 0ba000       0.00000003      0.00002592     -0.00010256     -0.68643010      0.00000000      0.00000000     -0.00000000
 2 0ab000      -0.00000003     -0.00002592      0.00010256      0.68643010     -0.00000000     -0.00000000      0.00000000
 2 002000      -0.68338845      0.00001384     -0.00002865     -0.00000003     -0.40153275      0.54125486      0.00000000
 2 00b0a0       0.10134302     -0.00000205      0.00000425      0.00000000      0.05954526     -0.10943280     -0.00000000
 2 00a0b0      -0.10134302      0.00000205     -0.00000425     -0.00000000     -0.05954526      0.10943280      0.00000000
 2 0a0b00      -0.00089619      0.00000006      0.00001103     -0.00000000      0.11753796      0.10943260      0.00000000
 2 0b0a00       0.00089619     -0.00000006     -0.00001103      0.00000000     -0.11753796     -0.10943260     -0.00000000
 2 00ab00      -0.00000000     -0.00000384      0.00001521      0.10179382     -0.00000000     -0.00000000      0.00000006
 2 00ba00       0.00000000      0.00000384     -0.00001521     -0.10179382      0.00000000      0.00000000     -0.00000006
 2 00a00b       0.00000208      0.10179358      0.00000864      0.00000384     -0.00000003      0.00000000     -0.49376867
 2 00b00a      -0.00000208     -0.10179358     -0.00000864     -0.00000384      0.00000003     -0.00000000      0.49376867
 2 a00b00       0.00000134     -0.00000864      0.10179381     -0.00001521     -0.00000955     -0.00000000      0.00000107
 2 b00a00      -0.00000134      0.00000864     -0.10179381      0.00001521      0.00000955      0.00000000     -0.00000107
 2 0b000a      -0.00000134      0.00000864     -0.10179358      0.00001521      0.00000955     -0.00000000      0.00000107
 2 0a000b       0.00000134     -0.00000864      0.10179358     -0.00001521     -0.00000955      0.00000000     -0.00000107
 2 a000b0       0.00000208      0.10179407      0.00000864      0.00000384     -0.00000003     -0.00000000      0.49376866
 2 b000a0      -0.00000208     -0.10179407     -0.00000864     -0.00000384      0.00000003      0.00000000     -0.49376866
 2 0a00b0      -0.00000000     -0.00000384      0.00001521      0.10179407     -0.00000000     -0.00000000     -0.00000006
 2 0b00a0       0.00000000      0.00000384     -0.00001521     -0.10179407      0.00000000      0.00000000      0.00000006
 2 a0000b       0.10223872     -0.00000211     -0.00000679      0.00000001     -0.05799272      0.10943241      0.00000000
 2 b0000a      -0.10223872      0.00000211      0.00000679     -0.00000001      0.05799272     -0.10943241     -0.00000000
 0 220000      -0.08371425      0.00000169     -0.00000351     -0.00000000     -0.04918726     -0.12728266      0.00000000
 0 202000      -0.00074033      0.00000005      0.00000911     -0.00000000      0.09709230     -0.12728266     -0.00000000
 0 022000       0.08445454     -0.00000174     -0.00000561      0.00000000     -0.04790504     -0.12728266     -0.00000000
 0 ba2000       0.00000111     -0.00000714      0.08408685     -0.00001256     -0.00000789     -0.00000000     -0.00000000
 0 ab2000      -0.00000111      0.00000714     -0.08408685      0.00001256      0.00000789      0.00000000      0.00000000
 0 b2a000       0.00000172      0.08408684      0.00000714      0.00000317     -0.00000003      0.00000000     -0.00000004
 0 a2b000      -0.00000172     -0.08408684     -0.00000714     -0.00000317      0.00000003     -0.00000000      0.00000004
 0 2ab000       0.00000000      0.00000317     -0.00001256     -0.08408683      0.00000000      0.00000000     -0.00000000
 0 2ba000      -0.00000000     -0.00000317      0.00001256      0.08408683     -0.00000000     -0.00000000      0.00000000
 0 02a0b0       0.01079410     -0.00000022      0.00000123      0.00000000      0.01461240     -0.00651858     -0.00000000
 0 02b0a0      -0.01079410      0.00000022     -0.00000123     -0.00000000     -0.01461240      0.00651858      0.00000000
 0 20b0a0      -0.01801852      0.00000037      0.00000002     -0.00000000     -0.00231679      0.00651858      0.00000000
 0 20a0b0       0.01801852     -0.00000037     -0.00000002      0.00000000      0.00231679     -0.00651858     -0.00000000
 0 0a2b00      -0.00700289      0.00000014     -0.00000148     -0.00000000     -0.01676288     -0.00651854     -0.00000000
 0 0b2a00       0.00700289     -0.00000014      0.00000148      0.00000000      0.01676288      0.00651854      0.00000000
 0 2a0b00       0.00725768     -0.00000015     -0.00000166      0.00000000     -0.01665415     -0.00651853     -0.00000000
 0 2b0a00      -0.00725768      0.00000015      0.00000166     -0.00000000      0.01665415      0.00651853      0.00000000
 0 a02b00      -0.00000014      0.00000093     -0.01090517      0.00000163      0.00000102      0.00000000     -0.00000012
 0 b02a00       0.00000014     -0.00000093      0.01090517     -0.00000163     -0.00000102     -0.00000000      0.00000012
 0 0b200a       0.00000014     -0.00000093      0.01090514     -0.00000163     -0.00000102      0.00000000     -0.00000012
 0 0a200b      -0.00000014      0.00000093     -0.01090514      0.00000163      0.00000102     -0.00000000      0.00000012
 0 02a00b      -0.00000022     -0.01090514     -0.00000093     -0.00000041      0.00000000     -0.00000000      0.05573974
 0 02b00a       0.00000022      0.01090514      0.00000093      0.00000041     -0.00000000      0.00000000     -0.05573974
 0 b200a0       0.00000022      0.01090520      0.00000093      0.00000041     -0.00000000      0.00000000      0.05573974
 0 a200b0      -0.00000022     -0.01090520     -0.00000093     -0.00000041      0.00000000     -0.00000000     -0.05573974
 0 20ab00       0.00000000      0.00000041     -0.00000163     -0.01090517      0.00000000      0.00000000     -0.00000001
 0 20ba00      -0.00000000     -0.00000041      0.00000163      0.01090517     -0.00000000     -0.00000000      0.00000001
 0 2a00b0       0.00000000      0.00000041     -0.00000163     -0.01090520      0.00000000      0.00000000      0.00000001
 0 2b00a0      -0.00000000     -0.00000041      0.00000163      0.01090520     -0.00000000     -0.00000000     -0.00000001
 0 02ba00      -0.00000000     -0.00000068      0.00000269      0.01803566     -0.00000000      0.00000000      0.00000001
 0 02ab00       0.00000000      0.00000068     -0.00000269     -0.01803566      0.00000000     -0.00000000     -0.00000001
 0 20b00a       0.00000037      0.01803566      0.00000153      0.00000068     -0.00000001      0.00000000     -0.05458248
 0 20a00b      -0.00000037     -0.01803566     -0.00000153     -0.00000068      0.00000001     -0.00000000      0.05458248
 0 0b20a0      -0.00000000     -0.00000068      0.00000269      0.01803567     -0.00000000     -0.00000000     -0.00000001
 0 0a20b0       0.00000000      0.00000068     -0.00000269     -0.01803567      0.00000000      0.00000000      0.00000001
 0 b020a0       0.00000037      0.01803567      0.00000153      0.00000068     -0.00000001      0.00000000      0.05458248
 0 a020b0      -0.00000037     -0.01803567     -0.00000153     -0.00000068      0.00000001     -0.00000000     -0.05458248
 0 a20b00      -0.00000024      0.00000153     -0.01803566      0.00000269      0.00000169      0.00000000     -0.00000012
 0 b20a00       0.00000024     -0.00000153      0.01803566     -0.00000269     -0.00000169     -0.00000000      0.00000012
 0 2b000a       0.00000024     -0.00000153      0.01803566     -0.00000269     -0.00000169      0.00000000     -0.00000012
 0 2a000b      -0.00000024      0.00000153     -0.01803566      0.00000269      0.00000169     -0.00000000      0.00000012
 
 Energy:     -213.30507072   -213.30507072   -213.30507072   -213.30507072   -213.30507072   -213.27527831   -213.17393165

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000      0.00000000     -0.15695328      0.00000323      0.00000000      0.00000013      0.05929472
 2 200000       0.00000000      0.00000000      0.12982706     -0.00000270     -0.00000000      0.00000023      0.10627794
 2 ab0000      -0.00000000     -0.00000017     -0.00000300     -0.14530174     -0.00000001     -0.00000022     -0.00000003
 2 ba0000       0.00000000      0.00000017      0.00000300      0.14530174      0.00000001      0.00000022      0.00000003
 2 b0a000       0.00000000     -0.00000000     -0.00000000     -0.00000022      0.00000000      0.14530192     -0.00000031
 2 a0b000      -0.00000000      0.00000000      0.00000000      0.00000022     -0.00000000     -0.14530192      0.00000031
 2 0ba000       0.00000018     -0.00000000      0.00000000     -0.00000001      0.14530209     -0.00000000      0.00000000
 2 0ab000      -0.00000018      0.00000000     -0.00000000      0.00000001     -0.14530209      0.00000000     -0.00000000
 2 002000       0.00000000     -0.00000000      0.02712598     -0.00000053     -0.00000000     -0.00000036     -0.16557327
 2 00b0a0       0.00000000     -0.00000000      0.09018248     -0.00000176     -0.00000000     -0.00000118     -0.55046158
 2 00a0b0      -0.00000000      0.00000000     -0.09018248      0.00000176      0.00000000      0.00000118      0.55046158
 2 0a0b00      -0.00000000      0.00000000      0.52180507     -0.00001074     -0.00000001     -0.00000042     -0.19713054
 2 0b0a00       0.00000000     -0.00000000     -0.52180507      0.00001074      0.00000001      0.00000042      0.19713054
 2 00ab00      -0.49376868     -0.00000000      0.00000001     -0.00000003      0.48306904     -0.00000000      0.00000000
 2 00ba00       0.49376868      0.00000000     -0.00000001      0.00000003     -0.48306904      0.00000000     -0.00000000
 2 00a00b      -0.00000006      0.00000107     -0.00000001     -0.00000073      0.00000000      0.48306909     -0.00000104
 2 00b00a       0.00000006     -0.00000107      0.00000001      0.00000073     -0.00000000     -0.48306909      0.00000104
 2 a00b00      -0.00000000      0.49376867      0.00000998      0.48306905      0.00000003      0.00000073      0.00000009
 2 b00a00       0.00000000     -0.49376867     -0.00000998     -0.48306905     -0.00000003     -0.00000073     -0.00000009
 2 0b000a      -0.00000000      0.49376866     -0.00000998     -0.48306911     -0.00000003     -0.00000073     -0.00000009
 2 0a000b       0.00000000     -0.49376866      0.00000998      0.48306911      0.00000003      0.00000073      0.00000009
 2 a000b0       0.00000006     -0.00000107     -0.00000001     -0.00000073      0.00000000      0.48306901     -0.00000104
 2 b000a0      -0.00000006      0.00000107      0.00000001      0.00000073     -0.00000000     -0.48306901      0.00000104
 2 0a00b0       0.49376866      0.00000000      0.00000001     -0.00000003      0.48306901     -0.00000000      0.00000000
 2 0b00a0      -0.49376866     -0.00000000     -0.00000001      0.00000003     -0.48306901      0.00000000     -0.00000000
 2 a0000b      -0.00000000      0.00000000     -0.43162257      0.00000898      0.00000001     -0.00000077     -0.35333126
 2 b0000a       0.00000000     -0.00000000      0.43162257     -0.00000898     -0.00000001      0.00000077      0.35333126
 0 220000      -0.00000000     -0.00000000      0.00376082     -0.00000007     -0.00000000     -0.00000005     -0.02295532
 0 202000      -0.00000000     -0.00000000     -0.02176028      0.00000045      0.00000000      0.00000002      0.00822080
 0 022000      -0.00000000     -0.00000000      0.01799951     -0.00000037     -0.00000000      0.00000003      0.01473465
 0 ba2000      -0.00000000     -0.00000002     -0.00000042     -0.02014492     -0.00000000     -0.00000003     -0.00000000
 0 ab2000       0.00000000      0.00000002      0.00000042      0.02014492      0.00000000      0.00000003      0.00000000
 0 b2a000      -0.00000000      0.00000000      0.00000000      0.00000003     -0.00000000     -0.02014494      0.00000004
 0 a2b000       0.00000000     -0.00000000     -0.00000000     -0.00000003      0.00000000      0.02014494     -0.00000004
 0 2ab000       0.00000002      0.00000000      0.00000000     -0.00000000      0.02014496     -0.00000000      0.00000000
 0 2ba000      -0.00000002     -0.00000000     -0.00000000      0.00000000     -0.02014496      0.00000000     -0.00000000
 0 02a0b0       0.00000000     -0.00000000      0.00819719     -0.00000016     -0.00000000     -0.00000013     -0.06145037
 0 02b0a0      -0.00000000      0.00000000     -0.00819719      0.00000016      0.00000000      0.00000013      0.06145037
 0 20b0a0      -0.00000000      0.00000000     -0.01183994      0.00000023      0.00000000      0.00000013      0.06085357
 0 20a0b0       0.00000000     -0.00000000      0.01183994     -0.00000023     -0.00000000     -0.00000013     -0.06085357
 0 0a2b00       0.00000000     -0.00000000     -0.05862073      0.00000121      0.00000000      0.00000004      0.02017309
 0 0b2a00      -0.00000000      0.00000000      0.05862073     -0.00000121     -0.00000000     -0.00000004     -0.02017309
 0 2a0b00       0.00000000     -0.00000000     -0.05731618      0.00000118      0.00000000      0.00000005      0.02362622
 0 2b0a00      -0.00000000      0.00000000      0.05731618     -0.00000118     -0.00000000     -0.00000005     -0.02362622
 0 a02b00       0.00000000     -0.05573975     -0.00000113     -0.05458803     -0.00000000     -0.00000008     -0.00000001
 0 b02a00      -0.00000000      0.05573975      0.00000113      0.05458803      0.00000000      0.00000008      0.00000001
 0 0b200a       0.00000000     -0.05573975      0.00000113      0.05458803      0.00000000      0.00000008      0.00000001
 0 0a200b      -0.00000000      0.05573975     -0.00000113     -0.05458803     -0.00000000     -0.00000008     -0.00000001
 0 02a00b       0.00000001     -0.00000012      0.00000000      0.00000008     -0.00000000     -0.05458803      0.00000012
 0 02b00a      -0.00000001      0.00000012     -0.00000000     -0.00000008      0.00000000      0.05458803     -0.00000012
 0 b200a0       0.00000001     -0.00000012     -0.00000000     -0.00000008      0.00000000      0.05458802     -0.00000012
 0 a200b0      -0.00000001      0.00000012      0.00000000      0.00000008     -0.00000000     -0.05458802      0.00000012
 0 20ab00       0.05573974      0.00000000     -0.00000000      0.00000000     -0.05458802      0.00000000     -0.00000000
 0 20ba00      -0.05573974     -0.00000000      0.00000000     -0.00000000      0.05458802     -0.00000000      0.00000000
 0 2a00b0      -0.05573974     -0.00000000     -0.00000000      0.00000000     -0.05458801      0.00000000     -0.00000000
 0 2b00a0       0.05573974      0.00000000      0.00000000     -0.00000000      0.05458801     -0.00000000      0.00000000
 0 02ba00      -0.05458249     -0.00000000      0.00000000     -0.00000000      0.05274235     -0.00000000      0.00000000
 0 02ab00       0.05458249      0.00000000     -0.00000000      0.00000000     -0.05274235      0.00000000     -0.00000000
 0 20b00a      -0.00000001      0.00000012     -0.00000000     -0.00000008      0.00000000      0.05274235     -0.00000011
 0 20a00b       0.00000001     -0.00000012      0.00000000      0.00000008     -0.00000000     -0.05274235      0.00000011
 0 0b20a0       0.05458248      0.00000000      0.00000000     -0.00000000      0.05274236     -0.00000000      0.00000000
 0 0a20b0      -0.05458248     -0.00000000     -0.00000000      0.00000000     -0.05274236      0.00000000     -0.00000000
 0 b020a0       0.00000001     -0.00000012     -0.00000000     -0.00000008      0.00000000      0.05274236     -0.00000011
 0 a020b0      -0.00000001      0.00000012      0.00000000      0.00000008     -0.00000000     -0.05274236      0.00000011
 0 a20b00       0.00000000     -0.05458248     -0.00000109     -0.05274236     -0.00000000     -0.00000008     -0.00000001
 0 b20a00      -0.00000000      0.05458248      0.00000109      0.05274236      0.00000000      0.00000008      0.00000001
 0 2b000a       0.00000000     -0.05458248      0.00000109      0.05274235      0.00000000      0.00000008      0.00000001
 0 2a000b      -0.00000000      0.05458248     -0.00000109     -0.05274235     -0.00000000     -0.00000008     -0.00000001
 
 Energy:     -213.17393165   -213.17393165   -213.15786049   -213.15786049   -213.15786049   -213.15786049   -213.15786049

 State:             15
 2 020000      -0.15039453
 2 200000      -0.15039428
 2 ab0000       0.00000000
 2 ba0000      -0.00000000
 2 b0a000      -0.00000000
 2 a0b000       0.00000000
 2 0ba000      -0.00000000
 2 0ab000       0.00000000
 2 002000      -0.15039485
 2 00b0a0      -0.38776202
 2 00a0b0       0.38776202
 2 0a0b00       0.38776198
 2 0b0a00      -0.38776198
 2 00ab00      -0.00000000
 2 00ba00       0.00000000
 2 00a00b      -0.00000000
 2 00b00a       0.00000000
 2 a00b00      -0.00000000
 2 b00a00       0.00000000
 2 0b000a      -0.00000000
 2 0a000b       0.00000000
 2 a000b0      -0.00000000
 2 b000a0       0.00000000
 2 0a00b0       0.00000000
 2 0b00a0      -0.00000000
 2 a0000b       0.38776206
 2 b0000a      -0.38776206
 0 220000       0.03720592
 0 202000       0.03720596
 0 022000       0.03720599
 0 ba2000       0.00000000
 0 ab2000      -0.00000000
 0 b2a000       0.00000000
 0 a2b000      -0.00000000
 0 2ab000      -0.00000000
 0 2ba000       0.00000000
 0 02a0b0      -0.04553310
 0 02b0a0       0.04553310
 0 20b0a0       0.04553310
 0 20a0b0      -0.04553310
 0 0a2b00      -0.04553311
 0 0b2a00       0.04553311
 0 2a0b00      -0.04553310
 0 2b0a00       0.04553310
 0 a02b00       0.00000000
 0 b02a00      -0.00000000
 0 0b200a       0.00000000
 0 0a200b      -0.00000000
 0 02a00b       0.00000000
 0 02b00a      -0.00000000
 0 b200a0      -0.00000000
 0 a200b0       0.00000000
 0 20ab00      -0.00000000
 0 20ba00       0.00000000
 0 2a00b0      -0.00000000
 0 2b00a0       0.00000000
 0 02ba00      -0.00000000
 0 02ab00       0.00000000
 0 20b00a      -0.00000000
 0 20a00b       0.00000000
 0 0b20a0       0.00000000
 0 0a20b0      -0.00000000
 0 b020a0      -0.00000000
 0 a020b0       0.00000000
 0 a20b00       0.00000000
 0 b20a00      -0.00000000
 0 2b000a       0.00000000
 0 2a000b      -0.00000000
 
 Energy:     -213.14673276
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.44       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.65      3.37      0.29      1.79
 REAL TIME  *         7.65 SEC
 DISK USED  *        53.91 MB (local),      865.04 MB (total)
 SF USED    *        60.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3408599   2.0
    -213.3408599   2.0
    -213.3408599   2.0
    -213.1701008   6.0
    -213.1701008   6.0
    -213.1701008   6.0
    -213.1701008   6.0
    -213.1701008   6.0
    -213.1663589   2.0
    -213.1663589   2.0
    -213.1663589   2.0
    -213.1643597  -0.0
    -213.3050707   6.0
    -213.3050707   6.0
    -213.3050707   6.0
    -213.3050707   6.0
    -213.3050707   6.0
    -213.2752783  -0.0
    -213.1739317   2.0
    -213.1739317   2.0
    -213.1739317   2.0
    -213.1578605   6.0
    -213.1578605   6.0
    -213.1578605   6.0
    -213.1578605   6.0
    -213.1578605   6.0
    -213.1467328  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.34085992
     2      -213.34085992
     3      -213.34085992
     4      -213.17010082
     5      -213.17010082
     6      -213.17010082
     7      -213.17010082
     8      -213.17010082
     9      -213.16635892
    10      -213.16635892
    11      -213.16635892
    12      -213.16435969

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1613D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9908D-07

 Number of blocks in overlap matrix:  1214   Smallest eigenvalue:  0.99D-07
 Number of N-2 electron functions:    2455
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       6772860
 Number of doubly external configurations:      14372926
 Total number of contracted configurations:     21184192
 Total number of uncontracted configurations:  278531653

 Diagonal Coupling coefficients finished.               Storage:  25420113 words, CPU-Time:     76.75 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2148706 words, CPU-time:      2.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34085992     0.00000000    -0.99643931  0.55D-01  0.12D+00    92.03
    1     2     2     1.00000000     0.00000000  -213.34085992     0.00000000    -0.99627809  0.55D-01  0.12D+00    92.03
    1     3     3     1.00000000     0.00000000  -213.34085992     0.00000000    -0.99630160  0.55D-01  0.12D+00    92.03
    1     4     4     1.00000000     0.00000000  -213.17010082     0.00000000    -0.95036501  0.38D-01  0.10D+00    92.03
    1     5     5     1.00000000     0.00000000  -213.17010082     0.00000000    -0.95003869  0.38D-01  0.10D+00    92.03
    1     6     6     1.00000000     0.00000000  -213.17010082    -0.00000000    -0.95002742  0.38D-01  0.10D+00    92.03
    1     7     7     1.00000000     0.00000000  -213.17010082     0.00000000    -0.95005079  0.38D-01  0.10D+00    92.03
    1     8     8     1.00000000     0.00000000  -213.17010082     0.00000000    -0.95037910  0.38D-01  0.10D+00    92.03
    1     9     9     1.00000000     0.00000000  -213.16635892     0.00000000    -0.95446518  0.40D-01  0.11D+00    92.03
    1    10    10     1.00000000     0.00000000  -213.16635892     0.00000000    -0.95444557  0.40D-01  0.11D+00    92.03
    1    11    11     1.00000000     0.00000000  -213.16635892     0.00000000    -0.95444757  0.40D-01  0.11D+00    92.03
    1    12    12     1.00000000     0.00000000  -213.16435969     0.00000000    -0.95074923  0.38D-01  0.10D+00    92.03
    2     1     1     1.10579106    -0.78418383  -214.12504376    -0.78418383    -0.02769060  0.56D-02  0.19D-02  1171.51
    2     2     2     1.10594687    -0.78403630  -214.12489623    -0.78403630    -0.02783614  0.57D-02  0.19D-02  1171.51
    2     3     3     1.10605138    -0.78394233  -214.12480225    -0.78394233    -0.02793834  0.57D-02  0.19D-02  1171.51
    2     4     4     1.09377155    -0.77419535  -213.94429617    -0.77419535    -0.02024219  0.28D-02  0.13D-02  1171.51
    2     5     5     1.09387824    -0.77418898  -213.94428980    -0.77418898    -0.02023484  0.28D-02  0.13D-02  1171.51
    2     6     6     1.09379374    -0.77417772  -213.94427855    -0.77417772    -0.02025881  0.29D-02  0.13D-02  1171.51
    2     7     7     1.09381412    -0.77416063  -213.94426146    -0.77416063    -0.02027761  0.29D-02  0.13D-02  1171.51
    2     8     8     1.09393787    -0.77414459  -213.94424541    -0.77414459    -0.02027920  0.29D-02  0.13D-02  1171.51
    2     9     9     1.09451737    -0.77442126  -213.94078018    -0.77442126    -0.02124935  0.33D-02  0.14D-02  1171.51
    2    10    10     1.09454571    -0.77439309  -213.94075201    -0.77439309    -0.02128007  0.34D-02  0.14D-02  1171.51
    2    11    11     1.09455921    -0.77437993  -213.94073885    -0.77437993    -0.02129500  0.34D-02  0.14D-02  1171.51
    2    12    12     1.09408840    -0.77418835  -213.93854804    -0.77418835    -0.02052132  0.30D-02  0.13D-02  1171.51
    3     1     1     1.08904126    -0.81040570  -214.15126562    -0.02622186    -0.00059813  0.96D-04  0.65D-04  2250.86
    3     2     2     1.08903500    -0.81039747  -214.15125739    -0.02636117    -0.00060526  0.97D-04  0.66D-04  2250.86
    3     3     3     1.08903694    -0.81039341  -214.15125333    -0.02645108    -0.00060944  0.98D-04  0.67D-04  2250.86
    3     4     4     1.08438563    -0.79341701  -213.96351783    -0.01922166    -0.00032485  0.38D-04  0.31D-04  2250.86
    3     5     5     1.08438403    -0.79341628  -213.96351711    -0.01922731    -0.00032529  0.38D-04  0.31D-04  2250.86
    3     6     6     1.08438421    -0.79341580  -213.96351662    -0.01923807    -0.00032590  0.38D-04  0.31D-04  2250.86
    3     7     7     1.08440266    -0.79341373  -213.96351455    -0.01925310    -0.00032844  0.38D-04  0.32D-04  2250.86
    3     8     8     1.08440157    -0.79341225  -213.96351307    -0.01926766    -0.00032966  0.38D-04  0.32D-04  2250.86
    3     9     9     1.08434969    -0.79451030  -213.96086922    -0.02008904    -0.00035765  0.43D-04  0.35D-04  2250.86
    3    10    10     1.08434808    -0.79450904  -213.96086796    -0.02011594    -0.00035868  0.43D-04  0.35D-04  2250.86
    3    11    11     1.08434818    -0.79450862  -213.96086754    -0.02012869    -0.00035917  0.43D-04  0.36D-04  2250.86
    3    12    12     1.08442571    -0.79368479  -213.95804448    -0.01949644    -0.00032917  0.36D-04  0.32D-04  2250.86
    4     1     1     1.08834920    -0.81101386  -214.15187378    -0.00060816    -0.00002454  0.41D-05  0.27D-05  3332.48
    4     2     2     1.08834477    -0.81101343  -214.15187335    -0.00061596    -0.00002488  0.41D-05  0.28D-05  3332.48
    4     3     3     1.08834393    -0.81101330  -214.15187322    -0.00061989    -0.00002501  0.41D-05  0.28D-05  3332.48
    4     4     4     1.08441673    -0.79374897  -213.96384980    -0.00033197    -0.00001213  0.23D-05  0.11D-05  3332.48
    4     5     5     1.08441626    -0.79374888  -213.96384970    -0.00033259    -0.00001217  0.23D-05  0.11D-05  3332.48
    4     6     6     1.08441633    -0.79374877  -213.96384960    -0.00033297    -0.00001215  0.23D-05  0.11D-05  3332.48
    4     7     7     1.08441223    -0.79374859  -213.96384942    -0.00033487    -0.00001253  0.24D-05  0.12D-05  3332.48
    4     8     8     1.08441146    -0.79374845  -213.96384927    -0.00033620    -0.00001257  0.24D-05  0.12D-05  3332.48
    4     9     9     1.08435030    -0.79487474  -213.96123367    -0.00036444    -0.00001354  0.26D-05  0.13D-05  3332.48
    4    10    10     1.08434951    -0.79487465  -213.96123357    -0.00036561    -0.00001360  0.26D-05  0.13D-05  3332.48
    4    11    11     1.08434958    -0.79487464  -213.96123356    -0.00036602    -0.00001358  0.26D-05  0.13D-05  3332.48
    4    12    12     1.08451958    -0.79401904  -213.95837873    -0.00033425    -0.00001229  0.22D-05  0.13D-05  3332.48
    5     1     1     1.08841416    -0.81103988  -214.15189980    -0.00002602    -0.00000084  0.88D-07  0.10D-06  4407.35
    5     2     2     1.08841328    -0.81103986  -214.15189978    -0.00002642    -0.00000085  0.88D-07  0.11D-06  4407.35
    5     3     3     1.08841314    -0.81103985  -214.15189977    -0.00002656    -0.00000086  0.88D-07  0.11D-06  4407.35
    5     4     4     1.08449395    -0.79376220  -213.96386303    -0.00001323    -0.00000041  0.38D-07  0.61D-07  4407.35
    5     5     5     1.08449431    -0.79376220  -213.96386302    -0.00001332    -0.00000040  0.35D-07  0.59D-07  4407.35
    5     6     6     1.08449415    -0.79376214  -213.96386297    -0.00001337    -0.00000040  0.35D-07  0.59D-07  4407.35
    5     7     7     1.08449360    -0.79376209  -213.96386292    -0.00001350    -0.00000041  0.37D-07  0.62D-07  4407.35
    5     8     8     1.08449402    -0.79376202  -213.96386284    -0.00001357    -0.00000040  0.35D-07  0.59D-07  4407.35
    5     9     9     1.08442841    -0.79488936  -213.96124828    -0.00001461    -0.00000046  0.49D-07  0.63D-07  4407.35
    5    10    10     1.08442828    -0.79488933  -213.96124825    -0.00001469    -0.00000046  0.49D-07  0.63D-07  4407.35
    5    11    11     1.08442816    -0.79488931  -213.96124823    -0.00001467    -0.00000046  0.49D-07  0.63D-07  4407.35
    5    12    12     1.08462996    -0.79403243  -213.95839212    -0.00001339    -0.00000043  0.34D-07  0.72D-07  4407.35
    6     1     1     1.08840730    -0.81104076  -214.15190068    -0.00000088    -0.00000004  0.35D-08  0.58D-08  5491.08
    6     2     2     1.08840698    -0.81104076  -214.15190068    -0.00000090    -0.00000004  0.37D-08  0.60D-08  5491.08
    6     3     3     1.08840701    -0.81104076  -214.15190068    -0.00000091    -0.00000004  0.37D-08  0.60D-08  5491.08
    6     4     4     1.08449913    -0.79376266  -213.96386349    -0.00000046    -0.00000002  0.17D-08  0.42D-08  5491.08
    6     5     5     1.08449959    -0.79376264  -213.96386347    -0.00000044    -0.00000002  0.17D-08  0.40D-08  5491.08
    6     6     6     1.08449951    -0.79376259  -213.96386341    -0.00000045    -0.00000002  0.17D-08  0.40D-08  5491.08
    6     7     7     1.08449899    -0.79376256  -213.96386338    -0.00000046    -0.00000002  0.18D-08  0.43D-08  5491.08
    6     8     8     1.08449941    -0.79376247  -213.96386329    -0.00000045    -0.00000002  0.17D-08  0.40D-08  5491.08
    6     9     9     1.08443155    -0.79488986  -213.96124878    -0.00000050    -0.00000003  0.24D-08  0.46D-08  5491.08
    6    10    10     1.08443151    -0.79488984  -213.96124876    -0.00000051    -0.00000003  0.25D-08  0.47D-08  5491.08
    6    11    11     1.08443147    -0.79488982  -213.96124874    -0.00000051    -0.00000003  0.25D-08  0.47D-08  5491.08
    6    12    12     1.08464169    -0.79403292  -213.95839261    -0.00000049    -0.00000002  0.21D-08  0.49D-08  5491.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  34.6%
 P   0.2%  32.4%  21.6%

 Initialization:   1.5%
 Other:            8.7%

 Total CPU:     5491.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9467771  -0.0022158   0.0000001  -0.0000000   0.0000001   0.0000000  -0.0000000  -0.0000000
                           -0.1013489   0.0000000  -0.0000052  -0.0000000
 2222222222/0/000           0.0000112   0.0048427   0.9467675  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000002
                            0.0000052  -0.0000000  -0.1013486  -0.0000000
 2222222222//0000           0.0022157   0.9467649  -0.0048427  -0.0000000  -0.0000000   0.0000003  -0.0000000   0.0000000
                           -0.0000000  -0.1013484   0.0000000   0.0000000
 2222222222/0000/          -0.0000000  -0.0000000  -0.0000000  -0.1029194  -0.0000000   0.0001229   0.7688334  -0.0000489
                           -0.0000000  -0.0000000   0.0000000   0.5483441
 22222222220/0/00          -0.0000000  -0.0000000   0.0000000   0.7172974  -0.0000000  -0.0000473  -0.2952983   0.0000584
                           -0.0000000  -0.0000000  -0.0000000   0.5483265
 22222222220/000/          -0.0001674  -0.0715421   0.0003659   0.0000001  -0.0000000   0.6717793  -0.0001073  -0.0000001
                           -0.0000001  -0.6681168   0.0000001  -0.0000000
 222222222200//00          -0.0715434   0.0001674  -0.0000000  -0.0000000   0.6717776   0.0000000  -0.0000000  -0.0000000
                           -0.6681183   0.0000001  -0.0000344  -0.0000000
 222222222200/00/          -0.0000008  -0.0003659  -0.0715423  -0.0000393  -0.0000000   0.0000001   0.0000374   0.6717774
                            0.0000344  -0.0000001  -0.6681188  -0.0000000
 2222222222/000/0           0.0000008   0.0003659   0.0715430  -0.0000393   0.0000000   0.0000001   0.0000374   0.6717744
                           -0.0000344   0.0000001   0.6681217   0.0000000
 22222222220/00/0           0.0715438  -0.0001674   0.0000000   0.0000000   0.6717739  -0.0000000   0.0000000   0.0000000
                            0.6681222  -0.0000001   0.0000344   0.0000000
 2222222222/00/00           0.0001674   0.0715425  -0.0003659   0.0000001  -0.0000000   0.6717724  -0.0001073  -0.0000001
                            0.0000001   0.6681238  -0.0000001  -0.0000000
 222222222200/0/0           0.0000000  -0.0000000  -0.0000000  -0.6143761  -0.0000000  -0.0000756  -0.4735610  -0.0000096
                            0.0000000   0.0000000  -0.0000000   0.5483253
 22222202222//000          -0.1048189   0.0002453  -0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000   0.0000000
                            0.0144295  -0.0000000   0.0000007   0.0000000
 2222220222/2/000          -0.0000012  -0.0005361  -0.1048177   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001
                           -0.0000007   0.0000000   0.0144293   0.0000000
 2222220222//2000          -0.0002453  -0.1048176   0.0005361   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0144294  -0.0000000   0.0000000
 2222220222/2000/           0.0000000  -0.0000000   0.0000000   0.0098162   0.0000000  -0.0000124  -0.0777141   0.0000049
                            0.0000000   0.0000000  -0.0000000  -0.0560407
 2222220222/0200/           0.0000000   0.0000000   0.0000000   0.0109692   0.0000000  -0.0000124  -0.0775594   0.0000050
                            0.0000000   0.0000000  -0.0000000  -0.0560410
 22222202222/0/00           0.0000000   0.0000000  -0.0000000  -0.0726527   0.0000000   0.0000047   0.0292791  -0.0000059
                            0.0000000   0.0000000   0.0000000  -0.0560386
 22222202220/2/00          -0.0000000   0.0000000  -0.0000000  -0.0722097   0.0000000   0.0000049   0.0303569  -0.0000059
                            0.0000000   0.0000000   0.0000000  -0.0560382
 22222202220/200/           0.0000151   0.0064684  -0.0000331  -0.0000000   0.0000000  -0.0681264   0.0000109   0.0000000
                            0.0000000   0.0678373  -0.0000000   0.0000000
 222222022220//00           0.0064685  -0.0000151   0.0000000   0.0000000  -0.0681264  -0.0000000   0.0000000   0.0000000
                            0.0678372  -0.0000000   0.0000035   0.0000000
 22222202222/00/0          -0.0064686   0.0000151  -0.0000000  -0.0000000  -0.0681262  -0.0000000  -0.0000000  -0.0000000
                           -0.0678377   0.0000000  -0.0000035  -0.0000000
 222222022202/00/           0.0000001   0.0000331   0.0064685   0.0000040   0.0000000  -0.0000000  -0.0000038  -0.0681260
                           -0.0000035   0.0000000   0.0678379   0.0000000
 2222220222/200/0          -0.0000001  -0.0000331  -0.0064686   0.0000040  -0.0000000  -0.0000000  -0.0000038  -0.0681258
                            0.0000035  -0.0000000  -0.0678383  -0.0000000
 2222220222/02/00          -0.0000151  -0.0064685   0.0000331  -0.0000000   0.0000000  -0.0681255   0.0000109   0.0000000
                           -0.0000000  -0.0678384   0.0000000   0.0000000
 222222022220/00/           0.0000002   0.0000767   0.0150003   0.0000040   0.0000000  -0.0000000  -0.0000038  -0.0675455
                           -0.0000034   0.0000000   0.0653348   0.0000000
 2222220222/020/0          -0.0000002  -0.0000767  -0.0150003   0.0000040  -0.0000000  -0.0000000  -0.0000038  -0.0675449
                            0.0000034  -0.0000000  -0.0653348  -0.0000000
 22222202222/000/           0.0000351   0.0150003  -0.0000767  -0.0000000   0.0000000  -0.0675444   0.0000108   0.0000000
                            0.0000000   0.0653347  -0.0000000   0.0000000
 222222022202//00           0.0150006  -0.0000351   0.0000000   0.0000000  -0.0675437  -0.0000000   0.0000000   0.0000000
                            0.0653353  -0.0000000   0.0000034   0.0000000
 22222202220/20/0          -0.0150006   0.0000351  -0.0000000  -0.0000000  -0.0675434  -0.0000000  -0.0000000  -0.0000000
                           -0.0653357   0.0000000  -0.0000034  -0.0000000
 2222220222/20/00          -0.0000351  -0.0150003   0.0000767  -0.0000000   0.0000000  -0.0675431   0.0000108   0.0000000
                           -0.0000000  -0.0653354   0.0000000   0.0000000
 222222022220/0/0          -0.0000000   0.0000000   0.0000000   0.0623939   0.0000000   0.0000076   0.0473570   0.0000010
                           -0.0000000  -0.0000000   0.0000000  -0.0560386
 222222022202/0/0           0.0000000   0.0000000   0.0000000   0.0616827   0.0000000   0.0000077   0.0482805   0.0000009
                           -0.0000000  -0.0000000   0.0000000  -0.0560378

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.002241    0.957584    0.000011    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000081   -0.034784
            -0.000000    0.000000
 2           0.957571   -0.002241    0.004898   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.034784    0.000081
            -0.000178   -0.000000
 3          -0.004898    0.000000    0.957574   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000178   -0.000000
            -0.034784   -0.000000
 4           0.000000    0.000000    0.000000   -0.665432   -0.000056   -0.000000    0.000000    0.691570    0.000000    0.000000
             0.000000    0.000001
 5          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959723   -0.000000    0.000000    0.000000   -0.000003
             0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000110    0.000000    0.000000    0.959723   -0.000106   -0.000005   -0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.691570    0.000053    0.000000   -0.000153   -0.665432    0.000000    0.000000
            -0.000000   -0.000015
 8          -0.000000    0.000000   -0.000000   -0.000000    0.959723   -0.000000   -0.000000    0.000078   -0.000000    0.000000
            -0.000002   -0.000000
 9           0.000000    0.035812   -0.000002    0.000000   -0.000000    0.000003    0.000000   -0.000000    0.000000    0.959085
            -0.000049   -0.000000
 10          0.035812   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000005    0.000000    0.959085   -0.000000
             0.000000   -0.000000
 11         -0.000000    0.000002    0.035812    0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.000049
             0.959085   -0.000000
 12          0.000000    0.000000    0.000000   -0.000010    0.000000    0.000000   -0.000000   -0.000011    0.000000    0.000000
             0.000000    0.959661

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958218    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000486    0.000001
             0.000000   -0.000000
 2           0.000000    0.958218   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000001    0.000486
             0.000002    0.000000
 3           0.000000   -0.000000    0.958218    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000002
             0.000486    0.000000
 4           0.000000    0.000000    0.000000    0.959723    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.959723   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.959723    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.959723   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959723    0.000000   -0.000000
            -0.000000   -0.000000
 9           0.000486   -0.000001   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.959754    0.000000
             0.000000    0.000000
 10          0.000001    0.000486   -0.000002   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.959754
             0.000000   -0.000000
 11          0.000000    0.000002    0.000486   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.959754    0.000000
 12         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.959661


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95758379 (fixed)   0.95829199 (relaxed)   0.95821785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064502   -0.00121156   -0.69572704
 Singles      0.01521470   -0.05384108   -0.06077469
 Pairs        0.07324962   -0.00000000   -0.05453902
 Total        1.08910934   -0.05505264   -0.81104076
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34062351
 Nuclear energy                         0.00000000
 Kinetic energy                        83.36741372
 One electron energy                 -376.11500451
 Two electron energy                  161.96310383
 Virial quotient                       -2.56877227
 Correlation energy                    -0.81127718
 !MRCI STATE 1.1 Energy              -214.151900683091

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22419306 (Davidson, fixed reference)
 Cluster corrected energies          -214.22405635 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22419306 (Davidson, rotated reference)

 Cluster corrected energies          -214.22190008 (Pople, fixed reference)
 Cluster corrected energies          -214.22175780 (Pople, relaxed reference)
 Cluster corrected energies          -214.22190008 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95757140 (fixed)   0.95829213 (relaxed)   0.95821800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064502   -0.00121156   -0.69572766
 Singles      0.01521428   -0.05384062   -0.06077430
 Pairs        0.07324972    0.00000000   -0.05453880
 Total        1.08910902   -0.05505218   -0.81104076
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34062351
 Nuclear energy                         0.00000000
 Kinetic energy                        83.36741723
 One electron energy                 -376.11501433
 Two electron energy                  161.96311365
 Virial quotient                       -2.56877216
 Correlation energy                    -0.81127718
 !MRCI STATE 2.1 Energy              -214.151900680608

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22419279 (Davidson, fixed reference)
 Cluster corrected energies          -214.22405609 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22419279 (Davidson, rotated reference)

 Cluster corrected energies          -214.22189981 (Pople, fixed reference)
 Cluster corrected energies          -214.22175753 (Pople, relaxed reference)
 Cluster corrected energies          -214.22189981 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95757401 (fixed)   0.95829212 (relaxed)   0.95821798 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064502   -0.00121156   -0.69572759
 Singles      0.01521438   -0.05384068   -0.06077437
 Pairs        0.07324965    0.00000000   -0.05453880
 Total        1.08910905   -0.05505224   -0.81104076
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34062350
 Nuclear energy                         0.00000000
 Kinetic energy                        83.36741301
 One electron energy                 -376.11501169
 Two electron energy                  161.96311101
 Virial quotient                       -2.56877229
 Correlation energy                    -0.81127717
 !MRCI STATE 3.1 Energy              -214.151900679826

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22419282 (Davidson, fixed reference)
 Cluster corrected energies          -214.22405611 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22419282 (Davidson, rotated reference)

 Cluster corrected energies          -214.22189983 (Pople, fixed reference)
 Cluster corrected energies          -214.22175755 (Pople, relaxed reference)
 Cluster corrected energies          -214.22189983 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.69157016 (fixed)   0.95984465 (relaxed)   0.95972315 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110321   -0.00207505   -0.68060905
 Singles      0.01561037   -0.05570333   -0.06272593
 Pairs        0.06898198   -0.00000080   -0.05042769
 Total        1.08569556   -0.05777918   -0.79376266
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17010082
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09230263
 One electron energy                 -371.59020127
 Two electron energy                  157.62633779
 Virial quotient                       -2.57501425
 Correlation energy                    -0.79376266
 !MRCI STATE 4.1 Energy              -213.963863486609

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03188542 (Davidson, fixed reference)
 Cluster corrected energies          -214.03166726 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03188542 (Davidson, rotated reference)

 Cluster corrected energies          -214.02953915 (Pople, fixed reference)
 Cluster corrected energies          -214.02931341 (Pople, relaxed reference)
 Cluster corrected energies          -214.02953915 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95972296 (fixed)   0.95984444 (relaxed)   0.95972296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110318   -0.00207505   -0.68060908
 Singles      0.01561071   -0.05570376   -0.06272608
 Pairs        0.06898210    0.00000000   -0.05042748
 Total        1.08569599   -0.05777881   -0.79376264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17010082
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09234352
 One electron energy                 -371.59023934
 Two electron energy                  157.62637587
 Virial quotient                       -2.57501298
 Correlation energy                    -0.79376264
 !MRCI STATE 5.1 Energy              -213.963863468238

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03188574 (Davidson, fixed reference)
 Cluster corrected energies          -214.03166761 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03188574 (Davidson, rotated reference)

 Cluster corrected energies          -214.02953949 (Pople, fixed reference)
 Cluster corrected energies          -214.02931377 (Pople, relaxed reference)
 Cluster corrected energies          -214.02953949 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95972297 (fixed)   0.95984448 (relaxed)   0.95972298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110320   -0.00207504   -0.68060913
 Singles      0.01561063   -0.05570370   -0.06272599
 Pairs        0.06898210    0.00000000   -0.05042746
 Total        1.08569593   -0.05777874   -0.79376259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17010082
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09234452
 One electron energy                 -371.59024022
 Two electron energy                  157.62637681
 Virial quotient                       -2.57501295
 Correlation energy                    -0.79376259
 !MRCI STATE 6.1 Energy              -213.963863411947

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03188564 (Davidson, fixed reference)
 Cluster corrected energies          -214.03166748 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03188564 (Davidson, rotated reference)

 Cluster corrected energies          -214.02953938 (Pople, fixed reference)
 Cluster corrected energies          -214.02931364 (Pople, relaxed reference)
 Cluster corrected energies          -214.02953938 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.69157020 (fixed)   0.95984471 (relaxed)   0.95972322 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110319   -0.00207505   -0.68062049
 Singles      0.01561028   -0.05570321   -0.06272579
 Pairs        0.06898193    0.00001151   -0.05041628
 Total        1.08569540   -0.05776674   -0.79376256
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17010082
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09230441
 One electron energy                 -371.59020275
 Two electron energy                  157.62633937
 Virial quotient                       -2.57501420
 Correlation energy                    -0.79376256
 !MRCI STATE 7.1 Energy              -213.963863380067

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03188518 (Davidson, fixed reference)
 Cluster corrected energies          -214.03166704 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03188518 (Davidson, rotated reference)

 Cluster corrected energies          -214.02953891 (Pople, fixed reference)
 Cluster corrected energies          -214.02931318 (Pople, relaxed reference)
 Cluster corrected energies          -214.02953891 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95972303 (fixed)   0.95984452 (relaxed)   0.95972303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110319   -0.00207504   -0.68060918
 Singles      0.01561058   -0.05570360   -0.06272587
 Pairs        0.06898205    0.00000000   -0.05042742
 Total        1.08569582   -0.05777864   -0.79376247
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17010082
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09234419
 One electron energy                 -371.59023931
 Two electron energy                  157.62637602
 Virial quotient                       -2.57501296
 Correlation energy                    -0.79376247
 !MRCI STATE 8.1 Energy              -213.963863291046

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03188541 (Davidson, fixed reference)
 Cluster corrected energies          -214.03166727 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03188541 (Davidson, rotated reference)

 Cluster corrected energies          -214.02953915 (Pople, fixed reference)
 Cluster corrected energies          -214.02931342 (Pople, relaxed reference)
 Cluster corrected energies          -214.02953915 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95908540 (fixed)   0.95988555 (relaxed)   0.95975364 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110197   -0.00202850   -0.68196777
 Singles      0.01536030   -0.05540348   -0.06228659
 Pairs        0.06916429    0.00000000   -0.05063550
 Total        1.08562656   -0.05743198   -0.79488986
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16659534
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11694315
 One electron energy                 -371.75756728
 Two electron energy                  157.79631850
 Virial quotient                       -2.57421942
 Correlation energy                    -0.79465344
 !MRCI STATE 9.1 Energy              -213.961248781780

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02929222 (Davidson, fixed reference)
 Cluster corrected energies          -214.02905513 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02929222 (Davidson, rotated reference)

 Cluster corrected energies          -214.02694140 (Pople, fixed reference)
 Cluster corrected energies          -214.02669611 (Pople, relaxed reference)
 Cluster corrected energies          -214.02694140 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95908543 (fixed)   0.95988557 (relaxed)   0.95975367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110196   -0.00202851   -0.68196785
 Singles      0.01536024   -0.05540340   -0.06228651
 Pairs        0.06916431    0.00000000   -0.05063548
 Total        1.08562651   -0.05743191   -0.79488984
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16659534
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11694403
 One electron energy                 -371.75756888
 Two electron energy                  157.79632012
 Virial quotient                       -2.57421939
 Correlation energy                    -0.79465342
 !MRCI STATE 10.1 Energy             -213.961248759640

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02929216 (Davidson, fixed reference)
 Cluster corrected energies          -214.02905507 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02929216 (Davidson, rotated reference)

 Cluster corrected energies          -214.02694134 (Pople, fixed reference)
 Cluster corrected energies          -214.02669604 (Pople, relaxed reference)
 Cluster corrected energies          -214.02694134 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95908544 (fixed)   0.95988559 (relaxed)   0.95975368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110197   -0.00202851   -0.68196789
 Singles      0.01536024   -0.05540336   -0.06228647
 Pairs        0.06916427    0.00000000   -0.05063546
 Total        1.08562647   -0.05743187   -0.79488982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16659534
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11694375
 One electron energy                 -371.75757001
 Two electron energy                  157.79632128
 Virial quotient                       -2.57421940
 Correlation energy                    -0.79465340
 !MRCI STATE 11.1 Energy             -213.961248736315

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02929210 (Davidson, fixed reference)
 Cluster corrected energies          -214.02905501 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02929210 (Davidson, rotated reference)

 Cluster corrected energies          -214.02694128 (Pople, fixed reference)
 Cluster corrected energies          -214.02669599 (Pople, relaxed reference)
 Cluster corrected energies          -214.02694128 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95966126 (fixed)   0.95977992 (relaxed)   0.95966126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110073   -0.00207650   -0.00271727
 Singles      0.01553240   -0.05565346   -0.06261897
 Pairs        0.06920245   -0.73630296   -0.72869668
 Total        1.08583558   -0.79403293   -0.79403292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16435969
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09321802
 One electron energy                 -371.58950978
 Two electron energy                  157.63111716
 Virial quotient                       -2.57492004
 Correlation energy                    -0.79403292
 !MRCI STATE 12.1 Energy             -213.958392614273

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02654889 (Davidson, fixed reference)
 Cluster corrected energies          -214.02633572 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02654889 (Davidson, rotated reference)

 Cluster corrected energies          -214.02420573 (Pople, fixed reference)
 Cluster corrected energies          -214.02398509 (Pople, relaxed reference)
 Cluster corrected energies          -214.02420573 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1967.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6994.14   6988.48      3.37      0.29      1.79
 REAL TIME  *      7158.99 SEC
 DISK USED  *         1.97 GB (local),       23.88 GB (total)
 SF USED    *        19.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.22419306  AU                              
 SETTING HLSDIAG(2)     =      -214.22419279  AU                              
 SETTING HLSDIAG(3)     =      -214.22419282  AU                              
 SETTING HLSDIAG(4)     =      -214.03188542  AU                              
 SETTING HLSDIAG(5)     =      -214.03188574  AU                              
 SETTING HLSDIAG(6)     =      -214.03188564  AU                              
 SETTING HLSDIAG(7)     =      -214.03188518  AU                              
 SETTING HLSDIAG(8)     =      -214.03188541  AU                              
 SETTING HLSDIAG(9)     =      -214.02929222  AU                              
 SETTING HLSDIAG(10)    =      -214.02929216  AU                              
 SETTING HLSDIAG(11)    =      -214.02929210  AU                              
 SETTING HLSDIAG(12)    =      -214.02654889  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.30507072
     2      -213.30507072
     3      -213.30507072
     4      -213.30507072
     5      -213.30507072
     6      -213.27527831
     7      -213.17393165
     8      -213.17393165
     9      -213.17393165
    10      -213.15786049
    11      -213.15786049
    12      -213.15786049
    13      -213.15786049
    14      -213.15786049
    15      -213.14673276

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3529D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3350D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3268D-06

 Number of blocks in overlap matrix:  1403   Smallest eigenvalue:  0.33D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       3940250
 Number of doubly external configurations:      15518563
 Total number of contracted configurations:     19482963
 Total number of uncontracted configurations:  162766320

 Diagonal Coupling coefficients finished.               Storage:  21821666 words, CPU-Time:     62.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2122965 words, CPU-time:      2.19 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30507072     0.00000000    -1.00119992  0.62D-01  0.12D+00    77.75
    1     2     2     1.00000000     0.00000000  -213.30507072     0.00000000    -1.00156350  0.63D-01  0.12D+00    77.75
    1     3     3     1.00000000     0.00000000  -213.30507072     0.00000000    -1.00163724  0.63D-01  0.12D+00    77.75
    1     4     4     1.00000000     0.00000000  -213.30507072    -0.00000000    -1.00210847  0.64D-01  0.12D+00    77.75
    1     5     5     1.00000000     0.00000000  -213.30507072     0.00000000    -1.00130921  0.62D-01  0.12D+00    77.75
    1     6     6     1.00000000     0.00000000  -213.27527831     0.00000000    -0.97558277  0.35D-01  0.12D+00    77.75
    1     7     7     1.00000000     0.00000000  -213.17393165     0.00000000    -0.94943932  0.38D-01  0.10D+00    77.75
    1     8     8     1.00000000     0.00000000  -213.17393165     0.00000000    -0.94944572  0.38D-01  0.10D+00    77.75
    1     9     9     1.00000000     0.00000000  -213.17393165     0.00000000    -0.94945753  0.38D-01  0.10D+00    77.75
    1    10    10     1.00000000     0.00000000  -213.15786049     0.00000000    -0.95867048  0.42D-01  0.11D+00    77.75
    1    11    11     1.00000000     0.00000000  -213.15786049     0.00000000    -0.95900002  0.43D-01  0.11D+00    77.75
    1    12    12     1.00000000     0.00000000  -213.15786049     0.00000000    -0.95899596  0.43D-01  0.11D+00    77.75
    1    13    13     1.00000000     0.00000000  -213.15786049     0.00000000    -0.95895207  0.43D-01  0.11D+00    77.75
    1    14    14     1.00000000     0.00000000  -213.15786049     0.00000000    -0.95853373  0.42D-01  0.11D+00    77.75
    1    15    15     1.00000000     0.00000000  -213.14673276     0.00000000    -0.95969388  0.47D-01  0.11D+00    77.75
    2     1     1     1.11008035    -0.78914928  -214.09421999    -0.78914928    -0.02887570  0.60D-02  0.20D-02   832.76
    2     2     2     1.11006728    -0.78913658  -214.09420729    -0.78913658    -0.02890358  0.60D-02  0.20D-02   832.76
    2     3     3     1.11049226    -0.78871936  -214.09379008    -0.78871936    -0.02932269  0.63D-02  0.20D-02   832.76
    2     4     4     1.11053148    -0.78865689  -214.09372761    -0.78865689    -0.02939517  0.64D-02  0.20D-02   832.76
    2     5     5     1.11079754    -0.78847240  -214.09354312    -0.78847240    -0.02959437  0.65D-02  0.20D-02   832.76
    2     6     6     1.10032360    -0.78696030  -214.06223860    -0.78696030    -0.02384964  0.51D-02  0.17D-02   832.76
    2     7     7     1.09375651    -0.77417438  -213.94810604    -0.77417438    -0.02009511  0.28D-02  0.14D-02   832.76
    2     8     8     1.09376920    -0.77416807  -213.94809972    -0.77416807    -0.02010021  0.28D-02  0.14D-02   832.76
    2     9     9     1.09379599    -0.77414475  -213.94807641    -0.77414475    -0.02012455  0.28D-02  0.14D-02   832.76
    2    10    10     1.09574810    -0.77586360  -213.93372408    -0.77586360    -0.02193925  0.37D-02  0.14D-02   832.76
    2    11    11     1.09578349    -0.77582929  -213.93368978    -0.77582929    -0.02197330  0.37D-02  0.14D-02   832.76
    2    12    12     1.09613259    -0.77557860  -213.93343908    -0.77557860    -0.02225096  0.39D-02  0.15D-02   832.76
    2    13    13     1.09616172    -0.77555070  -213.93341118    -0.77555070    -0.02228357  0.39D-02  0.15D-02   832.76
    2    14    14     1.09616636    -0.77554309  -213.93340358    -0.77554309    -0.02229764  0.39D-02  0.15D-02   832.76
    2    15    15     1.09965915    -0.77506269  -213.92179546    -0.77506269    -0.02348882  0.55D-02  0.14D-02   832.76
    3     1     1     1.09290487    -0.81627529  -214.12134601    -0.02712602    -0.00074037  0.12D-03  0.88D-04  1588.96
    3     2     2     1.09290570    -0.81627112  -214.12134184    -0.02713454    -0.00074467  0.12D-03  0.89D-04  1588.96
    3     3     3     1.09290523    -0.81625948  -214.12133020    -0.02754012    -0.00075585  0.13D-03  0.90D-04  1588.96
    3     4     4     1.09290284    -0.81625419  -214.12132491    -0.02759730    -0.00076097  0.13D-03  0.91D-04  1588.96
    3     5     5     1.09292587    -0.81624607  -214.12131678    -0.02777367    -0.00076988  0.13D-03  0.93D-04  1588.96
    3     6     6     1.08936811    -0.80980631  -214.08508462    -0.02284601    -0.00058911  0.84D-04  0.78D-04  1588.96
    3     7     7     1.08440036    -0.79327505  -213.96720670    -0.01910066    -0.00032248  0.36D-04  0.32D-04  1588.96
    3     8     8     1.08439926    -0.79327494  -213.96720659    -0.01910687    -0.00032270  0.36D-04  0.32D-04  1588.96
    3     9     9     1.08439950    -0.79327362  -213.96720527    -0.01912887    -0.00032380  0.36D-04  0.32D-04  1588.96
    3    10    10     1.08507387    -0.79652062  -213.95438110    -0.02065702    -0.00040994  0.54D-04  0.45D-04  1588.96
    3    11    11     1.08508223    -0.79651910  -213.95437959    -0.02068981    -0.00041128  0.54D-04  0.46D-04  1588.96
    3    12    12     1.08510155    -0.79650698  -213.95436747    -0.02092838    -0.00042323  0.55D-04  0.48D-04  1588.96
    3    13    13     1.08509961    -0.79650570  -213.95436618    -0.02095500    -0.00042461  0.55D-04  0.48D-04  1588.96
    3    14    14     1.08510007    -0.79650537  -213.95436586    -0.02096228    -0.00042483  0.56D-04  0.48D-04  1588.96
    3    15    15     1.08589112    -0.79749492  -213.94422769    -0.02243223    -0.00051654  0.83D-04  0.65D-04  1588.96
    4     1     1     1.09198295    -0.81704695  -214.12211767    -0.00077166    -0.00003843  0.57D-05  0.49D-05  2345.56
    4     2     2     1.09198300    -0.81704684  -214.12211756    -0.00077572    -0.00003864  0.56D-05  0.50D-05  2345.56
    4     3     3     1.09198008    -0.81704664  -214.12211735    -0.00078716    -0.00003868  0.57D-05  0.50D-05  2345.56
    4     4     4     1.09197968    -0.81704655  -214.12211727    -0.00079236    -0.00003887  0.56D-05  0.50D-05  2345.56
    4     5     5     1.09198124    -0.81704618  -214.12211690    -0.00080012    -0.00003923  0.57D-05  0.51D-05  2345.56
    4     6     6     1.08950668    -0.81041436  -214.08569266    -0.00060805    -0.00003405  0.41D-05  0.51D-05  2345.56
    4     7     7     1.08440849    -0.79360847  -213.96754012    -0.00033342    -0.00001299  0.25D-05  0.13D-05  2345.56
    4     8     8     1.08440784    -0.79360842  -213.96754007    -0.00033348    -0.00001300  0.25D-05  0.13D-05  2345.56
    4     9     9     1.08440739    -0.79360836  -213.96754001    -0.00033474    -0.00001306  0.25D-05  0.13D-05  2345.56
    4    10    10     1.08507666    -0.79694496  -213.95480545    -0.00042435    -0.00001984  0.36D-05  0.26D-05  2345.56
    4    11    11     1.08507472    -0.79694472  -213.95480521    -0.00042562    -0.00002044  0.37D-05  0.27D-05  2345.56
    4    12    12     1.08507485    -0.79694470  -213.95480519    -0.00043772    -0.00001996  0.36D-05  0.26D-05  2345.56
    4    13    13     1.08507354    -0.79694452  -213.95480501    -0.00043883    -0.00002051  0.37D-05  0.27D-05  2345.56
    4    14    14     1.08507341    -0.79694449  -213.95480497    -0.00043912    -0.00002057  0.37D-05  0.27D-05  2345.56
    4    15    15     1.08569592    -0.79804448  -213.94477724    -0.00054955    -0.00002991  0.55D-05  0.43D-05  2345.56
    5     1     1     1.09200663    -0.81708984  -214.12216055    -0.00004288    -0.00000149  0.11D-06  0.24D-06  3101.64
    5     2     2     1.09200622    -0.81708983  -214.12216055    -0.00004299    -0.00000149  0.11D-06  0.24D-06  3101.64
    5     3     3     1.09200633    -0.81708982  -214.12216053    -0.00004318    -0.00000150  0.11D-06  0.24D-06  3101.64
    5     4     4     1.09200484    -0.81708981  -214.12216053    -0.00004326    -0.00000151  0.11D-06  0.25D-06  3101.64
    5     5     5     1.09200549    -0.81708980  -214.12216052    -0.00004362    -0.00000152  0.11D-06  0.25D-06  3101.64
    5     6     6     1.08981999    -0.81045184  -214.08573015    -0.00003748    -0.00000160  0.97D-07  0.29D-06  3101.64
    5     7     7     1.08446702    -0.79362281  -213.96755447    -0.00001435    -0.00000048  0.45D-07  0.72D-07  3101.64
    5     8     8     1.08446666    -0.79362279  -213.96755444    -0.00001437    -0.00000048  0.45D-07  0.74D-07  3101.64
    5     9     9     1.08446679    -0.79362278  -213.96755443    -0.00001442    -0.00000048  0.45D-07  0.74D-07  3101.64
    5    10    10     1.08519025    -0.79696818  -213.95482867    -0.00002322    -0.00000117  0.77D-07  0.25D-06  3101.64
    5    11    11     1.08519006    -0.79696810  -213.95482859    -0.00002338    -0.00000119  0.78D-07  0.26D-06  3101.64
    5    12    12     1.08519000    -0.79696807  -213.95482856    -0.00002337    -0.00000118  0.78D-07  0.26D-06  3101.64
    5    13    13     1.08519069    -0.79696779  -213.95482828    -0.00002327    -0.00000114  0.76D-07  0.25D-06  3101.64
    5    14    14     1.08519046    -0.79696767  -213.95482816    -0.00002318    -0.00000116  0.76D-07  0.25D-06  3101.64
    5    15    15     1.08581286    -0.79807856  -213.94481132    -0.00003408    -0.00000182  0.12D-06  0.39D-06  3101.64
    6     1     1     1.09199941    -0.81709150  -214.12216221    -0.00000166    -0.00000009  0.80D-08  0.17D-07  3861.76
    6     2     2     1.09199944    -0.81709150  -214.12216221    -0.00000166    -0.00000009  0.80D-08  0.17D-07  3861.76
    6     3     3     1.09199904    -0.81709149  -214.12216221    -0.00000167    -0.00000009  0.81D-08  0.17D-07  3861.76
    6     4     4     1.09199902    -0.81709149  -214.12216221    -0.00000168    -0.00000009  0.82D-08  0.17D-07  3861.76
    6     5     5     1.09199927    -0.81709149  -214.12216221    -0.00000169    -0.00000009  0.81D-08  0.17D-07  3861.76
    6     6     6     1.08985615    -0.81045371  -214.08573202    -0.00000187    -0.00000011  0.11D-07  0.17D-07  3861.76
    6     7     7     1.08446548    -0.79362337  -213.96755502    -0.00000055    -0.00000003  0.23D-08  0.59D-08  3861.76
    6     8     8     1.08446534    -0.79362335  -213.96755500    -0.00000056    -0.00000003  0.24D-08  0.62D-08  3861.76
    6     9     9     1.08446541    -0.79362333  -213.96755498    -0.00000056    -0.00000003  0.24D-08  0.61D-08  3861.76
    6    10    10     1.08520153    -0.79696967  -213.95483016    -0.00000149    -0.00000012  0.14D-07  0.22D-07  3861.76
    6    11    11     1.08520121    -0.79696962  -213.95483011    -0.00000152    -0.00000012  0.14D-07  0.23D-07  3861.76
    6    12    12     1.08520137    -0.79696958  -213.95483007    -0.00000151    -0.00000012  0.14D-07  0.22D-07  3861.76
    6    13    13     1.08520144    -0.79696926  -213.95482975    -0.00000147    -0.00000012  0.13D-07  0.21D-07  3861.76
    6    14    14     1.08520123    -0.79696916  -213.95482964    -0.00000148    -0.00000012  0.13D-07  0.21D-07  3861.76
    6    15    15     1.08581749    -0.79808083  -213.94481359    -0.00000227    -0.00000017  0.19D-07  0.32D-07  3861.76
    7     1     1     1.09201375    -0.81709160  -214.12216232    -0.00000011    -0.00000001  0.62D-09  0.14D-08  4487.94
    7     2     2     1.09201364    -0.81709160  -214.12216232    -0.00000011    -0.00000001  0.62D-09  0.15D-08  4487.94
    7     3     3     1.09201368    -0.81709160  -214.12216232    -0.00000011    -0.00000001  0.62D-09  0.15D-08  4487.94
    7     4     4     1.09201379    -0.81709160  -214.12216232    -0.00000011    -0.00000001  0.61D-09  0.14D-08  4487.94
    7     5     5     1.09201382    -0.81709160  -214.12216232    -0.00000011    -0.00000001  0.61D-09  0.14D-08  4487.94
    7     6     6     1.08987009    -0.81045383  -214.08573214    -0.00000012    -0.00000001  0.71D-09  0.14D-08  4487.94
    7     7     7     1.08446548    -0.79362337  -213.96755502    -0.00000000    -0.00000003  0.23D-08  0.59D-08  4487.94
    7     8     8     1.08446534    -0.79362335  -213.96755500    -0.00000000    -0.00000003  0.24D-08  0.62D-08  4487.94
    7     9     9     1.08446541    -0.79362333  -213.96755498    -0.00000000    -0.00000003  0.24D-08  0.61D-08  4487.94
    7    10    10     1.08521197    -0.79696982  -213.95483030    -0.00000015    -0.00000001  0.11D-08  0.19D-08  4487.94
    7    11    11     1.08521352    -0.79696978  -213.95483026    -0.00000015    -0.00000001  0.96D-09  0.15D-08  4487.94
    7    12    12     1.08521339    -0.79696973  -213.95483022    -0.00000015    -0.00000001  0.96D-09  0.15D-08  4487.94
    7    13    13     1.08521162    -0.79696940  -213.95482989    -0.00000014    -0.00000001  0.99D-09  0.18D-08  4487.94
    7    14    14     1.08521146    -0.79696930  -213.95482979    -0.00000014    -0.00000001  0.10D-08  0.18D-08  4487.94
    7    15    15     1.08583212    -0.79808104  -213.94481380    -0.00000021    -0.00000001  0.12D-08  0.25D-08  4487.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.5%   7.9%
 P   0.4%  35.4%  37.0%

 Initialization:   1.5%
 Other:           16.6%

 Total CPU:     4487.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.9402707  -0.0000041   0.0000001   0.0010705   0.0000344   0.0000000  -0.0000005  -0.0000000
                            0.0000000  -0.1380468  -0.0000000  -0.0000000  -0.0000009   0.0000000   0.0000000
 22222222220/\000           0.0000006   0.0138067   0.9401649  -0.0006538   0.0030049   0.0000000  -0.0000000   0.0000000
                           -0.0000001  -0.0000000  -0.0000239  -0.1380472  -0.0000010  -0.0000008   0.0000000
 2222222222/\0000          -0.0000122   0.9400601  -0.0137982   0.0143601   0.0009252   0.0000000   0.0000000  -0.0000007
                           -0.0000000  -0.0000000  -0.1380467   0.0000239  -0.0000021   0.0000030  -0.0000000
 2222222222/0000\          -0.0001231  -0.0016335   0.0001949   0.1090370  -0.0297399   0.1150146  -0.0000000  -0.0000000
                            0.0000000  -0.0000047  -0.0000156  -0.0000044   0.7436509  -0.1892007   0.5359014
 2222222222020000           0.0001953   0.0022167  -0.0025414  -0.1953895   0.7424408   0.5287715   0.0000000  -0.0000000
                            0.0000000  -0.0000002  -0.0000029   0.0000004   0.0305495  -0.1084965  -0.1111055
 2222222222200000          -0.0008358  -0.0110949   0.0013235   0.7405933  -0.2019974   0.5287715   0.0000000  -0.0000000
                            0.0000000   0.0000007   0.0000023   0.0000006  -0.1092336   0.0277912  -0.1111068
 22222222220/0\00           0.0000287   0.0003264  -0.0003742  -0.0287672   0.1093093   0.1150150   0.0000000  -0.0000000
                           -0.0000000   0.0000014   0.0000194  -0.0000026  -0.2079749   0.7386277   0.5358911
 2222222222/00\00          -0.0000013   0.0978671  -0.0014365   0.0014950   0.0000963  -0.0000000  -0.0001147   0.6718936
                           -0.0001495   0.0000000   0.6645374  -0.0001152   0.0000103  -0.0000146   0.0000000
 2222222222/000\0           0.0978894  -0.0000004   0.0000000   0.0001114   0.0000036  -0.0000000   0.6718917   0.0001147
                           -0.0000457   0.6645399   0.0000000  -0.0000000   0.0000042  -0.0000001  -0.0000000
 222222222200/\00           0.0000001   0.0014374   0.0978780  -0.0000681   0.0003128   0.0000000  -0.0000457  -0.0001495
                           -0.6718916  -0.0000000   0.0001152   0.6645395   0.0000048   0.0000037  -0.0000000
 22222222220/00\0           0.0000001   0.0014374   0.0978784  -0.0000681   0.0003128   0.0000000   0.0000457   0.0001495
                            0.6718909   0.0000000   0.0001152   0.6645403   0.0000048   0.0000037  -0.0000000
 222222222200/00\           0.0978887  -0.0000004   0.0000000   0.0001114   0.0000036   0.0000000  -0.6718908  -0.0001147
                            0.0000457   0.6645410  -0.0000000   0.0000000   0.0000042  -0.0000001  -0.0000000
 22222222220/000\          -0.0000013   0.0978668  -0.0014365   0.0014950   0.0000963  -0.0000000   0.0001147  -0.6718889
                            0.0001495  -0.0000000   0.6645423  -0.0001153   0.0000103  -0.0000146   0.0000000
 222222222200/0\0           0.0000943   0.0013071   0.0001793  -0.0802705  -0.0795696   0.1150152  -0.0000000   0.0000000
                            0.0000000   0.0000033  -0.0000038   0.0000069  -0.5356848  -0.5494186   0.5358960
 2222222222002000           0.0006405   0.0088782   0.0012178  -0.5452036  -0.5404433   0.5287714   0.0000000  -0.0000000
                            0.0000000  -0.0000005   0.0000006  -0.0000010   0.0786868   0.0807036  -0.1111065
 2222220222220000           0.0000709   0.0009831   0.0001348  -0.0603695  -0.0598424  -0.1129407   0.0000000  -0.0000000
                           -0.0000000  -0.0000001   0.0000001  -0.0000001   0.0104880   0.0107573   0.0256607
 2222220222022000          -0.0000925  -0.0012285   0.0001466   0.0820047  -0.0223668  -0.1129407   0.0000000  -0.0000000
                           -0.0000000   0.0000001   0.0000003   0.0000001  -0.0145603   0.0037045   0.0256607
 2222220222202000           0.0000216   0.0002455  -0.0002814  -0.0216351   0.0822094  -0.1129407   0.0000000   0.0000000
                           -0.0000000  -0.0000000  -0.0000004   0.0000001   0.0040717  -0.0144614   0.0256608
 2222220222/2\000          -0.1041145   0.0000005  -0.0000000  -0.0001185  -0.0000038  -0.0000000   0.0000001  -0.0000000
                            0.0000000   0.0184005  -0.0000000   0.0000000   0.0000001  -0.0000000  -0.0000000
 22222202222/\000          -0.0000001  -0.0015288  -0.1041029   0.0000724  -0.0003327  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000   0.0000000   0.0000032   0.0184005   0.0000001   0.0000001  -0.0000000
 2222220222/\2000           0.0000014  -0.1040911   0.0015278  -0.0015901  -0.0001024  -0.0000000  -0.0000000   0.0000002
                           -0.0000000  -0.0000000   0.0184007  -0.0000032   0.0000003  -0.0000004   0.0000000
 2222220222/2000\           0.0000140   0.0001813  -0.0000511  -0.0127177   0.0123838  -0.0044648   0.0000000  -0.0000000
                           -0.0000000   0.0000005   0.0000015   0.0000004  -0.0749630   0.0173260  -0.0560999
 22222202222/0\00          -0.0000135  -0.0001740   0.0000521   0.0122689  -0.0128286  -0.0044649   0.0000000   0.0000000
                            0.0000000  -0.0000001  -0.0000019   0.0000003   0.0192186  -0.0745008  -0.0560991
 2222220222/0200\           0.0000198   0.0002675  -0.0000025  -0.0172430  -0.0042120  -0.0044648   0.0000000  -0.0000000
                           -0.0000000   0.0000005   0.0000016   0.0000004  -0.0741286   0.0206061  -0.0560999
 22222202220/2\00           0.0000056   0.0000843   0.0000507  -0.0043644  -0.0172068  -0.0044649   0.0000000   0.0000000
                            0.0000000  -0.0000001  -0.0000020   0.0000002   0.0224772  -0.0735831  -0.0560991
 2222220222/02\00           0.0000001  -0.0091462   0.0001342  -0.0001397  -0.0000090  -0.0000000   0.0000116  -0.0681760
                            0.0000152  -0.0000000  -0.0674617   0.0000117  -0.0000010   0.0000015  -0.0000000
 222222022220/\00          -0.0000000  -0.0001343  -0.0091472   0.0000064  -0.0000292  -0.0000000   0.0000046   0.0000152
                            0.0681758   0.0000000  -0.0000117  -0.0674620  -0.0000005  -0.0000004   0.0000000
 22222202222/00\0          -0.0000000  -0.0001343  -0.0091472   0.0000064  -0.0000292   0.0000000  -0.0000046  -0.0000152
                           -0.0681758   0.0000000  -0.0000117  -0.0674620  -0.0000005  -0.0000004   0.0000000
 2222220222/200\0          -0.0091483   0.0000000  -0.0000000  -0.0000104  -0.0000003   0.0000000  -0.0681757  -0.0000116
                            0.0000046  -0.0674617   0.0000000   0.0000000  -0.0000004   0.0000000   0.0000000
 222222022202/00\          -0.0091482   0.0000000  -0.0000000  -0.0000104  -0.0000003   0.0000000   0.0681757   0.0000116
                           -0.0000046  -0.0674618   0.0000000   0.0000000  -0.0000004   0.0000000   0.0000000
 22222202220/200\           0.0000001  -0.0091461   0.0001342  -0.0001397  -0.0000090  -0.0000000  -0.0000116   0.0681755
                           -0.0000152   0.0000000  -0.0674623   0.0000117  -0.0000010   0.0000015  -0.0000000
 2222220222/20\00           0.0000002  -0.0177451   0.0002605  -0.0002711  -0.0000175  -0.0000000   0.0000113  -0.0664561
                            0.0000148  -0.0000000  -0.0657689   0.0000114  -0.0000010   0.0000014  -0.0000000
 222222022202/\00          -0.0000000  -0.0002606  -0.0177471   0.0000123  -0.0000567  -0.0000000   0.0000045   0.0000148
                            0.0664559   0.0000000  -0.0000114  -0.0657691  -0.0000005  -0.0000004   0.0000000
 22222202220/20\0          -0.0000000  -0.0002606  -0.0177471   0.0000123  -0.0000567  -0.0000000  -0.0000045  -0.0000148
                           -0.0664557  -0.0000000  -0.0000114  -0.0657692  -0.0000005  -0.0000004   0.0000000
 2222220222/020\0          -0.0177492   0.0000001  -0.0000000  -0.0000202  -0.0000006  -0.0000000  -0.0664555  -0.0000113
                            0.0000045  -0.0657693  -0.0000000   0.0000000  -0.0000004   0.0000000   0.0000000
 222222022220/00\          -0.0177492   0.0000001  -0.0000000  -0.0000202  -0.0000006  -0.0000000   0.0664554   0.0000113
                           -0.0000045  -0.0657695   0.0000000   0.0000000  -0.0000004   0.0000000   0.0000000
 22222202222/000\           0.0000002  -0.0177451   0.0002605  -0.0002711  -0.0000175  -0.0000000  -0.0000113   0.0664552
                           -0.0000148   0.0000000  -0.0657699   0.0000114  -0.0000010   0.0000014  -0.0000000
 222222022220/0\0          -0.0000196  -0.0002657   0.0000004   0.0170822   0.0048231  -0.0044649  -0.0000000  -0.0000000
                           -0.0000000  -0.0000003   0.0000004  -0.0000007   0.0524870   0.0562567  -0.0560993
 222222022202/0\0          -0.0000063  -0.0000935  -0.0000496   0.0049741   0.0170405  -0.0044650  -0.0000000  -0.0000000
                           -0.0000000  -0.0000003   0.0000003  -0.0000007   0.0549105   0.0538935  -0.0560996

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.001062    0.954754   -0.000012    0.000001    0.000232   -0.000000    0.000000   -0.000000   -0.000000   -0.000037
             0.000001   -0.000000   -0.058413   -0.000055    0.000000
 2          -0.014367   -0.000004    0.954540    0.014019    0.002616   -0.000000   -0.000000   -0.000000    0.000000   -0.000468
            -0.058400   -0.000858    0.000000   -0.000761    0.000000
 3           0.000107    0.000000   -0.014011    0.954647   -0.003160   -0.000000    0.000000   -0.000000   -0.000000    0.000183
             0.000857   -0.058406   -0.000000   -0.000064    0.000000
 4           0.925539    0.001087    0.014581   -0.000664   -0.233924   -0.000000    0.000000    0.000000    0.000000    0.033865
            -0.000892    0.000041   -0.000066    0.047586   -0.000000
 5           0.233939    0.000035    0.000939    0.003051    0.925645    0.000000   -0.000000    0.000000    0.000000   -0.047592
            -0.000057   -0.000187   -0.000002    0.033868    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.955513   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.060076
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.959737    0.000065   -0.000164    0.000000
            -0.000000    0.000000    0.000001   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000164    0.000214    0.959737   -0.000000
             0.000003   -0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000065    0.959737   -0.000214   -0.000000
             0.000000   -0.000001   -0.000000    0.000000    0.000000
 10         -0.000000    0.060594   -0.000000   -0.000000    0.000000    0.000000   -0.000001    0.000000    0.000000    0.000004
            -0.000000    0.000000    0.957488    0.000005    0.000000
 11         -0.000001    0.000000    0.060594    0.000011    0.000002    0.000000    0.000000   -0.000000   -0.000003    0.000026
             0.957488    0.000166   -0.000000   -0.000001   -0.000000
 12         -0.000001   -0.000000   -0.000011    0.060594   -0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000
            -0.000166    0.957488   -0.000000    0.000009    0.000000
 13          0.058484    0.000000    0.000001    0.000000   -0.015850   -0.000000   -0.000000    0.000000    0.000000   -0.568424
             0.000015    0.000007    0.000006   -0.770505   -0.000005
 14          0.015850   -0.000000   -0.000001    0.000000    0.058484    0.000000   -0.000000    0.000000    0.000000    0.770505
            -0.000021    0.000005   -0.000000   -0.568424    0.000005
 15          0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.061962    0.000000   -0.000000    0.000000   -0.000007
             0.000000   -0.000000   -0.000000   -0.000001    0.957126

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956539   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.001004
            -0.000000    0.000000   -0.000001   -0.000000    0.000000
 2          -0.000000    0.956539   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.001003    0.000015   -0.000015   -0.000001    0.000000
 3          -0.000000   -0.000000    0.956539    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000015    0.001003    0.000001   -0.000003    0.000000
 4           0.000000    0.000000    0.000000    0.956539    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001
             0.000015   -0.000001    0.001003    0.000017   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.956539    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000001    0.000003   -0.000017    0.001003   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957400   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000890
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.959737   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959737   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959737    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 10          0.001004   -0.000000    0.000000    0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959403
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 11         -0.000000    0.001003   -0.000015    0.000015    0.000001    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.959402    0.000000    0.000000   -0.000000    0.000000
 12          0.000000    0.000015    0.001003   -0.000001    0.000003    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.959402    0.000000   -0.000000   -0.000000
 13         -0.000001   -0.000015    0.000001    0.001003   -0.000017   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.959403    0.000000    0.000000
 14         -0.000000   -0.000001   -0.000003    0.000017    0.001003   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.959403   -0.000000
 15          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000890    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.959129


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95475412 (fixed)   0.95661337 (relaxed)   0.95653942 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084346   -0.00166757   -0.69488166
 Singles      0.01778257   -0.05832042   -0.06665141
 Pairs        0.07430879    0.00000000   -0.05555853
 Total        1.09293481   -0.05998800   -0.81709160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30450276
 Nuclear energy                         0.00000000
 Kinetic energy                        83.35228292
 One electron energy                 -375.98694959
 Two electron energy                  161.86478727
 Virial quotient                       -2.56888180
 Correlation energy                    -0.81765956
 !MRCI STATE 1.1 Energy              -214.122162319423

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19815136 (Davidson, fixed reference)
 Cluster corrected energies          -214.19801319 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19815136 (Davidson, rotated reference)

 Cluster corrected energies          -214.19686588 (Pople, fixed reference)
 Cluster corrected energies          -214.19671914 (Pople, relaxed reference)
 Cluster corrected energies          -214.19686588 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95454015 (fixed)   0.95661342 (relaxed)   0.95653946 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084346   -0.00166757   -0.69488186
 Singles      0.01778238   -0.05832028   -0.06665121
 Pairs        0.07430887   -0.00000000   -0.05555853
 Total        1.09293471   -0.05998785   -0.81709160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30450276
 Nuclear energy                         0.00000000
 Kinetic energy                        83.35229086
 One electron energy                 -375.98696564
 Two electron energy                  161.86480332
 Virial quotient                       -2.56888155
 Correlation energy                    -0.81765956
 !MRCI STATE 2.1 Energy              -214.122162318418

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19815127 (Davidson, fixed reference)
 Cluster corrected energies          -214.19801310 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19815127 (Davidson, rotated reference)

 Cluster corrected energies          -214.19686579 (Pople, fixed reference)
 Cluster corrected energies          -214.19671904 (Pople, relaxed reference)
 Cluster corrected energies          -214.19686579 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95464673 (fixed)   0.95661340 (relaxed)   0.95653944 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084345   -0.00166757   -0.69488179
 Singles      0.01778244   -0.05832032   -0.06665125
 Pairs        0.07430885   -0.00000000   -0.05555856
 Total        1.09293474   -0.05998789   -0.81709160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30450276
 Nuclear energy                         0.00000000
 Kinetic energy                        83.35229054
 One electron energy                 -375.98696581
 Two electron energy                  161.86480349
 Virial quotient                       -2.56888156
 Correlation energy                    -0.81765956
 !MRCI STATE 3.1 Energy              -214.122162317608

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19815130 (Davidson, fixed reference)
 Cluster corrected energies          -214.19801313 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19815130 (Davidson, rotated reference)

 Cluster corrected energies          -214.19686582 (Pople, fixed reference)
 Cluster corrected energies          -214.19671908 (Pople, relaxed reference)
 Cluster corrected energies          -214.19686582 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.92553859 (fixed)   0.95661335 (relaxed)   0.95653940 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084345   -0.00166757   -0.69488168
 Singles      0.01778254   -0.05832041   -0.06665139
 Pairs        0.07430886    0.00000003   -0.05555854
 Total        1.09293485   -0.05998795   -0.81709160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30450276
 Nuclear energy                         0.00000000
 Kinetic energy                        83.35229186
 One electron energy                 -375.98695949
 Two electron energy                  161.86479717
 Virial quotient                       -2.56888152
 Correlation energy                    -0.81765956
 !MRCI STATE 4.1 Energy              -214.122162317274

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19815138 (Davidson, fixed reference)
 Cluster corrected energies          -214.19801322 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19815138 (Davidson, rotated reference)

 Cluster corrected energies          -214.19686590 (Pople, fixed reference)
 Cluster corrected energies          -214.19671917 (Pople, relaxed reference)
 Cluster corrected energies          -214.19686590 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.92564518 (fixed)   0.95661334 (relaxed)   0.95653939 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084345   -0.00166757   -0.69488156
 Singles      0.01778260   -0.05832048   -0.06665141
 Pairs        0.07430882   -0.00000000   -0.05555862
 Total        1.09293487   -0.05998805   -0.81709160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30450276
 Nuclear energy                         0.00000000
 Kinetic energy                        83.35229342
 One electron energy                 -375.98696112
 Two electron energy                  161.86479880
 Virial quotient                       -2.56888147
 Correlation energy                    -0.81765956
 !MRCI STATE 5.1 Energy              -214.122162315198

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19815140 (Davidson, fixed reference)
 Cluster corrected energies          -214.19801324 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19815140 (Davidson, rotated reference)

 Cluster corrected energies          -214.19686593 (Pople, fixed reference)
 Cluster corrected energies          -214.19671919 (Pople, relaxed reference)
 Cluster corrected energies          -214.19686593 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95551328 (fixed)   0.95759777 (relaxed)   0.95739956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101093   -0.00146239   -0.76232230
 Singles      0.01014413   -0.04181759   -0.04586336
 Pairs        0.07981682    0.06221663   -0.00226817
 Total        1.09097187    0.01893665   -0.81045383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27475709
 Nuclear energy                         0.00000000
 Kinetic energy                        83.33657021
 One electron energy                 -375.69705044
 Two electron energy                  161.61131830
 Virial quotient                       -2.56892900
 Correlation energy                    -0.81097504
 !MRCI STATE 6.1 Energy              -214.085732135939

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.15950805 (Davidson, fixed reference)
 Cluster corrected energies          -214.15914182 (Davidson, relaxed reference)
 Cluster corrected energies          -214.15950805 (Davidson, rotated reference)

 Cluster corrected energies          -214.15813688 (Pople, fixed reference)
 Cluster corrected energies          -214.15774932 (Pople, relaxed reference)
 Cluster corrected energies          -214.15813688 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95973723 (fixed)   0.95986069 (relaxed)   0.95973725 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110485   -0.00207365   -0.68043766
 Singles      0.01571601   -0.05577376   -0.06286763
 Pairs        0.06884280    0.00000000   -0.05031808
 Total        1.08566365   -0.05784741   -0.79362337
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17393165
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09173040
 One electron energy                 -371.59141460
 Two electron energy                  157.62385959
 Virial quotient                       -2.57507641
 Correlation energy                    -0.79362337
 !MRCI STATE 7.1 Energy              -213.967555018462

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03553970 (Davidson, fixed reference)
 Cluster corrected energies          -214.03531811 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03553970 (Davidson, rotated reference)

 Cluster corrected energies          -214.03397098 (Pople, fixed reference)
 Cluster corrected energies          -214.03373857 (Pople, relaxed reference)
 Cluster corrected energies          -214.03397098 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95973728 (fixed)   0.95986075 (relaxed)   0.95973731 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110485   -0.00207365   -0.68043784
 Singles      0.01571593   -0.05577365   -0.06286754
 Pairs        0.06884273    0.00000000   -0.05031796
 Total        1.08566350   -0.05784730   -0.79362335
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17393165
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09172884
 One electron energy                 -371.59141432
 Two electron energy                  157.62385932
 Virial quotient                       -2.57507646
 Correlation energy                    -0.79362335
 !MRCI STATE 8.1 Energy              -213.967555000518

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03553956 (Davidson, fixed reference)
 Cluster corrected energies          -214.03531797 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03553956 (Davidson, rotated reference)

 Cluster corrected energies          -214.03397083 (Pople, fixed reference)
 Cluster corrected energies          -214.03373843 (Pople, relaxed reference)
 Cluster corrected energies          -214.03397083 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95973726 (fixed)   0.95986072 (relaxed)   0.95973728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110485   -0.00207365   -0.68043774
 Singles      0.01571597   -0.05577369   -0.06286757
 Pairs        0.06884277   -0.00000000   -0.05031802
 Total        1.08566358   -0.05784734   -0.79362333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17393165
 Nuclear energy                         0.00000000
 Kinetic energy                        83.09172831
 One electron energy                 -371.59141238
 Two electron energy                  157.62385739
 Virial quotient                       -2.57507648
 Correlation energy                    -0.79362333
 !MRCI STATE 9.1 Energy              -213.967554984683

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.03553960 (Davidson, fixed reference)
 Cluster corrected energies          -214.03531801 (Davidson, relaxed reference)
 Cluster corrected energies          -214.03553960 (Davidson, rotated reference)

 Cluster corrected energies          -214.03397088 (Pople, fixed reference)
 Cluster corrected energies          -214.03373847 (Pople, relaxed reference)
 Cluster corrected energies          -214.03397088 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95748822 (fixed)   0.95953146 (relaxed)   0.95940309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111322   -0.00207304   -0.68298470
 Singles      0.01561930   -0.05584875   -0.06285883
 Pairs        0.06968752   -0.00000000   -0.05112628
 Total        1.08642005   -0.05792179   -0.79696982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15842844
 Nuclear energy                         0.00000000
 Kinetic energy                        83.13072328
 One electron energy                 -371.85602669
 Two electron energy                  157.90119638
 Virial quotient                       -2.57371549
 Correlation energy                    -0.79640186
 !MRCI STATE 10.1 Energy             -213.954830304526

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02365539 (Davidson, fixed reference)
 Cluster corrected energies          -214.02342390 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02365539 (Davidson, rotated reference)

 Cluster corrected energies          -214.02211116 (Pople, fixed reference)
 Cluster corrected energies          -214.02186805 (Pople, relaxed reference)
 Cluster corrected energies          -214.02211116 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95748754 (fixed)   0.95953077 (relaxed)   0.95940241 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111322   -0.00207305   -0.68298540
 Singles      0.01561837   -0.05584689   -0.06285723
 Pairs        0.06969001   -0.00000000   -0.05112715
 Total        1.08642160   -0.05791994   -0.79696978
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15842844
 Nuclear energy                         0.00000000
 Kinetic energy                        83.13063286
 One electron energy                 -371.85604948
 Two electron energy                  157.90121921
 Virial quotient                       -2.57371829
 Correlation energy                    -0.79640182
 !MRCI STATE 11.1 Energy             -213.954830262971

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02365658 (Davidson, fixed reference)
 Cluster corrected energies          -214.02342510 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02365658 (Davidson, rotated reference)

 Cluster corrected energies          -214.02211241 (Pople, fixed reference)
 Cluster corrected energies          -214.02186931 (Pople, relaxed reference)
 Cluster corrected energies          -214.02211241 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95748758 (fixed)   0.95953083 (relaxed)   0.95940245 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111324   -0.00207305   -0.68298556
 Singles      0.01561825   -0.05584676   -0.06285711
 Pairs        0.06969000   -0.00000000   -0.05112707
 Total        1.08642150   -0.05791981   -0.79696973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15842844
 Nuclear energy                         0.00000000
 Kinetic energy                        83.13063127
 One electron energy                 -371.85604892
 Two electron energy                  157.90121870
 Virial quotient                       -2.57371834
 Correlation energy                    -0.79640178
 !MRCI STATE 12.1 Energy             -213.954830220321

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02365645 (Davidson, fixed reference)
 Cluster corrected energies          -214.02342495 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02365645 (Davidson, rotated reference)

 Cluster corrected energies          -214.02211228 (Pople, fixed reference)
 Cluster corrected energies          -214.02186916 (Pople, relaxed reference)
 Cluster corrected energies          -214.02211228 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.77050506 (fixed)   0.95953162 (relaxed)   0.95940323 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111325   -0.00207303   -0.68298872
 Singles      0.01561900   -0.05584835   -0.06285822
 Pairs        0.06968748    0.00000415   -0.05112246
 Total        1.08641973   -0.05791724   -0.79696940
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15842844
 Nuclear energy                         0.00000000
 Kinetic energy                        83.13070697
 One electron energy                 -371.85602572
 Two electron energy                  157.90119584
 Virial quotient                       -2.57371599
 Correlation energy                    -0.79640144
 !MRCI STATE 13.1 Energy             -213.954829886046

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02365468 (Davidson, fixed reference)
 Cluster corrected energies          -214.02342316 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02365468 (Davidson, rotated reference)

 Cluster corrected energies          -214.02211044 (Pople, fixed reference)
 Cluster corrected energies          -214.02186730 (Pople, relaxed reference)
 Cluster corrected energies          -214.02211044 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.77050509 (fixed)   0.95953169 (relaxed)   0.95940328 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111329   -0.00207303   -0.68298148
 Singles      0.01561890   -0.05584830   -0.06285803
 Pairs        0.06968743   -0.00000378   -0.05112979
 Total        1.08641962   -0.05792511   -0.79696930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15842845
 Nuclear energy                         0.00000000
 Kinetic energy                        83.13071220
 One electron energy                 -371.85603496
 Two electron energy                  157.90120517
 Virial quotient                       -2.57371583
 Correlation energy                    -0.79640134
 !MRCI STATE 14.1 Energy             -213.954829785134

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02365448 (Davidson, fixed reference)
 Cluster corrected energies          -214.02342293 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02365448 (Davidson, rotated reference)

 Cluster corrected energies          -214.02211023 (Pople, fixed reference)
 Cluster corrected energies          -214.02186706 (Pople, relaxed reference)
 Cluster corrected energies          -214.02211023 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95712613 (fixed)   0.95926952 (relaxed)   0.95912927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00111282   -0.00200796   -0.00370671
 Singles      0.01492664   -0.05357818   -0.06024221
 Pairs        0.07100100   -0.74136164   -0.73413212
 Total        1.08704046   -0.79694779   -0.79808104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14725398
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15486970
 One electron energy                 -372.02861764
 Two electron energy                  158.08380384
 Virial quotient                       -2.57284768
 Correlation energy                    -0.79755982
 !MRCI STATE 15.1 Energy             -213.944813802277

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.01423378 (Davidson, fixed reference)
 Cluster corrected energies          -214.01398029 (Davidson, relaxed reference)
 Cluster corrected energies          -214.01423378 (Davidson, rotated reference)

 Cluster corrected energies          -214.01271254 (Pople, fixed reference)
 Cluster corrected energies          -214.01244605 (Pople, relaxed reference)
 Cluster corrected energies          -214.01271254 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4225.00       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13022.34   6028.18   6988.48      3.37      0.29      1.79
 REAL TIME  *     13387.68 SEC
 DISK USED  *         4.18 GB (local),       50.34 GB (total)
 SF USED    *        22.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.19815136  AU                              
 SETTING HLSDIAG(14)    =      -214.19815127  AU                              
 SETTING HLSDIAG(15)    =      -214.19815130  AU                              
 SETTING HLSDIAG(16)    =      -214.19815138  AU                              
 SETTING HLSDIAG(17)    =      -214.19815140  AU                              
 SETTING HLSDIAG(18)    =      -214.15950805  AU                              
 SETTING HLSDIAG(19)    =      -214.03553970  AU                              
 SETTING HLSDIAG(20)    =      -214.03553956  AU                              
 SETTING HLSDIAG(21)    =      -214.03553960  AU                              
 SETTING HLSDIAG(22)    =      -214.02365539  AU                              
 SETTING HLSDIAG(23)    =      -214.02365658  AU                              
 SETTING HLSDIAG(24)    =      -214.02365645  AU                              
 SETTING HLSDIAG(25)    =      -214.02365468  AU                              
 SETTING HLSDIAG(26)    =      -214.02365448  AU                              
 SETTING HLSDIAG(27)    =      -214.01423378  AU                              


         HLSDIAG
    -214.2241931
    -214.2241928
    -214.2241928
    -214.0318854
    -214.0318857
    -214.0318856
    -214.0318852
    -214.0318854
    -214.0292922
    -214.0292922
    -214.0292921
    -214.0265489
    -214.1981514
    -214.1981513
    -214.1981513
    -214.1981514
    -214.1981514
    -214.1595081
    -214.0355397
    -214.0355396
    -214.0355396
    -214.0236554
    -214.0236566
    -214.0236565
    -214.0236547
    -214.0236545
    -214.0142338
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.151901   -214.151901   -214.151901   -213.963863   -213.963863   -213.963863   -213.963863   -213.963863
                      -213.961249   -213.961249   -213.961249   -213.958393
 Replaced energies:   -214.224193   -214.224193   -214.224193   -214.031885   -214.031886   -214.031886   -214.031885   -214.031885
                      -214.029292   -214.029292   -214.029292   -214.026549

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -214.122162   -214.122162   -214.122162   -214.122162   -214.122162   -214.085732   -213.967555   -213.967555
                      -213.967555   -213.954830   -213.954830   -213.954830   -213.954830   -213.954830   -213.944814
 Replaced energies:   -214.198151   -214.198151   -214.198151   -214.198151   -214.198151   -214.159508   -214.035540   -214.035540
                      -214.035540   -214.023655   -214.023657   -214.023656   -214.023655   -214.023654   -214.014234



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.22419306

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1139.68      -5.83      -0.00       0.61     262.74      -0.04      -0.00       0.54    -229.82

    2   2.1  1.0  1.0       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1139.68      -0.00       0.01      -1.43     262.73      -0.61       0.59      -0.00     229.82       0.54

    3   3.1  1.0  1.0       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.83      -0.01      -0.00    -280.53      -1.34       0.02     115.48      -0.02      -1.18      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   42206.65       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.43     280.53      -0.00       0.00       0.00       0.10     512.64      -0.03       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42206.58       0.00       0.00       0.00       0.00       0.00
                           -0.61    -262.73       1.34      -0.00      -0.00    -673.33       0.11       0.00      -0.00    -580.96

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42206.60       0.00       0.00       0.00       0.00
                         -262.74       0.61      -0.02      -0.00     673.33      -0.00      -0.00       0.20    -580.95       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42206.70       0.00       0.00       0.00
                            0.04      -0.59    -115.48      -0.10      -0.11       0.00      -0.00    1245.27       0.11      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42206.65       0.00       0.00
                            0.00       0.00       0.02    -512.64      -0.00      -0.20   -1245.27       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42775.79       0.00
                           -0.54    -229.82       1.18       0.03       0.00     580.95      -0.11      -0.00      -0.00     701.77

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42775.80
                          229.82      -0.54       0.00      -0.00     580.96      -0.00       0.00      -0.00    -701.77       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00    -620.32      -0.00       0.07     255.35      -0.05       0.00       0.04

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -2.18    -426.05      -0.00      -0.00       0.00       0.00       0.02       0.05      -0.00

   13   1.1  1.0  0.0      -0.00       0.00       1.89      28.46      -0.00      -0.03    -212.63      -0.42       0.00       0.00
                           -0.00       4.12     805.88      -0.41      -0.00      -0.00      -0.30     185.78       0.01      -0.00

   14   2.1  1.0  0.0      -0.00      -0.00     805.88      -0.06      -0.00       0.95       0.49    -185.78       0.01       0.83
                           -4.12      -0.00      -1.89    -169.91      -0.95      -0.02    -130.95      -0.44       0.83       0.00

   15   3.1  1.0  0.0      -1.89    -805.88       0.00      -0.00      -0.00     185.78      -0.03       0.95      -0.00     162.51
                         -805.88       1.89       0.00       0.87    -185.78       0.00       0.67       0.00     162.51      -0.00

   16   4.1  1.0  0.0     -28.46       0.06       0.00      -0.00     943.81       0.03      -0.00       0.00     -62.93      -0.02
                            0.41     169.91      -0.87       0.00       0.03     581.32      -0.09      -0.00       0.02     375.70

   17   5.1  1.0  0.0       0.00       0.00       0.00    -943.81      -0.00      -0.02    -126.34      -0.05       0.00       0.00
                            0.00       0.95     185.78      -0.03      -0.00       0.00       0.03     476.12      -0.02       0.00

   18   6.1  1.0  0.0       0.03      -0.95    -185.78      -0.03       0.02       0.00       0.03     476.12       0.10      -0.00
                            0.00       0.02      -0.00    -581.32      -0.00       0.00     754.20      -0.08      -0.00       0.05

   19   7.1  1.0  0.0     212.63      -0.49       0.03       0.00     126.34      -0.03      -0.00      -0.08     470.16       0.02
                            0.30     130.95      -0.67       0.09      -0.03    -754.20      -0.00       0.00      -0.02     289.57

   20   8.1  1.0  0.0       0.42     185.78      -0.95      -0.00       0.05    -476.12       0.08      -0.00      -0.03     410.80
                         -185.78       0.44      -0.00       0.00    -476.12       0.08      -0.00       0.00    -410.80       0.01

   21   9.1  1.0  0.0      -0.00      -0.01       0.00      62.93      -0.00      -0.10    -470.16       0.03      -0.00       0.03
                           -0.01      -0.83    -162.51      -0.02       0.02       0.00       0.02     410.80      -0.00       0.00

   22  10.1  1.0  0.0      -0.00      -0.83    -162.51       0.02      -0.00       0.00      -0.02    -410.80      -0.03      -0.00
                            0.00      -0.00       0.00    -375.70      -0.00      -0.05    -289.57      -0.01      -0.00       0.00

   23  11.1  1.0  0.0       0.38     162.51      -0.83       0.00      -0.00     410.80      -0.09       0.00      -0.00    -496.22
                          162.51      -0.38      -0.01       0.00    -410.80      -0.00       0.00       0.02    -496.22       0.00

   24  12.1  1.0  0.0    -301.26       0.71      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -673.89       0.00
                            0.71     301.26      -1.54       0.00      -0.00      -0.02       0.00       0.00       0.00     673.90

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0      -0.86    -796.37       4.06       0.00       0.14     203.14      -0.03       0.00      -0.18     140.34
                          796.38      -1.10      -0.00      -0.00     203.14      -0.32       0.00      -0.00    -140.34      -0.14

   38   2.1  0.0  0.0      13.30       4.04     796.19       5.92       2.04      -0.00       0.78    -203.10      -2.33      -0.00
                            0.02      10.57     -11.75     247.98      -0.00      -4.12    -321.72      -2.95       0.00      -1.87

   39   3.1  0.0  0.0      -1.59      -0.06     -11.69     402.65       1.15       0.01      53.90       3.00       0.28       0.00
                           -0.01      -2.61    -796.29      -3.63       0.00       1.18       4.71    -203.12      -0.01      -0.26

   40   4.1  0.0  0.0    -887.09       1.23      12.17      -0.28    -106.88       0.23      -0.04      -3.10     156.32       0.16
                           -0.62    -653.04       3.89       3.79       0.23     285.98      -4.96       0.14      -0.16     115.08

   41   5.1  0.0  0.0     241.96      -0.59       0.78       1.29    -391.97       0.01       0.17      -0.20     -42.64       0.01
                           -1.49    -647.36       0.77       0.24       0.01    -288.56      -0.27      -0.65      -0.01     114.08

   42   6.1  0.0  0.0    1307.25      -3.06       0.00      -0.00       0.00       0.00      -0.00      -0.00    -183.68       0.00
                           -3.06   -1307.24       6.69       0.00       0.00      -0.00       0.00      -0.00       0.00     183.68

   43   7.1  0.0  0.0       0.44     187.08      -0.92      -0.01      -0.00    -475.38       0.11      -0.08       0.00     409.46
                          187.08      -0.44      -0.01      -0.07     475.38      -0.00      -0.06      -0.03     409.46      -0.00

   44   8.1  0.0  0.0      -0.00      -0.92    -187.08      -0.04      -0.00      -0.08       0.15     475.38       0.02       0.07
                            0.03      -0.00      -0.04     434.76       0.08       0.05     335.09      -0.10       0.07      -0.00

   45   9.1  0.0  0.0      -0.00      -0.01       0.04     -72.83       0.00       0.12     544.08      -0.14      -0.00      -0.03
                           -0.01      -0.96    -187.08      -0.07      -0.03      -0.00      -0.10    -475.38      -0.01      -0.00

   46  10.1  0.0  0.0       0.44     190.06      -0.97       0.00       0.00     404.89      -0.06      -0.00       0.00    -502.22
                         -190.06       0.44      -0.00       0.00     404.88      -0.00       0.00       0.00     502.22       0.00

   47  11.1  0.0  0.0      -0.01      -0.97    -190.07       0.16      -0.01      -0.00      -0.00    -404.89      -0.01       0.00
                            0.00       0.00       0.03     494.35       0.00      -0.12    -641.36      -0.01       0.00      -0.00

   48  12.1  0.0  0.0      -0.00       0.00       0.03     802.61       0.01       0.02     107.44       0.11       0.00      -0.00
                            0.00       0.97     190.07      -0.06      -0.00      -0.00       0.09    -404.89       0.03       0.01

   49  13.1  0.0  0.0     212.69      -0.50      -0.00       0.01    -199.66       0.00       0.00      -0.01    -562.02      -0.00
                            0.36     153.20      -0.78       0.01       0.00     579.80      -0.10      -0.00       0.00    -404.83

   50  14.1  0.0  0.0     -54.12       0.13       0.00       0.00    -784.77      -0.00       0.00       0.01     142.99       0.00
                            0.37     157.14      -0.80      -0.01      -0.00    -565.30       0.10      -0.00      -0.00    -415.23

   51  15.1  0.0  0.0    -392.44       0.92      -0.00       0.00       0.00      -0.00       0.00       0.00     836.32      -0.00
                            0.92     392.44      -2.01      -0.00      -0.00       0.01      -0.00       0.00      -0.00    -836.33


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -1.89     -28.46       0.00       0.03     212.63       0.42
                            0.00       0.01       0.00       4.12     805.88      -0.41      -0.00      -0.00      -0.30     185.78

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00    -805.88       0.06       0.00      -0.95      -0.49     185.78
                            0.01       2.18      -4.12       0.00      -1.89    -169.91      -0.95      -0.02    -130.95      -0.44

    3   3.1  1.0  1.0       0.00       0.00       1.89     805.88       0.00       0.00       0.00    -185.78       0.03      -0.95
                           -0.00     426.05    -805.88       1.89      -0.00       0.87    -185.78       0.00       0.67       0.00

    4   4.1  1.0  1.0       0.00       0.00      28.46      -0.06      -0.00      -0.00    -943.81      -0.03       0.00      -0.00
                          620.32       0.00       0.41     169.91      -0.87      -0.00       0.03     581.32      -0.09      -0.00

    5   5.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00     943.81      -0.00       0.02     126.34       0.05
                            0.00       0.00       0.00       0.95     185.78      -0.03       0.00       0.00       0.03     476.12

    6   6.1  1.0  1.0       0.00       0.00      -0.03       0.95     185.78       0.03      -0.02       0.00      -0.03    -476.12
                           -0.07      -0.00       0.00       0.02      -0.00    -581.32      -0.00      -0.00     754.20      -0.08

    7   7.1  1.0  1.0       0.00       0.00    -212.63       0.49      -0.03      -0.00    -126.34       0.03      -0.00       0.08
                         -255.35      -0.00       0.30     130.95      -0.67       0.09      -0.03    -754.20       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00      -0.42    -185.78       0.95       0.00      -0.05     476.12      -0.08      -0.00
                            0.05      -0.02    -185.78       0.44      -0.00       0.00    -476.12       0.08      -0.00      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.01      -0.00     -62.93       0.00       0.10     470.16      -0.03
                           -0.00      -0.05      -0.01      -0.83    -162.51      -0.02       0.02       0.00       0.02     410.80

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.83     162.51      -0.02       0.00      -0.00       0.02     410.80
                           -0.04       0.00       0.00      -0.00       0.00    -375.70      -0.00      -0.05    -289.57      -0.01

   11  11.1  1.0  1.0   42775.81       0.00      -0.38    -162.51       0.83      -0.00       0.00    -410.80       0.09      -0.00
                           -0.00     953.04     162.51      -0.38      -0.01       0.00    -410.80      -0.00       0.00       0.02

   12  12.1  1.0  1.0       0.00   43377.88     301.26      -0.71       0.00       0.00      -0.00      -0.00       0.00       0.00
                         -953.04      -0.00       0.71     301.26      -1.54       0.00      -0.00      -0.02       0.00       0.00

   13   1.1  1.0  0.0      -0.38     301.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -162.51      -0.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -162.51      -0.71       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00
                            0.38    -301.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       0.83       0.00       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00
                            0.01       1.54      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00   42206.65       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00   42206.58       0.00       0.00       0.00
                          410.80       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0    -410.80      -0.00       0.00       0.00       0.00       0.00       0.00   42206.60       0.00       0.00
                            0.00       0.02      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42206.70       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42206.65
                           -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0       0.00     673.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          496.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     496.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -673.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00       1.89      28.46      -0.00      -0.03    -212.63      -0.42
                           -0.00      -0.00      -0.00       4.12     805.88      -0.41      -0.00      -0.00      -0.30     185.78

   26   2.1  1.0 -1.0       0.00       0.00      -0.00      -0.00     805.88      -0.06      -0.00       0.95       0.49    -185.78
                           -0.00      -0.00      -4.12      -0.00      -1.89    -169.91      -0.95      -0.02    -130.95      -0.44

   27   3.1  1.0 -1.0       0.00       0.00      -1.89    -805.88       0.00      -0.00      -0.00     185.78      -0.03       0.95
                           -0.00      -0.00    -805.88       1.89       0.00       0.87    -185.78       0.00       0.67       0.00

   28   4.1  1.0 -1.0       0.00       0.00     -28.46       0.06       0.00      -0.00     943.81       0.03      -0.00       0.00
                           -0.00      -0.00       0.41     169.91      -0.87       0.00       0.03     581.32      -0.09      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -943.81      -0.00      -0.02    -126.34      -0.05
                           -0.00      -0.00       0.00       0.95     185.78      -0.03      -0.00       0.00       0.03     476.12

   30   6.1  1.0 -1.0       0.00       0.00       0.03      -0.95    -185.78      -0.03       0.02       0.00       0.03     476.12
                           -0.00      -0.00       0.00       0.02      -0.00    -581.32      -0.00       0.00     754.20      -0.08

   31   7.1  1.0 -1.0       0.00       0.00     212.63      -0.49       0.03       0.00     126.34      -0.03      -0.00      -0.08
                           -0.00      -0.00       0.30     130.95      -0.67       0.09      -0.03    -754.20      -0.00       0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.42     185.78      -0.95      -0.00       0.05    -476.12       0.08      -0.00
                           -0.00      -0.00    -185.78       0.44      -0.00       0.00    -476.12       0.08      -0.00       0.00

   33   9.1  1.0 -1.0       0.00       0.00      -0.00      -0.01       0.00      62.93      -0.00      -0.10    -470.16       0.03
                           -0.00      -0.00      -0.01      -0.83    -162.51      -0.02       0.02       0.00       0.02     410.80

   34  10.1  1.0 -1.0       0.00       0.00      -0.00      -0.83    -162.51       0.02      -0.00       0.00      -0.02    -410.80
                           -0.00      -0.00       0.00      -0.00       0.00    -375.70      -0.00      -0.05    -289.57      -0.01

   35  11.1  1.0 -1.0       0.00       0.00       0.38     162.51      -0.83       0.00      -0.00     410.80      -0.09       0.00
                           -0.00      -0.00     162.51      -0.38      -0.01       0.00    -410.80      -0.00       0.00       0.02

   36  12.1  1.0 -1.0       0.00       0.00    -301.26       0.71      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.71     301.26      -1.54       0.00      -0.00      -0.02       0.00       0.00

   37   1.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.01       0.00       0.33    -218.73      -0.00      -0.09    -531.31      -0.62

   38   2.1  0.0  0.0    -140.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.06      -0.00   -1126.04     -13.88       3.84       0.00     287.22      -4.22       0.00      -8.63

   39   3.1  0.0  0.0       2.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          140.33       0.00      13.89   -1126.17       1.46      -0.00      -4.22    -287.26       0.05       0.05

   40   4.1  0.0  0.0      -2.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10      -0.00     -17.20      -0.87    -330.98      -0.28       4.39       0.20      -0.57     555.58

   41   5.1  0.0  0.0      -0.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45      -0.00      -1.10       2.84    1257.67      -0.02       0.28      -0.92      -0.01     146.24

   42   6.1  0.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.02      -9.46   -1848.72       0.00       0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.07      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.13       0.05       0.02      -0.00    -717.84      -0.11       0.09     295.50      -0.06

   44   8.1  0.0  0.0    -409.46      -0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09     778.35    -264.58       0.68      -0.00      -0.12     672.30       0.15       0.05      -0.00

   45   9.1  0.0  0.0       0.09    -778.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -409.46      -0.17       0.68     264.57      -1.35       0.05      -0.15     672.29      -0.13      -0.00

   46  10.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00       0.00      -0.00      -0.00    -435.94      -0.00      -0.17   -1058.96       0.03

   47  11.1  0.0  0.0     502.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.01     268.81      -0.58      -0.01      -0.00     572.60      -0.10       0.00      -0.01

   48  12.1  0.0  0.0      -0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -502.23      -0.00       0.58     268.80      -1.37      -0.00      -0.10    -572.59       0.09      -0.01

   49  13.1  0.0  0.0      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01       0.43      84.11      -0.07       0.01      -0.00       0.05    1102.33

   50  14.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01      -1.53    -298.75      -0.02      -0.01      -0.00       0.02     310.38

   51  15.1  0.0  0.0       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01       2.84     555.00      -0.00      -0.00       0.00       0.00       0.01


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.00      -0.00       0.38    -301.26       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00    -162.51      -0.71       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.01      -0.83     162.51       0.71       0.00       0.00       0.00       0.00       0.00       0.00
                            0.83       0.00       0.38    -301.26       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00    -162.51      -0.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          162.51      -0.00       0.01       1.54       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      62.93       0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02     375.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00     410.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.10       0.00     410.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.05       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    -470.16      -0.02      -0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02     289.57      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.03    -410.80       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -410.80       0.01      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -0.03      -0.00    -673.89       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     496.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       0.03      -0.00    -496.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -673.90       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0       0.00     496.22      -0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                         -496.22       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0     673.89      -0.00       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     673.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.89     -28.46       0.00       0.03
                            0.00       0.00       0.00       0.00       0.00       4.12     805.88      -0.41      -0.00      -0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -805.88       0.06       0.00      -0.95
                            0.00       0.00       0.00       0.00      -4.12       0.00      -1.89    -169.91      -0.95      -0.02

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       1.89     805.88       0.00       0.00       0.00    -185.78
                            0.00       0.00       0.00       0.00    -805.88       1.89      -0.00       0.87    -185.78       0.00

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      28.46      -0.06      -0.00      -0.00    -943.81      -0.03
                            0.00       0.00       0.00       0.00       0.41     169.91      -0.87      -0.00       0.03     581.32

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     943.81      -0.00       0.02
                            0.00       0.00       0.00       0.00       0.00       0.95     185.78      -0.03       0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.03       0.95     185.78       0.03      -0.02       0.00
                            0.00       0.00       0.00       0.00       0.00       0.02      -0.00    -581.32      -0.00      -0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00    -212.63       0.49      -0.03      -0.00    -126.34       0.03
                            0.00       0.00       0.00       0.00       0.30     130.95      -0.67       0.09      -0.03    -754.20

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.42    -185.78       0.95       0.00      -0.05     476.12
                            0.00       0.00       0.00       0.00    -185.78       0.44      -0.00       0.00    -476.12       0.08

   21   9.1  1.0  0.0   42775.79       0.00       0.00       0.00       0.00       0.01      -0.00     -62.93       0.00       0.10
                            0.00       0.00       0.00       0.00      -0.01      -0.83    -162.51      -0.02       0.02       0.00

   22  10.1  1.0  0.0       0.00   42775.80       0.00       0.00       0.00       0.83     162.51      -0.02       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -375.70      -0.00      -0.05

   23  11.1  1.0  0.0       0.00       0.00   42775.81       0.00      -0.38    -162.51       0.83      -0.00       0.00    -410.80
                           -0.00      -0.00       0.00       0.00     162.51      -0.38      -0.01       0.00    -410.80      -0.00

   24  12.1  1.0  0.0       0.00       0.00       0.00   43377.88     301.26      -0.71       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.71     301.26      -1.54       0.00      -0.00      -0.02

   25   1.1  1.0 -1.0       0.00       0.00      -0.38     301.26       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00    -162.51      -0.71      -0.00   -1139.68       5.83       0.00      -0.61    -262.74

   26   2.1  1.0 -1.0       0.01       0.83    -162.51      -0.71       0.00       0.06       0.00       0.00       0.00       0.00
                            0.83       0.00       0.38    -301.26    1139.68       0.00      -0.01       1.43    -262.73       0.61

   27   3.1  1.0 -1.0      -0.00     162.51       0.83       0.00       0.00       0.00       0.05       0.00       0.00       0.00
                          162.51      -0.00       0.01       1.54      -5.83       0.01       0.00     280.53       1.34      -0.02

   28   4.1  1.0 -1.0     -62.93      -0.02      -0.00       0.00       0.00       0.00       0.00   42206.65       0.00       0.00
                            0.02     375.70      -0.00      -0.00      -0.00      -1.43    -280.53       0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00   42206.58       0.00
                           -0.02       0.00     410.80       0.00       0.61     262.73      -1.34       0.00       0.00     673.33

   30   6.1  1.0 -1.0       0.10      -0.00    -410.80      -0.00       0.00       0.00       0.00       0.00       0.00   42206.60
                           -0.00       0.05       0.00       0.02     262.74      -0.61       0.02       0.00    -673.33       0.00

   31   7.1  1.0 -1.0     470.16       0.02       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02     289.57      -0.00      -0.00      -0.04       0.59     115.48       0.10       0.11      -0.00

   32   8.1  1.0 -1.0      -0.03     410.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -410.80       0.01      -0.02      -0.00      -0.00      -0.00      -0.02     512.64       0.00       0.20

   33   9.1  1.0 -1.0      -0.00       0.03       0.00     673.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     496.22      -0.00       0.54     229.82      -1.18      -0.03      -0.00    -580.95

   34  10.1  1.0 -1.0      -0.03      -0.00     496.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -673.90    -229.82       0.54      -0.00       0.00    -580.96       0.00

   35  11.1  1.0 -1.0      -0.00    -496.22      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                         -496.22       0.00       0.00       0.00       0.00       0.01      -0.00     620.32       0.00      -0.07

   36  12.1  1.0 -1.0    -673.89       0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     673.90      -0.00      -0.00       0.01       2.18     426.05       0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.86    -796.37       4.06       0.00       0.14     203.14
                           -0.00       0.00      -0.06      -0.01    -796.38       1.10       0.00       0.00    -203.14       0.32

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      13.30       4.04     796.19       5.92       2.04      -0.00
                          198.43       2.91      -0.65       0.00      -0.02     -10.57      11.75    -247.98       0.00       4.12

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -1.59      -0.06     -11.69     402.65       1.15       0.01
                           -2.91     198.45       0.76       0.00       0.01       2.61     796.29       3.63      -0.00      -1.18

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00    -887.09       1.23      12.17      -0.28    -106.88       0.23
                            3.03      -0.14      58.33      -0.00       0.62     653.04      -3.89      -3.79      -0.23    -285.98

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00     241.96      -0.59       0.78       1.29    -391.97       0.01
                            0.21       0.63    -221.63      -0.00       1.49     647.36      -0.77      -0.24      -0.01     288.56

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00    1307.25      -3.06       0.00      -0.00       0.00       0.00
                           -0.01       0.00     259.77       0.00       3.06    1307.24      -6.69      -0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.44     187.08      -0.92      -0.01      -0.00    -475.38
                            0.10       0.04       0.00    1100.75    -187.08       0.44       0.01       0.07    -475.38       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.92    -187.08      -0.04      -0.00      -0.08
                         -579.07       0.13      -0.03       0.19      -0.03       0.00       0.04    -434.76      -0.08      -0.05

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.01       0.04     -72.83       0.00       0.12
                            0.13     579.07      -0.00      -0.07       0.01       0.96     187.08       0.07       0.03       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.44     190.06      -0.97       0.00       0.00     404.89
                            0.00       0.00       0.00      -0.02     190.06      -0.44       0.00      -0.00    -404.88       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.01      -0.97    -190.07       0.16      -0.01      -0.00
                         -710.25      -0.12      -0.02      -0.00      -0.00      -0.00      -0.03    -494.35      -0.00       0.12

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.03     802.61       0.01       0.02
                            0.12    -710.26      -0.00       0.00      -0.00      -0.97    -190.07       0.06       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00     212.69      -0.50      -0.00       0.01    -199.66       0.00
                            0.00      -0.01    -222.27       0.00      -0.36    -153.20       0.78      -0.01      -0.00    -579.80

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00     -54.12       0.13       0.00       0.00    -784.77      -0.00
                           -0.03      -0.00     789.42       0.00      -0.37    -157.14       0.80       0.01       0.00     565.30

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00    -392.44       0.92      -0.00       0.00       0.00      -0.00
                            0.06      -0.00   -1182.75      -0.00      -0.92    -392.44       2.01       0.00       0.00      -0.01


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.86      13.30      -1.59    -887.09
                            0.00       0.00       0.00       0.00       0.00       0.00    -796.38      -0.02       0.01       0.62

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -796.37       4.04      -0.06       1.23
                            0.00       0.00       0.00       0.00       0.00       0.00       1.10     -10.57       2.61     653.04

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.06     796.19     -11.69      12.17
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.75     796.29      -3.89

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.92     402.65      -0.28
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    -247.98       3.63      -3.79

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.14       2.04       1.15    -106.88
                            0.00       0.00       0.00       0.00       0.00       0.00    -203.14       0.00      -0.00      -0.23

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     203.14      -0.00       0.01       0.23
                            0.00       0.00       0.00       0.00       0.00       0.00       0.32       4.12      -1.18    -285.98

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       0.78      53.90      -0.04
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     321.72      -4.71       4.96

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -203.10       3.00      -3.10
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.95     203.12      -0.14

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.18      -2.33       0.28     156.32
                            0.00       0.00       0.00       0.00       0.00       0.00     140.34      -0.00       0.01       0.16

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     140.34      -0.00       0.00       0.16
                            0.00       0.00       0.00       0.00       0.00       0.00       0.14       1.87       0.26    -115.08

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -140.31       2.06      -2.14
                            0.00       0.00       0.00       0.00       0.00       0.00       0.01      -2.06    -140.33       0.10

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0     212.63       0.42      -0.00      -0.00       0.38    -301.26       0.00       0.00       0.00       0.00
                           -0.30     185.78       0.01      -0.00    -162.51      -0.71      -0.01    1126.04     -13.89      17.20

   14   2.1  1.0  0.0      -0.49     185.78      -0.01      -0.83     162.51       0.71       0.00       0.00       0.00       0.00
                         -130.95      -0.44       0.83       0.00       0.38    -301.26      -0.00      13.88    1126.17       0.87

   15   3.1  1.0  0.0       0.03      -0.95       0.00    -162.51      -0.83      -0.00       0.00       0.00       0.00       0.00
                            0.67       0.00     162.51      -0.00       0.01       1.54      -0.33      -3.84      -1.46     330.98

   16   4.1  1.0  0.0       0.00      -0.00      62.93       0.02       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.00       0.02     375.70      -0.00      -0.00     218.73      -0.00       0.00       0.28

   17   5.1  1.0  0.0     126.34       0.05      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.03     476.12      -0.02       0.00     410.80       0.00       0.00    -287.22       4.22      -4.39

   18   6.1  1.0  0.0      -0.03    -476.12      -0.10       0.00     410.80       0.00       0.00       0.00       0.00       0.00
                          754.20      -0.08      -0.00       0.05       0.00       0.02       0.09       4.22     287.26      -0.20

   19   7.1  1.0  0.0      -0.00       0.08    -470.16      -0.02      -0.09      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02     289.57      -0.00      -0.00     531.31      -0.00      -0.05       0.57

   20   8.1  1.0  0.0      -0.08      -0.00       0.03    -410.80       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -410.80       0.01      -0.02      -0.00       0.62       8.63      -0.05    -555.58

   21   9.1  1.0  0.0     470.16      -0.03      -0.00      -0.03      -0.00    -673.89       0.00       0.00       0.00       0.00
                            0.02     410.80       0.00       0.00     496.22      -0.00       0.00    -198.43       2.91      -3.03

   22  10.1  1.0  0.0       0.02     410.80       0.03      -0.00    -496.22       0.00       0.00       0.00       0.00       0.00
                         -289.57      -0.01      -0.00      -0.00      -0.00    -673.90      -0.00      -2.91    -198.45       0.14

   23  11.1  1.0  0.0       0.09      -0.00       0.00     496.22      -0.00      -0.03       0.00       0.00       0.00       0.00
                            0.00       0.02    -496.22       0.00      -0.00       0.00       0.06       0.65      -0.76     -58.33

   24  12.1  1.0  0.0       0.00       0.00     673.89      -0.00       0.03      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     673.90      -0.00       0.00       0.01      -0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.86      13.30      -1.59    -887.09
                            0.04       0.00      -0.54     229.82      -0.00      -0.01     796.38       0.02      -0.01      -0.62

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -796.37       4.04      -0.06       1.23
                           -0.59       0.00    -229.82      -0.54      -0.01      -2.18      -1.10      10.57      -2.61    -653.04

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.06     796.19     -11.69      12.17
                         -115.48       0.02       1.18       0.00       0.00    -426.05      -0.00     -11.75    -796.29       3.89

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.92     402.65      -0.28
                           -0.10    -512.64       0.03      -0.00    -620.32      -0.00      -0.00     247.98      -3.63       3.79

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.14       2.04       1.15    -106.88
                           -0.11      -0.00       0.00     580.96      -0.00      -0.00     203.14      -0.00       0.00       0.23

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     203.14      -0.00       0.01       0.23
                            0.00      -0.20     580.95      -0.00       0.07       0.00      -0.32      -4.12       1.18     285.98

   31   7.1  1.0 -1.0   42206.70       0.00       0.00       0.00       0.00       0.00      -0.03       0.78      53.90      -0.04
                            0.00   -1245.27      -0.11       0.00     255.35       0.00       0.00    -321.72       4.71      -4.96

   32   8.1  1.0 -1.0       0.00   42206.65       0.00       0.00       0.00       0.00       0.00    -203.10       3.00      -3.10
                         1245.27      -0.00      -0.00      -0.00      -0.05       0.02      -0.00      -2.95    -203.12       0.14

   33   9.1  1.0 -1.0       0.00       0.00   42775.79       0.00       0.00       0.00      -0.18      -2.33       0.28     156.32
                            0.11       0.00       0.00    -701.77       0.00       0.05    -140.34       0.00      -0.01      -0.16

   34  10.1  1.0 -1.0       0.00       0.00       0.00   42775.80       0.00       0.00     140.34      -0.00       0.00       0.16
                           -0.00       0.00     701.77      -0.00       0.04      -0.00      -0.14      -1.87      -0.26     115.08

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   42775.81       0.00       0.00    -140.31       2.06      -2.14
                         -255.35       0.05      -0.00      -0.04       0.00    -953.04      -0.01       2.06     140.33      -0.10

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   43377.88      -0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.05       0.00     953.04       0.00      -0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0      -0.03       0.00      -0.18     140.34       0.00      -0.00    5715.49       0.00       0.00       0.00
                           -0.00       0.00     140.34       0.14       0.01       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.78    -203.10      -2.33      -0.00    -140.31       0.00       0.00    5715.51       0.00       0.00
                          321.72       2.95      -0.00       1.87      -2.06       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      53.90       3.00       0.28       0.00       2.06       0.00       0.00       0.00    5715.50       0.00
                           -4.71     203.12       0.01       0.26    -140.33      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      -0.04      -3.10     156.32       0.16      -2.14       0.00       0.00       0.00       0.00    5715.49
                            4.96      -0.14       0.16    -115.08       0.10       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0       0.17      -0.20     -42.64       0.01      -0.14      -0.00       0.00       0.00       0.00       0.00
                            0.27       0.65       0.01    -114.08      -0.45       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00    -183.68       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -183.68       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.11      -0.08       0.00     409.46       0.07      -0.05       0.00       0.00       0.00       0.00
                            0.06       0.03    -409.46       0.00       0.01       0.13      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.15     475.38       0.02       0.07    -409.46      -0.17       0.00       0.00       0.00       0.00
                         -335.09       0.10      -0.07       0.00       0.09    -778.35      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0     544.08      -0.14      -0.00      -0.03       0.09    -778.34       0.00       0.00       0.00       0.00
                            0.10     475.38       0.01       0.00     409.46       0.17      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0      -0.06      -0.00       0.00    -502.22       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -502.22      -0.00      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0      -0.00    -404.89      -0.01       0.00     502.23       0.00       0.00       0.00       0.00       0.00
                          641.36       0.01      -0.00       0.00       0.09       0.01      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0     107.44       0.11       0.00      -0.00      -0.09      -0.00       0.00       0.00       0.00       0.00
                           -0.09     404.89      -0.03      -0.01     502.23       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0       0.00      -0.01    -562.02      -0.00      -0.02      -0.00       0.00       0.00       0.00       0.00
                            0.10       0.00      -0.00     404.83       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0       0.00       0.01     142.99       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.10       0.00       0.00     415.23       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00       0.00     836.32      -0.00       0.04       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     836.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0     241.96    1307.25       0.44      -0.00      -0.00       0.44      -0.01      -0.00     212.69     -54.12
                            1.49       3.06    -187.08      -0.03       0.01     190.06      -0.00      -0.00      -0.36      -0.37

    2   2.1  1.0  1.0      -0.59      -3.06     187.08      -0.92      -0.01     190.06      -0.97       0.00      -0.50       0.13
                          647.36    1307.24       0.44       0.00       0.96      -0.44      -0.00      -0.97    -153.20    -157.14

    3   3.1  1.0  1.0       0.78       0.00      -0.92    -187.08       0.04      -0.97    -190.07       0.03      -0.00       0.00
                           -0.77      -6.69       0.01       0.04     187.08       0.00      -0.03    -190.07       0.78       0.80

    4   4.1  1.0  1.0       1.29      -0.00      -0.01      -0.04     -72.83       0.00       0.16     802.61       0.01       0.00
                           -0.24      -0.00       0.07    -434.76       0.07      -0.00    -494.35       0.06      -0.01       0.01

    5   5.1  1.0  1.0    -391.97       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.01    -199.66    -784.77
                           -0.01      -0.00    -475.38      -0.08       0.03    -404.88      -0.00       0.00      -0.00       0.00

    6   6.1  1.0  1.0       0.01       0.00    -475.38      -0.08       0.12     404.89      -0.00       0.02       0.00      -0.00
                          288.56       0.00       0.00      -0.05       0.00       0.00       0.12       0.00    -579.80     565.30

    7   7.1  1.0  1.0       0.17      -0.00       0.11       0.15     544.08      -0.06      -0.00     107.44       0.00       0.00
                            0.27      -0.00       0.06    -335.09       0.10      -0.00     641.36      -0.09       0.10      -0.10

    8   8.1  1.0  1.0      -0.20      -0.00      -0.08     475.38      -0.14      -0.00    -404.89       0.11      -0.01       0.01
                            0.65       0.00       0.03       0.10     475.38      -0.00       0.01     404.89       0.00       0.00

    9   9.1  1.0  1.0     -42.64    -183.68       0.00       0.02      -0.00       0.00      -0.01       0.00    -562.02     142.99
                            0.01      -0.00    -409.46      -0.07       0.01    -502.22      -0.00      -0.03      -0.00       0.00

   10  10.1  1.0  1.0       0.01       0.00     409.46       0.07      -0.03    -502.22       0.00      -0.00      -0.00       0.00
                         -114.08    -183.68       0.00       0.00       0.00      -0.00       0.00      -0.01     404.83     415.23

   11  11.1  1.0  1.0      -0.14      -0.01       0.07    -409.46       0.09       0.00     502.23      -0.09      -0.02      -0.00
                           -0.45       0.00       0.01       0.09     409.46      -0.03       0.09     502.23       0.00       0.00

   12  12.1  1.0  1.0      -0.00      -0.00      -0.05      -0.17    -778.34      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.13    -778.35       0.17      -0.00       0.01       0.00       0.00      -0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.10       0.02      -0.05     264.58      -0.68      -0.00    -268.81      -0.58      -0.01       0.01

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.84       9.46      -0.02      -0.68    -264.57       0.00       0.58    -268.80      -0.43       1.53

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1257.67    1848.72       0.00       0.00       1.35       0.00       0.01       1.37     -84.11     298.75

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00     717.84       0.12      -0.05     435.94       0.00       0.00       0.07       0.02

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.28      -0.00       0.11    -672.30       0.15       0.00    -572.60       0.10      -0.01       0.01

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.92       0.00      -0.09      -0.15    -672.29       0.17       0.10     572.59       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00    -295.50      -0.05       0.13    1058.96      -0.00      -0.09      -0.05      -0.02

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -146.24       0.00       0.06       0.00       0.00      -0.03       0.01       0.01   -1102.33    -310.38

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21       0.01      -0.10     579.07      -0.13      -0.00     710.25      -0.12      -0.00       0.03

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.63      -0.00      -0.04      -0.13    -579.07      -0.00       0.12     710.26       0.01       0.00

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          221.63    -259.77      -0.00       0.03       0.00      -0.00       0.02       0.00     222.27    -789.42

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1100.75      -0.19       0.07       0.02       0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0     241.96    1307.25       0.44      -0.00      -0.00       0.44      -0.01      -0.00     212.69     -54.12
                           -1.49      -3.06     187.08       0.03      -0.01    -190.06       0.00       0.00       0.36       0.37

   26   2.1  1.0 -1.0      -0.59      -3.06     187.08      -0.92      -0.01     190.06      -0.97       0.00      -0.50       0.13
                         -647.36   -1307.24      -0.44      -0.00      -0.96       0.44       0.00       0.97     153.20     157.14

   27   3.1  1.0 -1.0       0.78       0.00      -0.92    -187.08       0.04      -0.97    -190.07       0.03      -0.00       0.00
                            0.77       6.69      -0.01      -0.04    -187.08      -0.00       0.03     190.07      -0.78      -0.80

   28   4.1  1.0 -1.0       1.29      -0.00      -0.01      -0.04     -72.83       0.00       0.16     802.61       0.01       0.00
                            0.24       0.00      -0.07     434.76      -0.07       0.00     494.35      -0.06       0.01      -0.01

   29   5.1  1.0 -1.0    -391.97       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.01    -199.66    -784.77
                            0.01       0.00     475.38       0.08      -0.03     404.88       0.00      -0.00       0.00      -0.00

   30   6.1  1.0 -1.0       0.01       0.00    -475.38      -0.08       0.12     404.89      -0.00       0.02       0.00      -0.00
                         -288.56      -0.00      -0.00       0.05      -0.00      -0.00      -0.12      -0.00     579.80    -565.30

   31   7.1  1.0 -1.0       0.17      -0.00       0.11       0.15     544.08      -0.06      -0.00     107.44       0.00       0.00
                           -0.27       0.00      -0.06     335.09      -0.10       0.00    -641.36       0.09      -0.10       0.10

   32   8.1  1.0 -1.0      -0.20      -0.00      -0.08     475.38      -0.14      -0.00    -404.89       0.11      -0.01       0.01
                           -0.65      -0.00      -0.03      -0.10    -475.38       0.00      -0.01    -404.89      -0.00      -0.00

   33   9.1  1.0 -1.0     -42.64    -183.68       0.00       0.02      -0.00       0.00      -0.01       0.00    -562.02     142.99
                           -0.01       0.00     409.46       0.07      -0.01     502.22       0.00       0.03       0.00      -0.00

   34  10.1  1.0 -1.0       0.01       0.00     409.46       0.07      -0.03    -502.22       0.00      -0.00      -0.00       0.00
                          114.08     183.68      -0.00      -0.00      -0.00       0.00      -0.00       0.01    -404.83    -415.23

   35  11.1  1.0 -1.0      -0.14      -0.01       0.07    -409.46       0.09       0.00     502.23      -0.09      -0.02      -0.00
                            0.45      -0.00      -0.01      -0.09    -409.46       0.03      -0.09    -502.23      -0.00      -0.00

   36  12.1  1.0 -1.0      -0.00      -0.00      -0.05      -0.17    -778.34      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.13     778.35      -0.17       0.00      -0.01      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5715.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14196.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41404.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41404.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41404.65       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   44012.93       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   44012.67       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44012.70       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44013.09       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44013.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0    -392.44
                           -0.92

    2   2.1  1.0  1.0       0.92
                         -392.44

    3   3.1  1.0  1.0      -0.00
                            2.01

    4   4.1  1.0  1.0       0.00
                            0.00

    5   5.1  1.0  1.0       0.00
                            0.00

    6   6.1  1.0  1.0      -0.00
                           -0.01

    7   7.1  1.0  1.0       0.00
                            0.00

    8   8.1  1.0  1.0       0.00
                           -0.00

    9   9.1  1.0  1.0     836.32
                            0.00

   10  10.1  1.0  1.0      -0.00
                          836.33

   11  11.1  1.0  1.0       0.04
                           -0.00

   12  12.1  1.0  1.0       0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                           -0.01

   14   2.1  1.0  0.0       0.00
                           -2.84

   15   3.1  1.0  0.0       0.00
                         -555.00

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                            0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                           -0.00

   20   8.1  1.0  0.0       0.00
                           -0.01

   21   9.1  1.0  0.0       0.00
                           -0.06

   22  10.1  1.0  0.0       0.00
                            0.00

   23  11.1  1.0  0.0       0.00
                         1182.75

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0    -392.44
                            0.92

   26   2.1  1.0 -1.0       0.92
                          392.44

   27   3.1  1.0 -1.0      -0.00
                           -2.01

   28   4.1  1.0 -1.0       0.00
                           -0.00

   29   5.1  1.0 -1.0       0.00
                           -0.00

   30   6.1  1.0 -1.0      -0.00
                            0.01

   31   7.1  1.0 -1.0       0.00
                           -0.00

   32   8.1  1.0 -1.0       0.00
                            0.00

   33   9.1  1.0 -1.0     836.32
                           -0.00

   34  10.1  1.0 -1.0      -0.00
                         -836.33

   35  11.1  1.0 -1.0       0.04
                            0.00

   36  12.1  1.0 -1.0       0.00
                            0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   46080.74
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.22419306 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.058       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.052       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42206.647       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42206.576       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42206.600       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42206.700       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42206.649
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       5.829    1139.680      -0.578      -0.003      -0.000      -0.419     262.734

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -5.829       0.000      -2.667    -240.283      -1.344      -0.030    -185.198      -0.619

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                            -1139.680       2.667       0.000       1.229    -262.731       0.000       0.947       0.000

    4    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.578     240.283      -1.229       0.000       0.039     822.113      -0.131      -0.000

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.003       1.344     262.731      -0.039       0.000       0.000       0.038     673.330

    6    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.030      -0.000    -822.113      -0.000       0.000    1066.597      -0.108

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.419     185.198      -0.947       0.131      -0.038   -1066.597       0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                             -262.734       0.619      -0.000       0.000    -673.330       0.108      -0.000       0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.015      -1.176    -229.821      -0.034       0.030       0.000       0.032     580.956

   10    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000    -531.321      -0.000      -0.065    -409.508      -0.008

   11    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                              229.824      -0.538      -0.012       0.000    -580.954      -0.000       0.000       0.030

   12    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.997     426.051      -2.179       0.000      -0.000      -0.022       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1139.685      -5.829      -0.003       0.615     262.735      -0.041      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1139.685      -0.000       0.014      -1.435     262.729      -0.615       0.591      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.829      -0.014      -0.000    -280.534      -1.344       0.019     115.480      -0.023

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       1.435     280.534      -0.000       0.000       0.000       0.101     512.641

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.615    -262.729       1.344      -0.000      -0.000    -673.332       0.108       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -262.735       0.615      -0.019      -0.000     673.332      -0.000      -0.000       0.199

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041      -0.591    -115.480      -0.101      -0.108       0.000      -0.000    1245.273

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.023    -512.641      -0.000      -0.199   -1245.273       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.538    -229.821       1.176       0.032       0.000     580.950      -0.106      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.822      -0.538       0.000      -0.000     580.960      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.012       0.000    -620.321      -0.000       0.071     255.348      -0.051

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005      -2.179    -426.052      -0.000      -0.000       0.000       0.000       0.020

    1    1  |0 0>              -1.220   -1126.235       5.746       0.000       0.192     287.287      -0.046       0.004
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              18.808       5.720    1125.985       8.379       2.878      -0.001       1.103    -287.224
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -2.242      -0.079     -16.527     569.431       1.624       0.012      76.226       4.245
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>           -1254.536       1.742      17.207      -0.396    -151.153       0.327      -0.053      -4.388
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             342.178      -0.836       1.108       1.820    -554.328       0.011       0.244      -0.283
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            1848.737      -4.327       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.619     264.575      -1.308      -0.007      -0.000    -672.293       0.160      -0.115
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.003      -1.308    -264.577      -0.062      -0.000      -0.115       0.209     672.291
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000      -0.018       0.059    -103.001       0.000       0.169     769.447      -0.199
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.627     268.784      -1.375       0.000       0.002     572.598      -0.091      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.010      -1.375    -268.803       0.230      -0.020      -0.000      -0.006    -572.599
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.002       0.000       0.047    1135.061       0.008       0.024     151.944       0.157
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>             300.790      -0.702      -0.004       0.008    -282.365       0.004       0.001      -0.009
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>             -76.530       0.179       0.006       0.006   -1109.834      -0.000       0.001       0.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>            -554.997       1.299      -0.000       0.000       0.001      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       5.829    1139.680      -0.578

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -5.829       0.000      -2.667    -240.283

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1139.680       2.667       0.000       1.229

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.578     240.283      -1.229       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.003       1.344     262.731      -0.039

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.030      -0.000    -822.113

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.419     185.198      -0.947       0.131

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -262.734       0.619      -0.000       0.000

    9    1  |1 1>+          42775.788       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.015      -1.176    -229.821      -0.034

   10    1  |1 1>+              0.000   42775.802       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -531.321

   11    1  |1 1>+              0.000       0.000   42775.815       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     229.824      -0.538      -0.012       0.000

   12    1  |1 1>+              0.000       0.000       0.000   43377.879      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.997     426.051      -2.179       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.015      -0.000    -229.824      -0.997       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.058       0.000       0.000
                                1.176       0.000       0.538    -426.051      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.052       0.000
                              229.821      -0.000       0.012       2.179      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000   42206.647
                                0.034     531.321      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.030       0.000     580.954       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.065       0.000       0.022      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.032     409.508      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -580.956       0.008      -0.030      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     701.768      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -953.042      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -701.768       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     953.042      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -2.667     -40.254
                                0.538    -229.822       0.000       0.005       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   -1139.693       0.079
                              229.821       0.538       0.012       2.179       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       2.667    1139.693       0.000       0.000
                               -1.176      -0.000      -0.000     426.052       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      40.254      -0.079      -0.000       0.000
                               -0.032       0.000     620.321       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000    1334.756
                               -0.000    -580.960       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.045       1.344     262.729       0.039
                             -580.950       0.000      -0.071      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000    -300.704       0.689      -0.042      -0.000
                                0.106      -0.000    -255.348      -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.596    -262.729       1.344       0.000
                                0.000       0.000       0.051      -0.020       0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.012      -0.000     -89.003
                               -0.000     701.766      -0.000      -0.049      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.003       1.175     229.821      -0.034
                             -701.766       0.000      -0.036       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.538    -229.819       1.175      -0.005
                                0.000       0.036      -0.000     953.041       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000     426.050      -0.997       0.000       0.000
                                0.049      -0.000    -953.041      -0.000       0.000       0.000      -0.000       0.000

    1    1  |0 0>              -0.249     198.475       0.003      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.015       0.001       0.331    -218.726

    2    1  |0 0>              -3.302      -0.001    -198.431       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1126.036     -13.883       3.839       0.001

    3    1  |0 0>               0.395       0.000       2.913       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      13.892   -1126.171       1.455      -0.000

    4    1  |0 0>             221.077       0.226      -3.020       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -17.203      -0.870    -330.981      -0.282

    5    1  |0 0>             -60.300       0.007      -0.198      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.102       2.836    1257.670      -0.017

    6    1  |0 0>            -259.766       0.000      -0.013      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.022      -9.456   -1848.720       0.000

    7    1  |0 0>               0.000     579.063       0.099      -0.075       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.045       0.018      -0.000    -717.844

    8    1  |0 0>               0.030       0.099    -579.063      -0.245       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -264.577       0.678      -0.000      -0.123

    9    1  |0 0>              -0.000      -0.039       0.129   -1100.735       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.678     264.574      -1.353       0.049

   10    1  |0 0>               0.005    -710.246       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.001    -435.942

   11    1  |0 0>              -0.020       0.000     710.258       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     268.808      -0.583      -0.008      -0.000

   12    1  |0 0>               0.005      -0.000      -0.123      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.582     268.805      -1.374      -0.000

   13    1  |0 0>            -794.810      -0.004      -0.030      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.005       0.432      84.114      -0.067

   14    1  |0 0>             202.220       0.000      -0.005      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.009      -1.527    -298.747      -0.018

   15    1  |0 0>            1182.740      -0.000       0.061       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.007       2.839     554.996      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.003      -0.000      -0.419     262.734       0.015      -0.000    -229.824      -0.997

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -1.344      -0.030    -185.198      -0.619       1.176       0.000       0.538    -426.051

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                             -262.731       0.000       0.947       0.000     229.821      -0.000       0.012       2.179

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.039     822.113      -0.131      -0.000       0.034     531.321      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.038     673.330      -0.030       0.000     580.954       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000    1066.597      -0.108      -0.000       0.065       0.000       0.022

    7    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.038   -1066.597       0.000       0.000      -0.032     409.508      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -673.330       0.108      -0.000       0.000    -580.956       0.008      -0.030      -0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.030       0.000       0.032     580.956       0.000       0.000     701.768      -0.000

   10    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.065    -409.508      -0.008      -0.000       0.000      -0.000    -953.042

   11    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                             -580.954      -0.000       0.000       0.030    -701.768       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.022       0.000       0.000       0.000     953.042      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42206.576       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42206.600       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42206.700       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42206.649       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   42775.788       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42775.802       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42775.815       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43377.879
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.045     300.704       0.596      -0.000      -0.003       0.538    -426.050
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000      -1.344      -0.689     262.729      -0.012      -1.175     229.819       0.997
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000    -262.729       0.042      -1.344       0.000    -229.821      -1.175      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-          -1334.756      -0.039       0.000      -0.000      89.003       0.034       0.005      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.028     178.673       0.068      -0.000      -0.000      -0.000       0.004
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.028       0.000      -0.038    -673.336      -0.136       0.000     580.957       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-           -178.673       0.038       0.000       0.108    -664.912      -0.032      -0.127      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-             -0.068     673.336      -0.108       0.000       0.042    -580.953       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.136     664.912      -0.042       0.000      -0.036      -0.000    -953.026
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000      -0.000       0.032     580.953       0.036       0.000    -701.757       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000    -580.957       0.127      -0.000       0.000     701.757       0.000      -0.049
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-             -0.004      -0.000       0.000       0.000     953.026      -0.000       0.049       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.085    -531.313      -0.621      -0.003       0.000      -0.058      -0.007

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              287.225      -4.219       0.003      -8.630     198.432       2.914      -0.651       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.216    -287.258       0.046       0.046      -2.913     198.453       0.758       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.388       0.200      -0.574     555.585       3.028      -0.138      58.326      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.283      -0.918      -0.011     146.242       0.207       0.634    -221.628      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.001      -0.013       0.000     259.766       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.115       0.093     295.497      -0.058       0.099       0.039       0.000    1100.752

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              672.296       0.150       0.050      -0.000    -579.068       0.129      -0.030       0.188

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.150     672.290      -0.128      -0.000       0.129     579.072      -0.000      -0.075

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.169   -1058.963       0.027       0.000       0.000       0.001      -0.017

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              572.595      -0.099       0.000      -0.010    -710.254      -0.123      -0.016      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.099    -572.592       0.091      -0.010       0.123    -710.261      -0.003       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009      -0.004       0.055    1102.325       0.000      -0.005    -222.266       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.013      -0.003       0.017     310.377      -0.025      -0.004     789.425       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.007       0.061      -0.000   -1182.752      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1139.685      -5.829      -0.003       0.615     262.735      -0.041      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1139.685      -0.000       0.014      -1.435     262.729      -0.615       0.591      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.829      -0.014      -0.000    -280.534      -1.344       0.019     115.480      -0.023

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       1.435     280.534      -0.000       0.000       0.000       0.101     512.641

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.615    -262.729       1.344      -0.000      -0.000    -673.332       0.108       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -262.735       0.615      -0.019      -0.000     673.332      -0.000      -0.000       0.199

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041      -0.591    -115.480      -0.101      -0.108       0.000      -0.000    1245.273

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.023    -512.641      -0.000      -0.199   -1245.273       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.538    -229.821       1.176       0.032       0.000     580.950      -0.106      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.822      -0.538       0.000      -0.000     580.960      -0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.012       0.000    -620.321      -0.000       0.071     255.348      -0.051

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005      -2.179    -426.052      -0.000      -0.000       0.000       0.000       0.020

    1    1  |1 0>               0.000       0.000       2.667      40.254      -0.000      -0.045    -300.704      -0.596
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000    1139.693      -0.079      -0.000       1.344       0.689    -262.729
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -2.667   -1139.693       0.000      -0.000      -0.000     262.729      -0.042       1.344
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>             -40.254       0.079       0.000       0.000    1334.756       0.039      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   -1334.756       0.000      -0.028    -178.673      -0.068
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.045      -1.344    -262.729      -0.039       0.028       0.000       0.038     673.336
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 0>             300.704      -0.689       0.042       0.000     178.673      -0.038       0.000      -0.108
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.596     262.729      -1.344      -0.000       0.068    -673.336       0.108       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.012       0.000      89.003      -0.000      -0.136    -664.912       0.042
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -0.003      -1.175    -229.821       0.034      -0.000       0.000      -0.032    -580.953
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.538     229.819      -1.175       0.005      -0.000     580.957      -0.127       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>            -426.050       0.997      -0.000      -0.000       0.004       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.058       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.052       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42206.647       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42206.576       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42206.600       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42206.700       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42206.649
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1126.247      -1.551      -0.006      -0.005     287.290      -0.445       0.006      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.030      14.954     -16.614     350.690      -0.001      -5.825    -454.976      -4.173

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008      -3.697   -1126.123      -5.131       0.000       1.671       6.662    -287.258

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.879    -923.537       5.507       5.357       0.327     404.430      -7.015       0.200

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.101    -915.498       1.084       0.345       0.011    -408.088      -0.383      -0.918

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.327   -1848.715       9.456       0.000       0.000      -0.002       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              264.578      -0.619      -0.018      -0.105     672.290      -0.000      -0.081      -0.046

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.045      -0.000      -0.059     614.850       0.115       0.076     473.894      -0.140

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.021      -1.353    -264.575      -0.097      -0.046      -0.000      -0.143    -672.291

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -268.788       0.628      -0.000       0.000     572.592      -0.005       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002       0.047     699.113       0.000      -0.175    -907.022      -0.008

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       1.372     268.805      -0.088      -0.000      -0.002       0.125    -572.595

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.505     216.661      -1.106       0.011       0.004     819.961      -0.145      -0.004

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.520     222.227      -1.135      -0.015      -0.000    -799.453       0.148      -0.003

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.299     554.993      -2.839      -0.000      -0.000       0.016      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -1.220      18.808      -2.242   -1254.536
                                0.538    -229.822       0.000       0.005       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000   -1126.235       5.720      -0.079       1.742
                              229.821       0.538       0.012       2.179       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       5.746    1125.985     -16.527      17.207
                               -1.176      -0.000      -0.000     426.052       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       8.379     569.431      -0.396
                               -0.032       0.000     620.321       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.192       2.878       1.624    -151.153
                               -0.000    -580.960       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000     287.287      -0.001       0.012       0.327
                             -580.950       0.000      -0.071      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.046       1.103      76.226      -0.053
                                0.106      -0.000    -255.348      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.004    -287.224       4.245      -4.388
                                0.000       0.000       0.051      -0.020       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.249      -3.302       0.395     221.077
                               -0.000     701.766      -0.000      -0.049       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000     198.475      -0.001       0.000       0.226
                             -701.766       0.000      -0.036       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.003    -198.431       2.913      -3.020
                                0.000       0.036      -0.000     953.041       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.049      -0.000    -953.041      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.003      -0.538     426.050       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.015    1126.036     -13.892      17.203

    2    1  |1 0>               0.012       1.175    -229.819      -0.997       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.001      13.883    1126.171       0.870

    3    1  |1 0>              -0.000     229.821       1.175       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.331      -3.839      -1.455     330.981

    4    1  |1 0>             -89.003      -0.034      -0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     218.726      -0.001       0.000       0.282

    5    1  |1 0>               0.000       0.000       0.000      -0.004       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.004    -287.225       4.216      -4.388

    6    1  |1 0>               0.136      -0.000    -580.957      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.085       4.219     287.258      -0.200

    7    1  |1 0>             664.912       0.032       0.127       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     531.313      -0.003      -0.046       0.574

    8    1  |1 0>              -0.042     580.953      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.621       8.630      -0.046    -555.585

    9    1  |1 0>               0.000       0.036       0.000     953.026       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.003    -198.432       2.913      -3.028

   10    1  |1 0>              -0.036       0.000     701.757      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -2.914    -198.453       0.138

   11    1  |1 0>              -0.000    -701.757       0.000       0.049       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.058       0.651      -0.758     -58.326

   12    1  |1 0>            -953.026       0.000      -0.049       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.007      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1126.247      -0.030       0.008       0.879

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.551     -14.954       3.697     923.537

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.006      16.614    1126.123      -5.507

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.005    -350.690       5.131      -5.357

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -287.290       0.001      -0.000      -0.327

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.445       5.825      -1.671    -404.430

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.006     454.976      -6.662       7.015

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       4.173     287.258      -0.200

    9    1  |1 1>-          42775.788       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     198.474      -0.001       0.010       0.226

   10    1  |1 1>-              0.000   42775.802       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.191       2.650       0.363    -162.751

   11    1  |1 1>-              0.000       0.000   42775.815       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.010      -2.914    -198.454       0.138

   12    1  |1 1>-              0.000       0.000       0.000   43377.879       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.006      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5715.492       0.000       0.000       0.000
                             -198.474      -0.191      -0.010      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5715.511       0.000       0.000
                                0.001      -2.650       2.914      -0.006      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5715.505       0.000
                               -0.010      -0.363     198.454       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5715.487
                               -0.226     162.751      -0.138      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007     161.328       0.634      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     259.766      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              579.069      -0.000      -0.010      -0.188      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.099      -0.000      -0.129    1100.754      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.010      -0.000    -579.069      -0.245      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              710.251       0.003       0.037       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.004      -0.123      -0.020      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.037       0.007    -710.260      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004    -572.515      -0.005      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -587.223      -0.004       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1182.746       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+            342.178    1848.737       0.619      -0.003      -0.000       0.627      -0.010      -0.002
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.836      -4.327     264.575      -1.308      -0.018     268.784      -1.375       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              1.108       0.000      -1.308    -264.577       0.059      -1.375    -268.803       0.047
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              1.820      -0.000      -0.007      -0.062    -103.001       0.000       0.230    1135.061
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           -554.328       0.000      -0.000      -0.000       0.000       0.002      -0.020       0.008
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.011       0.000    -672.293      -0.115       0.169     572.598      -0.000       0.024
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.244      -0.000       0.160       0.209     769.447      -0.091      -0.006     151.944
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.283      -0.000      -0.115     672.291      -0.199      -0.000    -572.599       0.157
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -60.300    -259.766       0.000       0.030      -0.000       0.005      -0.020       0.005
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.007       0.000     579.063       0.099      -0.039    -710.246       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.198      -0.013       0.099    -579.063       0.129       0.000     710.258      -0.123
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000      -0.075      -0.245   -1100.735      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.102       0.022      -0.045     264.577      -0.678      -0.000    -268.808      -0.582

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.836       9.456      -0.018      -0.678    -264.574       0.000       0.583    -268.805

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1257.670    1848.720       0.000       0.000       1.353       0.001       0.008       1.374

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.017      -0.000     717.844       0.123      -0.049     435.942       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.283      -0.000       0.115    -672.296       0.150       0.000    -572.595       0.099

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.918       0.000      -0.093      -0.150    -672.290       0.169       0.099     572.592

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.011       0.000    -295.497      -0.050       0.128    1058.963      -0.000      -0.091

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -146.242       0.001       0.058       0.000       0.000      -0.027       0.010       0.010

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.207       0.013      -0.099     579.068      -0.129      -0.000     710.254      -0.123

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.634      -0.000      -0.039      -0.129    -579.072      -0.000       0.123     710.261

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              221.628    -259.766      -0.000       0.030       0.000      -0.001       0.016       0.003

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1100.752      -0.188       0.075       0.017       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.101       4.327    -264.578      -0.045       0.021     268.788      -0.000      -0.003

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              915.498    1848.715       0.619       0.000       1.353      -0.628      -0.002      -1.372

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.084      -9.456       0.018       0.059     264.575       0.000      -0.047    -268.805

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.345      -0.000       0.105    -614.850       0.097      -0.000    -699.113       0.088

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.011      -0.000    -672.290      -0.115       0.046    -572.592      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              408.088       0.002       0.000      -0.076       0.000       0.005       0.175       0.002

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.383      -0.000       0.081    -473.894       0.143      -0.000     907.022      -0.125

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.918       0.000       0.046       0.140     672.291      -0.000       0.008     572.595

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007      -0.000    -579.069      -0.099       0.010    -710.251      -0.000      -0.037

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -161.328    -259.766       0.000       0.000       0.000      -0.003       0.004      -0.007

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.634       0.000       0.010       0.129     579.069      -0.037       0.123     710.260

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.188   -1100.754       0.245      -0.000       0.020       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5715.482       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14196.718       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41404.627       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41404.657       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41404.648       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   44012.930       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   44012.668       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44012.697
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+            300.790     -76.530    -554.997
                                0.000       0.000       0.000

    2    1  |1 1>+             -0.702       0.179       1.299
                                0.000       0.000       0.000

    3    1  |1 1>+             -0.004       0.006      -0.000
                                0.000       0.000       0.000

    4    1  |1 1>+              0.008       0.006       0.000
                                0.000       0.000       0.000

    5    1  |1 1>+           -282.365   -1109.834       0.001
                                0.000       0.000       0.000

    6    1  |1 1>+              0.004      -0.000      -0.000
                                0.000       0.000       0.000

    7    1  |1 1>+              0.001       0.001       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+             -0.009       0.013       0.000
                                0.000       0.000       0.000

    9    1  |1 1>+           -794.810     202.220    1182.740
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.004       0.000      -0.000
                                0.000       0.000       0.000

   11    1  |1 1>+             -0.030      -0.005       0.061
                                0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                               -0.005       0.009      -0.007

    2    1  |1 0>               0.000       0.000       0.000
                               -0.432       1.527      -2.839

    3    1  |1 0>               0.000       0.000       0.000
                              -84.114     298.747    -554.996

    4    1  |1 0>               0.000       0.000       0.000
                                0.067       0.018       0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.009       0.013       0.000

    6    1  |1 0>               0.000       0.000       0.000
                                0.004       0.003      -0.000

    7    1  |1 0>               0.000       0.000       0.000
                               -0.055      -0.017      -0.000

    8    1  |1 0>               0.000       0.000       0.000
                            -1102.325    -310.377      -0.007

    9    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.025      -0.061

   10    1  |1 0>               0.000       0.000       0.000
                                0.005       0.004       0.000

   11    1  |1 0>               0.000       0.000       0.000
                              222.266    -789.425    1182.752

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                               -0.505      -0.520      -1.299

    2    1  |1 1>-              0.000       0.000       0.000
                             -216.661    -222.227    -554.993

    3    1  |1 1>-              0.000       0.000       0.000
                                1.106       1.135       2.839

    4    1  |1 1>-              0.000       0.000       0.000
                               -0.011       0.015       0.000

    5    1  |1 1>-              0.000       0.000       0.000
                               -0.004       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000
                             -819.961     799.453      -0.016

    7    1  |1 1>-              0.000       0.000       0.000
                                0.145      -0.148       0.000

    8    1  |1 1>-              0.000       0.000       0.000
                                0.004       0.003      -0.000

    9    1  |1 1>-              0.000       0.000       0.000
                               -0.004       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000
                              572.515     587.223    1182.746

   11    1  |1 1>-              0.000       0.000       0.000
                                0.005       0.004      -0.000

   12    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           44013.085       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   44013.129       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   46080.735
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.23743145    -0.01323839    -2905.49      0.00000000        0.00      0.0000
    2  -214.22945515    -0.00526210    -1154.90      0.00797630     1750.59      0.2170
    3  -214.22945514    -0.00526209    -1154.89      0.00797631     1750.60      0.2170
    4  -214.22945501    -0.00526195    -1154.87      0.00797644     1750.63      0.2170
    5  -214.22133826     0.00285480      626.56      0.01609319     3532.05      0.4379
    6  -214.22133817     0.00285489      626.58      0.01609328     3532.07      0.4379
    7  -214.22133814     0.00285491      626.58      0.01609331     3532.07      0.4379
    8  -214.22133813     0.00285492      626.58      0.01609332     3532.07      0.4379
    9  -214.22133807     0.00285499      626.60      0.01609338     3532.09      0.4379
   10  -214.19592546     0.02826760     6204.02      0.04150599     9109.51      1.1294
   11  -214.19592542     0.02826764     6204.03      0.04150603     9109.52      1.1294
   12  -214.19592541     0.02826764     6204.03      0.04150604     9109.52      1.1294
   13  -214.19592538     0.02826768     6204.04      0.04150607     9109.53      1.1294
   14  -214.19592537     0.02826769     6204.04      0.04150608     9109.53      1.1294
   15  -214.15679739     0.06739566    14791.64      0.08063405    17697.13      2.1942
   16  -214.04497839     0.17921467    39333.07      0.19245306    42238.56      5.2369
   17  -214.04497829     0.17921476    39333.09      0.19245315    42238.59      5.2369
   18  -214.04497827     0.17921478    39333.10      0.19245317    42238.59      5.2369
   19  -214.04094150     0.18325156    40219.07      0.19648995    43124.56      5.3468
   20  -214.04094145     0.18325161    40219.08      0.19649000    43124.57      5.3468
   21  -214.04094138     0.18325167    40219.09      0.19649007    43124.58      5.3468
   22  -214.04040476     0.18378830    40336.87      0.19702669    43242.36      5.3614
   23  -214.04040472     0.18378833    40336.88      0.19702672    43242.37      5.3614
   24  -214.04040457     0.18378848    40336.91      0.19702687    43242.40      5.3614
   25  -214.04040449     0.18378856    40336.93      0.19702695    43242.42      5.3614
   26  -214.04040447     0.18378859    40336.93      0.19702698    43242.42      5.3614
   27  -214.03909409     0.18509897    40624.53      0.19833736    43530.02      5.3970
   28  -214.02749543     0.19669763    43170.14      0.20993602    46075.63      5.7127
   29  -214.02749533     0.19669772    43170.16      0.20993611    46075.65      5.7127
   30  -214.02749533     0.19669773    43170.16      0.20993612    46075.65      5.7127
   31  -214.02574975     0.19844330    43553.27      0.21168170    46458.76      5.7602
   32  -214.02574974     0.19844331    43553.27      0.21168170    46458.76      5.7602
   33  -214.02574974     0.19844332    43553.27      0.21168171    46458.76      5.7602
   34  -214.02574967     0.19844339    43553.29      0.21168178    46458.78      5.7602
   35  -214.02574961     0.19844345    43553.30      0.21168184    46458.79      5.7602
   36  -214.02574946     0.19844360    43553.33      0.21168199    46458.83      5.7602
   37  -214.02574944     0.19844361    43553.34      0.21168200    46458.83      5.7602
   38  -214.02461182     0.19958123    43803.02      0.21281963    46708.51      5.7911
   39  -214.02461181     0.19958124    43803.02      0.21281964    46708.51      5.7911
   40  -214.02461172     0.19958134    43803.04      0.21281973    46708.53      5.7911
   41  -214.02461171     0.19958135    43803.04      0.21281974    46708.53      5.7911
   42  -214.02461168     0.19958137    43803.05      0.21281976    46708.54      5.7911
   43  -214.02218292     0.20201014    44336.10      0.21524853    47241.59      5.8572
   44  -214.02218291     0.20201015    44336.10      0.21524854    47241.59      5.8572
   45  -214.02218290     0.20201016    44336.11      0.21524855    47241.60      5.8572
   46  -214.01957585     0.20461720    44908.29      0.21785560    47813.78      5.9282
   47  -214.01957575     0.20461731    44908.31      0.21785570    47813.80      5.9282
   48  -214.01957501     0.20461804    44908.47      0.21785644    47813.96      5.9282
   49  -214.01957450     0.20461856    44908.58      0.21785695    47814.07      5.9282
   50  -214.01957432     0.20461873    44908.62      0.21785712    47814.11      5.9282
   51  -214.01068459     0.21350847    46859.69      0.22674686    49765.18      6.1701

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.56729799  0.00000502 -0.00165459 -0.00000000  0.77368389  0.00095368 -0.00180477 -0.08762742
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00132764  0.00211041 -0.70696883 -0.00000041 -0.00066768  0.00193674  0.67414614 -0.01571070
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000006 -0.70697015 -0.00211041 -0.00150930 -0.00100449  0.67432357 -0.00197286 -0.00148343
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000116 -0.00000000  0.00065938  0.00000569  0.00003065  0.00000033  0.00000282
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000002  0.00000000 -0.00000000  0.00000000 -0.00143307 -0.00003081 -0.00029606 -0.01264700
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00003486 -0.00430388 -0.00000074 -0.00001084  0.00001426 -0.00636383  0.00015017
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00001027  0.00000072 -0.00492551  0.00000076  0.00000370  0.00000106  0.00000035
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00430384 -0.00003486 -0.00000887  0.00000943 -0.00636554 -0.00001393  0.00001477
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00749997 -0.00000017 -0.00000000 -0.00000000  0.00270217  0.00000319 -0.00001181 -0.00030595
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00002628  0.00324393 -0.00000003  0.00000401 -0.00000527  0.00235433 -0.00005556
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000039  0.00324394  0.00002628  0.00000693 -0.00000335  0.00235499  0.00000515 -0.00000548
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00002905  0.00000009 -0.01360715  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000673  0.70697086  0.00572666 -0.00014527 -0.00100346  0.67430694  0.00147518 -0.00157183

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000035  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00290165 -0.00014525 -0.00000848 -0.70697415 -0.00206029  0.00002928 -0.00005738 -0.00304777

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.56728359 -0.00000764 -0.00000002  0.00361618 -0.46274487 -0.00211487 -0.01398971 -0.62604516

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00003722  0.00459537 -0.00000005 -0.00000885  0.00001085 -0.00484519  0.00011478

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00430369  0.00003486  0.00000919  0.00000943 -0.00636569 -0.00001393  0.00001477

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000919 -0.00000033  0.00430388  0.00000287  0.00001528 -0.00000171  0.00000147

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001533 -0.00189220 -0.00000067 -0.00001947  0.00002636 -0.01176941  0.00027731

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000009 -0.00000000  0.00000037 -0.00000000  0.01023905 -0.00000197 -0.00019556 -0.00756379

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000039 -0.00324386 -0.00002628 -0.00000693 -0.00000340  0.00235508  0.00000516 -0.00000535

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000692 -0.00000002  0.00324401  0.00000106  0.00000565  0.00000006  0.00000053

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00749997 -0.00000017 -0.00000000 -0.00000000 -0.00161609 -0.00000724 -0.00004886 -0.00218647

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00011022  0.01360662 -0.00000014  0.00000000  0.00000000 -0.00000036  0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00132764 -0.00572666  0.70696993  0.00000107  0.00042045 -0.00150742  0.67415858 -0.01423731

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.56728151  0.00000568 -0.00165452  0.00361618 -0.31094239  0.00116925  0.01579447  0.71367153

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000035  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00290166 -0.00150925 -0.00000484  0.70697471  0.00189478  0.00161227 -0.00007115 -0.00349945

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00393591  0.00003188  0.00000865  0.00001151 -0.00777227 -0.00001701  0.00001804

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00003486 -0.00430367  0.00000004  0.00001084 -0.00001426  0.00636395 -0.00015017

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000013  0.00000048  0.00000000  0.00000000  0.01167213  0.00003046  0.00010014  0.00508317

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00303421  0.00002458  0.00000624 -0.00001680  0.01008340  0.00002205 -0.00002421

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000925  0.00000003 -0.00430387  0.00000287  0.00001426  0.00000016  0.00000143

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00002628 -0.00324388  0.00000020  0.00000401 -0.00000527  0.00235448 -0.00005556

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00749997 -0.00000000  0.00000000 -0.00000000 -0.00108588  0.00000404  0.00006067  0.00249239

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000693 -0.00000014 -0.00324398  0.00000106  0.00000565  0.00000018  0.00000052

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.01360659 -0.00011022 -0.00002905 -0.00000000  0.00000034  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000003  0.00000336  0.00000000  0.00019787 -0.00066911  0.30036514 -0.00695102
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000002 -0.00000323 -0.00000003 -0.00000000 -0.00370206 -0.30038804 -0.00060477  0.00267967
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000001  0.00000004  0.00000000 -0.00000031  0.00046817  0.00369068  0.00001931  0.00070806
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000146 -0.00000005 -0.00000001  0.00000000  0.27909850 -0.00442673 -0.00276518 -0.11111663
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.11117636 -0.00109589 -0.00638694 -0.27904937
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.18431456 -0.00000000 -0.00000000 -0.00000000  0.00000177  0.00000000 -0.00000000 -0.00000028
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00006999  0.00882694 -0.00000069  0.00000000  0.00000000 -0.00000015  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00882691 -0.00006999 -0.00002081 -0.00000000  0.00000016  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00002081 -0.00000052 -0.00882719  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000013 -0.00000000 -0.00001319  0.00001741 -0.00777177  0.00018338
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000013  0.00000000  0.00000000 -0.00001134  0.00777455  0.00001701 -0.00001792
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000355  0.00001731  0.00000020  0.00000168
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00000019 -0.00000000  0.00000000 -0.00000000 -0.00727025 -0.00000442  0.00007725  0.00275161
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000013  0.00000000  0.00000000 -0.00000000  0.00275263  0.00002040  0.00016687  0.00726835
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.01982512 -0.00000000  0.00000000  0.00000000 -0.00000021 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00033179 -0.00076647 -0.24058152 -0.04816582 -0.00096497  0.00691514  0.10647523  0.00000160
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00001846 -0.21256601  0.00083663  0.00009183 -0.00003312  0.00108336 -0.00024919  0.00068183
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00161734  0.00110615  0.00538083  0.00373063 -0.00682464  0.21235644  0.00000001 -0.00000342
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.01261876  0.00000008  0.00005512 -0.00008812 -0.01214186 -0.00039042  0.00000000 -0.00000588
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000356 -0.00000506 -0.00240976  0.01201637 -0.00009323 -0.00015301 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000037 -0.00612848  0.00000710 -0.00000115 -0.00000027  0.00000038 -0.00000000  0.43690891
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00168920  0.00000099  0.00000739 -0.00001179 -0.00162536 -0.00005187 -0.00000000 -0.00002553
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00001591  0.00000054  0.00015517  0.00010755 -0.00019738  0.00612243  0.00000000  0.00004255
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000116 -0.00000764 -0.00683351 -0.00136809 -0.00002740  0.00019603  0.00754887 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000004 -0.00603789  0.00000699 -0.00000114 -0.00000001  0.00000038 -0.00000000 -0.02668615
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000565  0.00000054  0.00015252  0.00010589 -0.00019385  0.00603193  0.00000039 -0.00000260
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001502
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00003931  0.00001887  0.00538180  0.00373187 -0.00632744  0.21237327  0.00000126 -0.00000007

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.67431454 -0.00000036 -0.00014816  0.00059025  0.21247650  0.00632390  0.00054462  0.00000006

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00309485  0.00022224  0.16208775 -0.18432350  0.00101261 -0.00083754  0.10647468 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00466591  0.00000486 -0.00000135 -0.00000001  0.00000031  0.00000000 -0.46651386

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001527  0.00000054  0.00015517  0.00010755 -0.00019676  0.00612247  0.00000000 -0.00004261

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00636564 -0.00000177  0.00002781 -0.00004445 -0.00612519 -0.00019677 -0.00000000 -0.00000795

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000083 -0.01133406  0.00001363 -0.00000167  0.00000095  0.00000072 -0.00000000  0.19203790

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000292  0.00000946  0.00919912  0.00809114 -0.00000489 -0.00037544 -0.00000004 -0.00003801

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000565  0.00000054  0.00015264  0.00010623 -0.00019385  0.00603195 -0.00000039  0.00000261

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00235503 -0.00000004 -0.00002740  0.00004379  0.00603456  0.00019386  0.00000000 -0.00000236

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000124  0.00000631  0.00460380 -0.00523529  0.00005962 -0.00002249  0.00754888  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.16959765

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000302 -0.21256759  0.00042976  0.00050412 -0.00000061 -0.00000088  0.00024918 -0.00068196

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00342662  0.00054424  0.07849203  0.23248903 -0.00004774 -0.00607501  0.10647446  0.00000160

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.67430872 -0.00000171 -0.00136614  0.00035261  0.21245595  0.00685626 -0.00054462 -0.00000006

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001827  0.00000066  0.00018946  0.00013132 -0.00023988  0.00747527  0.00000000 -0.00003897

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000010  0.00612855 -0.00000709  0.00000115  0.00000001 -0.00000038 -0.00000000  0.43691688

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000648  0.00001416  0.01160887 -0.00392529  0.00008839 -0.00022398 -0.00000007 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002383 -0.00000086 -0.00024765 -0.00016974  0.00031132 -0.00969820  0.00000000 -0.00003003

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00636566  0.00000004  0.00002783 -0.00004443 -0.00612520 -0.00019579 -0.00000000  0.00003869

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000016 -0.00603787  0.00000699 -0.00000114 -0.00000032  0.00000037  0.00000000  0.02669430

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000008  0.00000133  0.00222968  0.00660339 -0.00003222 -0.00017355  0.00754889 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00235502 -0.00000035 -0.00002740  0.00004379  0.00603458  0.00019386 -0.00000000  0.00000374

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000 -0.00001654

   1    1  |0 0>          -0.00000498  0.95357994 -0.00205885 -0.00033762  0.00000150 -0.00003899  0.00000000 -0.00000021
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00368977  0.00006720  0.01150735  0.00944509 -0.01663206  0.95332102 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.30042403 -0.00000477 -0.00253984  0.00434971  0.95342356  0.01662140 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00011849  0.00199145  0.85266318  0.42669381  0.00057773 -0.01450987  0.00000006 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00084480 -0.00061966 -0.42677781  0.85272494 -0.00496822 -0.00338350  0.00000005 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000026 -0.00000021 -0.00000000  0.00000001  0.98274847  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57750451
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00004226
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009045
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000013  0.00335239 -0.00000390  0.00000062  0.00000001 -0.00000021  0.00000000  0.00000363
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00001730  0.00000030  0.00008481  0.00005888 -0.00010706  0.00334933 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00777462 -0.00000002 -0.00001524  0.00002428  0.00335082  0.00010707  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00000273  0.00000324  0.00302188  0.00144792  0.00000651 -0.00010176 -0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000288 -0.00000225 -0.00144894  0.00302297 -0.00002794 -0.00001735  0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000  0.00480991  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00000001  0.00000000  0.00001632  0.00000008 -0.00000000 -0.00000006 -0.00000082  0.00229911
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000342  0.00000006  0.00697205  0.00003513 -0.00000003  0.00000040 -0.00002598 -0.00000545
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00068176  0.00000024 -0.00003513  0.00697215  0.00000137 -0.00000072 -0.00508440 -0.00000085
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00004889  0.06694140  0.00000015  0.00000666  0.03592559  0.66032973 -0.00007428 -0.00000185
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000157 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000001  0.00000501 -0.00008489  0.61303788
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00004254 -0.00004123 -0.23437791  0.00001786 -0.00004168  0.00004027  0.00000142 -0.00000417
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00019851 -0.50003195  0.00003609  0.00003962 -0.26823275  0.08840685 -0.00003112 -0.00000025
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000129  0.00000021 -0.00000000  0.00000000

   8    1  |1 1>+         -0.43690346  0.00018396 -0.00001786 -0.23437153 -0.00002898 -0.00001359 -0.33312537 -0.00005594
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

   9    1  |1 1>+         -0.00000137  0.00000000 -0.00000006  0.00002453  0.00000001  0.00000341  0.00002744 -0.12678679
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000260 -0.00000236 -0.47627974  0.00003625  0.00000242 -0.00002208 -0.00000117  0.00000352
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.02668508 -0.00000930 -0.00003625 -0.47628370 -0.00009355  0.00003982  0.28038455  0.00004054
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

  12    1  |1 1>+          0.00005907  0.16959567 -0.00000219  0.00008483 -0.43193342  0.00001080 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000207  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00068204 -0.00000183 -0.00000053 -0.00697218  0.00001495 -0.00001262 -0.00508441 -0.00000092

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001 -0.00000000  0.00000000
                          -0.00000183 -0.00068213  0.00000004  0.00001495  0.00697195 -0.00508454  0.00001263 -0.00002980

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000349 -0.00000000  0.00000001 -0.00003566  0.00002600  0.00000102 -0.00582871

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00004552 -0.00004124  0.25025035 -0.00001910 -0.00000124  0.00002001  0.00000111 -0.00000789

   5    1  |1 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                           0.43692209 -0.00015218  0.00001789  0.23437576  0.00004604 -0.00004731 -0.33310732 -0.00005592

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000113 -0.00000079  0.00000000 -0.00000000
                           0.00015218  0.43691348 -0.00001531 -0.00004604  0.23439724  0.33310230 -0.00004730 -0.00000093

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001871 -0.00005281 -0.10303910  0.00000787 -0.00003693 -0.00000473  0.00000272 -0.00000322

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000006  0.00002037  0.00000000 -0.00000002  0.00000854  0.00003219  0.08057902

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.02669485  0.00000930  0.00003636  0.47628733  0.00009349  0.00003985  0.28038608  0.00003054

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000229 -0.00000067  0.00000000 -0.00000000
                           0.00000930  0.02670154 -0.00000241  0.00009349 -0.47627696  0.28040046 -0.00003986 -0.00000071

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000138 -0.00000001 -0.00000000  0.00002452  0.00000011  0.00000034 -0.00004223  0.32137334

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001655  0.00001501  0.43192968 -0.00003297 -0.00000219  0.00000001 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000007 -0.00000005 -0.00697231  0.00000053 -0.00000005  0.00000034  0.00000002  0.00000820

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000349  0.00001632  0.00000001 -0.00003566 -0.00002594 -0.00000026  0.00352909

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001 -0.00000000  0.00000000
                           0.00000024  0.00068202 -0.00000004  0.00000137 -0.00697225 -0.00508422  0.00000072 -0.00001804

   4    1  |1 1>-          0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                           0.39958455 -0.00011360  0.00001636  0.21434630  0.00005583 -0.00007726 -0.40670657 -0.00006834

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004263  0.00003867 -0.23437346  0.00001789  0.00000119 -0.00002622 -0.00000146  0.00000417

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00004917 -0.00000008 -0.00000001  0.00002639 -0.00000003  0.00000364  0.00020145 -0.53245120

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.30797220 -0.00013161  0.00001261  0.16522214  0.00001938  0.00009350  0.52766830  0.00017368

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000113 -0.00000079  0.00000000 -0.00000000
                          -0.00014595 -0.43690399 -0.00000119  0.00004937 -0.23437464  0.33312250 -0.00010052 -0.00000088

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000260  0.00000374  0.47628863 -0.00003635 -0.00002694 -0.00003650 -0.00000123  0.00000349

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000004 -0.00000000  0.00000010 -0.00000375  0.00001478 -0.19461477

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000229 -0.00000067  0.00000000 -0.00000000
                          -0.00000930 -0.02669635  0.00002693 -0.00009355  0.47629098  0.28037185 -0.00003981 -0.00000075

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.16959911 -0.00005907 -0.00003297 -0.43193076 -0.00008483  0.00000000  0.00001075 -0.00000001

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000104 -0.00000011 -0.00000170
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000037  0.00000000  0.00000000 -0.00000006  0.00000001  0.00019332  0.01303640 -0.00001150
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000001  0.00000015 -0.00000000  0.00000000  0.00000040  0.01303790 -0.00019321  0.00004265
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000920  0.00019795  0.00176930
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00004161  0.00001487 -0.01291914
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000021
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00004225  0.00009045  0.42016669  0.00003967 -0.00003071  0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.57750339 -0.00007260  0.00003966 -0.42016430 -0.00017604  0.00000000  0.00001462 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00007261  0.57751105 -0.00003073  0.00017604 -0.42015520  0.00000564 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000202  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000655  0.00000000 -0.00000000 -0.00003309 -0.00000185  0.00000570
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000639 -0.00000000 -0.00000000  0.00000052  0.00000000 -0.00013263 -0.42043936 -0.00006049
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000287  0.00000001  0.00000000 -0.00001146 -0.42043616  0.00013263 -0.00000063
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000

  13    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000202  0.00003299 -0.06416001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000035 -0.00005610  0.41547367
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000382
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00001213 -0.00540260  0.00970816  0.00001570 -0.00000008 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00508490  0.00001284 -0.00002272  0.00670833 -0.00003361 -0.00000001 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00002599  0.00000035  0.00000000 -0.00003361 -0.00670843 -0.00000119 -0.00000012  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00005194 -0.00000835  0.00000000 -0.00000002 -0.00000727 -0.03555080  0.00000786 -0.00003212
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000090  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000206  0.26089085  0.00000553 -0.00000000 -0.00000000  0.00000000  0.00020802  0.00010291
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.33312506  0.00001242 -0.00000000 -0.23213572 -0.00002430  0.00004242  0.00000094 -0.12619756
                          -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000029

   7    1  |1 1>+         -0.00006019 -0.00000112  0.00000000  0.00003705 -0.00003424  0.26563672  0.00000240  0.00001964
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000671 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000142  0.00002304 -0.00000000 -0.00002429  0.23212158  0.00002434  0.14226969  0.00000064
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000011 -0.00000000

   9    1  |1 1>+         -0.00001273  0.29791619  0.54093610  0.00000004  0.00002096  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.28039317 -0.00001051 -0.00000006  0.40691425  0.00004254  0.00000006 -0.00000000 -0.00003206
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000117 -0.00000404  0.00002786  0.00004254 -0.40691451 -0.00007227  0.00001382  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000002  0.00003198 -0.18007086 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000455 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002  0.00000036  0.00000012 -0.00000070  0.00670836 -0.00001451  0.00000023 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000017 -0.00000000 -0.00000000
                           0.00000040  0.00000370  0.00004966  0.00000000 -0.00001451 -0.00670821 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000010  0.00071032  0.00970781  0.00000000 -0.00000001  0.00003431 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000148
                           0.25361489 -0.00002924  0.00000000  0.24781577  0.00002596  0.00000001 -0.00000508  0.64454952

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000058  0.00000000
                           0.00000147  0.00002303  0.00000000  0.00002432 -0.23213430 -0.00004123  0.72912234  0.00000564

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000586  0.00000000  0.00000000
                           0.00007219 -0.00000412 -0.00000000 -0.00001630  0.00004123 -0.23212987 -0.00001971  0.00006538

   7    1  |1 0>           0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000045
                           0.61606122  0.00005984 -0.00000000 -0.10201079 -0.00001069  0.00003707 -0.00000149  0.19650686

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00004316  0.66134100 -0.00001000  0.00002019  0.00000000  0.00000003 -0.00020801 -0.00007613

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000123 -0.00001738 -0.00002785 -0.00004263  0.40690958  0.00007223  0.00003349 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001028 -0.00000000 -0.00000000
                          -0.00002207 -0.00000355  0.00000012  0.00000006  0.00007223 -0.40691074 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000548 -0.03914974  0.54094477 -0.00000000  0.00002095  0.00000009 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001603  0.00000001  0.00000000 -0.18007174 -0.00001886 -0.00000003  0.00000000 -0.00000359

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00508475  0.00001117  0.00002272 -0.00670836 -0.00000070  0.00000008  0.00000000 -0.00000026

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001203  0.00469267  0.00970789  0.00001570 -0.00000000  0.00003431  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000000  0.00000000
                           0.00000040 -0.00002394 -0.00004966 -0.00000000 -0.00000119  0.00670824  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000053 -0.00000000
                           0.00000179  0.00002816 -0.00000000  0.00002223 -0.21225812 -0.00005128 -0.66852804 -0.00000536

   5    1  |1 1>-         -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000167
                          -0.33311969 -0.00001244  0.00000000 -0.23212378 -0.00002432 -0.00000004 -0.00000570  0.72802136

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002161  0.40046241 -0.00001927  0.00000000 -0.00002612  0.00000003  0.00021366  0.00010291

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000003  0.00000000
                          -0.00000232 -0.00010048  0.00000001  0.00001714 -0.16360831 -0.00001613  0.03478600 -0.00000019

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000586  0.00000000  0.00000000
                          -0.00002622 -0.00000426 -0.00000000 -0.00000003 -0.00004453  0.23211607 -0.00005197  0.00002973

   9    1  |1 1>-         -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.28038097 -0.00001048  0.00000006 -0.40691238 -0.00004262 -0.00002102  0.00000000 -0.00003979

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000725 -0.25873922  0.54094061  0.00000004  0.00000000  0.00000009  0.00000001  0.00000001

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001028  0.00000000 -0.00000000
                          -0.00003651 -0.00000349 -0.00000012 -0.00002101 -0.00007227  0.40691026  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00001887 -0.18006870 -0.00003198 -0.00000607  0.00000000

   1    1  |0 0>           0.01303946  0.00001526 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000094
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000014  0.00019807 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000058 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000102 -0.00000640  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00001535 -0.01291751  0.00000031  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000038 -0.00176930 -0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000017 -0.01391376 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00001531  0.00000001  0.00000000  0.67582539 -0.00004460  0.00004607 -0.00000000  0.00001273
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00004458  0.67582718  0.00027045  0.00001794  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00004609 -0.00027045  0.67582780 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001707 -0.00000000 -0.00000000

  10    1  |0 0>          -0.42041819 -0.00001828 -0.00000000  0.00000386  0.00000000 -0.00000000 -0.00000000 -0.00002395
                           0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000186  0.00002405 -0.00000000 -0.00000000  0.00000736  0.00000000 -0.00001459 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00003309  0.00000194  0.00000000 -0.00000000 -0.00000000 -0.00000227  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00001894  0.41547913 -0.00000419 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000284  0.06415985  0.00000381 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000 -0.00000333 -0.34881774  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000031  0.00000570
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000050  0.00000000  0.00000000 -0.00000020  0.00001174  0.00228590
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000033 -0.00000000 -0.00000021  0.00228657 -0.00001173
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000189 -0.57042155 -0.00013896 -0.00008742  0.11241639 -0.42994090 -0.00005237 -0.00003650
                          -0.00000000 -0.00000091  0.00000000  0.00000000  0.00000002 -0.00000014 -0.00000000 -0.00000000

   5    1  |1 1>+          0.57736567 -0.00000203  0.00003497 -0.00005257 -0.00000059 -0.00000631  0.00005603 -0.00003412
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00002108 -0.00015915  0.71931547  0.00000260 -0.00000410 -0.00002758  0.00000389  0.21681453
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000147  0.20791727  0.00006745 -0.00007374  0.74302998 -0.05754564  0.00000678 -0.00003955
                          -0.00000000  0.00000033 -0.00000000  0.00000000  0.00000012 -0.00000002 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00001396 -0.00007463 -0.00000268  0.71630913  0.00008410 -0.00004197  0.21685138 -0.00000389
                           0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00002636  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000480  0.00004107  0.00008585
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000001 -0.00000000  0.00005910  0.00000000 -0.00000000 -0.00004812  0.00001020  0.56620739
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  11    1  |1 1>+         -0.00000001  0.00000000  0.00000000  0.00003470 -0.00000000 -0.00005225  0.56618184 -0.00001020
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000338  0.00000000  0.00000000 -0.00000257 -0.00000441  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000014 -0.00000000  0.00000514  0.00228710 -0.00000004

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000004  0.00228687 -0.00000514  0.00000019

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000006  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001165 -0.00000044  0.00000001

   4    1  |1 0>           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00010423 -0.00013998  0.38200337  0.00000182 -0.00005410 -0.00001406  0.00000294  0.16512791

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00025894  0.00001868 -0.00000009  0.04135239  0.00000652 -0.00002001  0.21684747 -0.00000386

   6    1  |1 0>          -0.00000000 -0.00000111  0.00000000 -0.00000000 -0.00000003  0.00000007  0.00000000  0.00000000
                           0.00000258  0.70046899  0.00013634 -0.00000138  0.20656541 -0.21686223 -0.00002001  0.00004564

   7    1  |1 0>           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00003222  0.00003746 -0.57734896 -0.00000195  0.00006706  0.00000057  0.00000714  0.40114067

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.57732913  0.00000192  0.00001956  0.00005257  0.00000055 -0.00000036 -0.00001234 -0.00007904

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00001131 -0.00000000 -0.00005219  0.56619757 -0.00001008

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000
                          -0.00000000 -0.00001844  0.00000000 -0.00000000  0.00000015  0.56619057  0.00005219  0.00004811

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001076  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00001051 -0.00007909  0.00000165

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000714 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000773

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000016 -0.00000000  0.00000000 -0.00000017  0.00000004  0.00228630

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000018  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001167  0.00000015 -0.00000570

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000001  0.00228677  0.00000021  0.00000020

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00026203 -0.00005176 -0.00000089  0.23171863  0.00007548 -0.00001175  0.26481864 -0.00000472

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00012627 -0.00002278 -0.05767856  0.00000029  0.00002104  0.00001843 -0.00000386 -0.21682225

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.57735587 -0.00000198  0.00003498  0.00005238 -0.00000066  0.00000589 -0.00012328 -0.00003222

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00004498 -0.00000899 -0.00000237  0.65688481  0.00007419  0.00001962 -0.34358192  0.00000612

   8    1  |1 1>-         -0.00000000 -0.00000060  0.00000000  0.00000000  0.00000010  0.00000007  0.00000000  0.00000000
                           0.00000063  0.37514370 -0.00000141  0.00009868 -0.62657777 -0.21687366  0.00001462 -0.00001842

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000001  0.00000000  0.00002321 -0.00000000  0.00000000 -0.00007727  0.00001008  0.56621781

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00004100  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000571  0.00003802 -0.00008751

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018 -0.00000000 -0.00000000
                          -0.00000000 -0.00001067 -0.00000000  0.00000000 -0.00000206  0.56618984  0.00005225  0.00007727

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000380 -0.00000000 -0.00000000  0.00001217  0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.00000100  0.00000000  0.00000000 -0.00000133  0.00000048  0.01558084
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000001 -0.00000000 -0.00000057  0.00000000 -0.00022735 -0.01557756  0.00000015
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000046 -0.00000000  0.00000001  0.00000001 -0.01557930  0.00022722 -0.00000133
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000073 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00001080 -0.00023687  0.00002004
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000041  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004954 -0.00001772  0.00000121
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00001786  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000132
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000786  0.00000000  0.00000000 -0.00000073  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00001438 -0.00000000  0.00000000  0.00001430  0.00000044  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00002916  0.00000000  0.00000000 -0.00002348  0.00000492  0.27631835
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  11    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00001623  0.00000000 -0.00002242 -0.27637000  0.00000492
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000827 -0.00000000  0.00000000  0.00000129 -0.27636924  0.00002242 -0.00002349
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00002024 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000299  0.00001569  0.00004222
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00001392  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000287 -0.00003585  0.00001211
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000017 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00023730  0.00262866  0.00002078 -0.00000010 -0.00000000 -0.00000032 -0.00000006  0.00002013
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000040 -0.00000647  0.00887981 -0.00004486 -0.00000041 -0.00004416  0.00000002  0.00863321
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000032 -0.00000022 -0.00004486 -0.00887983 -0.00000032 -0.00863358  0.00000147 -0.00004416
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000651 -0.00000258 -0.00000012 -0.00000089 -0.00258189  0.00003667  0.18370532 -0.00000024
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.43194896 -0.03897645 -0.00000000 -0.00000000 -0.00000000 -0.00000340  0.00000137  0.00000016
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00001443 -0.00002986 -0.01684244 -0.00000107  0.00000385  0.00000002  0.00000404  0.09267624
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000088 -0.00000034  0.00000357  0.00000023  0.01927133 -0.00000098  0.02459180 -0.00001484
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00002998 -0.00002067 -0.00000107  0.01684143 -0.00000061 -0.09267228  0.00002514  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.05879073  0.65117037  0.00000003  0.00001683 -0.00000000 -0.00000841  0.00000236  0.00000272
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00003768 -0.00007807  0.32689193  0.00002068 -0.00001486 -0.00000003 -0.00000044 -0.31740230
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00007527 -0.00002046  0.00002068 -0.32689445 -0.00001196  0.31744670 -0.00005399 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00003944 -0.00003172  0.86721401  0.00000000  0.00000098 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000953 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000034 -0.00000023 -0.00000056  0.00887988 -0.00002046 -0.00863370 -0.00001874  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000
                           0.00001222 -0.00000566 -0.00000040 -0.00002046 -0.00887980  0.00001874 -0.00863360  0.00000001

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00239514 -0.00110879  0.00000000 -0.00000000  0.00004542  0.00000027  0.00004413  0.00000003

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000033  0.00000029  0.01798055  0.00000114 -0.00000082  0.00000002  0.00000011  0.07056059

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002998 -0.00002068  0.00000107 -0.01683922 -0.00000062 -0.09267020  0.00001576  0.00000003

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000 -0.00000000
                           0.00000325 -0.00000136 -0.00000195  0.00000061 -0.01683281  0.00001576  0.09267042  0.00002725

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00003686 -0.00007720 -0.00740102 -0.00000047  0.00000303  0.00000005 -0.00001457  0.17140807

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.18223541 -0.39362833  0.00000146  0.00000000  0.00000000  0.00000178  0.00000170 -0.00000414

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000007  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004775 -0.00003985 -0.00002075  0.32686941  0.00001192  0.31744313 -0.00005395 -0.00000010

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000359 -0.00000000 -0.00000000 -0.00000000
                          -0.00000844  0.00000333 -0.00001486  0.00001192 -0.32688342  0.00005395  0.31744202 -0.00000044

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.59332953 -0.27467576 -0.00000000  0.00001683  0.00000007  0.00000656  0.00000110 -0.00000110

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.86721531  0.00005506 -0.00003943  0.00000000  0.00000000  0.00000609

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000520 -0.00000387 -0.00887990 -0.00000056  0.00000051  0.00000000 -0.00000009  0.00863329

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00215781 -0.00151987  0.00002078 -0.00000000  0.00004542 -0.00000006 -0.00004406 -0.00002016

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000010  0.00000000  0.00000000  0.00000000
                           0.00001100  0.00000779  0.00000040 -0.00000032  0.00887987 -0.00000147 -0.00863357  0.00000001

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003665 -0.00002529  0.00000098 -0.01540211 -0.00000155 -0.11314901  0.00001382  0.00000004

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001443  0.00002987 -0.01683684 -0.00000107  0.00000077 -0.00000003 -0.00000013 -0.09267481

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.24978378 -0.35457311  0.00000000 -0.00000189  0.00000000  0.00002865  0.00000035  0.00000112

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00008744  0.00008943  0.00000075 -0.01186730  0.00000050  0.14680244 -0.00001980 -0.00000005

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000000 -0.00000000 -0.00000000
                           0.00000326 -0.00000126  0.00000076 -0.00000086  0.01683158  0.00000096  0.09267317 -0.00000013

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00003774 -0.00007804 -0.32687265 -0.00002075 -0.00000197 -0.00000010 -0.00001678 -0.31740275

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.53453647 -0.37650233  0.00000003  0.00000000  0.00000007  0.00000185 -0.00000346 -0.00000162

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000359 -0.00000000 -0.00000000 -0.00000000
                          -0.00000846  0.00000347 -0.00000197 -0.00001196  0.32688734  0.00005399  0.31744455 -0.00001678

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00005505  0.86721511  0.00003173  0.00000668  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000471 -0.00001951  0.00000024  0.00000000  0.00000000 -0.00000000  0.00000000  0.00036524
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00005964 -0.00022979 -0.00000000  0.00000030 -0.00000000  0.00036440  0.00000529 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00004602  0.00002268 -0.00000000 -0.00000000 -0.00000006 -0.00000529  0.00036443 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00273072  0.01533764  0.00000000  0.00000000  0.00000000  0.00000556 -0.00000026  0.00000041
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.01533928 -0.00273120  0.00000000  0.00000000 -0.00000000  0.00000037  0.00000116  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.18201815  0.00001952 -0.00000411  0.00000000  0.00000000 -0.00000139
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00001952 -0.18202029 -0.00004717 -0.00000227 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000411  0.00004717 -0.18201467  0.00000000  0.00000042  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000200 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00001864 -0.00003978  0.00000100  0.00000000  0.00000000  0.00000027  0.00000119  0.86419039
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00003291  0.00002117 -0.00000000  0.00000296 -0.00000000  0.86416356  0.00000289 -0.00000027
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000237 -0.00000340 -0.00000000 -0.00000000 -0.00000276 -0.00000289  0.86416536 -0.00000119
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

  13    1  |0 0>           0.04377216  0.27280486 -0.00000000 -0.00000000  0.00000000 -0.00000086 -0.00000067 -0.00000107
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.27280701 -0.04377346  0.00000000 -0.00000000 -0.00000000  0.00000103 -0.00000006  0.00000079
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000152  0.00000284 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00969721 -0.00231166 -0.00893559
                          -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00002263  0.00000540  0.00002091
                          -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000014  0.00000020 -0.00000000
                           0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000146  0.00000105  0.00000000
                           0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.04298003 -0.18030714  0.00000009
                          -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000070 -0.00000008 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000020  0.00000014  0.00000000
                           0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000156  0.00000212  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.35649191  0.08498059  0.20150075
                          -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000234  0.00000027 -0.00000002
                           0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00001302 -0.00000288  0.00001038
                           0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000018  0.00000031 -0.00000011

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00001463  0.00004882 -0.00004571

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00284657  0.00955361 -0.00893564

   4    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00001093  0.00000303  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00000156  0.00000212  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000071  0.00000052 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000861 -0.00000310 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.17764831 -0.05293272 -0.00000094

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000005  0.00001083 -0.00001038

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000255  0.00000173  0.00000004

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000
                           0.10464853 -0.35121733  0.20150522

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00001597 -0.00001696 -0.00002091

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00685035 -0.00724212 -0.00893557

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                           0.00003497  0.00003699  0.00004571

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.00000192  0.00000260  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.00000070  0.00000008  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.13466155  0.12737966 -0.00000212

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00002399 -0.00002371  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00000076  0.00000051 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                          -0.00000236  0.00000031  0.00000002

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.25183853  0.26623990  0.20150319

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.00000247  0.00000175 -0.00000004

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000041 -0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000556 -0.00000056 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000038 -0.00000115  0.00000000
                           0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00036536  0.00001177  0.00000001
                          -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00001178  0.00036536 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000003 -0.00000003 -0.00632490
                           0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000108 -0.00000078  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000088 -0.00000101 -0.00000000
                           0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000067  0.00000007  0.00000000
                           0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.86410624  0.01306997 -0.00000028
                           0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.01307002  0.86410813  0.00000005
                           0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000033  0.00000051  0.93696852
                           0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.23743145     -0.01323839    -2905.49      0.00000000        0.00      0.0000
     2   1   -214.22945515     -0.00526210    -1154.90      0.00797630     1750.59      0.2170
     3   1   -214.22945514     -0.00526209    -1154.89      0.00797631     1750.60      0.2170
     4   1   -214.22945501     -0.00526195    -1154.87      0.00797644     1750.63      0.2170
     5   1   -214.22133826      0.00285480      626.56      0.01609319     3532.05      0.4379
     6   1   -214.22133817      0.00285489      626.58      0.01609328     3532.07      0.4379
     7   1   -214.22133814      0.00285491      626.58      0.01609331     3532.07      0.4379
     8   1   -214.22133813      0.00285492      626.58      0.01609332     3532.07      0.4379
     9   1   -214.22133807      0.00285499      626.60      0.01609338     3532.09      0.4379
    10   1   -214.19592546      0.02826760     6204.02      0.04150599     9109.51      1.1294
    11   1   -214.19592542      0.02826764     6204.03      0.04150603     9109.52      1.1294
    12   1   -214.19592541      0.02826764     6204.03      0.04150604     9109.52      1.1294
    13   1   -214.19592538      0.02826768     6204.04      0.04150607     9109.53      1.1294
    14   1   -214.19592537      0.02826769     6204.04      0.04150608     9109.53      1.1294
    15   1   -214.15679739      0.06739566    14791.64      0.08063405    17697.13      2.1942
    16   1   -214.04497839      0.17921467    39333.07      0.19245306    42238.56      5.2369
    17   1   -214.04497829      0.17921476    39333.09      0.19245315    42238.59      5.2369
    18   1   -214.04497827      0.17921478    39333.10      0.19245317    42238.59      5.2369
    19   1   -214.04094150      0.18325156    40219.07      0.19648995    43124.56      5.3468
    20   1   -214.04094145      0.18325161    40219.08      0.19649000    43124.57      5.3468
    21   1   -214.04094138      0.18325167    40219.09      0.19649007    43124.58      5.3468
    22   1   -214.04040476      0.18378830    40336.87      0.19702669    43242.36      5.3614
    23   1   -214.04040472      0.18378833    40336.88      0.19702672    43242.37      5.3614
    24   1   -214.04040457      0.18378848    40336.91      0.19702687    43242.40      5.3614
    25   1   -214.04040449      0.18378856    40336.93      0.19702695    43242.42      5.3614
    26   1   -214.04040447      0.18378859    40336.93      0.19702698    43242.42      5.3614
    27   1   -214.03909409      0.18509897    40624.53      0.19833736    43530.02      5.3970
    28   1   -214.02749543      0.19669763    43170.14      0.20993602    46075.63      5.7127
    29   1   -214.02749533      0.19669772    43170.16      0.20993611    46075.65      5.7127
    30   1   -214.02749533      0.19669773    43170.16      0.20993612    46075.65      5.7127
    31   1   -214.02574975      0.19844330    43553.27      0.21168170    46458.76      5.7602
    32   1   -214.02574974      0.19844331    43553.27      0.21168170    46458.76      5.7602
    33   1   -214.02574974      0.19844332    43553.27      0.21168171    46458.76      5.7602
    34   1   -214.02574967      0.19844339    43553.29      0.21168178    46458.78      5.7602
    35   1   -214.02574961      0.19844345    43553.30      0.21168184    46458.79      5.7602
    36   1   -214.02574946      0.19844360    43553.33      0.21168199    46458.83      5.7602
    37   1   -214.02574944      0.19844361    43553.34      0.21168200    46458.83      5.7602
    38   1   -214.02461182      0.19958123    43803.02      0.21281963    46708.51      5.7911
    39   1   -214.02461181      0.19958124    43803.02      0.21281964    46708.51      5.7911
    40   1   -214.02461172      0.19958134    43803.04      0.21281973    46708.53      5.7911
    41   1   -214.02461171      0.19958135    43803.04      0.21281974    46708.53      5.7911
    42   1   -214.02461168      0.19958137    43803.05      0.21281976    46708.54      5.7911
    43   1   -214.02218292      0.20201014    44336.10      0.21524853    47241.59      5.8572
    44   1   -214.02218291      0.20201015    44336.10      0.21524854    47241.59      5.8572
    45   1   -214.02218290      0.20201016    44336.11      0.21524855    47241.60      5.8572
    46   1   -214.01957585      0.20461720    44908.29      0.21785560    47813.78      5.9282
    47   1   -214.01957575      0.20461731    44908.31      0.21785570    47813.80      5.9282
    48   1   -214.01957501      0.20461804    44908.47      0.21785644    47813.96      5.9282
    49   1   -214.01957450      0.20461856    44908.58      0.21785695    47814.07      5.9282
    50   1   -214.01957432      0.20461873    44908.62      0.21785712    47814.11      5.9282
    51   1   -214.01068459      0.21350847    46859.69      0.22674686    49765.18      6.1701

 E0 =   -214.22419306 is the energy of the lowest zeroth-order state
 E1 =   -214.23743145 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.56729799  0.00000502 -0.00165459 -0.00000000  0.77368389  0.00095368 -0.00180477 -0.08762742
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00132764  0.00211041 -0.70696883 -0.00000041 -0.00066768  0.00193674  0.67414614 -0.01571070
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000006 -0.70697015 -0.00211041 -0.00150930 -0.00100449  0.67432357 -0.00197286 -0.00148343
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000116 -0.00000000  0.00065938  0.00000569  0.00003065  0.00000033  0.00000282
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000002  0.00000000 -0.00000000  0.00000000 -0.00143307 -0.00003081 -0.00029606 -0.01264700
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00003486 -0.00430388 -0.00000074 -0.00001084  0.00001426 -0.00636383  0.00015017
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00001027  0.00000072 -0.00492551  0.00000076  0.00000370  0.00000106  0.00000035
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00430384 -0.00003486 -0.00000887  0.00000943 -0.00636554 -0.00001393  0.00001477
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00749997 -0.00000017 -0.00000000 -0.00000000  0.00270217  0.00000319 -0.00001181 -0.00030595
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000000 -0.00002628  0.00324393 -0.00000003  0.00000401 -0.00000527  0.00235433 -0.00005556
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000039  0.00324394  0.00002628  0.00000693 -0.00000335  0.00235499  0.00000515 -0.00000548
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000000  0.00002905  0.00000009 -0.01360715  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000673  0.70697086  0.00572666 -0.00014527 -0.00100346  0.67430694  0.00147518 -0.00157183

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000035  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00290165 -0.00014525 -0.00000848 -0.70697415 -0.00206029  0.00002928 -0.00005738 -0.00304777

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.56728359 -0.00000764 -0.00000002  0.00361618 -0.46274487 -0.00211487 -0.01398971 -0.62604516

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00003722  0.00459537 -0.00000005 -0.00000885  0.00001085 -0.00484519  0.00011478

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00430369  0.00003486  0.00000919  0.00000943 -0.00636569 -0.00001393  0.00001477

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000919 -0.00000033  0.00430388  0.00000287  0.00001528 -0.00000171  0.00000147

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001533 -0.00189220 -0.00000067 -0.00001947  0.00002636 -0.01176941  0.00027731

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000009 -0.00000000  0.00000037 -0.00000000  0.01023905 -0.00000197 -0.00019556 -0.00756379

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000039 -0.00324386 -0.00002628 -0.00000693 -0.00000340  0.00235508  0.00000516 -0.00000535

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000692 -0.00000002  0.00324401  0.00000106  0.00000565  0.00000006  0.00000053

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00749997 -0.00000017 -0.00000000 -0.00000000 -0.00161609 -0.00000724 -0.00004886 -0.00218647

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00011022  0.01360662 -0.00000014  0.00000000  0.00000000 -0.00000036  0.00000001

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00132764 -0.00572666  0.70696993  0.00000107  0.00042045 -0.00150742  0.67415858 -0.01423731

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.56728151  0.00000568 -0.00165452  0.00361618 -0.31094239  0.00116925  0.01579447  0.71367153

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000035  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00290166 -0.00150925 -0.00000484  0.70697471  0.00189478  0.00161227 -0.00007115 -0.00349945

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00393591  0.00003188  0.00000865  0.00001151 -0.00777227 -0.00001701  0.00001804

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00003486 -0.00430367  0.00000004  0.00001084 -0.00001426  0.00636395 -0.00015017

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000013  0.00000048  0.00000000  0.00000000  0.01167213  0.00003046  0.00010014  0.00508317

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00303421  0.00002458  0.00000624 -0.00001680  0.01008340  0.00002205 -0.00002421

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000925  0.00000003 -0.00430387  0.00000287  0.00001426  0.00000016  0.00000143

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00002628 -0.00324388  0.00000020  0.00000401 -0.00000527  0.00235448 -0.00005556

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00749997 -0.00000000  0.00000000 -0.00000000 -0.00108588  0.00000404  0.00006067  0.00249239

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000693 -0.00000014 -0.00324398  0.00000106  0.00000565  0.00000018  0.00000052

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.01360659 -0.00011022 -0.00002905 -0.00000000  0.00000034  0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000000 -0.00000003  0.00000336  0.00000000  0.00019787 -0.00066911  0.30036514 -0.00695102
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000002 -0.00000323 -0.00000003 -0.00000000 -0.00370206 -0.30038804 -0.00060477  0.00267967
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000001  0.00000004  0.00000000 -0.00000031  0.00046817  0.00369068  0.00001931  0.00070806
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000146 -0.00000005 -0.00000001  0.00000000  0.27909850 -0.00442673 -0.00276518 -0.11111663
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.11117636 -0.00109589 -0.00638694 -0.27904937
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.18431456 -0.00000000 -0.00000000 -0.00000000  0.00000177  0.00000000 -0.00000000 -0.00000028
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00006999  0.00882694 -0.00000069  0.00000000  0.00000000 -0.00000015  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00882691 -0.00006999 -0.00002081 -0.00000000  0.00000016  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00002081 -0.00000052 -0.00882719  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000013 -0.00000000 -0.00001319  0.00001741 -0.00777177  0.00018338
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000013  0.00000000  0.00000000 -0.00001134  0.00777455  0.00001701 -0.00001792
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000355  0.00001731  0.00000020  0.00000168
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000019 -0.00000000  0.00000000 -0.00000000 -0.00727025 -0.00000442  0.00007725  0.00275161
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000013  0.00000000  0.00000000 -0.00000000  0.00275263  0.00002040  0.00016687  0.00726835
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.01982512 -0.00000000  0.00000000  0.00000000 -0.00000021 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00033179 -0.00076647 -0.24058152 -0.04816582 -0.00096497  0.00691514  0.10647523  0.00000160
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00001846 -0.21256601  0.00083663  0.00009183 -0.00003312  0.00108336 -0.00024919  0.00068183
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00161734  0.00110615  0.00538083  0.00373063 -0.00682464  0.21235644  0.00000001 -0.00000342
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.01261876  0.00000008  0.00005512 -0.00008812 -0.01214186 -0.00039042  0.00000000 -0.00000588
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000356 -0.00000506 -0.00240976  0.01201637 -0.00009323 -0.00015301 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000037 -0.00612848  0.00000710 -0.00000115 -0.00000027  0.00000038 -0.00000000  0.43690891
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00168920  0.00000099  0.00000739 -0.00001179 -0.00162536 -0.00005187 -0.00000000 -0.00002553
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00001591  0.00000054  0.00015517  0.00010755 -0.00019738  0.00612243  0.00000000  0.00004255
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000116 -0.00000764 -0.00683351 -0.00136809 -0.00002740  0.00019603  0.00754887 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000004 -0.00603789  0.00000699 -0.00000114 -0.00000001  0.00000038 -0.00000000 -0.02668615
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000565  0.00000054  0.00015252  0.00010589 -0.00019385  0.00603193  0.00000039 -0.00000260
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001502
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00003931  0.00001887  0.00538180  0.00373187 -0.00632744  0.21237327  0.00000126 -0.00000007

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.67431454 -0.00000036 -0.00014816  0.00059025  0.21247650  0.00632390  0.00054462  0.00000006

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00309485  0.00022224  0.16208775 -0.18432350  0.00101261 -0.00083754  0.10647468 -0.00000000

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00466591  0.00000486 -0.00000135 -0.00000001  0.00000031  0.00000000 -0.46651386

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001527  0.00000054  0.00015517  0.00010755 -0.00019676  0.00612247  0.00000000 -0.00004261

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00636564 -0.00000177  0.00002781 -0.00004445 -0.00612519 -0.00019677 -0.00000000 -0.00000795

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000083 -0.01133406  0.00001363 -0.00000167  0.00000095  0.00000072 -0.00000000  0.19203790

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000292  0.00000946  0.00919912  0.00809114 -0.00000489 -0.00037544 -0.00000004 -0.00003801

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000565  0.00000054  0.00015264  0.00010623 -0.00019385  0.00603195 -0.00000039  0.00000261

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00235503 -0.00000004 -0.00002740  0.00004379  0.00603456  0.00019386  0.00000000 -0.00000236

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000124  0.00000631  0.00460380 -0.00523529  0.00005962 -0.00002249  0.00754888  0.00000000

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.16959765

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000302 -0.21256759  0.00042976  0.00050412 -0.00000061 -0.00000088  0.00024918 -0.00068196

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00342662  0.00054424  0.07849203  0.23248903 -0.00004774 -0.00607501  0.10647446  0.00000160

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.67430872 -0.00000171 -0.00136614  0.00035261  0.21245595  0.00685626 -0.00054462 -0.00000006

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001827  0.00000066  0.00018946  0.00013132 -0.00023988  0.00747527  0.00000000 -0.00003897

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000010  0.00612855 -0.00000709  0.00000115  0.00000001 -0.00000038 -0.00000000  0.43691688

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000648  0.00001416  0.01160887 -0.00392529  0.00008839 -0.00022398 -0.00000007 -0.00000000

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002383 -0.00000086 -0.00024765 -0.00016974  0.00031132 -0.00969820  0.00000000 -0.00003003

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00636566  0.00000004  0.00002783 -0.00004443 -0.00612520 -0.00019579 -0.00000000  0.00003869

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000016 -0.00603787  0.00000699 -0.00000114 -0.00000032  0.00000037  0.00000000  0.02669430

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000008  0.00000133  0.00222968  0.00660339 -0.00003222 -0.00017355  0.00754889 -0.00000000

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00235502 -0.00000035 -0.00002740  0.00004379  0.00603458  0.00019386 -0.00000000  0.00000374

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000 -0.00001654

 37  1     1    1  |0 0>       -0.00000498  0.95357994 -0.00205885 -0.00033762  0.00000150 -0.00003899  0.00000000 -0.00000021
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00368977  0.00006720  0.01150735  0.00944509 -0.01663206  0.95332102 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.30042403 -0.00000477 -0.00253984  0.00434971  0.95342356  0.01662140 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00011849  0.00199145  0.85266318  0.42669381  0.00057773 -0.01450987  0.00000006 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00084480 -0.00061966 -0.42677781  0.85272494 -0.00496822 -0.00338350  0.00000005 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000026 -0.00000021 -0.00000000  0.00000001  0.98274847  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57750451
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00004226
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009045
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000013  0.00335239 -0.00000390  0.00000062  0.00000001 -0.00000021  0.00000000  0.00000363
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00001730  0.00000030  0.00008481  0.00005888 -0.00010706  0.00334933 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00777462 -0.00000002 -0.00001524  0.00002428  0.00335082  0.00010707  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000273  0.00000324  0.00302188  0.00144792  0.00000651 -0.00010176 -0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000288 -0.00000225 -0.00144894  0.00302297 -0.00002794 -0.00001735  0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000  0.00480991  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00000001  0.00000000  0.00001632  0.00000008 -0.00000000 -0.00000006 -0.00000082  0.00229911
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000342  0.00000006  0.00697205  0.00003513 -0.00000003  0.00000040 -0.00002598 -0.00000545
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00068176  0.00000024 -0.00003513  0.00697215  0.00000137 -0.00000072 -0.00508440 -0.00000085
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00004889  0.06694140  0.00000015  0.00000666  0.03592559  0.66032973 -0.00007428 -0.00000185
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000157 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000001  0.00000501 -0.00008489  0.61303788
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00004254 -0.00004123 -0.23437791  0.00001786 -0.00004168  0.00004027  0.00000142 -0.00000417
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00019851 -0.50003195  0.00003609  0.00003962 -0.26823275  0.08840685 -0.00003112 -0.00000025
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000129  0.00000021 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.43690346  0.00018396 -0.00001786 -0.23437153 -0.00002898 -0.00001359 -0.33312537 -0.00005594
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

  9  1     9    1  |1 1>+      -0.00000137  0.00000000 -0.00000006  0.00002453  0.00000001  0.00000341  0.00002744 -0.12678679
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000260 -0.00000236 -0.47627974  0.00003625  0.00000242 -0.00002208 -0.00000117  0.00000352
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.02668508 -0.00000930 -0.00003625 -0.47628370 -0.00009355  0.00003982  0.28038455  0.00004054
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

 12  1    12    1  |1 1>+       0.00005907  0.16959567 -0.00000219  0.00008483 -0.43193342  0.00001080 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000207  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00068204 -0.00000183 -0.00000053 -0.00697218  0.00001495 -0.00001262 -0.00508441 -0.00000092

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001 -0.00000000  0.00000000
                               -0.00000183 -0.00068213  0.00000004  0.00001495  0.00697195 -0.00508454  0.00001263 -0.00002980

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000349 -0.00000000  0.00000001 -0.00003566  0.00002600  0.00000102 -0.00582871

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00004552 -0.00004124  0.25025035 -0.00001910 -0.00000124  0.00002001  0.00000111 -0.00000789

 17  1     5    1  |1 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                                0.43692209 -0.00015218  0.00001789  0.23437576  0.00004604 -0.00004731 -0.33310732 -0.00005592

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000113 -0.00000079  0.00000000 -0.00000000
                                0.00015218  0.43691348 -0.00001531 -0.00004604  0.23439724  0.33310230 -0.00004730 -0.00000093

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001871 -0.00005281 -0.10303910  0.00000787 -0.00003693 -0.00000473  0.00000272 -0.00000322

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000006  0.00002037  0.00000000 -0.00000002  0.00000854  0.00003219  0.08057902

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.02669485  0.00000930  0.00003636  0.47628733  0.00009349  0.00003985  0.28038608  0.00003054

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000229 -0.00000067  0.00000000 -0.00000000
                                0.00000930  0.02670154 -0.00000241  0.00009349 -0.47627696  0.28040046 -0.00003986 -0.00000071

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000138 -0.00000001 -0.00000000  0.00002452  0.00000011  0.00000034 -0.00004223  0.32137334

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001655  0.00001501  0.43192968 -0.00003297 -0.00000219  0.00000001 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000007 -0.00000005 -0.00697231  0.00000053 -0.00000005  0.00000034  0.00000002  0.00000820

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000349  0.00001632  0.00000001 -0.00003566 -0.00002594 -0.00000026  0.00352909

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001 -0.00000000  0.00000000
                                0.00000024  0.00068202 -0.00000004  0.00000137 -0.00697225 -0.00508422  0.00000072 -0.00001804

 28  1     4    1  |1 1>-       0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                                0.39958455 -0.00011360  0.00001636  0.21434630  0.00005583 -0.00007726 -0.40670657 -0.00006834

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004263  0.00003867 -0.23437346  0.00001789  0.00000119 -0.00002622 -0.00000146  0.00000417

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00004917 -0.00000008 -0.00000001  0.00002639 -0.00000003  0.00000364  0.00020145 -0.53245120

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.30797220 -0.00013161  0.00001261  0.16522214  0.00001938  0.00009350  0.52766830  0.00017368

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000113 -0.00000079  0.00000000 -0.00000000
                               -0.00014595 -0.43690399 -0.00000119  0.00004937 -0.23437464  0.33312250 -0.00010052 -0.00000088

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000260  0.00000374  0.47628863 -0.00003635 -0.00002694 -0.00003650 -0.00000123  0.00000349

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000004 -0.00000000  0.00000010 -0.00000375  0.00001478 -0.19461477

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000229 -0.00000067  0.00000000 -0.00000000
                               -0.00000930 -0.02669635  0.00002693 -0.00009355  0.47629098  0.28037185 -0.00003981 -0.00000075

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.16959911 -0.00005907 -0.00003297 -0.43193076 -0.00008483  0.00000000  0.00001075 -0.00000001

 37  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000104 -0.00000011 -0.00000170
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000037  0.00000000  0.00000000 -0.00000006  0.00000001  0.00019332  0.01303640 -0.00001150
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000001  0.00000015 -0.00000000  0.00000000  0.00000040  0.01303790 -0.00019321  0.00004265
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000920  0.00019795  0.00176930
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00004161  0.00001487 -0.01291914
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000021
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00004225  0.00009045  0.42016669  0.00003967 -0.00003071  0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.57750339 -0.00007260  0.00003966 -0.42016430 -0.00017604  0.00000000  0.00001462 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00007261  0.57751105 -0.00003073  0.00017604 -0.42015520  0.00000564 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000202  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000655  0.00000000 -0.00000000 -0.00003309 -0.00000185  0.00000570
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000639 -0.00000000 -0.00000000  0.00000052  0.00000000 -0.00013263 -0.42043936 -0.00006049
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

 48  1    12    1  |0 0>       -0.00000000 -0.00000287  0.00000001  0.00000000 -0.00001146 -0.42043616  0.00013263 -0.00000063
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000202  0.00003299 -0.06416001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000035 -0.00005610  0.41547367
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000382
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00001213 -0.00540260  0.00970816  0.00001570 -0.00000008 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00508490  0.00001284 -0.00002272  0.00670833 -0.00003361 -0.00000001 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00002599  0.00000035  0.00000000 -0.00003361 -0.00670843 -0.00000119 -0.00000012  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00005194 -0.00000835  0.00000000 -0.00000002 -0.00000727 -0.03555080  0.00000786 -0.00003212
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000090  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000206  0.26089085  0.00000553 -0.00000000 -0.00000000  0.00000000  0.00020802  0.00010291
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.33312506  0.00001242 -0.00000000 -0.23213572 -0.00002430  0.00004242  0.00000094 -0.12619756
                               -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000029

  7  1     7    1  |1 1>+      -0.00006019 -0.00000112  0.00000000  0.00003705 -0.00003424  0.26563672  0.00000240  0.00001964
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000671 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000142  0.00002304 -0.00000000 -0.00002429  0.23212158  0.00002434  0.14226969  0.00000064
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000011 -0.00000000

  9  1     9    1  |1 1>+      -0.00001273  0.29791619  0.54093610  0.00000004  0.00002096  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.28039317 -0.00001051 -0.00000006  0.40691425  0.00004254  0.00000006 -0.00000000 -0.00003206
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000117 -0.00000404  0.00002786  0.00004254 -0.40691451 -0.00007227  0.00001382  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000002  0.00003198 -0.18007086 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000455 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002  0.00000036  0.00000012 -0.00000070  0.00670836 -0.00001451  0.00000023 -0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000017 -0.00000000 -0.00000000
                                0.00000040  0.00000370  0.00004966  0.00000000 -0.00001451 -0.00670821 -0.00000000 -0.00000000

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000010  0.00071032  0.00970781  0.00000000 -0.00000001  0.00003431 -0.00000000 -0.00000000

 16  1     4    1  |1 0>        0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000148
                                0.25361489 -0.00002924  0.00000000  0.24781577  0.00002596  0.00000001 -0.00000508  0.64454952

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000058  0.00000000
                                0.00000147  0.00002303  0.00000000  0.00002432 -0.23213430 -0.00004123  0.72912234  0.00000564

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000586  0.00000000  0.00000000
                                0.00007219 -0.00000412 -0.00000000 -0.00001630  0.00004123 -0.23212987 -0.00001971  0.00006538

 19  1     7    1  |1 0>        0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000045
                                0.61606122  0.00005984 -0.00000000 -0.10201079 -0.00001069  0.00003707 -0.00000149  0.19650686

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00004316  0.66134100 -0.00001000  0.00002019  0.00000000  0.00000003 -0.00020801 -0.00007613

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000123 -0.00001738 -0.00002785 -0.00004263  0.40690958  0.00007223  0.00003349 -0.00000000

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001028 -0.00000000 -0.00000000
                               -0.00002207 -0.00000355  0.00000012  0.00000006  0.00007223 -0.40691074 -0.00000000 -0.00000000

 23  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000548 -0.03914974  0.54094477 -0.00000000  0.00002095  0.00000009 -0.00000000 -0.00000000

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001603  0.00000001  0.00000000 -0.18007174 -0.00001886 -0.00000003  0.00000000 -0.00000359

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00508475  0.00001117  0.00002272 -0.00670836 -0.00000070  0.00000008  0.00000000 -0.00000026

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001203  0.00469267  0.00970789  0.00001570 -0.00000000  0.00003431  0.00000000  0.00000000

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000000  0.00000000
                                0.00000040 -0.00002394 -0.00004966 -0.00000000 -0.00000119  0.00670824  0.00000000  0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000053 -0.00000000
                                0.00000179  0.00002816 -0.00000000  0.00002223 -0.21225812 -0.00005128 -0.66852804 -0.00000536

 29  1     5    1  |1 1>-      -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000167
                               -0.33311969 -0.00001244  0.00000000 -0.23212378 -0.00002432 -0.00000004 -0.00000570  0.72802136

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002161  0.40046241 -0.00001927  0.00000000 -0.00002612  0.00000003  0.00021366  0.00010291

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000003  0.00000000
                               -0.00000232 -0.00010048  0.00000001  0.00001714 -0.16360831 -0.00001613  0.03478600 -0.00000019

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000586  0.00000000  0.00000000
                               -0.00002622 -0.00000426 -0.00000000 -0.00000003 -0.00004453  0.23211607 -0.00005197  0.00002973

 33  1     9    1  |1 1>-      -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.28038097 -0.00001048  0.00000006 -0.40691238 -0.00004262 -0.00002102  0.00000000 -0.00003979

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000725 -0.25873922  0.54094061  0.00000004  0.00000000  0.00000009  0.00000001  0.00000001

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001028  0.00000000 -0.00000000
                               -0.00003651 -0.00000349 -0.00000012 -0.00002101 -0.00007227  0.40691026  0.00000000 -0.00000000

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00001887 -0.18006870 -0.00003198 -0.00000607  0.00000000

 37  1     1    1  |0 0>        0.01303946  0.00001526 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000094
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000014  0.00019807 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000058 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000102 -0.00000640  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00001535 -0.01291751  0.00000031  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000038 -0.00176930 -0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000017 -0.01391376 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00001531  0.00000001  0.00000000  0.67582539 -0.00004460  0.00004607 -0.00000000  0.00001273
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00004458  0.67582718  0.00027045  0.00001794  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00004609 -0.00027045  0.67582780 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001707 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.42041819 -0.00001828 -0.00000000  0.00000386  0.00000000 -0.00000000 -0.00000000 -0.00002395
                                0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000186  0.00002405 -0.00000000 -0.00000000  0.00000736  0.00000000 -0.00001459 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00003309  0.00000194  0.00000000 -0.00000000 -0.00000000 -0.00000227  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00001894  0.41547913 -0.00000419 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000284  0.06415985  0.00000381 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000333 -0.34881774  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000031  0.00000570
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000050  0.00000000  0.00000000 -0.00000020  0.00001174  0.00228590
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000033 -0.00000000 -0.00000021  0.00228657 -0.00001173
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000189 -0.57042155 -0.00013896 -0.00008742  0.11241639 -0.42994090 -0.00005237 -0.00003650
                               -0.00000000 -0.00000091  0.00000000  0.00000000  0.00000002 -0.00000014 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.57736567 -0.00000203  0.00003497 -0.00005257 -0.00000059 -0.00000631  0.00005603 -0.00003412
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00002108 -0.00015915  0.71931547  0.00000260 -0.00000410 -0.00002758  0.00000389  0.21681453
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000147  0.20791727  0.00006745 -0.00007374  0.74302998 -0.05754564  0.00000678 -0.00003955
                               -0.00000000  0.00000033 -0.00000000  0.00000000  0.00000012 -0.00000002 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00001396 -0.00007463 -0.00000268  0.71630913  0.00008410 -0.00004197  0.21685138 -0.00000389
                                0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00002636  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000480  0.00004107  0.00008585
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000001 -0.00000000  0.00005910  0.00000000 -0.00000000 -0.00004812  0.00001020  0.56620739
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 11  1    11    1  |1 1>+      -0.00000001  0.00000000  0.00000000  0.00003470 -0.00000000 -0.00005225  0.56618184 -0.00001020
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000338  0.00000000  0.00000000 -0.00000257 -0.00000441  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000014 -0.00000000  0.00000514  0.00228710 -0.00000004

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000004  0.00228687 -0.00000514  0.00000019

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000006  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001165 -0.00000044  0.00000001

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00010423 -0.00013998  0.38200337  0.00000182 -0.00005410 -0.00001406  0.00000294  0.16512791

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00025894  0.00001868 -0.00000009  0.04135239  0.00000652 -0.00002001  0.21684747 -0.00000386

 18  1     6    1  |1 0>       -0.00000000 -0.00000111  0.00000000 -0.00000000 -0.00000003  0.00000007  0.00000000  0.00000000
                                0.00000258  0.70046899  0.00013634 -0.00000138  0.20656541 -0.21686223 -0.00002001  0.00004564

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00003222  0.00003746 -0.57734896 -0.00000195  0.00006706  0.00000057  0.00000714  0.40114067

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.57732913  0.00000192  0.00001956  0.00005257  0.00000055 -0.00000036 -0.00001234 -0.00007904

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00001131 -0.00000000 -0.00005219  0.56619757 -0.00001008

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000
                               -0.00000000 -0.00001844  0.00000000 -0.00000000  0.00000015  0.56619057  0.00005219  0.00004811

 23  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001076  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00001051 -0.00007909  0.00000165

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000714 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000773

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000016 -0.00000000  0.00000000 -0.00000017  0.00000004  0.00228630

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000018  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001167  0.00000015 -0.00000570

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000001  0.00228677  0.00000021  0.00000020

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00026203 -0.00005176 -0.00000089  0.23171863  0.00007548 -0.00001175  0.26481864 -0.00000472

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00012627 -0.00002278 -0.05767856  0.00000029  0.00002104  0.00001843 -0.00000386 -0.21682225

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.57735587 -0.00000198  0.00003498  0.00005238 -0.00000066  0.00000589 -0.00012328 -0.00003222

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00004498 -0.00000899 -0.00000237  0.65688481  0.00007419  0.00001962 -0.34358192  0.00000612

 32  1     8    1  |1 1>-      -0.00000000 -0.00000060  0.00000000  0.00000000  0.00000010  0.00000007  0.00000000  0.00000000
                                0.00000063  0.37514370 -0.00000141  0.00009868 -0.62657777 -0.21687366  0.00001462 -0.00001842

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000001  0.00000000  0.00002321 -0.00000000  0.00000000 -0.00007727  0.00001008  0.56621781

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00004100  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000571  0.00003802 -0.00008751

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018 -0.00000000 -0.00000000
                               -0.00000000 -0.00001067 -0.00000000  0.00000000 -0.00000206  0.56618984  0.00005225  0.00007727

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000380 -0.00000000 -0.00000000  0.00001217  0.00000000

 37  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000100  0.00000000  0.00000000 -0.00000133  0.00000048  0.01558084
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000001  0.00000001 -0.00000000 -0.00000057  0.00000000 -0.00022735 -0.01557756  0.00000015
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000046 -0.00000000  0.00000001  0.00000001 -0.01557930  0.00022722 -0.00000133
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000073 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00001080 -0.00023687  0.00002004
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000041  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004954 -0.00001772  0.00000121
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00001786  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000132
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000786  0.00000000  0.00000000 -0.00000073  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00001438 -0.00000000  0.00000000  0.00001430  0.00000044  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000000  0.00002916  0.00000000  0.00000000 -0.00002348  0.00000492  0.27631835
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 47  1    11    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00001623  0.00000000 -0.00002242 -0.27637000  0.00000492
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000827 -0.00000000  0.00000000  0.00000129 -0.27636924  0.00002242 -0.00002349
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00002024 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000299  0.00001569  0.00004222
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00001392  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000287 -0.00003585  0.00001211
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000017 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00023730  0.00262866  0.00002078 -0.00000010 -0.00000000 -0.00000032 -0.00000006  0.00002013
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000040 -0.00000647  0.00887981 -0.00004486 -0.00000041 -0.00004416  0.00000002  0.00863321
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000032 -0.00000022 -0.00004486 -0.00887983 -0.00000032 -0.00863358  0.00000147 -0.00004416
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000651 -0.00000258 -0.00000012 -0.00000089 -0.00258189  0.00003667  0.18370532 -0.00000024
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.43194896 -0.03897645 -0.00000000 -0.00000000 -0.00000000 -0.00000340  0.00000137  0.00000016
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00001443 -0.00002986 -0.01684244 -0.00000107  0.00000385  0.00000002  0.00000404  0.09267624
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000088 -0.00000034  0.00000357  0.00000023  0.01927133 -0.00000098  0.02459180 -0.00001484
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00002998 -0.00002067 -0.00000107  0.01684143 -0.00000061 -0.09267228  0.00002514  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.05879073  0.65117037  0.00000003  0.00001683 -0.00000000 -0.00000841  0.00000236  0.00000272
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00003768 -0.00007807  0.32689193  0.00002068 -0.00001486 -0.00000003 -0.00000044 -0.31740230
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00007527 -0.00002046  0.00002068 -0.32689445 -0.00001196  0.31744670 -0.00005399 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000  0.00003944 -0.00003172  0.86721401  0.00000000  0.00000098 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000953 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000034 -0.00000023 -0.00000056  0.00887988 -0.00002046 -0.00863370 -0.00001874  0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000
                                0.00001222 -0.00000566 -0.00000040 -0.00002046 -0.00887980  0.00001874 -0.00863360  0.00000001

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00239514 -0.00110879  0.00000000 -0.00000000  0.00004542  0.00000027  0.00004413  0.00000003

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000033  0.00000029  0.01798055  0.00000114 -0.00000082  0.00000002  0.00000011  0.07056059

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002998 -0.00002068  0.00000107 -0.01683922 -0.00000062 -0.09267020  0.00001576  0.00000003

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000018 -0.00000000 -0.00000000 -0.00000000
                                0.00000325 -0.00000136 -0.00000195  0.00000061 -0.01683281  0.00001576  0.09267042  0.00002725

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00003686 -0.00007720 -0.00740102 -0.00000047  0.00000303  0.00000005 -0.00001457  0.17140807

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.18223541 -0.39362833  0.00000146  0.00000000  0.00000000  0.00000178  0.00000170 -0.00000414

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000007  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004775 -0.00003985 -0.00002075  0.32686941  0.00001192  0.31744313 -0.00005395 -0.00000010

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000359 -0.00000000 -0.00000000 -0.00000000
                               -0.00000844  0.00000333 -0.00001486  0.00001192 -0.32688342  0.00005395  0.31744202 -0.00000044

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.59332953 -0.27467576 -0.00000000  0.00001683  0.00000007  0.00000656  0.00000110 -0.00000110

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.86721531  0.00005506 -0.00003943  0.00000000  0.00000000  0.00000609

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000520 -0.00000387 -0.00887990 -0.00000056  0.00000051  0.00000000 -0.00000009  0.00863329

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00215781 -0.00151987  0.00002078 -0.00000000  0.00004542 -0.00000006 -0.00004406 -0.00002016

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000010  0.00000000  0.00000000  0.00000000
                                0.00001100  0.00000779  0.00000040 -0.00000032  0.00887987 -0.00000147 -0.00863357  0.00000001

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003665 -0.00002529  0.00000098 -0.01540211 -0.00000155 -0.11314901  0.00001382  0.00000004

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001443  0.00002987 -0.01683684 -0.00000107  0.00000077 -0.00000003 -0.00000013 -0.09267481

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.24978378 -0.35457311  0.00000000 -0.00000189  0.00000000  0.00002865  0.00000035  0.00000112

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00008744  0.00008943  0.00000075 -0.01186730  0.00000050  0.14680244 -0.00001980 -0.00000005

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000000 -0.00000000 -0.00000000
                                0.00000326 -0.00000126  0.00000076 -0.00000086  0.01683158  0.00000096  0.09267317 -0.00000013

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00003774 -0.00007804 -0.32687265 -0.00002075 -0.00000197 -0.00000010 -0.00001678 -0.31740275

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.53453647 -0.37650233  0.00000003  0.00000000  0.00000007  0.00000185 -0.00000346 -0.00000162

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000359 -0.00000000 -0.00000000 -0.00000000
                               -0.00000846  0.00000347 -0.00000197 -0.00001196  0.32688734  0.00005399  0.31744455 -0.00001678

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00005505  0.86721511  0.00003173  0.00000668  0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.00000471 -0.00001951  0.00000024  0.00000000  0.00000000 -0.00000000  0.00000000  0.00036524
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00005964 -0.00022979 -0.00000000  0.00000030 -0.00000000  0.00036440  0.00000529 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00004602  0.00002268 -0.00000000 -0.00000000 -0.00000006 -0.00000529  0.00036443 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00273072  0.01533764  0.00000000  0.00000000  0.00000000  0.00000556 -0.00000026  0.00000041
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.01533928 -0.00273120  0.00000000  0.00000000 -0.00000000  0.00000037  0.00000116  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.18201815  0.00001952 -0.00000411  0.00000000  0.00000000 -0.00000139
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00001952 -0.18202029 -0.00004717 -0.00000227 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000411  0.00004717 -0.18201467  0.00000000  0.00000042  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000200 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00001864 -0.00003978  0.00000100  0.00000000  0.00000000  0.00000027  0.00000119  0.86419039
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00003291  0.00002117 -0.00000000  0.00000296 -0.00000000  0.86416356  0.00000289 -0.00000027
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000237 -0.00000340 -0.00000000 -0.00000000 -0.00000276 -0.00000289  0.86416536 -0.00000119
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

 49  1    13    1  |0 0>        0.04377216  0.27280486 -0.00000000 -0.00000000  0.00000000 -0.00000086 -0.00000067 -0.00000107
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.27280701 -0.04377346  0.00000000 -0.00000000 -0.00000000  0.00000103 -0.00000006  0.00000079
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000152  0.00000284 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00969721 -0.00231166 -0.00893559
                               -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00002263  0.00000540  0.00002091
                               -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000014  0.00000020 -0.00000000
                                0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000146  0.00000105  0.00000000
                                0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.04298003 -0.18030714  0.00000009
                               -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000070 -0.00000008 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000020  0.00000014  0.00000000
                                0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000156  0.00000212  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.35649191  0.08498059  0.20150075
                               -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000234  0.00000027 -0.00000002
                                0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00001302 -0.00000288  0.00001038
                                0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000018  0.00000031 -0.00000011

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00001463  0.00004882 -0.00004571

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00284657  0.00955361 -0.00893564

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00001093  0.00000303  0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00000156  0.00000212  0.00000000

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000071  0.00000052 -0.00000000

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000861 -0.00000310 -0.00000000

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.17764831 -0.05293272 -0.00000094

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000005  0.00001083 -0.00001038

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000255  0.00000173  0.00000004

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000
                                0.10464853 -0.35121733  0.20150522

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00001597 -0.00001696 -0.00002091

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00685035 -0.00724212 -0.00893557

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                                0.00003497  0.00003699  0.00004571

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.00000192  0.00000260  0.00000000

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.00000070  0.00000008  0.00000000

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.13466155  0.12737966 -0.00000212

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00002399 -0.00002371  0.00000000

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00000076  0.00000051 -0.00000000

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                               -0.00000236  0.00000031  0.00000002

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.25183853  0.26623990  0.20150319

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.00000247  0.00000175 -0.00000004

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.00000041 -0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000556 -0.00000056 -0.00000000
                                0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000038 -0.00000115  0.00000000
                                0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00036536  0.00001177  0.00000001
                               -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00001178  0.00036536 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000003 -0.00000003 -0.00632490
                                0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000108 -0.00000078  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000088 -0.00000101 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000067  0.00000007  0.00000000
                                0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.86410624  0.01306997 -0.00000028
                                0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.01307002  0.86410813  0.00000005
                                0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000033  0.00000051  0.93696852
                                0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        32.18%    0.00%    0.00%    0.00%   59.86%    0.00%    0.00%    0.77%
  2  1     2    1  |1 1>+         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   45.45%    0.02%
  3  1     3    1  |1 1>+         0.00%   49.98%    0.00%    0.00%    0.00%   45.47%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   49.98%    0.00%    0.00%    0.00%   45.47%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>         32.18%    0.00%    0.00%    0.00%   21.41%    0.00%    0.02%   39.19%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   45.45%    0.02%
 26  1     2    1  |1 1>-        32.18%    0.00%    0.00%    0.00%    9.67%    0.00%    0.02%   50.93%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.02%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    9.02%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.79%    0.00%    0.00%    1.23%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.24%    0.00%    0.00%    7.79%
 42  1     6    1  |0 0>          3.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 51  1    15    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    5.79%    0.23%    0.00%    0.00%    1.13%    0.00%
  2  1     2    1  |1 1>+         0.00%    4.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    4.51%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.09%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.51%    0.00%    0.00%
 14  1     2    1  |1 0>         45.47%    0.00%    0.00%    0.00%    4.51%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    2.63%    3.40%    0.00%    0.00%    1.13%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.76%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    3.69%
 20  1     8    1  |1 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.88%
 25  1     1    1  |1 1>-         0.00%    4.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.62%    5.41%    0.00%    0.00%    1.13%    0.00%
 27  1     3    1  |1 1>-        45.47%    0.00%    0.00%    0.00%    4.51%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.09%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%   90.93%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.03%   90.88%    0.00%    0.00%
 39  1     3    1  |0 0>          9.03%    0.00%    0.00%    0.00%   90.90%    0.03%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%   72.70%   18.21%    0.00%    0.02%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%   18.21%   72.71%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.58%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.45%    0.00%    0.00%    0.13%   43.60%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.58%
  6  1     6    1  |1 1>+         0.00%    0.00%    5.49%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   25.00%    0.00%    0.00%    7.19%    0.78%    0.00%    0.00%
  8  1     8    1  |1 1>+        19.09%    0.00%    0.00%    5.49%    0.00%    0.00%   11.10%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.61%
 10  1    10    1  |1 1>+         0.00%    0.00%   22.68%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.07%    0.00%    0.00%   22.68%    0.00%    0.00%    7.86%    0.00%
 12  1    12    1  |1 1>+         0.00%    2.88%    0.00%    0.00%   18.66%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    6.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>         19.09%    0.00%    0.00%    5.49%    0.00%    0.00%   11.10%    0.00%
 18  1     6    1  |1 0>          0.00%   19.09%    0.00%    0.00%    5.49%   11.10%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    1.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.65%
 21  1     9    1  |1 0>          0.07%    0.00%    0.00%   22.68%    0.00%    0.00%    7.86%    0.00%
 22  1    10    1  |1 0>          0.00%    0.07%    0.00%    0.00%   22.68%    7.86%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.33%
 24  1    12    1  |1 0>          0.00%    0.00%   18.66%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        15.97%    0.00%    0.00%    4.59%    0.00%    0.00%   16.54%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    5.49%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.35%
 31  1     7    1  |1 1>-         9.48%    0.00%    0.00%    2.73%    0.00%    0.00%   27.84%    0.00%
 32  1     8    1  |1 1>-         0.00%   19.09%    0.00%    0.00%    5.49%   11.10%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   22.69%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.79%
 35  1    11    1  |1 1>-         0.00%    0.07%    0.00%    0.00%   22.69%    7.86%    0.00%    0.00%
 36  1    12    1  |1 1>-         2.88%    0.00%    0.00%   18.66%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   17.65%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         33.35%    0.00%    0.00%   17.65%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%   33.35%    0.00%    0.00%   17.65%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.68%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.68%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.41%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.26%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    6.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+        11.10%    0.00%    0.00%    5.39%    0.00%    0.00%    0.00%    1.59%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.06%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.39%    0.00%    2.02%    0.00%
  9  1     9    1  |1 1>+         0.00%    8.88%   29.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         7.86%    0.00%    0.00%   16.56%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.56%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    3.24%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          6.43%    0.00%    0.00%    6.14%    0.00%    0.00%    0.00%   41.54%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.39%    0.00%   53.16%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.39%    0.00%    0.00%
 19  1     7    1  |1 0>         37.95%    0.00%    0.00%    1.04%    0.00%    0.00%    0.00%    3.86%
 20  1     8    1  |1 0>          0.00%   43.74%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   16.56%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   16.56%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.15%   29.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    3.24%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    4.51%    0.00%   44.69%    0.00%
 29  1     5    1  |1 1>-        11.10%    0.00%    0.00%    5.39%    0.00%    0.00%    0.00%   53.00%
 30  1     6    1  |1 1>-         0.00%   16.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    2.68%    0.00%    0.12%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.39%    0.00%    0.00%
 33  1     9    1  |1 1>-         7.86%    0.00%    0.00%   16.56%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    6.69%   29.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   16.56%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.24%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   45.67%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   45.67%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   45.67%    0.00%    0.00%
 46  1    10    1  |0 0>         17.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   17.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   12.17%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%   32.54%    0.00%    0.00%    1.26%   18.48%    0.00%    0.00%
  5  1     5    1  |1 1>+        33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%   51.74%    0.00%    0.00%    0.00%    0.00%    4.70%
  7  1     7    1  |1 1>+         0.00%    4.32%    0.00%    0.00%   55.21%    0.33%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%   51.31%    0.00%    0.00%    4.70%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.06%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.06%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%   14.59%    0.00%    0.00%    0.00%    0.00%    2.73%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    4.70%    0.00%
 18  1     6    1  |1 0>          0.00%   49.07%    0.00%    0.00%    4.27%    4.70%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%   16.09%
 20  1     8    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.06%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.06%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    5.37%    0.00%    0.00%    7.01%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.33%    0.00%    0.00%    0.00%    0.00%    4.70%
 30  1     6    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%   43.15%    0.00%    0.00%   11.80%    0.00%
 32  1     8    1  |1 1>-         0.00%   14.07%    0.00%    0.00%   39.26%    4.70%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.06%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.06%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.64%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.64%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.64%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.37%    0.00%
  5  1     5    1  |1 1>+        18.66%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.86%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.06%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.86%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.35%   42.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%   10.69%    0.00%    0.00%    0.00%    0.00%   10.07%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%   10.69%    0.00%   10.08%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   75.21%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.50%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.86%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.86%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    2.94%
 20  1     8    1  |1 0>          3.32%   15.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   10.68%    0.00%   10.08%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%   10.69%    0.00%   10.08%    0.00%
 23  1    11    1  |1 0>         35.20%    7.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%   75.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    1.28%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.86%
 30  1     6    1  |1 1>-         6.24%   12.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    2.16%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.86%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   10.68%    0.00%    0.00%    0.00%    0.00%   10.07%
 34  1    10    1  |1 1>-        28.57%   14.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.69%    0.00%   10.08%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%   75.21%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    3.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    3.31%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.31%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   74.68%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   74.68%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   74.68%    0.00%
 49  1    13    1  |0 0>          0.19%    7.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          7.44%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.01%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.18%    3.25%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+        12.71%    0.72%    4.06%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.01%    0.01%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          3.16%    0.28%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          1.10%   12.34%    4.06%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.01%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         1.81%    1.62%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         6.34%    7.09%    4.06%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         74.67%    0.02%    0.00%
 50  1    14    1  |0 0>          0.02%   74.67%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   87.79%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4225.00       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    101367.72  88345.38   6028.18   6988.48      3.37      0.29      1.79
 REAL TIME  *    102793.49 SEC
 DISK USED  *         4.18 GB (local),       50.34 GB (total)
 SF USED    *        22.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -214.010684586084

              CI              CI           MULTI         RHF-SCF
   -213.94481380   -213.95839261   -213.15786049   -213.37378088
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
