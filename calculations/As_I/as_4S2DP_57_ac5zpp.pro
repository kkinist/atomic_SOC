
 Working directory              : /wrk/irikura/molpro.scTj7u4sIQ/
 Global scratch directory       : /wrk/irikura/molpro.scTj7u4sIQ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.scTj7u4sIQ/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,As SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={As};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Aug-24          TIME: 15:52:39  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry As   ECP ECP10MDF                 selected for group  1
 Library entry AS     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry AS     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  AS     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.186E-04 0.208E-03 0.747E-03 0.142E-02 0.142E-02 0.142E-02 0.142E-02 0.142E-02
         2 0.124E-04 0.124E-04 0.124E-04 0.717E-03 0.717E-03 0.717E-03 0.405E-02 0.405E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     548.405 MB (compressed) written to integral file ( 13.4%)

     Node minimum: 36.438 MB, node maximum: 54.526 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291344. INTEGRALS IN     13 RECORDS. CPU TIME:     2.31 SEC, REAL TIME:     2.37 SEC
 SORT2 READ    53579907. AND WROTE   312900871. INTEGRALS IN   2352 RECORDS. CPU TIME:     0.56 SEC, REAL TIME:     0.60 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.86      8.64
 REAL TIME  *         9.99 SEC
 DISK USED  *        30.87 MB (local),        1.43 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -206.49516944    -206.49516944     0.00D+00     0.15D+00     0     0       0.15      0.29    start
   2     -289.73851823     -83.24334879     0.33D+00     0.22D+00     1     0       0.17      0.46    diag2
   3     -316.09417579     -26.35565757     0.37D+00     0.87D-01     2     0       0.18      0.64    diag2
   4     -330.16113509     -14.06695930     0.19D+00     0.62D-01     3     0       0.17      0.81    diag2
   5     -331.07290788      -0.91177279     0.33D-01     0.22D-01     4     0       0.17      0.98    diag2
   6     -331.19935638      -0.12644850     0.61D-02     0.65D-02     5     0       0.17      1.15    diag2
   7     -331.20935741      -0.01000103     0.37D-02     0.11D-02     6     0       0.17      1.32    diag2
   8     -331.20997405      -0.00061664     0.44D-03     0.35D-03     7     0       0.17      1.49    fixocc
   9     -331.21002178      -0.00004772     0.31D-03     0.78D-04     8     0       0.17      1.66    diag2
  10     -331.21002547      -0.00000369     0.28D-04     0.30D-04     9     0       0.17      1.83    diag2/orth
  11     -331.21002564      -0.00000017     0.87D-05     0.60D-05     9     0       0.17      2.00    diag2
  12     -331.21002565      -0.00000001     0.10D-05     0.13D-05     9     0       0.17      2.17    diag2
  13     -331.21002565      -0.00000000     0.15D-06     0.18D-06     0     0       0.17      2.34    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -331.210025645841
  RHF One-electron energy            -587.018714602297
  RHF Two-electron energy             255.808688956457
  RHF Kinetic energy                  233.768702907785
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.416827922327

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.08651     1  1  s    0.99980
    2.1     2.00000    -2.07178     1  1  d0   0.99999
    3.1     2.00000    -2.07178     1  1  d1+  0.52501    1  1  d1-  0.85108
    4.1     2.00000    -2.07178     1  1  d1+  0.85109    1  1  d1- -0.52501
    5.1     2.00000    -2.07178     1  1  d2-  0.97223
    6.1     2.00000    -2.07178     1  1  d2+  0.97223
    7.1     2.00000    -0.70292     1  1  s   -0.35596    1  5  s    0.49661    1  6  s    0.53724
    1.2     2.00000    -5.99995     1  1  pz   0.99992
    2.2     2.00000    -5.99995     1  1  py   0.99837
    3.2     2.00000    -5.99995     1  1  px   0.99837
    4.2     1.00000    -0.36833     1  5  py   0.38690    1  6  py   0.33290
    5.2     1.00000    -0.36833     1  5  px   0.38690    1  6  px   0.33290
    6.2     1.00000    -0.36832     1  5  pz   0.44386    1  6  pz   0.38192


 HOMO      6.2    -0.368323 =     -10.0226eV
 LUMO      7.2     0.046878 =       1.2756eV
 LUMO-HOMO         0.415202 =      11.2982eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.22      2.35      8.64
 REAL TIME  *        12.48 SEC
 DISK USED  *        36.95 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.371D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 2 6 4 5 313  10141512 811 9 7 3 5   6 4 2 1 7 911 81215
                                       141310 3 5 4 6 2 1 7   911 81215141310 2 4   6 3 5 1 7 911 81214  151310 2 4 6 3 52528
                                       27172123262419182022  16 1 2 4 6 3 5 711 9   81215141310 2 6 4 3   5 1 7 91112 8151413
                                       10 1 2 4 6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.215D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.547D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.529D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.215D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.106D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 1 2 3 1   2 3 9 710 8 5 4 6 1   2 3 9 710 8 5 4 6 2   1 3 9 710 8 4 5 618
                                       20151714162113121119   6 5 410 8 9 7 3 1 2  19111221131614151720  18 6 5 4 810 9 7 3 2
                                        1191112211316141517  2018 6 4 5 810 7 9 3   2 1 6 5 4 810 9 719  11121321141615172018
                                        3 2 1 6 5 410 8 7 9   3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    5251
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   20    0   -331.14184308    -331.15372321   -0.01188012    0.02293402 0.00007010 0.00000000  0.16E+01      3.65
   2    8   14    0   -331.15335749    -331.15343398   -0.00007649    0.00362102 0.00000641 0.00000000  0.12E+00      6.52
   3    7   14    0   -331.15343399    -331.15343399   -0.00000000    0.00000104 0.00000001 0.00000000  0.34E-04      9.11

 CONVERGENCE REACHED!  Final gradient:    0.00000005 ( 0.48E-07)
                       Final energy:   -331.15343399
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.217699600190
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.81417946
 One electron energy                          -586.90811289
 Two electron energy                           255.69041329
 Virial ratio                                    2.41658517
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.154576838801
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73188500
 One electron energy                          -586.58783173
 Two electron energy                           255.43325489
 Virial ratio                                    2.41681387
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.154576838801
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73188500
 One electron energy                          -586.58783173
 Two electron energy                           255.43325489
 Virial ratio                                    2.41681387
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.154576838724
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73188500
 One electron energy                          -586.58783174
 Two electron energy                           255.43325490
 Virial ratio                                    2.41681387
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.154576838711
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73188500
 One electron energy                          -586.58783174
 Two electron energy                           255.43325490
 Virial ratio                                    2.41681387
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.154576838689
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73188500
 One electron energy                          -586.58783174
 Two electron energy                           255.43325490
 Virial ratio                                    2.41681387
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.130107359014
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72806276
 One electron energy                          -586.48020163
 Two electron energy                           255.35009427
 Virial ratio                                    2.41673235
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.130107358878
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72806276
 One electron energy                          -586.48020163
 Two electron energy                           255.35009427
 Virial ratio                                    2.41673235
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.130107358846
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72806276
 One electron energy                          -586.48020163
 Two electron energy                           255.35009427
 Virial ratio                                    2.41673235
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     4.000000000000
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.982478477576
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999990214
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999950032
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.017532760417
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.237527490336
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999837806
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000131434
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.762393923231
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000001784
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999998628
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.779994032088
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000171979
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999918534
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.220073316352
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999998217
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000001372
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 4 2   6 3 5 1 3 5 6 2 4 9   7 8121115141310 4 2   6 3 5 11310151411 8
                                       12 7 9 3 5 6 2 4 113  10141511 812 7 9 3 5   6 2 4 11310141511 8  12 7 9 3 5 6 2 42216
                                       20182419272326172125  28 1 5 3 6 2 4101314  151112 8 7 9 3 5 6 2   4 1131015141112 8 7
                                        9 1 5 3 6 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 1   3 2 4 6 5 810 7 9 1   3 2 4 6 5 810 7 9 1   2 3 9 7 510 8 6 411
                                       19211312141615172018   9 7 810 5 6 4 2 1 3  20181517141612211319  11 7 9 810 5 6 4 2 1
                                        3182015171416122113  1911 7 9 810 5 6 4 2   1 3 9 710 8 5 6 420  18151714161221131911
                                        2 1 3 9 710 8 5 6 4   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.10685     1  1  s    1.00104
    2.1     2.00000    -2.09217     1  1  d2-  1.00010
    3.1     2.00000    -2.09217     1  1  d2+  1.00010
    4.1     2.00000    -2.09217     1  1  d1-  1.00010
    5.1     2.00000    -2.09217     1  1  d0   1.00010
    6.1     2.00000    -2.09217     1  1  d1+  1.00010
    7.1     1.97803    -0.71309     1  1  s   -0.35548    1  5  s    0.51872    1  6  s    0.52873
    1.2     2.00000    -6.02026     1  1  py   0.99974
    2.2     2.00000    -6.02026     1  1  px   0.99974
    3.2     2.00000    -6.02026     1  1  pz   0.99974
    4.2     1.00235    -0.16216     1  5  pz   0.40998    1  6  pz   0.37872
    5.2     1.00235    -0.16216     1  5  px   0.40998    1  6  px   0.37872
    6.2     1.00235    -0.16216     1  5  py   0.40998    1  6  py   0.37872
    7.2     0.00497     0.48746     1  1  py   0.32274    1  4  py  -0.81423    1  5  py  -0.50170    1  6  py   0.77446
                                    1  7  py   0.38600
    8.2     0.00497     0.48746     1  1  px   0.32274    1  4  px  -0.81423    1  5  px  -0.50170    1  6  px   0.77446
                                    1  7  px   0.38600
    9.2     0.00497     0.48746     1  1  pz   0.32274    1  4  pz  -0.81423    1  5  pz  -0.50170    1  6  pz   0.77446
                                    1  7  pz   0.38600
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99644925
 
 Energy:     -331.21769960
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.00000000     -0.05379154     -0.00009693      0.00019583      0.81096954     -0.00000000      0.00000000
 2 baa000       0.00000000      0.72921602      0.00002471     -0.00005922     -0.35889994      0.00000000     -0.00000000
 2 2a0000       0.70386354     -0.00000000     -0.00000000      0.00000000      0.00000000      0.69601853      0.00000000
 2 0a2000      -0.70386354      0.00000000     -0.00000000     -0.00000000      0.00000000      0.69601853     -0.00000000
 2 20a000      -0.00000000      0.00001816      0.70386352     -0.00014533      0.00008537      0.00000000      0.69601852
 2 02a000      -0.00000000     -0.00001816     -0.70386352      0.00014533     -0.00008537     -0.00000000      0.69601853
 2 a02000       0.00000000      0.00002738     -0.00014536     -0.70386350      0.00017176     -0.00000000      0.00002939
 2 a20000      -0.00000000     -0.00002738      0.00014536      0.70386350     -0.00017176      0.00000000      0.00002939
 2 aab000      -0.00000000     -0.67542448      0.00007223     -0.00013661     -0.45206960      0.00000000      0.00000000
 0 22a000       0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.14509265
 0 2a2000       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.14509265     -0.00000000
 0 a22000       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000613
 
 Energy:     -331.15457684   -331.15457684   -331.15457684   -331.15457684   -331.15457684   -331.13010736   -331.13010736

 State:              8
 2 aba000      -0.00000000
 2 baa000       0.00000000
 2 2a0000       0.00000000
 2 0a2000       0.00000000
 2 20a000      -0.00002939
 2 02a000      -0.00002939
 2 a02000       0.69601853
 2 a20000       0.69601853
 2 aab000       0.00000000
 0 22a000       0.00000613
 0 2a2000       0.00000000
 0 a22000      -0.14509265
 
 Energy:     -331.13010736
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.08      9.85      2.35      8.64
 REAL TIME  *        23.53 SEC
 DISK USED  *        89.89 MB (local),        2.12 GB (total)
 SF USED    *       148.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2176996  -0.0
    -331.1545768   6.0
    -331.1545768   6.0
    -331.1545768   6.0
    -331.1545768   6.0
    -331.1545768   6.0
    -331.1301074   2.0
    -331.1301074   2.0
    -331.1301074   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.21769960

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.83D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:      12620623
 Number of doubly external configurations:       3891926
 Total number of contracted configurations:     16546229
 Total number of uncontracted configurations:  965890508

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.85 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3275162 words, CPU-time:      0.61 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.21769960     0.00000000    -1.13309665  0.45D-01  0.59D-01     3.22
    2     1     1     1.07280908    -0.95089638  -332.16859598    -0.95089638    -0.02603684  0.37D-02  0.10D-02    91.66
    3     1     1     1.05855649    -0.97512904  -332.19282864    -0.02423266    -0.00052057  0.85D-04  0.25D-04   180.15
    4     1     1     1.05764988    -0.97562607  -332.19332567    -0.00049703    -0.00002021  0.27D-05  0.13D-05   268.59
    5     1     1     1.05772216    -0.97564606  -332.19334566    -0.00001999    -0.00000075  0.49D-07  0.99D-07   356.89
    6     1     1     1.05776581    -0.97564687  -332.19334647    -0.00000081    -0.00000004  0.19D-08  0.57D-08   445.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.7%  72.0%
 P   0.2%  19.7%   2.5%

 Initialization:   0.4%
 Other:            3.8%

 Total CPU:      445.1 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9686817


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97193820 (fixed)   0.97210441 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076746   -0.00258363   -0.00314798
 Singles      0.01648601   -0.09295847   -0.10300633
 Pairs        0.04132413   -0.88010478   -0.86949256
 Total        1.05857760   -0.97564688   -0.97564687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.21769960
 Nuclear energy                         0.00000000
 Kinetic energy                       234.27951984
 One electron energy                 -585.95812572
 Two electron energy                  253.76477925
 Virial quotient                       -1.41793592
 Correlation energy                    -0.97564687
 !MRCI STATE 1.2 Energy              -332.193346468146

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.25049752 (Davidson, fixed reference)
 Cluster corrected energies          -332.25014436 (Davidson, relaxed reference)

 Cluster corrected energies          -332.24729299 (Pople, fixed reference)
 Cluster corrected energies          -332.24694358 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      131.75       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       468.31    447.22      9.85      2.35      8.64
 REAL TIME  *       477.90 SEC
 DISK USED  *       218.82 MB (local),        3.63 GB (total)
 SF USED    *         1.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.25014436  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.15457684
     2      -331.15457684
     3      -331.15457684
     4      -331.15457684
     5      -331.15457684
     6      -331.13010736
     7      -331.13010736
     8      -331.13010736

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1977D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1411D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1411D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1411D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1411D-06

 Number of blocks in overlap matrix:   816   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1870
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      15534476
 Number of doubly external configurations:      28992749
 Total number of contracted configurations:     44571311
 Total number of uncontracted configurations: 1275044416

 Diagonal Coupling coefficients finished.               Storage:  27632784 words, CPU-Time:     68.63 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3813320 words, CPU-time:      4.55 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.15457684    -0.00000000    -1.13376547  0.49D-01  0.56D-01    88.66
    1     2     2     1.00000000     0.00000000  -331.15457684     0.00000000    -1.13348087  0.49D-01  0.56D-01    88.66
    1     3     3     1.00000000     0.00000000  -331.15457684    -0.00000000    -1.13441817  0.48D-01  0.56D-01    88.66
    1     4     4     1.00000000     0.00000000  -331.15457684    -0.00000000    -1.13368414  0.49D-01  0.56D-01    88.66
    1     5     5     1.00000000     0.00000000  -331.15457684     0.00000000    -1.13357471  0.49D-01  0.56D-01    88.66
    1     6     6     1.00000000     0.00000000  -331.13010736     0.00000000    -1.11680232  0.32D-01  0.58D-01    88.66
    1     7     7     1.00000000     0.00000000  -331.13010736     0.00000000    -1.11760771  0.32D-01  0.58D-01    88.66
    1     8     8     1.00000000     0.00000000  -331.13010736     0.00000000    -1.11655684  0.32D-01  0.58D-01    88.66
    2     1     1     1.07425109    -0.95866283  -332.11323967    -0.95866283    -0.02675827  0.38D-02  0.12D-02  1930.77
    2     2     2     1.07435719    -0.95858044  -332.11315728    -0.95858044    -0.02690372  0.37D-02  0.12D-02  1930.77
    2     3     3     1.07446720    -0.95850077  -332.11307761    -0.95850077    -0.02688717  0.39D-02  0.11D-02  1930.77
    2     4     4     1.07425052    -0.95846171  -332.11303855    -0.95846171    -0.02699996  0.38D-02  0.12D-02  1930.77
    2     5     5     1.07448186    -0.95831062  -332.11288745    -0.95831062    -0.02708412  0.40D-02  0.11D-02  1930.77
    2     6     6     1.06508165    -0.95601224  -332.08611960    -0.95601224    -0.02415780  0.28D-02  0.12D-02  1930.77
    2     7     7     1.06541189    -0.95596065  -332.08606801    -0.95596065    -0.02426294  0.28D-02  0.12D-02  1930.77
    2     8     8     1.06518037    -0.95589878  -332.08600614    -0.95589878    -0.02425248  0.28D-02  0.12D-02  1930.77
    3     1     1     1.06157539    -0.98337677  -332.13795361    -0.02471394    -0.00062694  0.77D-04  0.52D-04  3770.35
    3     2     2     1.06156117    -0.98336828  -332.13794512    -0.02478784    -0.00063142  0.78D-04  0.52D-04  3770.35
    3     3     3     1.06155631    -0.98336497  -332.13794181    -0.02486420    -0.00063575  0.79D-04  0.52D-04  3770.35
    3     4     4     1.06153513    -0.98336184  -332.13793868    -0.02490012    -0.00064344  0.81D-04  0.52D-04  3770.35
    3     5     5     1.06151859    -0.98334904  -332.13792588    -0.02503842    -0.00065148  0.82D-04  0.53D-04  3770.35
    3     6     6     1.05798349    -0.97820799  -332.10831535    -0.02219575    -0.00060946  0.52D-04  0.64D-04  3770.35
    3     7     7     1.05790468    -0.97819440  -332.10830176    -0.02223374    -0.00061811  0.52D-04  0.66D-04  3770.35
    3     8     8     1.05788029    -0.97817621  -332.10828357    -0.02227743    -0.00062662  0.52D-04  0.67D-04  3770.35
    4     1     1     1.06103999    -0.98404528  -332.13862212    -0.00066851    -0.00004850  0.34D-05  0.63D-05  5610.23
    4     2     2     1.06102290    -0.98404421  -332.13862105    -0.00067593    -0.00004987  0.36D-05  0.63D-05  5610.23
    4     3     3     1.06102306    -0.98404410  -332.13862094    -0.00067913    -0.00004960  0.34D-05  0.64D-05  5610.23
    4     4     4     1.06102759    -0.98404350  -332.13862033    -0.00068166    -0.00004976  0.34D-05  0.64D-05  5610.23
    4     5     5     1.06100716    -0.98404209  -332.13861893    -0.00069305    -0.00005133  0.36D-05  0.65D-05  5610.23
    4     6     6     1.05850328    -0.97887955  -332.10898691    -0.00067156    -0.00005962  0.38D-05  0.80D-05  5610.23
    4     7     7     1.05848701    -0.97887796  -332.10898532    -0.00068356    -0.00006097  0.39D-05  0.82D-05  5610.23
    4     8     8     1.05846507    -0.97887331  -332.10898067    -0.00069710    -0.00006378  0.40D-05  0.85D-05  5610.23
    5     1     1     1.06132309    -0.98410353  -332.13868036    -0.00005824    -0.00000511  0.31D-06  0.64D-06  7454.70
    5     2     2     1.06132257    -0.98410339  -332.13868023    -0.00005918    -0.00000518  0.32D-06  0.64D-06  7454.70
    5     3     3     1.06132162    -0.98410335  -332.13868019    -0.00005925    -0.00000522  0.32D-06  0.65D-06  7454.70
    5     4     4     1.06132142    -0.98410330  -332.13868013    -0.00005980    -0.00000526  0.32D-06  0.65D-06  7454.70
    5     5     5     1.06131973    -0.98410309  -332.13867992    -0.00006099    -0.00000540  0.34D-06  0.67D-06  7454.70
    5     6     6     1.05911703    -0.97895290  -332.10906026    -0.00007336    -0.00000633  0.42D-06  0.70D-06  7454.70
    5     7     7     1.05911740    -0.97895277  -332.10906013    -0.00007481    -0.00000642  0.43D-06  0.70D-06  7454.70
    5     8     8     1.05911538    -0.97895217  -332.10905953    -0.00007886    -0.00000688  0.46D-06  0.74D-06  7454.70
    6     1     1     1.06140700    -0.98410968  -332.13868652    -0.00000615    -0.00000049  0.33D-07  0.57D-07  9294.15
    6     2     2     1.06140763    -0.98410965  -332.13868649    -0.00000626    -0.00000051  0.35D-07  0.60D-07  9294.15
    6     3     3     1.06140679    -0.98410963  -332.13868647    -0.00000628    -0.00000050  0.33D-07  0.59D-07  9294.15
    6     4     4     1.06140788    -0.98410963  -332.13868647    -0.00000634    -0.00000049  0.32D-07  0.58D-07  9294.15
    6     5     5     1.06140789    -0.98410960  -332.13868643    -0.00000651    -0.00000052  0.35D-07  0.61D-07  9294.15
    6     6     6     1.05921790    -0.97896022  -332.10906758    -0.00000732    -0.00000055  0.30D-07  0.64D-07  9294.15
    6     7     7     1.05921825    -0.97896019  -332.10906755    -0.00000742    -0.00000055  0.29D-07  0.66D-07  9294.15
    6     8     8     1.05921680    -0.97896013  -332.10906749    -0.00000796    -0.00000060  0.32D-07  0.72D-07  9294.15
    7     1     1     1.06142647    -0.98411022  -332.13868706    -0.00000054    -0.00000005  0.34D-08  0.59D-08 11134.15
    7     2     2     1.06142656    -0.98411022  -332.13868706    -0.00000057    -0.00000005  0.37D-08  0.62D-08 11134.15
    7     3     3     1.06142597    -0.98411020  -332.13868704    -0.00000056    -0.00000005  0.35D-08  0.62D-08 11134.15
    7     4     4     1.06142613    -0.98411018  -332.13868702    -0.00000055    -0.00000005  0.34D-08  0.60D-08 11134.15
    7     5     5     1.06142607    -0.98411018  -332.13868702    -0.00000058    -0.00000005  0.37D-08  0.63D-08 11134.15
    7     6     6     1.05923324    -0.97896083  -332.10906819    -0.00000061    -0.00000006  0.40D-08  0.75D-08 11134.15
    7     7     7     1.05923227    -0.97896081  -332.10906817    -0.00000062    -0.00000007  0.46D-08  0.86D-08 11134.15
    7     8     8     1.05923299    -0.97896081  -332.10906817    -0.00000068    -0.00000006  0.41D-08  0.76D-08 11134.15
    8     1     1     1.06142947    -0.98411024  -332.13868708    -0.00000002    -0.00000001  0.36D-09  0.51D-09 12134.58
    8     2     2     1.06142647    -0.98411022  -332.13868706    -0.00000000    -0.00000005  0.33D-08  0.59D-08 12134.58
    8     3     3     1.06142655    -0.98411022  -332.13868706    -0.00000002    -0.00000005  0.37D-08  0.61D-08 12134.58
    8     4     4     1.06142597    -0.98411020  -332.13868704    -0.00000001    -0.00000005  0.35D-08  0.62D-08 12134.58
    8     5     5     1.06142613    -0.98411018  -332.13868702    -0.00000001    -0.00000005  0.34D-08  0.60D-08 12134.58
    8     6     6     1.05923936    -0.97896090  -332.10906826    -0.00000007    -0.00000000  0.27D-09  0.51D-09 12134.58
    8     7     7     1.05923896    -0.97896089  -332.10906825    -0.00000008    -0.00000001  0.32D-09  0.59D-09 12134.58
    8     8     8     1.05923918    -0.97896088  -332.10906824    -0.00000007    -0.00000000  0.28D-09  0.51D-09 12134.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%  28.9%
 P   0.2%  32.8%  26.5%

 Initialization:   0.6%
 Other:           10.4%

 Total CPU:    12134.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000          -0.1014237   0.0000029   0.9610822  -0.0002527  -0.0072680  -0.0000000  -0.0000000   0.0000000
 2222222222//\000           0.9600824  -0.0000173   0.1016502  -0.0003504   0.0438686   0.0000000   0.0000000  -0.0000000
 22222222222/0000          -0.0002186   0.0170975  -0.0002042  -0.6831670  -0.0001923  -0.0214552   0.6767875   0.0006884
 22222222220/2000           0.0002186  -0.0170975   0.0002042   0.6831670   0.0001923  -0.0214552   0.6767876   0.0006884
 222222222202/000           0.0000055   0.6831669   0.0000051   0.0170974   0.0002734   0.6767878   0.0214552   0.0000006
 222222222220/000          -0.0000055  -0.6831669  -0.0000051  -0.0170974  -0.0002734   0.6767879   0.0214552   0.0000006
 2222222222/02000          -0.0313882  -0.0002683   0.0018500  -0.0001894   0.6826572   0.0000213  -0.0006881   0.6771275
 2222222222/20000           0.0313882   0.0002683  -0.0018500   0.0001894  -0.6826571   0.0000213  -0.0006881   0.6771276
 2222220222/22000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000042   0.0001354  -0.1332789
 22222202222/2000           0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0042230  -0.1332121  -0.0001355
 222222022222/000          -0.0000000  -0.0000002  -0.0000000  -0.0000000   0.0000000  -0.1332121  -0.0042230  -0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000310    0.744512    0.000008   -0.044562   -0.620498   -0.000000   -0.000000    0.000000
 2          -0.024274   -0.000013    0.969905   -0.000381    0.000012   -0.000000    0.000000   -0.000000
 3           0.000290    0.621245    0.000007    0.002626    0.745219    0.000000    0.000000   -0.000000
 4           0.969905   -0.000433    0.024274   -0.000269   -0.000015   -0.000000   -0.000000   -0.000000
 5           0.000273    0.032549    0.000388    0.969181   -0.030550    0.000000   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.030775    0.970762    0.000030
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.970762    0.030775   -0.000987
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000987    0.000001    0.971250

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970207   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.970208   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.970208    0.000000    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.970209    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.970209   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.971250   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971250    0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971250


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74451185 (fixed)   0.97035920 (relaxed)   0.97020711 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00087525   -0.00303174   -0.83405683
 Singles      0.01901676   -0.09890422   -0.11071533
 Pairs        0.04246648   -0.00000001   -0.03933808
 Total        1.06235849   -0.10193596   -0.98411024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15457684
 Nuclear energy                         0.00000000
 Kinetic energy                       234.25056011
 One electron energy                 -585.70404185
 Two electron energy                  253.56535477
 Virial quotient                       -1.41787788
 Correlation energy                    -0.98411024
 !MRCI STATE 1.2 Energy              -332.138687077379

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.20005471 (Davidson, fixed reference)
 Cluster corrected energies          -332.19972701 (Davidson, relaxed reference)
 Cluster corrected energies          -332.20005471 (Davidson, rotated reference)

 Cluster corrected energies          -332.19745427 (Pople, fixed reference)
 Cluster corrected energies          -332.19712392 (Pople, relaxed reference)
 Cluster corrected energies          -332.19745427 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96990465 (fixed)   0.97036060 (relaxed)   0.97020843 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00087537   -0.00303158   -0.83405542
 Singles      0.01901855   -0.09890823   -0.11071862
 Pairs        0.04246169    0.00000000   -0.03933618
 Total        1.06235561   -0.10193980   -0.98411022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15457684
 Nuclear energy                         0.00000000
 Kinetic energy                       234.25207123
 One electron energy                 -585.70479954
 Two electron energy                  253.56611248
 Virial quotient                       -1.41786873
 Correlation energy                    -0.98411022
 !MRCI STATE 2.2 Energy              -332.138687056562

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.20005185 (Davidson, fixed reference)
 Cluster corrected energies          -332.19972396 (Davidson, relaxed reference)
 Cluster corrected energies          -332.20005185 (Davidson, rotated reference)

 Cluster corrected energies          -332.19745139 (Pople, fixed reference)
 Cluster corrected energies          -332.19712085 (Pople, relaxed reference)
 Cluster corrected energies          -332.19745139 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.74521946 (fixed)   0.97036056 (relaxed)   0.97020839 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00087537   -0.00303157   -0.83405537
 Singles      0.01901853   -0.09890821   -0.11071870
 Pairs        0.04246180    0.00000000   -0.03933615
 Total        1.06235570   -0.10193978   -0.98411022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15457684
 Nuclear energy                         0.00000000
 Kinetic energy                       234.25214351
 One electron energy                 -585.70484145
 Two electron energy                  253.56615439
 Virial quotient                       -1.41786829
 Correlation energy                    -0.98411022
 !MRCI STATE 3.2 Energy              -332.138687056176

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.20005193 (Davidson, fixed reference)
 Cluster corrected energies          -332.19972404 (Davidson, relaxed reference)
 Cluster corrected energies          -332.20005193 (Davidson, rotated reference)

 Cluster corrected energies          -332.19745148 (Pople, fixed reference)
 Cluster corrected energies          -332.19712093 (Pople, relaxed reference)
 Cluster corrected energies          -332.19745148 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96990483 (fixed)   0.97036083 (relaxed)   0.97020865 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00087537   -0.00303157   -0.83405615
 Singles      0.01901819   -0.09890785   -0.11071843
 Pairs        0.04246155    0.00000000   -0.03933562
 Total        1.06235511   -0.10193942   -0.98411020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15457684
 Nuclear energy                         0.00000000
 Kinetic energy                       234.25212059
 One electron energy                 -585.70482422
 Two electron energy                  253.56613718
 Virial quotient                       -1.41786843
 Correlation energy                    -0.98411020
 !MRCI STATE 4.2 Energy              -332.138687036617

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.20005134 (Davidson, fixed reference)
 Cluster corrected energies          -332.19972345 (Davidson, relaxed reference)
 Cluster corrected energies          -332.20005134 (Davidson, rotated reference)

 Cluster corrected energies          -332.19745088 (Pople, fixed reference)
 Cluster corrected energies          -332.19712033 (Pople, relaxed reference)
 Cluster corrected energies          -332.19745088 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96918098 (fixed)   0.97036076 (relaxed)   0.97020858 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00087536   -0.00303158   -0.83405605
 Singles      0.01901812   -0.09890774   -0.11071842
 Pairs        0.04246178   -0.00000006   -0.03933571
 Total        1.06235527   -0.10193938   -0.98411018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15457684
 Nuclear energy                         0.00000000
 Kinetic energy                       234.25210062
 One electron energy                 -585.70481806
 Two electron energy                  253.56613104
 Virial quotient                       -1.41786855
 Correlation energy                    -0.98411018
 !MRCI STATE 5.2 Energy              -332.138687022428

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.20005147 (Davidson, fixed reference)
 Cluster corrected energies          -332.19972359 (Davidson, relaxed reference)
 Cluster corrected energies          -332.20005147 (Davidson, rotated reference)

 Cluster corrected energies          -332.19745101 (Pople, fixed reference)
 Cluster corrected energies          -332.19712048 (Pople, relaxed reference)
 Cluster corrected energies          -332.19745101 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97076241 (fixed)   0.97137784 (relaxed)   0.97125009 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079182   -0.00291811   -0.84322170
 Singles      0.01360795   -0.08582727   -0.09353101
 Pairs        0.04567832   -0.00002795   -0.04220819
 Total        1.06007809   -0.08877333   -0.97896090
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13010736
 Nuclear energy                         0.00000000
 Kinetic energy                       234.26053845
 One electron energy                 -585.58603378
 Two electron energy                  253.47696552
 Virial quotient                       -1.41769105
 Correlation energy                    -0.97896090
 !MRCI STATE 6.2 Energy              -332.109068261932

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.16788236 (Davidson, fixed reference)
 Cluster corrected energies          -332.16760941 (Davidson, relaxed reference)
 Cluster corrected energies          -332.16788236 (Davidson, rotated reference)

 Cluster corrected energies          -332.16528113 (Pople, fixed reference)
 Cluster corrected energies          -332.16500701 (Pople, relaxed reference)
 Cluster corrected energies          -332.16528113 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97076209 (fixed)   0.97137802 (relaxed)   0.97125027 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079181   -0.00291811   -0.84410178
 Singles      0.01360795   -0.08582722   -0.09353105
 Pairs        0.04567792    0.00090463   -0.04132806
 Total        1.06007768   -0.08784070   -0.97896089
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13010736
 Nuclear energy                         0.00000000
 Kinetic energy                       234.26051122
 One electron energy                 -585.58601684
 Two electron energy                  253.47694859
 Virial quotient                       -1.41769121
 Correlation energy                    -0.97896089
 !MRCI STATE 7.2 Energy              -332.109068249934

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.16788195 (Davidson, fixed reference)
 Cluster corrected energies          -332.16760901 (Davidson, relaxed reference)
 Cluster corrected energies          -332.16788195 (Davidson, rotated reference)

 Cluster corrected energies          -332.16528072 (Pople, fixed reference)
 Cluster corrected energies          -332.16500661 (Pople, relaxed reference)
 Cluster corrected energies          -332.16528072 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97124967 (fixed)   0.97137792 (relaxed)   0.97125017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079182   -0.00291811   -0.00348440
 Singles      0.01360794   -0.08582729   -0.09353099
 Pairs        0.04567815   -0.89021501   -0.88194550
 Total        1.06007790   -0.97896041   -0.97896088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13010736
 Nuclear energy                         0.00000000
 Kinetic energy                       234.26052808
 One electron energy                 -585.58602716
 Two electron energy                  253.47695892
 Virial quotient                       -1.41769111
 Correlation energy                    -0.97896088
 !MRCI STATE 8.2 Energy              -332.109068238538

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.16788215 (Davidson, fixed reference)
 Cluster corrected energies          -332.16760921 (Davidson, relaxed reference)
 Cluster corrected energies          -332.16788215 (Davidson, rotated reference)

 Cluster corrected energies          -332.16528092 (Pople, fixed reference)
 Cluster corrected energies          -332.16500681 (Pople, relaxed reference)
 Cluster corrected energies          -332.16528092 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2864.60       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13338.23  12869.90    447.22      9.85      2.35      8.64
 REAL TIME  *     13592.73 SEC
 DISK USED  *         2.88 GB (local),       35.66 GB (total)
 SF USED    *        26.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -332.20005471  AU                              
 SETTING HLSDIAG(3)     =      -332.20005185  AU                              
 SETTING HLSDIAG(4)     =      -332.20005193  AU                              
 SETTING HLSDIAG(5)     =      -332.20005134  AU                              
 SETTING HLSDIAG(6)     =      -332.20005147  AU                              
 SETTING HLSDIAG(7)     =      -332.16788236  AU                              
 SETTING HLSDIAG(8)     =      -332.16788195  AU                              
 SETTING HLSDIAG(9)     =      -332.16788215  AU                              


         HLSDIAG
    -332.2501444
    -332.2000547
    -332.2000519
    -332.2000519
    -332.2000513
    -332.2000515
    -332.1678824
    -332.1678820
    -332.1678822
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -332.193346
 Replaced energies:   -332.250144

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -332.138687   -332.138687   -332.138687   -332.138687   -332.138687   -332.109068   -332.109068   -332.109068
 Replaced energies:   -332.200055   -332.200052   -332.200052   -332.200051   -332.200051   -332.167882   -332.167882   -332.167882



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.25014436

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     910.40
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     -28.86

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.03

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     525.62
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      16.66

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   10993.41       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.25       0.00     -14.01       0.20

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   10994.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       7.67       0.00       4.34

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   10994.02       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.25      -0.00       0.00      -0.00       6.22       0.17

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   10994.15       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -7.67       0.00      -0.00      -0.00     650.06

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   10994.12       0.00
                           -0.00       0.00       0.00      -0.00      14.01      -0.00      -6.22       0.00      -0.00       0.19

   10   6.2  0.5  0.5     910.40       0.00     525.62       0.00       0.00       0.00       0.00       0.00       0.00   18054.42
                           28.86       0.03     -16.66      -0.00      -0.20      -4.34      -0.17    -650.06      -0.19      -0.00

   11   7.2  0.5  0.5      28.86       0.00      16.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -910.40      -1.07     525.62      -0.00      -0.31     650.06      -0.70      -4.34       0.24      -1.32

   12   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.93    1051.77       0.53      -0.00     304.63       0.66     685.95      -0.29      12.15      -0.00

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -1.60      -0.00      -0.39      -0.00    -744.38
                           -0.00       0.00       0.00      -0.00      -0.00       0.66      -0.00     -12.38      -0.00      43.82

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       1.60       0.00     -15.24       0.00       0.31       0.02
                           -0.00      -0.00      -0.00       0.00      -0.66      -0.00      -0.20      -0.00       7.64       0.23

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      15.24      -0.00       0.40       0.00     -78.97
                           -0.00      -0.00      -0.00       0.00       0.00       0.20      -0.00      -9.02      -0.00     -20.99

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.39      -0.00      -0.40       0.00      -7.65       0.26
                           -0.00       0.00      -0.00      -0.00      12.38       0.00       9.02      -0.00       0.74       0.18

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.31      -0.00       7.65      -0.00     -54.63
                           -0.00      -0.00       0.00       0.00       0.00      -7.64       0.00      -0.74       0.00    -648.37

   18   6.2  0.5 -0.5       0.00     525.62       0.00     910.40     744.38      -0.02      78.97      -0.26      54.63       0.00
                           -0.00      16.66       0.03     -28.86     -43.82      -0.23      20.99      -0.18     648.37      -0.00

   19   7.2  0.5 -0.5       0.00      16.66       0.00      28.86      53.47       0.27       0.74      -0.49    -647.98       0.00
                           -0.00    -525.62      -1.07     910.40     439.91      -0.68    -606.63       0.01      42.49      -0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.24     -16.26       0.19     649.87      -0.48      -0.04
                           -0.00      -0.53    1051.77       0.93       0.45     649.88      -0.61      16.26       0.28       1.32


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      28.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          910.40       0.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     525.62      16.66       0.00
                            1.07   -1051.77      -0.00       0.00       0.00      -0.00       0.00     -16.66     525.62       0.53

    3   1.2  1.5 -0.5      16.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -525.62      -0.53      -0.00       0.00       0.00       0.00      -0.00      -0.03       1.07   -1051.77

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     910.40      28.86       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      28.86    -910.40      -0.93

    5   1.2  0.5  0.5       0.00       0.00      -0.00       1.60       0.00       0.39       0.00     744.38      53.47       0.24
                            0.31    -304.63       0.00       0.66      -0.00     -12.38      -0.00      43.82    -439.91      -0.45

    6   2.2  0.5  0.5       0.00       0.00      -1.60       0.00      15.24      -0.00      -0.31      -0.02       0.27     -16.26
                         -650.06      -0.66      -0.66       0.00      -0.20      -0.00       7.64       0.23       0.68    -649.88

    7   3.2  0.5  0.5       0.00       0.00      -0.00     -15.24      -0.00      -0.40      -0.00      78.97       0.74       0.19
                            0.70    -685.95       0.00       0.20       0.00      -9.02      -0.00     -20.99     606.63       0.61

    8   4.2  0.5  0.5       0.00       0.00      -0.39       0.00       0.40       0.00       7.65      -0.26      -0.49     649.87
                            4.34       0.29      12.38       0.00       9.02       0.00       0.74       0.18      -0.01     -16.26

    9   5.2  0.5  0.5       0.00       0.00      -0.00       0.31       0.00      -7.65      -0.00      54.63    -647.98      -0.48
                           -0.24     -12.15       0.00      -7.64       0.00      -0.74      -0.00    -648.37     -42.49      -0.28

   10   6.2  0.5  0.5       0.00       0.00    -744.38       0.02     -78.97       0.26     -54.63       0.00       0.00      -0.04
                            1.32       0.00     -43.82      -0.23      20.99      -0.18     648.37       0.00       0.00      -1.32

   11   7.2  0.5  0.5   18054.51       0.00     -53.47      -0.27      -0.74       0.49     647.98      -0.00      -0.00       1.32
                           -0.00       0.00     439.91      -0.68    -606.63       0.01      42.49      -0.00      -0.00      -0.04

   12   8.2  0.5  0.5       0.00   18054.47      -0.24      16.26      -0.19    -649.87       0.48       0.04      -1.32       0.00
                           -0.00      -0.00       0.45     649.88      -0.61      16.26       0.28       1.32       0.04       0.00

   13   1.2  0.5 -0.5     -53.47      -0.24   10993.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -439.91      -0.45       0.00      -0.00      -0.25      -0.00      14.01      -0.20      -0.31     304.63

   14   2.2  0.5 -0.5      -0.27      16.26       0.00   10994.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.68    -649.88       0.00       0.00      -0.00      -7.67      -0.00      -4.34     650.06       0.66

   15   3.2  0.5 -0.5      -0.74      -0.19       0.00       0.00   10994.02       0.00       0.00       0.00       0.00       0.00
                          606.63       0.61       0.25       0.00      -0.00       0.00      -6.22      -0.17      -0.70     685.95

   16   4.2  0.5 -0.5       0.49    -649.87       0.00       0.00       0.00   10994.15       0.00       0.00       0.00       0.00
                           -0.01     -16.26       0.00       7.67      -0.00       0.00       0.00    -650.06      -4.34      -0.29

   17   5.2  0.5 -0.5     647.98       0.48       0.00       0.00       0.00       0.00   10994.12       0.00       0.00       0.00
                          -42.49      -0.28     -14.01       0.00       6.22      -0.00       0.00      -0.19       0.24      12.15

   18   6.2  0.5 -0.5      -0.00       0.04       0.00       0.00       0.00       0.00       0.00   18054.42       0.00       0.00
                            0.00      -1.32       0.20       4.34       0.17     650.06       0.19       0.00      -1.32      -0.00

   19   7.2  0.5 -0.5      -0.00      -1.32       0.00       0.00       0.00       0.00       0.00       0.00   18054.51       0.00
                            0.00      -0.04       0.31    -650.06       0.70       4.34      -0.24       1.32       0.00      -0.00

   20   8.2  0.5 -0.5       1.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18054.47
                            0.04      -0.00    -304.63      -0.66    -685.95       0.29     -12.15       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.25056538    -0.00042102      -92.40      0.00000000        0.00      0.0000
     2  -332.25056538    -0.00042102      -92.40      0.00000000        0.00      0.0000
     3  -332.25056538    -0.00042102      -92.40      0.00000000        0.00      0.0000
     4  -332.25056538    -0.00042102      -92.40      0.00000000        0.00      0.0000
     5  -332.20143762     0.04870674    10689.89      0.04912776    10782.30      1.3368
     6  -332.20143762     0.04870674    10689.89      0.04912776    10782.30      1.3368
     7  -332.20143670     0.04870766    10690.10      0.04912868    10782.50      1.3369
     8  -332.20143670     0.04870766    10690.10      0.04912868    10782.50      1.3369
     9  -332.19998351     0.05016085    11009.03      0.05058187    11101.44      1.3764
    10  -332.19998351     0.05016085    11009.03      0.05058187    11101.44      1.3764
    11  -332.19998202     0.05016234    11009.36      0.05058337    11101.77      1.3764
    12  -332.19998202     0.05016234    11009.36      0.05058337    11101.77      1.3764
    13  -332.19998163     0.05016273    11009.45      0.05058376    11101.85      1.3765
    14  -332.19998163     0.05016273    11009.45      0.05058376    11101.85      1.3765
    15  -332.16789421     0.08225015    18051.82      0.08267117    18144.23      2.2496
    16  -332.16789421     0.08225015    18051.82      0.08267117    18144.23      2.2496
    17  -332.16617514     0.08396922    18429.11      0.08439024    18521.52      2.2964
    18  -332.16617514     0.08396922    18429.11      0.08439024    18521.52      2.2964
    19  -332.16617489     0.08396947    18429.17      0.08439050    18521.57      2.2964
    20  -332.16617489     0.08396947    18429.17      0.08439050    18521.57      2.2964


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.194586614   0.680065523   0.033459413  -0.702367452   0.021258560  -0.000278659  -0.000040923  -0.008401656
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.675652471   0.193551873   0.575224620   0.027623300  -0.000108170  -0.008226509  -0.001727439   0.000007564
                        -0.020845532  -0.006035942   0.410277187   0.019475645  -0.000026089  -0.001703857  -0.021190040   0.000093711

    3    1.2  1.5 -0.5  -0.193345917   0.674939020  -0.033736150   0.705466218   0.008370497  -0.000110500   0.000093666   0.021182859
                        -0.010775748   0.037391353  -0.002054157   0.039091584  -0.000716492   0.000013081  -0.000008094  -0.001813375

    4    1.2  1.5 -1.5   0.679861420   0.194528215  -0.548379540  -0.026123729  -0.000276694  -0.021108617   0.001394401  -0.000006792
                         0.016660187   0.004766966  -0.438862076  -0.020906531  -0.000033038  -0.002520447   0.008285135  -0.000040355

    5    1.2  0.5  0.5   0.005329438   0.001525405  -0.001472211  -0.000069618   0.008015821   0.611589089  -0.005203470   0.000016129
                         0.000225871   0.000066365  -0.001545662  -0.000073301   0.001298182   0.107731654   0.026467188  -0.000146773

    6    2.2  0.5  0.5  -0.000419562   0.001461719  -0.000273001   0.005738545   0.092131583  -0.001229535  -0.002664319  -0.611023738
                        -0.000014539   0.000055538  -0.000009993   0.000162941   0.028977429  -0.000243495   0.000216802   0.052245479

    7    3.2  0.5  0.5   0.002034765   0.000583397   0.004453879   0.000213359  -0.000369126  -0.028464339   0.057642948  -0.000276990
                        -0.000165327  -0.000045910   0.003306151   0.000157587   0.000117666   0.012926682   0.617383770  -0.002885816

    8    4.2  0.5  0.5   0.000042736  -0.000157194   0.000003675  -0.000058256  -0.014537392   0.000062726  -0.000209065  -0.057933593
                        -0.001577808   0.005514578  -0.000076098   0.001552963  -0.484467017   0.006493943  -0.001845239  -0.382790922

    9    5.2  0.5  0.5   0.000338778   0.000097529  -0.002698642  -0.000126294   0.001298272   0.096593910  -0.225579800   0.000842180
                        -0.004046541  -0.001156079   0.003192240   0.000152583  -0.007579239  -0.568432744   0.037439912  -0.000269212

   10    6.2  0.5  0.5   0.015534555  -0.054268857  -0.000706196   0.014923141   0.152951595  -0.002006782   0.000080798   0.022258635
                         0.000447503  -0.001561546  -0.000026012   0.000639186   0.000627906   0.000002593  -0.000045440  -0.009976758

   11    7.2  0.5  0.5   0.000177980  -0.000624473  -0.000107017   0.001617305   0.007277219  -0.000119699  -0.000116053   0.006853057
                        -0.004155614   0.014699007   0.002719946  -0.056292688  -0.096415049   0.001318229   0.000568226   0.120813734

   12    8.2  0.5  0.5  -0.001221244  -0.000352460   0.024030137   0.001141877   0.000179369   0.011544950   0.143583167  -0.000628716
                        -0.039577684  -0.011321485  -0.033688547  -0.001675140  -0.000830929  -0.055739512  -0.011704545   0.000174337

   13    1.2  0.5 -0.5   0.001526573  -0.005333372  -0.000100156   0.002115222   0.620048201  -0.008113198   0.000142061   0.025236514
                        -0.000028976   0.000095243   0.000013731  -0.000286903  -0.034460867   0.000338657  -0.000040265  -0.009523994

   14    2.2  0.5 -0.5   0.001462640   0.000419792   0.004582230   0.000219392  -0.001249732  -0.094917360   0.049889120  -0.000228395
                        -0.000019712  -0.000004256   0.003458412   0.000162778   0.000096002   0.017849783   0.611220643  -0.002663350

   15    3.2  0.5 -0.5   0.000582097  -0.002030104   0.000265047  -0.005543196  -0.026730965   0.000352572   0.002891765   0.618388273
                         0.000060188  -0.000215124   0.000010276  -0.000201623  -0.016210282   0.000160600  -0.000205803  -0.045622066

   16    4.2  0.5 -0.5  -0.000022051  -0.000004070   0.000924858   0.000044680   0.000832216   0.071873996   0.387097174  -0.001854346
                        -0.005516773  -0.001578382  -0.001248889  -0.000061711  -0.006440702  -0.479326356  -0.006400687   0.000100084

   17    5.2  0.5 -0.5   0.000069178  -0.000239544  -0.000003266   0.000112373   0.028518363  -0.000390509   0.000125704  -0.000518226
                         0.001158121  -0.004053626  -0.000198043   0.004178569   0.575875742  -0.007679705  -0.000875180  -0.228665093

   18    6.2  0.5 -0.5  -0.054290825  -0.015540856   0.012050757   0.000567622  -0.001992321  -0.151947228   0.006144185  -0.000031400
                         0.000231603   0.000066805   0.008825415   0.000420945  -0.000240502  -0.017510695  -0.023605752   0.000087219

   19    7.2  0.5 -0.5  -0.000264191  -0.000076122  -0.033910781  -0.001615956   0.000037436   0.004205223  -0.120275582   0.000541084
                        -0.014709893  -0.004158727   0.044961554   0.002190490  -0.001323123  -0.096597804   0.013293128  -0.000208751

   20    8.2  0.5 -0.5  -0.000629707   0.002190448  -0.000155152   0.002287962   0.004854960  -0.000079588  -0.000067573   0.012287907
                         0.011309453  -0.039535888   0.002021362  -0.041317441   0.056715152  -0.000846335   0.000648931   0.143534419


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000021998   0.000006116  -0.000000004  -0.000000337  -0.000000009   0.000000399   0.000006621  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000002867   0.000010311   0.000000979  -0.000000010   0.000003196   0.000000068   0.000000006   0.000000030
                        -0.000000035  -0.000000147   0.000000060   0.000000001   0.000000325   0.000000016   0.000000000  -0.000000007

    3    1.2  1.5 -0.5  -0.000010306   0.000002866  -0.000000009  -0.000000938   0.000000069  -0.000003161   0.000000030  -0.000000006
                         0.000000353  -0.000000104  -0.000000004  -0.000000289   0.000000003  -0.000000576   0.000000002   0.000000001

    4    1.2  1.5 -1.5   0.000006108   0.000021972   0.000000315  -0.000000003  -0.000000384  -0.000000009   0.000000000   0.000006541
                        -0.000000296  -0.000001066   0.000000119  -0.000000001  -0.000000111  -0.000000003  -0.000000000  -0.000001027

    5    1.2  0.5  0.5   0.207263444   0.745485639   0.009599652  -0.000098570   0.012310120   0.000256986   0.000000004   0.000010961
                        -0.000331555  -0.000691559   0.002105543  -0.000017504   0.000208702   0.000043053   0.000000002  -0.000001160

    6    2.2  0.5  0.5  -0.056148862   0.015604926   0.006265909   0.653312528   0.007427605  -0.338402049  -0.000006005  -0.000000009
                        -0.021136026   0.005765823   0.003428860   0.228460767   0.000133879  -0.049680410  -0.000000151   0.000000007

    7    3.2  0.5  0.5  -0.003645199  -0.013064191   0.717572617  -0.007253367   0.289149695   0.006133131   0.000000010  -0.000004799
                        -0.001823654  -0.006651899   0.004836129   0.000958208   0.032511406   0.001421096   0.000000002   0.000000717

    8    4.2  0.5  0.5   0.004905752  -0.001295992  -0.000214969  -0.015723759   0.000528936  -0.106602253  -0.000000155  -0.000000003
                         0.391430969  -0.108965713   0.000679187   0.067977226  -0.014063590   0.647298227   0.000006092  -0.000000005

    9    5.2  0.5  0.5  -0.000301223  -0.001026614  -0.014071744   0.000153765   0.112786863   0.004035003  -0.000000002  -0.000001368
                         0.129147438   0.464098039   0.028047590  -0.000268361  -0.595532002  -0.012340028   0.000000002  -0.000012029

   10    6.2  0.5  0.5  -0.000168783   0.000046924  -0.000000052  -0.000005164   0.000000192  -0.000008872   0.577127527  -0.000289109
                        -0.000001846   0.000000496  -0.000000014  -0.000000907   0.000000001  -0.000001604   0.018249331   0.000060788

   11    7.2  0.5  0.5  -0.000006581   0.000001850   0.000000013   0.000000871  -0.000000003   0.000001720  -0.018245179   0.000049018
                         0.000097035  -0.000027055  -0.000000018  -0.000001332   0.000000273  -0.000013441   0.576996372   0.000287504

   12    8.2  0.5  0.5   0.000000242   0.000001026  -0.000000411  -0.000000004  -0.000002301  -0.000000114  -0.000012700  -0.125469591
                         0.000020063   0.000071767   0.000006741  -0.000000070   0.000022456   0.000000461   0.000291064  -0.563551421

   13    1.2  0.5 -0.5   0.744644077  -0.207036216   0.000098415   0.009725810  -0.000258831   0.011883570  -0.000011008   0.000000004
                        -0.035419143   0.009708277   0.000018356   0.001412529  -0.000030031   0.003219218   0.000000554  -0.000000003

   14    2.2  0.5 -0.5   0.015307323   0.055059165  -0.691911622   0.007072286   0.338883579   0.007172445   0.000000009  -0.000005909
                        -0.006514928  -0.023830959  -0.016428293  -0.001000730   0.046281852   0.001934751   0.000000005   0.000001080

   15    3.2  0.5 -0.5  -0.012726651   0.003552586   0.006450358   0.673242110  -0.006286506   0.286800312   0.000004853   0.000000009
                         0.007276895  -0.001998080   0.003452879   0.248352391  -0.000338600   0.049092961  -0.000000036  -0.000000003

   16    4.2  0.5 -0.5   0.003983619   0.014060169  -0.009240687   0.000038173  -0.077410671  -0.003398697   0.000000003  -0.000001099
                         0.108900583   0.391209128   0.069157426  -0.000711371   0.651434282   0.013656983  -0.000000006  -0.000005994

   17    5.2  0.5 -0.5  -0.023505426   0.006556523  -0.000049328  -0.003284800  -0.000448171  -0.057089021  -0.000000515  -0.000000003
                        -0.463503548   0.128981252  -0.000305333  -0.031207233  -0.012975233   0.603423637  -0.000012096  -0.000000001

   18    6.2  0.5 -0.5   0.000046845   0.000168495   0.000005152  -0.000000054   0.000008968   0.000000185   0.000295039   0.567309033
                        -0.000002768  -0.000010020   0.000000971  -0.000000005   0.000000923   0.000000053   0.000015201  -0.107562450

   19    7.2  0.5 -0.5   0.000003159   0.000011274  -0.000000346   0.000000006   0.000002082   0.000000073  -0.000003822  -0.107538001
                         0.000026933   0.000096602  -0.000001553   0.000000021  -0.000013390  -0.000000263   0.000291628  -0.567180111

   20    8.2  0.5 -0.5  -0.000002452   0.000000730   0.000000029   0.000001991  -0.000000019   0.000004028   0.036522616  -0.000057701
                        -0.000071733   0.000020051  -0.000000064  -0.000006453   0.000000475  -0.000022211  -0.576193475  -0.000285570


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.000000000   0.051063586  -0.000000000  -0.045577187
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.045533205  -0.000040487  -0.050593586  -0.000045361
                        -0.002004215  -0.000005085  -0.006910511  -0.000005697

    3    1.2  1.5 -0.5   0.000040509   0.045523750  -0.000045637   0.051003365
                        -0.000004903   0.002208575  -0.000002709   0.002474427

    4    1.2  1.5 -1.5   0.051063071  -0.000000000   0.044805948  -0.000000000
                         0.000229204   0.000000000   0.008349071   0.000000000

    5    1.2  0.5  0.5   0.114759820  -0.000029856   0.035238647  -0.000032721
                         0.003070546   0.000033031   0.012122615   0.000008015

    6    2.2  0.5  0.5   0.000059466   0.024577965  -0.000076335   0.118143881
                         0.000026333   0.000506037   0.000028454   0.002834581

    7    3.2  0.5  0.5   0.036806808  -0.000066073  -0.113586663  -0.000073350
                        -0.003637855   0.000026066  -0.017330607   0.000002117

    8    4.2  0.5  0.5  -0.000040323  -0.002759119   0.000020215  -0.000823586
                         0.000087994   0.114605890  -0.000045608   0.037791199

    9    5.2  0.5  0.5   0.005582036   0.000007699   0.016668121   0.000044893
                        -0.089998936   0.000033448  -0.078498473   0.000011963

   10    6.2  0.5  0.5   0.000236301   0.782443274  -0.000264328  -0.162605280
                        -0.000019419   0.020835023  -0.000025917  -0.009602226

   11    7.2  0.5  0.5   0.000012327   0.011901107  -0.000074665  -0.019616868
                        -0.000304976  -0.250193982   0.000333672   0.759086315

   12    8.2  0.5  0.5   0.023414426   0.000046922   0.080720165   0.000051719
                         0.531931761  -0.000727854  -0.590968700   0.000241745

   13    1.2  0.5 -0.5  -0.000029707  -0.114772446   0.000030699   0.036863037
                        -0.000033164   0.002555404   0.000013873  -0.005462279

   14    2.2  0.5 -0.5   0.024579989  -0.000059584  -0.116663951  -0.000069831
                        -0.000395711   0.000026065  -0.018855608  -0.000041956

   15    3.2  0.5 -0.5  -0.000065955  -0.036790109   0.000071721  -0.114839307
                        -0.000026362  -0.003803029   0.000015517  -0.003770063

   16    4.2  0.5 -0.5  -0.002244672   0.000039927  -0.006113143   0.000011518
                        -0.114617121   0.000088174   0.037302580   0.000048539

   17    5.2  0.5 -0.5   0.000007849  -0.005178011  -0.000046325   0.002006303
                        -0.000033413  -0.090023085   0.000003537   0.080223508

   18    6.2  0.5 -0.5   0.782528911  -0.000236211   0.161612725  -0.000264602
                        -0.017322739  -0.000020480   0.020347158  -0.000022942

   19    7.2  0.5 -0.5   0.010777966  -0.000010958  -0.119768542  -0.000012277
                         0.250244881  -0.000305029   0.749834883  -0.000341703

   20    8.2  0.5 -0.5   0.000043655  -0.025801818  -0.000095128  -0.028902533
                         0.000728057   0.531821305   0.000228180   0.595755313


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   3.786%  46.249%   0.112%  49.332%   0.045%   0.000%   0.000%   0.007%   0.000%   0.000%
    2    1.2  1.5  0.5  45.694%   3.750%  49.921%   0.114%   0.000%   0.007%   0.045%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   3.750%  45.694%   0.114%  49.921%   0.007%   0.000%   0.000%   0.045%   0.000%   0.000%
    4    1.2  1.5 -1.5  46.249%   3.786%  49.332%   0.112%   0.000%   0.045%   0.007%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.003%   0.000%   0.000%   0.000%   0.007%  38.565%   0.073%   0.000%   4.296%  55.575%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.933%   0.000%   0.001%  37.608%   0.360%   0.028%
    7    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.098%  38.449%   0.001%   0.002%   0.021%
    8    4.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%  23.492%   0.004%   0.000%  14.989%  15.324%   1.188%
    9    5.2  0.5  0.5   0.002%   0.000%   0.002%   0.000%   0.006%  33.245%   5.229%   0.000%   1.668%  21.539%
   10    6.2  0.5  0.5   0.024%   0.295%   0.000%   0.022%   2.339%   0.000%   0.000%   0.059%   0.000%   0.000%
   11    7.2  0.5  0.5   0.002%   0.022%   0.001%   0.317%   0.935%   0.000%   0.000%   1.464%   0.000%   0.000%
   12    8.2  0.5  0.5   0.157%   0.013%   0.171%   0.000%   0.000%   0.324%   2.075%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.003%   0.000%   0.000%  38.565%   0.007%   0.000%   0.073%  55.575%   4.296%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.933%  37.608%   0.001%   0.028%   0.360%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.098%   0.000%   0.001%  38.449%   0.021%   0.002%
   16    4.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.004%  23.492%  14.989%   0.000%   1.188%  15.324%
   17    5.2  0.5 -0.5   0.000%   0.002%   0.000%   0.002%  33.245%   0.006%   0.000%   5.229%  21.539%   1.668%
   18    6.2  0.5 -0.5   0.295%   0.024%   0.022%   0.000%   0.000%   2.339%   0.059%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.022%   0.002%   0.317%   0.001%   0.000%   0.935%   1.464%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.013%   0.157%   0.000%   0.171%   0.324%   0.000%   0.000%   2.075%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.261%   0.000%   0.208%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.208%   0.000%   0.261%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.208%   0.000%   0.261%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.261%   0.000%   0.208%   0.000%
    5    1.2  0.5  0.5   0.010%   0.000%   0.015%   0.000%   0.000%   0.000%   1.318%   0.000%   0.139%   0.000%
    6    2.2  0.5  0.5   0.005%  47.901%   0.006%  11.698%   0.000%   0.000%   0.000%   0.060%   0.000%   1.397%
    7    3.2  0.5  0.5  51.493%   0.005%   8.466%   0.004%   0.000%   0.000%   0.137%   0.000%   1.320%   0.000%
    8    4.2  0.5  0.5   0.000%   0.487%   0.020%  43.036%   0.000%   0.000%   0.000%   1.314%   0.000%   0.143%
    9    5.2  0.5  0.5   0.098%   0.000%  36.738%   0.017%   0.000%   0.000%   0.813%   0.000%   0.644%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.341%   0.000%   0.000%  61.265%   0.000%   2.653%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.326%   0.000%   0.000%   6.274%   0.000%  57.660%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%  28.350%   0.000%  35.576%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.010%   0.000%   0.015%   0.000%   0.000%   0.000%   1.318%   0.000%   0.139%
   14    2.2  0.5 -0.5  47.901%   0.005%  11.698%   0.006%   0.000%   0.000%   0.060%   0.000%   1.397%   0.000%
   15    3.2  0.5 -0.5   0.005%  51.493%   0.004%   8.466%   0.000%   0.000%   0.000%   0.137%   0.000%   1.320%
   16    4.2  0.5 -0.5   0.487%   0.000%  43.036%   0.020%   0.000%   0.000%   1.314%   0.000%   0.143%   0.000%
   17    5.2  0.5 -0.5   0.000%   0.098%   0.017%  36.738%   0.000%   0.000%   0.000%   0.813%   0.000%   0.644%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.341%  61.265%   0.000%   2.653%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.326%   6.274%   0.000%  57.660%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.000%  28.350%   0.000%  35.576%


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
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2864.60       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     50385.31  37047.08  12869.90    447.22      9.85      2.35      8.64
 REAL TIME  *     51094.25 SEC
 DISK USED  *         2.88 GB (local),       35.66 GB (total)
 SF USED    *        26.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -332.166174888569

              CI              CI           MULTI         RHF-SCF
   -332.10906824   -332.19334647   -331.13010736   -331.21002565
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
