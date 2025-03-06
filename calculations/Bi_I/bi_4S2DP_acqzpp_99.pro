
 Working directory              : /wrk/irikura/molpro.mqNRRkgqLP/
 Global scratch directory       : /wrk/irikura/molpro.mqNRRkgqLP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mqNRRkgqLP/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Bi SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis=aug-cc-pwCVQZ-PP
 
 {rhf;wf,spin=3}
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ; weight,99
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 05-Nov-24          TIME: 11:32:18  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          227
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

         1 0.110E-05 0.332E-03 0.332E-03 0.332E-03 0.332E-03 0.332E-03 0.504E-03 0.159E-02
         2 0.703E-06 0.703E-06 0.703E-06 0.370E-03 0.370E-03 0.370E-03 0.405E-02 0.405E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     160.432 MB (compressed) written to integral file ( 21.5%)

     Node minimum: 5.243 MB, node maximum: 16.253 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3731169.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3731169      RECORD LENGTH: 524288

 Memory used in sort:       4.29 MW

 SORT1 READ    92659037. AND WROTE      698658. INTEGRALS IN      2 RECORDS. CPU TIME:     0.38 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    686 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.09 SEC

 Node minimum:     3726009.  Node maximum:     3731169. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.69      1.52
 REAL TIME  *         2.44 SEC
 DISK USED  *        29.74 MB (local),      662.40 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.57981159    -213.57981159     0.00D+00     0.76D-01     0     0       0.03      0.06    start
   2     -213.58950488      -0.00969330     0.12D-02     0.33D-02     1     0       0.02      0.08    diag2
   3     -213.59032293      -0.00081804     0.84D-03     0.72D-03     2     0       0.02      0.10    diag2
   4     -213.59061040      -0.00028747     0.22D-03     0.63D-03     3     0       0.03      0.13    diag2
   5     -213.59063545      -0.00002505     0.64D-04     0.24D-03     4     0       0.02      0.15    diag2
   6     -213.59063559      -0.00000014     0.72D-05     0.20D-04     5     0       0.03      0.18    diag2
   7     -213.59063559      -0.00000000     0.84D-06     0.31D-05     6     0       0.02      0.20    diag2
   8     -212.17261459       1.41802101     0.52D-07     0.22D-01     0     0       0.03      0.23    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   5   5

 !RHF STATE 1.2 Energy               -212.172614585997
  RHF One-electron energy            -362.807786106075
  RHF Two-electron energy             150.635171520078
  RHF Kinetic energy                   65.460980772811
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.241207389213

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.67956     1  1  s    1.00099
    2.1     2.00000    -1.30797     1  1  d1-  0.99193
    3.1     2.00000    -1.30797     1  1  d0  -0.59157    1  1  d2- -0.40335    1  1  d1+  0.69709
    4.1     2.00000    -1.30797     1  1  d0  -0.56207    1  1  d1+ -0.43328    1  1  d2+  0.69100
    5.1     2.00000    -1.30797     1  1  d0   0.55648    1  1  d1+  0.38348    1  1  d2+  0.72052
    6.1     1.00000    -1.30797     1  1  d2-  0.89906    1  1  d1+  0.42147
    7.1     1.00000    -0.67775     1  2  s    0.99968
    1.2     2.00000    -4.25581     1  1  py   0.99905
    2.2     2.00000    -4.25581     1  1  px   0.99962
    3.2     2.00000    -4.25581     1  1  pz   0.99904
    4.2     2.00000    -0.31675     1  2  py   0.57683    1  2  pz   0.80558
    5.2     2.00000    -0.31675     1  2  px   0.99080
    6.2     1.00000    -0.31675     1  2  py   0.80558    1  2  pz  -0.57683


 HOMO      6.2    -0.316747 =      -8.6191eV
 LUMO      8.1     0.037856 =       1.0301eV
 LUMO-HOMO         0.354603 =       9.6492eV

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
 CPU TIMES  *         1.92      0.23      1.52
 REAL TIME  *         2.70 SEC
 DISK USED  *        31.97 MB (local),      693.61 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.185D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.600D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.629D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.704D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 5 2 3 1 1 6 4   5 2 3 1 4 5 2 3 614  15 911 7 8101213 1 4   6 3 2 51411 912 715
                                       1310 8 4 6 3 2 5 114  11 9151213 7 810 6 4   3 2 5 1 9 813111512  1410 7 4 6 2 3 5 1 4
                                        6 2 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.334D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.407D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.363D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.417D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.417D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.450D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.450D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 310 6 4 8 5 7 9 9   6 8 4 7 510 2 1 3 6   710 4 5 8 9 1 2 3 8
                                        5 6 9 4 71014161119  18201221131517 3 1 2   8 610 4 5 9 710 8 4   6 9 5 7 2 3 1 3 2 1
                                        3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.92523
 Weight factors for state symmetry  2:    0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    4473
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    0   -213.58584938    -213.59273953   -0.00689015    0.00190385 0.00001743 0.00000000  0.16E+01      2.30
   2    9   16    0   -213.59264497    -213.59267518   -0.00003021    0.00238760 0.00000420 0.00000000  0.96E-01      4.01
   3    5   10    0   -213.59267518    -213.59267518   -0.00000000    0.00000037 0.00000000 0.00000000  0.14E-04      5.15

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.66E-08)
                       Final energy:   -213.59267518
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.597585226689
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95530646
 One electron energy                          -372.83452516
 Two electron energy                           159.23693993
 Virial ratio                                    4.09762361
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.541719023680
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90752046
 One electron energy                          -372.66726734
 Two electron energy                           159.12554832
 Virial ratio                                    4.09896101
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.541719023676
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90752046
 One electron energy                          -372.66726734
 Two electron energy                           159.12554832
 Virial ratio                                    4.09896101
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.541719023655
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90752046
 One electron energy                          -372.66726734
 Two electron energy                           159.12554832
 Virial ratio                                    4.09896101
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.541719023634
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90752046
 One electron energy                          -372.66726735
 Two electron energy                           159.12554832
 Virial ratio                                    4.09896101
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.541719023631
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90752046
 One electron energy                          -372.66726735
 Two electron energy                           159.12554832
 Virial ratio                                    4.09896101
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.515570431288
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90011495
 One electron energy                          -372.60794031
 Two electron energy                           159.09236988
 Virial ratio                                    4.09891457
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.515570431247
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90011495
 One electron energy                          -372.60794031
 Two electron energy                           159.09236988
 Virial ratio                                    4.09891457
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.515570431206
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90011495
 One electron energy                          -372.60794031
 Two electron energy                           159.09236988
 Virial ratio                                    4.09891457
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.265724076969
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999850987
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999121799
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.734201737729
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999995809
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000007461
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     2.004459688094
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999929518
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000002413545
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.995688865260
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000004191
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999992539
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.729816234937
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000219495
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999998464656
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.270109397011
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 3 5   6 2 4 1 4 2 6 3 513  10141511 812 7 9 1 6   3 5 2 4 9 712 81514
                                       131011 4 2 3 5 6 1 9   7 8121415111310 4 2   3 5 6 1 9 7 8121514  111310 4 2 3 5 6 1 4
                                        2 3 6 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 3   2 1 9 7 5 810 6 4 3   2 1 4 6 810 9 7 5 4   6 810 9 7 5 3 2 1 4
                                        6 810 7 9 511192113  14161517122018 3 1 2   4 610 8 5 7 9 4 610   8 5 7 9 1 3 2 3 2 1
                                        2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.68109     1  1  s    1.00079
    2.1     2.00000    -1.31161     1  1  d1+  0.99998
    3.1     2.00000    -1.31161     1  1  d0   0.99998
    4.1     2.00000    -1.31161     1  1  d2-  0.99998
    5.1     2.00000    -1.31161     1  1  d2+  0.99998
    6.1     2.00000    -1.31161     1  1  d1-  0.99998
    7.1     1.99270    -0.68173     1  2  s    1.00713
    1.2     2.00000    -4.25942     1  1  px   0.99963
    2.2     2.00000    -4.25942     1  1  pz   0.99963
    3.2     2.00000    -4.25942     1  1  py   0.99963
    4.2     0.99975    -0.13622     1  2  py   0.98660
    5.2     0.99975    -0.13622     1  2  pz   0.98660
    6.2     0.99975    -0.13622     1  2  px   0.98660
    7.2     0.00269     0.50970     1  2  px  -2.07819    1  3  px  -0.44307    1  4  px  -0.33668    1  5  px   1.81354
                                    1  6  px   0.93648    1  9  px   0.27133
    8.2     0.00269     0.50970     1  2  pz  -2.07819    1  3  pz  -0.44307    1  4  pz  -0.33668    1  5  pz   1.81354
                                    1  6  pz   0.93648    1  9  pz   0.27133
    9.2     0.00269     0.50970     1  2  py  -2.07819    1  3  py  -0.44307    1  4  py  -0.33668    1  5  py   1.81354
                                    1  6  py   0.93648    1  9  py   0.27133
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99747039
 
 Energy:     -213.59758523
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aab000       0.78616587     -0.00000084      0.00044977     -0.00036150     -0.20971301      0.00000000      0.00000000
 2 aba000      -0.21146577      0.00000023     -0.00039307      0.00106374      0.78569561      0.00000000     -0.00000000
 2 0a2000      -0.00000075     -0.70464707      0.00000000     -0.00000000     -0.00000000      0.69969658      0.00000000
 2 2a0000       0.00000075      0.70464706     -0.00000000      0.00000000      0.00000000      0.69969658      0.00000000
 2 a02000       0.00033299     -0.00000000     -0.70464693     -0.00007689     -0.00026279     -0.00000000      0.69969658
 2 a20000      -0.00033299      0.00000000      0.70464693      0.00007689      0.00026279     -0.00000000      0.69969658
 2 20a000       0.00007495     -0.00000000     -0.00007651      0.70464644     -0.00093387     -0.00000000     -0.00004530
 2 02a000      -0.00007495      0.00000000      0.00007651     -0.70464644      0.00093387      0.00000000     -0.00004530
 2 baa000      -0.57470009      0.00000061     -0.00005670     -0.00070224     -0.57598260     -0.00000000     -0.00000000
 0 2a2000      -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.11499908      0.00000000
 0 22a000       0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000744
 0 a22000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.11499908
 
 Energy:     -213.54171902   -213.54171902   -213.54171902   -213.54171902   -213.54171902   -213.51557043   -213.51557043

 State:              8
 2 aab000      -0.00000000
 2 aba000      -0.00000000
 2 0a2000      -0.00000000
 2 2a0000      -0.00000000
 2 a02000       0.00004530
 2 a20000       0.00004530
 2 20a000       0.69969658
 2 02a000       0.69969658
 2 baa000       0.00000000
 0 2a2000      -0.00000000
 0 22a000      -0.11499908
 0 a22000      -0.00000744
 
 Energy:     -213.51557043
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.44       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.91      5.00      0.23      1.52
 REAL TIME  *         8.45 SEC
 DISK USED  *        53.90 MB (local),     1000.68 MB (total)
 SF USED    *        60.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5975852  -0.0
    -213.5417190   6.0
    -213.5417190   6.0
    -213.5417190   6.0
    -213.5417190   6.0
    -213.5417190   6.0
    -213.5155704   2.0
    -213.5155704   2.0
    -213.5155704   2.0
                                                  


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59758523

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3752D-06

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.38D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7754546
 Number of doubly external configurations:       1469750
 Total number of contracted configurations:      9257976
 Total number of uncontracted configurations:  367286991

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1796666 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59758523     0.00000000    -0.93861179  0.58D-01  0.10D+00     2.03
    2     1     1     1.09837770    -0.73760578  -214.33519100    -0.73760578    -0.02610252  0.34D-02  0.18D-02    34.33
    3     1     1     1.08745095    -0.76143385  -214.35901907    -0.02382807    -0.00034017  0.39D-04  0.33D-04    66.38
    4     1     1     1.08729226    -0.76177315  -214.35935838    -0.00033930    -0.00001148  0.21D-05  0.14D-05    98.36
    5     1     1     1.08741125    -0.76178593  -214.35937116    -0.00001278    -0.00000061  0.45D-07  0.11D-06   130.22
    6     1     1     1.08743283    -0.76178662  -214.35937184    -0.00000068    -0.00000003  0.32D-08  0.62D-08   162.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.6%  54.8%
 P   0.4%  35.7%   2.6%

 Initialization:   0.6%
 Other:            2.4%

 Total CPU:      162.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9564000


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95816424 (fixed)   0.95836832 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165379   -0.00520506   -0.00593533
 Singles      0.02221186   -0.10456461   -0.11153430
 Pairs        0.06536556   -0.65201689   -0.64431698
 Total        1.08923122   -0.76178657   -0.76178662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59758523
 Nuclear energy                         0.00000000
 Kinetic energy                        69.42033962
 One electron energy                 -372.43248681
 Two electron energy                  158.07311497
 Virial quotient                       -3.08784678
 Correlation energy                    -0.76178662
 !MRCI STATE 1.2 Energy              -214.359371842229

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.42734699 (Davidson, fixed reference)
 Cluster corrected energies          -214.42699364 (Davidson, relaxed reference)

 Cluster corrected energies          -214.42519770 (Pople, fixed reference)
 Cluster corrected energies          -214.42482997 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       73.59       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       170.37    163.45      5.00      0.23      1.52
 REAL TIME  *       174.75 SEC
 DISK USED  *       126.05 MB (local),        1.96 GB (total)
 SF USED    *       995.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.42699364  AU                              


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.54171902
     2      -213.54171902
     3      -213.54171902
     4      -213.54171902
     5      -213.54171902
     6      -213.51557043
     7      -213.51557043
     8      -213.51557043

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2949D-06

 Number of blocks in overlap matrix:   796   Smallest eigenvalue:  0.29D-06
 Number of N-2 electron functions:    1863
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9543892
 Number of doubly external configurations:      10907155
 Total number of contracted configurations:     20495133
 Total number of uncontracted configurations:  484809336

 Diagonal Coupling coefficients finished.               Storage:  27652829 words, CPU-Time:     53.49 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2177300 words, CPU-time:      0.74 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.54171902     0.00000000    -0.93223912  0.65D-01  0.96D-01    65.42
    1     2     2     1.00000000     0.00000000  -213.54171902     0.00000000    -0.93239923  0.65D-01  0.96D-01    65.42
    1     3     3     1.00000000     0.00000000  -213.54171902    -0.00000000    -0.93286429  0.65D-01  0.96D-01    65.42
    1     4     4     1.00000000     0.00000000  -213.54171902     0.00000000    -0.93236074  0.65D-01  0.96D-01    65.42
    1     5     5     1.00000000     0.00000000  -213.54171902     0.00000000    -0.93218442  0.65D-01  0.96D-01    65.42
    1     6     6     1.00000000     0.00000000  -213.51557043     0.00000000    -0.91930770  0.50D-01  0.98D-01    65.42
    1     7     7     1.00000000     0.00000000  -213.51557043     0.00000000    -0.91962190  0.50D-01  0.98D-01    65.42
    1     8     8     1.00000000     0.00000000  -213.51557043     0.00000000    -0.91931213  0.50D-01  0.98D-01    65.42
    2     1     1     1.10135618    -0.74622679  -214.28794581    -0.74622679    -0.02574774  0.37D-02  0.17D-02   679.11
    2     2     2     1.10141091    -0.74619931  -214.28791833    -0.74619931    -0.02577485  0.37D-02  0.17D-02   679.11
    2     3     3     1.10153580    -0.74607450  -214.28779352    -0.74607450    -0.02592467  0.38D-02  0.17D-02   679.11
    2     4     4     1.10135822    -0.74600721  -214.28772623    -0.74600721    -0.02596102  0.38D-02  0.17D-02   679.11
    2     5     5     1.10169585    -0.74572454  -214.28744357    -0.74572454    -0.02626974  0.39D-02  0.17D-02   679.11
    2     6     6     1.09529268    -0.74446561  -214.26003604    -0.74446561    -0.02422552  0.32D-02  0.17D-02   679.11
    2     7     7     1.09529795    -0.74445741  -214.26002785    -0.74445741    -0.02423517  0.32D-02  0.17D-02   679.11
    2     8     8     1.09532188    -0.74444379  -214.26001422    -0.74444379    -0.02425583  0.32D-02  0.17D-02   679.11
    3     1     1     1.09148225    -0.76997036  -214.31168939    -0.02374358    -0.00060433  0.60D-04  0.83D-04  1291.28
    3     2     2     1.09148836    -0.76996890  -214.31168792    -0.02376959    -0.00060584  0.60D-04  0.83D-04  1291.28
    3     3     3     1.09148542    -0.76996451  -214.31168354    -0.02389002    -0.00060846  0.60D-04  0.84D-04  1291.28
    3     4     4     1.09144574    -0.76995769  -214.31167671    -0.02395048    -0.00061610  0.61D-04  0.84D-04  1291.28
    3     5     5     1.09145973    -0.76994364  -214.31166266    -0.02421910    -0.00062764  0.63D-04  0.86D-04  1291.28
    3     6     6     1.08876671    -0.76704431  -214.28261474    -0.02257870    -0.00065193  0.43D-04  0.11D-03  1291.28
    3     7     7     1.08876581    -0.76704372  -214.28261415    -0.02258631    -0.00065233  0.43D-04  0.11D-03  1291.28
    3     8     8     1.08876378    -0.76704045  -214.28261088    -0.02259666    -0.00065278  0.43D-04  0.11D-03  1291.28
    4     1     1     1.09163374    -0.77065876  -214.31237778    -0.00068839    -0.00006305  0.50D-05  0.11D-04  1903.87
    4     2     2     1.09163872    -0.77065826  -214.31237728    -0.00068936    -0.00006315  0.50D-05  0.11D-04  1903.87
    4     3     3     1.09163880    -0.77065823  -214.31237725    -0.00069372    -0.00006321  0.50D-05  0.11D-04  1903.87
    4     4     4     1.09162810    -0.77065717  -214.31237620    -0.00069948    -0.00006398  0.50D-05  0.11D-04  1903.87
    4     5     5     1.09163542    -0.77065705  -214.31237608    -0.00071342    -0.00006376  0.50D-05  0.11D-04  1903.87
    4     6     6     1.09001902    -0.76783528  -214.28340571    -0.00079097    -0.00008319  0.56D-05  0.14D-04  1903.87
    4     7     7     1.09001860    -0.76783521  -214.28340564    -0.00079149    -0.00008320  0.55D-05  0.14D-04  1903.87
    4     8     8     1.09001371    -0.76783365  -214.28340408    -0.00079320    -0.00008414  0.56D-05  0.14D-04  1903.87
    5     1     1     1.09212880    -0.77074439  -214.31246341    -0.00008563    -0.00000681  0.48D-06  0.10D-05  2516.37
    5     2     2     1.09212782    -0.77074438  -214.31246340    -0.00008612    -0.00000688  0.49D-06  0.10D-05  2516.37
    5     3     3     1.09212727    -0.77074437  -214.31246340    -0.00008614    -0.00000688  0.49D-06  0.10D-05  2516.37
    5     4     4     1.09212618    -0.77074426  -214.31246328    -0.00008709    -0.00000697  0.50D-06  0.10D-05  2516.37
    5     5     5     1.09212603    -0.77074417  -214.31246319    -0.00008712    -0.00000695  0.49D-06  0.11D-05  2516.37
    5     6     6     1.09094039    -0.76794757  -214.28351800    -0.00011229    -0.00000818  0.59D-06  0.12D-05  2516.37
    5     7     7     1.09094041    -0.76794756  -214.28351800    -0.00011236    -0.00000818  0.59D-06  0.12D-05  2516.37
    5     8     8     1.09094096    -0.76794744  -214.28351787    -0.00011379    -0.00000828  0.60D-06  0.12D-05  2516.37
    6     1     1     1.09214990    -0.77075284  -214.31247187    -0.00000845    -0.00000080  0.76D-07  0.11D-06  3127.74
    6     2     2     1.09214921    -0.77075284  -214.31247187    -0.00000847    -0.00000080  0.76D-07  0.11D-06  3127.74
    6     3     3     1.09214920    -0.77075284  -214.31247187    -0.00000847    -0.00000080  0.76D-07  0.11D-06  3127.74
    6     4     4     1.09214875    -0.77075283  -214.31247185    -0.00000857    -0.00000080  0.77D-07  0.11D-06  3127.74
    6     5     5     1.09214904    -0.77075282  -214.31247185    -0.00000865    -0.00000082  0.79D-07  0.11D-06  3127.74
    6     6     6     1.09092448    -0.76795742  -214.28352785    -0.00000985    -0.00000093  0.85D-07  0.13D-06  3127.74
    6     7     7     1.09092442    -0.76795742  -214.28352785    -0.00000985    -0.00000093  0.86D-07  0.13D-06  3127.74
    6     8     8     1.09092398    -0.76795740  -214.28352783    -0.00000996    -0.00000095  0.87D-07  0.13D-06  3127.74
    7     1     1     1.09218381    -0.77075379  -214.31247281    -0.00000094    -0.00000011  0.10D-07  0.16D-07  3739.14
    7     2     2     1.09218383    -0.77075378  -214.31247281    -0.00000094    -0.00000011  0.10D-07  0.16D-07  3739.14
    7     3     3     1.09218394    -0.77075378  -214.31247281    -0.00000094    -0.00000011  0.10D-07  0.16D-07  3739.14
    7     4     4     1.09218368    -0.77075378  -214.31247281    -0.00000095    -0.00000011  0.10D-07  0.16D-07  3739.14
    7     5     5     1.09218380    -0.77075378  -214.31247280    -0.00000096    -0.00000011  0.10D-07  0.16D-07  3739.14
    7     6     6     1.09095635    -0.76795854  -214.28352897    -0.00000112    -0.00000013  0.13D-07  0.20D-07  3739.14
    7     7     7     1.09095629    -0.76795854  -214.28352897    -0.00000112    -0.00000014  0.13D-07  0.20D-07  3739.14
    7     8     8     1.09095614    -0.76795854  -214.28352897    -0.00000114    -0.00000014  0.14D-07  0.20D-07  3739.14
    8     1     1     1.09218736    -0.77075391  -214.31247294    -0.00000013    -0.00000002  0.14D-08  0.27D-08  4349.28
    8     2     2     1.09218742    -0.77075391  -214.31247294    -0.00000013    -0.00000002  0.14D-08  0.27D-08  4349.28
    8     3     3     1.09218743    -0.77075391  -214.31247294    -0.00000013    -0.00000002  0.14D-08  0.27D-08  4349.28
    8     4     4     1.09218745    -0.77075391  -214.31247293    -0.00000013    -0.00000002  0.14D-08  0.27D-08  4349.28
    8     5     5     1.09218742    -0.77075391  -214.31247293    -0.00000013    -0.00000002  0.14D-08  0.27D-08  4349.28
    8     6     6     1.09096672    -0.76795871  -214.28352914    -0.00000017    -0.00000002  0.16D-08  0.36D-08  4349.28
    8     7     7     1.09096680    -0.76795871  -214.28352914    -0.00000016    -0.00000002  0.16D-08  0.35D-08  4349.28
    8     8     8     1.09096680    -0.76795870  -214.28352914    -0.00000017    -0.00000002  0.16D-08  0.35D-08  4349.28


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.6%  23.9%
 P   0.3%  42.6%  24.0%

 Initialization:   1.3%
 Other:            6.6%

 Total CPU:     4349.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.8462436  -0.3625707   0.2148004  -0.0992592   0.0751325  -0.0000000   0.0000000   0.0000000
 2222222222/20000          -0.0907423  -0.1422909   0.2572225  -0.1390170  -0.5836446   0.6351905  -0.0358926   0.2125237
 2222222222/02000           0.0907423   0.1422909  -0.2572225   0.1390170   0.5836446   0.6351904  -0.0358926   0.2125237
 222222222220/000          -0.1201817  -0.2602393  -0.2532963  -0.5460506   0.1005613  -0.0601976   0.6055321   0.2821853
 222222222202/000           0.1201817   0.2602393   0.2532963   0.5460506  -0.1005613  -0.0601976   0.6055321   0.2821853
 2222222222/\/000          -0.0036968   0.5225470   0.5900928  -0.4765100   0.2467424   0.0000000  -0.0000000  -0.0000000
 22222222222/0000           0.2717763   0.4054423  -0.3565309  -0.1365904  -0.2656954  -0.2069561  -0.2862936   0.5701987
 22222222220/2000          -0.2717763  -0.4054422   0.3565308   0.1365904   0.2656954  -0.2069561  -0.2862936   0.5701987
 2222220222/22000           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0918309   0.0051891  -0.0307250
 222222022222/000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0087029  -0.0875431  -0.0407962
 22222202222/2000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0299201   0.0413901  -0.0824350

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.818813   -0.385301    0.128646    0.170383   -0.221892    0.000000    0.000000    0.000000
 2          -0.216422   -0.574801    0.201728    0.368945    0.599732    0.000000   -0.000000    0.000000
 3           0.360310    0.505458   -0.364668    0.359101    0.516217   -0.000000    0.000000    0.000000
 4          -0.219082    0.193646    0.197086    0.774143   -0.435994   -0.000000    0.000000   -0.000000
 5           0.136435    0.376680    0.827440   -0.142567    0.219640   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.295100    0.905721   -0.085836
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.408227   -0.051179    0.863431
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.813049    0.303039    0.402369

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955891   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.955891    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.955891   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.955891   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.955891   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956442   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956442    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956442


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.81881258 (fixed)   0.95606349 (relaxed)   0.95589061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00204325   -0.00629842   -0.60481173
 Singles      0.02547783   -0.11041131   -0.11882799
 Pairs        0.06689789   -0.00000000   -0.04711419
 Total        1.09441897   -0.11670974   -0.77075391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54171902
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39720173
 One electron energy                 -372.28880240
 Two electron energy                  157.97632946
 Virial quotient                       -3.08820050
 Correlation energy                    -0.77075391
 !MRCI STATE 1.2 Energy              -214.312472937219

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38524673 (Davidson, fixed reference)
 Cluster corrected energies          -214.38494169 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38524673 (Davidson, rotated reference)

 Cluster corrected energies          -214.38410770 (Pople, fixed reference)
 Cluster corrected energies          -214.38378297 (Pople, relaxed reference)
 Cluster corrected energies          -214.38410770 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.59973204 (fixed)   0.95606347 (relaxed)   0.95589058 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00204324   -0.00629842   -0.60481171
 Singles      0.02547784   -0.11041130   -0.11882799
 Pairs        0.06689794   -0.00000002   -0.04711422
 Total        1.09441902   -0.11670974   -0.77075391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54171902
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39720502
 One electron energy                 -372.28880549
 Two electron energy                  157.97633255
 Virial quotient                       -3.08820035
 Correlation energy                    -0.77075391
 !MRCI STATE 2.2 Energy              -214.312472935929

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38524677 (Davidson, fixed reference)
 Cluster corrected energies          -214.38494173 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38524677 (Davidson, rotated reference)

 Cluster corrected energies          -214.38410774 (Pople, fixed reference)
 Cluster corrected energies          -214.38378301 (Pople, relaxed reference)
 Cluster corrected energies          -214.38410774 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.51621662 (fixed)   0.95606346 (relaxed)   0.95589058 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00204324   -0.00629842   -0.60481169
 Singles      0.02547785   -0.11041131   -0.11882799
 Pairs        0.06689795   -0.00000002   -0.04711424
 Total        1.09441904   -0.11670975   -0.77075391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54171902
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39720314
 One electron energy                 -372.28880323
 Two electron energy                  157.97633029
 Virial quotient                       -3.08820044
 Correlation energy                    -0.77075391
 !MRCI STATE 3.2 Energy              -214.312472935069

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38524678 (Davidson, fixed reference)
 Cluster corrected energies          -214.38494174 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38524678 (Davidson, rotated reference)

 Cluster corrected energies          -214.38410776 (Pople, fixed reference)
 Cluster corrected energies          -214.38378303 (Pople, relaxed reference)
 Cluster corrected energies          -214.38410776 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.77414285 (fixed)   0.95606345 (relaxed)   0.95589057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00204324   -0.00629842   -0.60481169
 Singles      0.02547786   -0.11041131   -0.11882799
 Pairs        0.06689796   -0.00000001   -0.04711423
 Total        1.09441905   -0.11670973   -0.77075391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54171902
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39720679
 One electron energy                 -372.28880703
 Two electron energy                  157.97633409
 Virial quotient                       -3.08820027
 Correlation energy                    -0.77075391
 !MRCI STATE 4.2 Energy              -214.312472934643

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38524679 (Davidson, fixed reference)
 Cluster corrected energies          -214.38494175 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38524679 (Davidson, rotated reference)

 Cluster corrected energies          -214.38410777 (Pople, fixed reference)
 Cluster corrected energies          -214.38378304 (Pople, relaxed reference)
 Cluster corrected energies          -214.38410777 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.82744034 (fixed)   0.95606346 (relaxed)   0.95589058 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00204324   -0.00629842   -0.60481172
 Singles      0.02547783   -0.11041129   -0.11882800
 Pairs        0.06689795    0.00000000   -0.04711419
 Total        1.09441902   -0.11670971   -0.77075391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54171902
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39721071
 One electron energy                 -372.28880987
 Two electron energy                  157.97633694
 Virial quotient                       -3.08820010
 Correlation energy                    -0.77075391
 !MRCI STATE 5.2 Energy              -214.312472932384

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38524676 (Davidson, fixed reference)
 Cluster corrected energies          -214.38494173 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38524676 (Davidson, rotated reference)

 Cluster corrected energies          -214.38410774 (Pople, fixed reference)
 Cluster corrected energies          -214.38378301 (Pople, relaxed reference)
 Cluster corrected energies          -214.38410774 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.90572100 (fixed)   0.95663961 (relaxed)   0.95644246 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200710   -0.00607448   -0.66629660
 Singles      0.02077419   -0.10049058   -0.10652018
 Pairs        0.07037512    0.05935689    0.00485807
 Total        1.09315640   -0.04720817   -0.76795871
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51557043
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39338619
 One electron energy                 -372.21195688
 Two electron energy                  157.92842774
 Virial quotient                       -3.08795320
 Correlation energy                    -0.76795871
 !MRCI STATE 6.2 Energy              -214.283529138819

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35506941 (Davidson, fixed reference)
 Cluster corrected energies          -214.35472343 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35506941 (Davidson, rotated reference)

 Cluster corrected energies          -214.35387269 (Pople, fixed reference)
 Cluster corrected energies          -214.35350519 (Pople, relaxed reference)
 Cluster corrected energies          -214.35387269 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.86343105 (fixed)   0.95663958 (relaxed)   0.95644243 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200710   -0.00607449   -0.06580445
 Singles      0.02077417   -0.10049052   -0.10652015
 Pairs        0.07037521   -0.59707500   -0.59563411
 Total        1.09315648   -0.70364000   -0.76795871
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51557043
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39338551
 One electron energy                 -372.21195660
 Two electron energy                  157.92842747
 Virial quotient                       -3.08795323
 Correlation energy                    -0.76795871
 !MRCI STATE 7.2 Energy              -214.283529136545

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35506947 (Davidson, fixed reference)
 Cluster corrected energies          -214.35472349 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35506947 (Davidson, rotated reference)

 Cluster corrected energies          -214.35387275 (Pople, fixed reference)
 Cluster corrected energies          -214.35350525 (Pople, relaxed reference)
 Cluster corrected energies          -214.35387275 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.81304900 (fixed)   0.95663958 (relaxed)   0.95644243 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200710   -0.00607449   -0.35746513
 Singles      0.02077418   -0.10049054   -0.10652016
 Pairs        0.07037520   -0.27824421   -0.30397341
 Total        1.09315648   -0.38480923   -0.76795870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51557043
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39338599
 One electron energy                 -372.21195715
 Two electron energy                  157.92842801
 Virial quotient                       -3.08795321
 Correlation energy                    -0.76795870
 !MRCI STATE 8.2 Energy              -214.283529135779

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35506947 (Davidson, fixed reference)
 Cluster corrected energies          -214.35472349 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35506947 (Davidson, rotated reference)

 Cluster corrected energies          -214.35387275 (Pople, fixed reference)
 Cluster corrected energies          -214.35350525 (Pople, relaxed reference)
 Cluster corrected energies          -214.35387275 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1339.13       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4929.91   4759.54    163.45      5.00      0.23      1.52
 REAL TIME  *      5037.36 SEC
 DISK USED  *         1.36 GB (local),       19.27 GB (total)
 SF USED    *        12.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.38524673  AU                              
 SETTING HLSDIAG(3)     =      -214.38524677  AU                              
 SETTING HLSDIAG(4)     =      -214.38524678  AU                              
 SETTING HLSDIAG(5)     =      -214.38524679  AU                              
 SETTING HLSDIAG(6)     =      -214.38524676  AU                              
 SETTING HLSDIAG(7)     =      -214.35506941  AU                              
 SETTING HLSDIAG(8)     =      -214.35506947  AU                              
 SETTING HLSDIAG(9)     =      -214.35506947  AU                              


         HLSDIAG
    -214.4269936
    -214.3852467
    -214.3852468
    -214.3852468
    -214.3852468
    -214.3852468
    -214.3550694
    -214.3550695
    -214.3550695
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.359372
 Replaced energies:   -214.426994

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.312473   -214.312473   -214.312473   -214.312473   -214.312473   -214.283529   -214.283529   -214.283529
 Replaced energies:   -214.385247   -214.385247   -214.385247   -214.385247   -214.385247   -214.355069   -214.355069   -214.355069



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.42699364

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    5844.05
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -553.85

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    2198.66

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    3374.06
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     319.76

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9162.39       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      35.04     -49.16      -4.00     -21.68      11.29

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9162.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -35.04       0.00     -28.51      12.51       6.31   -2559.12

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9162.38       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      49.16      28.51       0.00      -6.53       2.93   -2372.33

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9162.38       0.00       0.00
                           -0.00       0.00       0.00      -0.00       4.00     -12.51       6.53      -0.00      39.73   -2688.05

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9162.38       0.00
                            0.00       0.00      -0.00      -0.00      21.68      -6.31      -2.93     -39.73      -0.00     671.69

   10   6.2  0.5  0.5    5844.05       0.00    3374.06       0.00       0.00       0.00       0.00       0.00       0.00   15785.54
                          553.85   -2198.66    -319.76      -0.00     -11.29    2559.12    2372.33    2688.05    -671.69      -0.00

   11   7.2  0.5  0.5    -330.23       0.00    -190.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -5571.17   -3041.52    3216.52      -0.00    -475.50    2182.23    -683.77    -196.74    3862.30     -22.59

   12   8.2  0.5  0.5    1955.32       0.00    1128.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2596.24    6057.66    1498.94      -0.00    2421.29   -1936.29   -2004.62    3145.52     594.87     -11.34

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      16.16     -29.54      -3.23      49.31    1712.46
                           -0.00      -0.00      -0.00       0.00       0.00       7.15      11.26     -10.38     -11.44   -1895.72

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00     -16.16      -0.00       2.89     -32.43     -39.78     605.40
                           -0.00      -0.00      -0.00       0.00      -7.15       0.00       6.76     -52.99      -8.85   -2039.47

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      29.54      -2.89       0.00      15.71     -17.35    2810.74
                           -0.00      -0.00       0.00       0.00     -11.26      -6.76      -0.00     -43.84      36.32    1577.86

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       3.23      32.43     -15.71      -0.00      -1.75   -3341.96
                           -0.00      -0.00       0.00       0.00      10.38      52.99      43.84      -0.00      13.40    1167.92

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00     -49.31      39.78      17.35       1.75      -0.00    1620.92
                           -0.00       0.00       0.00      -0.00      11.44       8.85     -36.32     -13.40       0.00    2772.74

   18   6.2  0.5 -0.5       0.00    3374.06       0.00    5844.05   -1712.46    -605.40   -2810.74    3341.96   -1620.92       0.00
                           -0.00     319.76   -2198.66    -553.85    1895.72    2039.47   -1577.86   -1167.92   -2772.74       0.00

   19   7.2  0.5 -0.5       0.00    -190.66       0.00    -330.23   -1143.15   -1581.55    2973.22    2187.17    1352.70       8.42
                           -0.00   -3216.52   -3041.52    5571.17   -4404.84    1202.46    -191.69     137.52   -1888.54     -11.18

   20   8.2  0.5 -0.5       0.00    1128.90       0.00    1955.32   -2115.33   -3005.57   -1465.94   -1868.06     860.51       1.42
                           -0.00   -1498.94    6057.66    2596.24    -829.09    2433.01   -2637.59     709.12    2512.34      23.99


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -330.23    1955.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         5571.17    2596.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    3374.06    -190.66    1128.90
                         3041.52   -6057.66       0.00       0.00       0.00       0.00      -0.00    -319.76    3216.52    1498.94

    3   1.2  1.5 -0.5    -190.66    1128.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3216.52   -1498.94       0.00       0.00      -0.00      -0.00      -0.00    2198.66    3041.52   -6057.66

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    5844.05    -330.23    1955.32
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     553.85   -5571.17   -2596.24

    5   1.2  0.5  0.5       0.00       0.00       0.00     -16.16      29.54       3.23     -49.31   -1712.46   -1143.15   -2115.33
                          475.50   -2421.29      -0.00       7.15      11.26     -10.38     -11.44   -1895.72    4404.84     829.09

    6   2.2  0.5  0.5       0.00       0.00      16.16      -0.00      -2.89      32.43      39.78    -605.40   -1581.55   -3005.57
                        -2182.23    1936.29      -7.15      -0.00       6.76     -52.99      -8.85   -2039.47   -1202.46   -2433.01

    7   3.2  0.5  0.5       0.00       0.00     -29.54       2.89       0.00     -15.71      17.35   -2810.74    2973.22   -1465.94
                          683.77    2004.62     -11.26      -6.76       0.00     -43.84      36.32    1577.86     191.69    2637.59

    8   4.2  0.5  0.5       0.00       0.00      -3.23     -32.43      15.71      -0.00       1.75    3341.96    2187.17   -1868.06
                          196.74   -3145.52      10.38      52.99      43.84       0.00      13.40    1167.92    -137.52    -709.12

    9   5.2  0.5  0.5       0.00       0.00      49.31     -39.78     -17.35      -1.75      -0.00   -1620.92    1352.70     860.51
                        -3862.30    -594.87      11.44       8.85     -36.32     -13.40      -0.00    2772.74    1888.54   -2512.34

   10   6.2  0.5  0.5       0.00       0.00    1712.46     605.40    2810.74   -3341.96    1620.92       0.00       8.42       1.42
                           22.59      11.34    1895.72    2039.47   -1577.86   -1167.92   -2772.74      -0.00      11.18     -23.99

   11   7.2  0.5  0.5   15785.53       0.00    1143.15    1581.55   -2973.22   -2187.17   -1352.70      -8.42       0.00      25.16
                           -0.00      -8.20   -4404.84    1202.46    -191.69     137.52   -1888.54     -11.18       0.00      -2.38

   12   8.2  0.5  0.5       0.00   15785.53    2115.33    3005.57    1465.94    1868.06    -860.51      -1.42     -25.16      -0.00
                            8.20      -0.00    -829.09    2433.01   -2637.59     709.12    2512.34      23.99       2.38      -0.00

   13   1.2  0.5 -0.5    1143.15    2115.33    9162.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4404.84     829.09       0.00     -35.04      49.16       4.00      21.68     -11.29    -475.50    2421.29

   14   2.2  0.5 -0.5    1581.55    3005.57       0.00    9162.38       0.00       0.00       0.00       0.00       0.00       0.00
                        -1202.46   -2433.01      35.04      -0.00      28.51     -12.51      -6.31    2559.12    2182.23   -1936.29

   15   3.2  0.5 -0.5   -2973.22    1465.94       0.00       0.00    9162.38       0.00       0.00       0.00       0.00       0.00
                          191.69    2637.59     -49.16     -28.51      -0.00       6.53      -2.93    2372.33    -683.77   -2004.62

   16   4.2  0.5 -0.5   -2187.17    1868.06       0.00       0.00       0.00    9162.38       0.00       0.00       0.00       0.00
                         -137.52    -709.12      -4.00      12.51      -6.53       0.00     -39.73    2688.05    -196.74    3145.52

   17   5.2  0.5 -0.5   -1352.70    -860.51       0.00       0.00       0.00       0.00    9162.38       0.00       0.00       0.00
                         1888.54   -2512.34     -21.68       6.31       2.93      39.73       0.00    -671.69    3862.30     594.87

   18   6.2  0.5 -0.5      -8.42      -1.42       0.00       0.00       0.00       0.00       0.00   15785.54       0.00       0.00
                           11.18     -23.99      11.29   -2559.12   -2372.33   -2688.05     671.69       0.00     -22.59     -11.34

   19   7.2  0.5 -0.5       0.00     -25.16       0.00       0.00       0.00       0.00       0.00       0.00   15785.53       0.00
                           -0.00      -2.38     475.50   -2182.23     683.77     196.74   -3862.30      22.59       0.00       8.20

   20   8.2  0.5 -0.5      25.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15785.53
                            2.38       0.00   -2421.29    1936.29    2004.62   -3145.52    -594.87      11.34      -8.20       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.45110268    -0.02410904    -5291.32      0.00000000        0.00      0.0000
     2  -214.45110268    -0.02410904    -5291.32      0.00000000        0.00      0.0000
     3  -214.45110268    -0.02410903    -5291.32      0.00000001        0.00      0.0000
     4  -214.45110268    -0.02410903    -5291.32      0.00000001        0.00      0.0000
     5  -214.40317637     0.02381728     5227.29      0.04792632    10518.61      1.3041
     6  -214.40317637     0.02381728     5227.29      0.04792632    10518.61      1.3041
     7  -214.40317635     0.02381729     5227.29      0.04792633    10518.61      1.3041
     8  -214.40317635     0.02381729     5227.29      0.04792633    10518.61      1.3041
     9  -214.38491150     0.04208214     9235.96      0.06619118    14527.29      1.8012
    10  -214.38491150     0.04208214     9235.96      0.06619118    14527.29      1.8012
    11  -214.38491148     0.04208216     9235.97      0.06619120    14527.29      1.8012
    12  -214.38491148     0.04208216     9235.97      0.06619120    14527.29      1.8012
    13  -214.38491146     0.04208218     9235.97      0.06619122    14527.29      1.8012
    14  -214.38491146     0.04208218     9235.97      0.06619122    14527.29      1.8012
    15  -214.35531157     0.07168207    15732.40      0.09579111    21023.72      2.6066
    16  -214.35531157     0.07168207    15732.40      0.09579111    21023.72      2.6066
    17  -214.31341269     0.11358095    24928.14      0.13768999    30219.46      3.7467
    18  -214.31341269     0.11358095    24928.14      0.13768999    30219.46      3.7467
    19  -214.31341267     0.11358098    24928.14      0.13769002    30219.47      3.7467
    20  -214.31341267     0.11358098    24928.14      0.13769002    30219.47      3.7467


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.085552423  -0.379965539   0.702907902   0.061630238   0.244220079  -0.172366251  -0.422068700  -0.038081183
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.334397562  -0.000972466  -0.029040138  -0.138981885  -0.241219816  -0.346280813   0.013449831  -0.128681738
                         0.238477700   0.573745077   0.348096180  -0.101797799   0.037738905  -0.008401880   0.049172658  -0.264944856

    3    1.2  1.5 -0.5   0.556529848  -0.313075130  -0.111151040   0.110070354   0.322560924  -0.239593723   0.280442889   0.044840452
                         0.139495108   0.265852037   0.131621436   0.331509878  -0.126235662   0.046968843  -0.090036396  -0.024252468

    4    1.2  1.5 -1.5  -0.093005766   0.020941026  -0.059902521   0.683202857  -0.161988567  -0.229516277  -0.026311910   0.291625219
                         0.368407031  -0.082949928   0.014490490  -0.165267578   0.058905254   0.083460919  -0.027529256   0.305117551

    5    1.2  0.5  0.5   0.042597514  -0.005194055  -0.000303096  -0.155414343  -0.040566442  -0.044398077  -0.060502646   0.149682072
                        -0.052537244   0.111406747   0.036324479  -0.046687537   0.047858163  -0.080238337  -0.036457583   0.462698156

    6    2.2  0.5  0.5   0.156296127   0.006204961  -0.006761078   0.040698167  -0.172724877  -0.250424069  -0.037641296  -0.280996640
                        -0.059326904  -0.045100447  -0.070539698  -0.089260764   0.099521286  -0.262446464   0.045785376  -0.005391140

    7    3.2  0.5  0.5  -0.042254132   0.039637974   0.065156505  -0.030213204  -0.050160672  -0.271827773   0.175176561   0.275871756
                        -0.143457173  -0.027416489  -0.085404935   0.086750798   0.233604829   0.063250193   0.002965782  -0.109779114

    8    4.2  0.5  0.5  -0.007222437   0.050683617  -0.009008812   0.120276504   0.208841966   0.212617889  -0.031271781   0.016247891
                        -0.035022912   0.161371654  -0.015169140   0.000128807   0.336218576  -0.218497649   0.036750401  -0.040404599

    9    5.2  0.5  0.5   0.097333609  -0.019890783  -0.103070525  -0.008181067  -0.199899639   0.033661262  -0.406184554   0.097993908
                         0.004346184   0.012900471   0.012054093   0.154193158   0.113860776   0.110726583   0.074569897  -0.085809509

   10    6.2  0.5  0.5  -0.135233300   0.134098462  -0.315395563  -0.042634654   0.175558479  -0.124843076  -0.098892802  -0.045398446
                        -0.068115766  -0.054795976  -0.064798242  -0.098854572   0.009370913   0.061830676  -0.045073493   0.011369187

   11    7.2  0.5  0.5  -0.013809437  -0.074684223  -0.029485282   0.098453128   0.025987153  -0.005080354   0.036033864  -0.049671744
                        -0.226267582  -0.073781775   0.292477447  -0.025716799   0.029829940   0.084677366   0.221644341   0.051634372

   12    8.2  0.5  0.5   0.082855075   0.345280974   0.073427520  -0.025321388   0.055057273  -0.043029777  -0.046089269   0.111000288
                         0.056398461  -0.056367578   0.140243374   0.032141053  -0.120390558  -0.134251056   0.102664186  -0.043976291

   13    1.2  0.5 -0.5  -0.109289137  -0.061365839   0.140080353  -0.008835204  -0.014303968   0.054479325   0.437910688   0.068159392
                        -0.022233445   0.028441939  -0.081919709  -0.035234909   0.090580222   0.031113391  -0.211491218   0.018547854

   14    2.2  0.5 -0.5   0.045247310  -0.095779446  -0.060544224   0.010013742  -0.145657053   0.196336473  -0.198049839  -0.007090720
                         0.005023219   0.137019920  -0.077189518   0.070151880   0.332226405   0.034501578  -0.199410223   0.058846321

   15    3.2  0.5 -0.5   0.036284836  -0.128750500   0.049763051   0.083410326  -0.277077210   0.126973853   0.111251145  -0.123180929
                        -0.031721342  -0.076083381   0.077215138   0.067691141   0.033453625   0.202397998   0.275281424  -0.124587648

   16    4.2  0.5 -0.5  -0.144056704  -0.032189653  -0.116874435  -0.005189698   0.274487182  -0.081367262  -0.017982516  -0.004960216
                        -0.088641445  -0.015575436   0.028404587   0.016862044   0.132681484   0.387346442   0.039663014   0.047999089

   17    5.2  0.5 -0.5  -0.017376790  -0.019610783   0.044205591  -0.103015242  -0.006205612   0.226775565   0.005675634   0.226742885
                         0.016128005   0.095436566   0.147947036   0.012517750  -0.115563607   0.038690896   0.130130185   0.345158261

   18    6.2  0.5 -0.5   0.085952934  -0.032942069   0.018196780  -0.291318536  -0.138456934  -0.161786139  -0.023148822   0.100913308
                        -0.116606561  -0.147792500  -0.106107573   0.137137462  -0.015443565   0.068802898  -0.040674431   0.040347371

   19    7.2  0.5 -0.5   0.053256571  -0.216004354  -0.101739661  -0.097425947  -0.033712522  -0.014228316   0.003006666  -0.185126169
                         0.090472214  -0.068773822  -0.001847581  -0.277345674  -0.077842997   0.036914936  -0.071584569   0.127094274

   20    8.2  0.5 -0.5   0.139168758   0.034402041   0.032168536   0.038395086   0.005440512  -0.092885266   0.044903934  -0.042371898
                        -0.320980234   0.094139521   0.025286463  -0.153576114   0.140873378  -0.094326651   0.110628274   0.104253432


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000124  -0.000000063  -0.000000067  -0.000000079   0.000000125  -0.000000420  -0.000000096  -0.000000021
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000103   0.000000065   0.000000001   0.000000064  -0.000000089  -0.000000007   0.000000013  -0.000000004
                         0.000000065  -0.000000085   0.000000008  -0.000000046   0.000000032   0.000000139  -0.000000038  -0.000000077

    3    1.2  1.5 -0.5  -0.000000027   0.000000012  -0.000000058   0.000000002  -0.000000130   0.000000065  -0.000000075   0.000000039
                         0.000000104   0.000000121  -0.000000053  -0.000000008  -0.000000049  -0.000000068  -0.000000014  -0.000000008

    4    1.2  1.5 -1.5   0.000000039  -0.000000076  -0.000000079   0.000000067   0.000000168   0.000000050  -0.000000003   0.000000013
                         0.000000049  -0.000000097  -0.000000009   0.000000008  -0.000000385  -0.000000114   0.000000021  -0.000000095

    5    1.2  0.5  0.5   0.038397096  -0.063728053   0.002578285  -0.018567593   0.576898929   0.149373890   0.000000065  -0.000000139
                         0.010995799  -0.007302995   0.086865537   0.083195586  -0.416444291  -0.225657843  -0.000000007   0.000000085

    6    2.2  0.5  0.5  -0.317568641  -0.044516605   0.195022112   0.515446844  -0.127324649   0.012786654   0.000000053  -0.000000173
                         0.157008166  -0.227361959  -0.177857719   0.184745808  -0.142477125  -0.121100066   0.000000151   0.000000112

    7    3.2  0.5  0.5  -0.075492881  -0.131314030  -0.137377756  -0.190353103   0.181588971  -0.144081777  -0.000000107   0.000000128
                         0.099994701  -0.502892827   0.114600298   0.333786408   0.257344506   0.120594798   0.000000114   0.000000172

    8    4.2  0.5  0.5   0.303857073   0.422416873  -0.173209570   0.163416195   0.035003367  -0.024739739  -0.000000084   0.000000058
                         0.465965865   0.070364202   0.025627523   0.159793493  -0.035818963   0.145402282   0.000000242  -0.000000071

    9    5.2  0.5  0.5  -0.069646919   0.010037069  -0.457377448   0.225864907  -0.095362342   0.443303921  -0.000000087   0.000000187
                        -0.125550133  -0.125364118   0.283920041  -0.111029966   0.060418903  -0.034050316  -0.000000068   0.000000038

   10    6.2  0.5  0.5  -0.000000093  -0.000000037  -0.000000099  -0.000000056   0.000000045  -0.000000234   0.524809414   0.213530109
                         0.000000067   0.000000019   0.000000004  -0.000000045   0.000000021  -0.000000020   0.104737222   0.036648093

   11    7.2  0.5  0.5  -0.000000006  -0.000000097  -0.000000012  -0.000000046   0.000000011   0.000000088  -0.000345795  -0.245357649
                         0.000000019   0.000000054   0.000000039  -0.000000014  -0.000000052   0.000000305   0.374340071   0.364695122

   12    8.2  0.5  0.5  -0.000000130  -0.000000005   0.000000026   0.000000051   0.000000000  -0.000000197  -0.240573121   0.468320321
                        -0.000000063   0.000000131  -0.000000016   0.000000040  -0.000000191   0.000000096   0.219249880   0.089797698

   13    1.2  0.5 -0.5   0.045034394   0.032327352  -0.008813708  -0.012614820  -0.266538586   0.612205967  -0.000000103  -0.000000015
                         0.045678242   0.023456062  -0.084785491   0.085983345   0.046810296  -0.362549410   0.000000126   0.000000063

   14    2.2  0.5 -0.5   0.206468241  -0.072129559   0.533365352  -0.173126117  -0.116128103   0.079763340  -0.000000134   0.000000142
                        -0.105100208  -0.346841077  -0.123846130  -0.199234385  -0.036646808   0.173634982   0.000000156   0.000000073

   15    3.2  0.5 -0.5   0.476928321   0.032200557  -0.150441215   0.123190608   0.168106179  -0.163396309  -0.000000153   0.000000127
                        -0.206600936  -0.121083606  -0.353574760   0.129730299  -0.083922440  -0.269262688  -0.000000150  -0.000000090

   16    4.2  0.5 -0.5  -0.315796286   0.554212598   0.180812537   0.169079368   0.143181890   0.046818636   0.000000078   0.000000251
                        -0.289240110  -0.047976088  -0.139805722   0.045502659   0.035395255  -0.017783394  -0.000000048  -0.000000050

   17    5.2  0.5 -0.5   0.092525656  -0.141791812   0.211496312   0.421442580  -0.208278717  -0.093479428  -0.000000013  -0.000000056
                        -0.085181616   0.022552403   0.136425512   0.334949058   0.392807544   0.063293102  -0.000000190  -0.000000095

   18    6.2  0.5 -0.5   0.000000008  -0.000000005  -0.000000061   0.000000097   0.000000075  -0.000000002  -0.007573847   0.033145762
                         0.000000040  -0.000000114   0.000000038   0.000000016  -0.000000222  -0.000000049  -0.216519807   0.534131225

   19    7.2  0.5 -0.5   0.000000018   0.000000011  -0.000000048   0.000000007   0.000000245   0.000000052  -0.394401181   0.370980219
                         0.000000110  -0.000000017   0.000000008   0.000000040   0.000000203   0.000000011   0.194037669   0.050042835

   20    8.2  0.5 -0.5  -0.000000100  -0.000000130   0.000000055  -0.000000024   0.000000167   0.000000175  -0.025945512   0.249635463
                         0.000000085  -0.000000063  -0.000000034  -0.000000019  -0.000000142   0.000000076  -0.476145335  -0.208873340


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.046804296  -0.138145586   0.242453901   0.037745097
                        -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.015501330  -0.012461449  -0.028396970   0.117576433
                         0.168603031   0.177160986   0.073787289  -0.034636466

    3    1.2  1.5 -0.5  -0.176377364   0.162755265   0.120969390   0.037346691
                        -0.020792501   0.046669016   0.019756243   0.069686272

    4    1.2  1.5 -1.5   0.025760143   0.008727643  -0.037452493   0.240574378
                        -0.135722577  -0.045983371   0.004690742  -0.030130765

    5    1.2  0.5  0.5  -0.105407196   0.005214495   0.020917099  -0.146703466
                         0.211705511   0.115596681   0.007267589  -0.100856050

    6    2.2  0.5  0.5  -0.150247132   0.045801657   0.025396829  -0.063434219
                        -0.099271045  -0.161573348  -0.122639336  -0.145470857

    7    3.2  0.5  0.5   0.125724092  -0.044367919   0.045921270  -0.153663800
                         0.073870236  -0.100003370  -0.161646387   0.128141622

    8    4.2  0.5  0.5  -0.009761561   0.093276604  -0.015664205   0.205722221
                         0.138735351   0.004136262  -0.175666998  -0.004164234

    9    5.2  0.5  0.5  -0.116369988   0.217049389  -0.006703115  -0.061080419
                        -0.032419571   0.028472184   0.021430881   0.186425777

   10    6.2  0.5  0.5   0.013899067   0.047865050   0.652448848   0.095799164
                        -0.007172366   0.018427821   0.073535422  -0.004719694

   11    7.2  0.5  0.5   0.195660778   0.131992496   0.018899821  -0.114242598
                        -0.285135590   0.432695360  -0.287684735  -0.150888645

   12    8.2  0.5  0.5  -0.359265143  -0.402382654   0.043868502   0.072432628
                        -0.103241503   0.189755321  -0.195659876   0.245088560

   13    1.2  0.5 -0.5   0.112596818  -0.227647679   0.133032402   0.019851774
                         0.026678461   0.064081470  -0.118305661  -0.009810706

   14    2.2  0.5 -0.5  -0.167280107   0.069513147   0.044864196   0.040440856
                         0.014869577   0.166123037  -0.152226391   0.118532455

   15    3.2  0.5 -0.5  -0.089976028  -0.049130692   0.168397283   0.065653760
                        -0.062237453  -0.137293606   0.108051811   0.154686461

   16    4.2  0.5 -0.5  -0.013329666  -0.138122245  -0.204644952   0.006288102
                         0.092411869  -0.016279769   0.021434013   0.176251869

   17    5.2  0.5 -0.5  -0.012500616   0.010151321   0.083774833  -0.009314458
                         0.218551681   0.120374222   0.177389868  -0.020431723

   18    6.2  0.5 -0.5   0.009179163   0.009638339  -0.095643057   0.638252452
                         0.050461773  -0.012317845   0.007222258  -0.154047930

   19    7.2  0.5 -0.5   0.400493316   0.316619502   0.094605413   0.054505099
                         0.210362537  -0.139059467  -0.163916351   0.283105818

   20    8.2  0.5 -0.5   0.261459789   0.034438174  -0.041412938   0.067843905
                        -0.359941191   0.372215345   0.252190119   0.188691381


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.732%  14.437%  49.408%   0.380%   5.964%   2.971%  17.814%   0.145%   0.000%   0.000%
    2    1.2  1.5  0.5  16.869%  32.918%  12.201%   2.968%   5.961%  11.998%   0.260%   8.675%   0.000%   0.000%
    3    1.2  1.5 -0.5  32.918%  16.869%   2.968%  12.201%  11.998%   5.961%   8.675%   0.260%   0.000%   0.000%
    4    1.2  1.5 -1.5  14.437%   0.732%   0.380%  49.408%   2.971%   5.964%   0.145%  17.814%   0.000%   0.000%
    5    1.2  0.5  0.5   0.457%   1.244%   0.132%   2.633%   0.394%   0.841%   0.499%  23.649%   0.160%   0.411%
    6    2.2  0.5  0.5   2.795%   0.207%   0.502%   0.962%   3.974%  13.159%   0.351%   7.899%  12.550%   5.368%
    7    3.2  0.5  0.5   2.237%   0.232%   1.154%   0.844%   5.709%   7.789%   3.070%   8.816%   1.570%  27.014%
    8    4.2  0.5  0.5   0.128%   2.861%   0.031%   1.447%  15.666%   9.295%   0.233%   0.190%  30.945%  18.339%
    9    5.2  0.5  0.5   0.949%   0.056%   1.077%   2.384%   5.292%   1.339%  17.055%   1.697%   2.061%   1.582%
   10    6.2  0.5  0.5   2.293%   2.098%  10.367%   1.159%   3.091%   1.941%   1.181%   0.219%   0.000%   0.000%
   11    7.2  0.5  0.5   5.139%   1.102%   8.641%   1.035%   0.157%   0.720%   5.042%   0.513%   0.000%   0.000%
   12    8.2  0.5  0.5   1.005%  12.240%   2.506%   0.167%   1.753%   1.987%   1.266%   1.425%   0.000%   0.000%
   13    1.2  0.5 -0.5   1.244%   0.457%   2.633%   0.132%   0.841%   0.394%  23.649%   0.499%   0.411%   0.160%
   14    2.2  0.5 -0.5   0.207%   2.795%   0.962%   0.502%  13.159%   3.974%   7.899%   0.351%   5.368%  12.550%
   15    3.2  0.5 -0.5   0.232%   2.237%   0.844%   1.154%   7.789%   5.709%   8.816%   3.070%  27.014%   1.570%
   16    4.2  0.5 -0.5   2.861%   0.128%   1.447%   0.031%   9.295%  15.666%   0.190%   0.233%  18.339%  30.945%
   17    5.2  0.5 -0.5   0.056%   0.949%   2.384%   1.077%   1.339%   5.292%   1.697%  17.055%   1.582%   2.061%
   18    6.2  0.5 -0.5   2.098%   2.293%   1.159%  10.367%   1.941%   3.091%   0.219%   1.181%   0.000%   0.000%
   19    7.2  0.5 -0.5   1.102%   5.139%   1.035%   8.641%   0.720%   0.157%   0.513%   5.042%   0.000%   0.000%
   20    8.2  0.5 -0.5  12.240%   1.005%   0.167%   2.506%   1.987%   1.753%   1.425%   1.266%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.219%   1.908%   5.878%   0.142%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.867%   3.154%   0.625%   1.502%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.154%   2.867%   1.502%   0.625%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.908%   0.219%   0.142%   5.878%
    5    1.2  0.5  0.5   0.755%   0.727%  50.624%   7.323%   0.000%   0.000%   5.593%   1.339%   0.049%   3.169%
    6    2.2  0.5  0.5   6.967%  29.982%   3.651%   1.483%   0.000%   0.000%   3.243%   2.820%   1.569%   2.519%
    7    3.2  0.5  0.5   3.201%  14.765%   9.920%   3.530%   0.000%   0.000%   2.126%   1.197%   2.824%   4.003%
    8    4.2  0.5  0.5   3.066%   5.224%   0.251%   2.175%   0.000%   0.000%   1.934%   0.872%   3.110%   4.234%
    9    5.2  0.5  0.5  28.980%   6.334%   1.274%  19.768%   0.000%   0.000%   1.459%   4.792%   0.050%   3.849%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  28.639%   4.694%   0.024%   0.263%  43.110%   0.920%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  14.013%  19.320%  11.959%  20.465%   8.312%   3.582%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  10.595%  22.739%  13.973%  19.792%   4.021%   6.531%
   13    1.2  0.5 -0.5   0.727%   0.755%   7.323%  50.624%   0.000%   0.000%   1.339%   5.593%   3.169%   0.049%
   14    2.2  0.5 -0.5  29.982%   6.967%   1.483%   3.651%   0.000%   0.000%   2.820%   3.243%   2.519%   1.569%
   15    3.2  0.5 -0.5  14.765%   3.201%   3.530%   9.920%   0.000%   0.000%   1.197%   2.126%   4.003%   2.824%
   16    4.2  0.5 -0.5   5.224%   3.066%   2.175%   0.251%   0.000%   0.000%   0.872%   1.934%   4.234%   3.110%
   17    5.2  0.5 -0.5   6.334%  28.980%  19.768%   1.274%   0.000%   0.000%   4.792%   1.459%   3.849%   0.050%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   4.694%  28.639%   0.263%   0.024%   0.920%  43.110%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  19.320%  14.013%  20.465%  11.959%   3.582%   8.312%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  22.739%  10.595%  19.792%  13.973%   6.531%   4.021%


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
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1339.13       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     30050.94  25121.03   4759.54    163.45      5.00      0.23      1.52
 REAL TIME  *     30365.69 SEC
 DISK USED  *         1.36 GB (local),       19.27 GB (total)
 SF USED    *        12.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -214.313412666242

              CI              CI           MULTI         RHF-SCF
   -214.28352914   -214.35937184   -213.51557043   -212.17261459
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
