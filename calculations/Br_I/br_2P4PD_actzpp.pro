
 Working directory              : /wrk/irikura/molpro.z90TzxSbHr/
 Global scratch directory       : /wrk/irikura/molpro.z90TzxSbHr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.z90TzxSbHr/

 id        : nistki

 Nodes     nprocs
 comp-3       3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=8
 
 {multi
     occ,8,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 2.75 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 13-Jun-24          TIME: 09:16:53  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.233E-04 0.335E-02 0.179E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01
         2 0.878E-02 0.878E-02 0.878E-02 0.168E-01 0.168E-01 0.168E-01 0.174E+00 0.174E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.991 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 3.932 MB, node maximum: 6.291 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1843608.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1843608      RECORD LENGTH: 524288

 Memory used in sort:       2.40 MW

 SORT1 READ    11031004. AND WROTE      358619. INTEGRALS IN      2 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     66 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1842824.  Node maximum:     1846649. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.88      0.73
 REAL TIME  *         7.85 SEC
 DISK USED  *        29.18 MB (local),      119.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54270562    -415.54270562     0.00D+00     0.15D+00     0     0       0.01      0.03    start
   2     -415.57368280      -0.03097718     0.61D-02     0.18D-01     1     0       0.01      0.04    diag
   3     -415.57774837      -0.00406557     0.44D-02     0.27D-02     2     0       0.01      0.05    diag
   4     -415.57788187      -0.00013350     0.74D-03     0.65D-03     3     0       0.01      0.06    diag
   5     -415.57789845      -0.00001658     0.13D-03     0.33D-03     4     0       0.01      0.07    diag
   6     -415.57789913      -0.00000068     0.25D-04     0.10D-03     5     0       0.01      0.08    diag
   7     -415.57789914      -0.00000001     0.26D-05     0.17D-04     6     0       0.01      0.09    diag
   8     -415.57789914      -0.00000000     0.12D-06     0.33D-06     7     0       0.01      0.10    fixocc
   9     -415.57789914      -0.00000000     0.13D-07     0.36D-07     0     0       0.01      0.11    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -415.577899141401
  RHF One-electron energy            -738.023438378074
  RHF Two-electron energy             322.445539236674
  RHF Kinetic energy                  295.794150342242
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.404956449141

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.52295     1  1  s    0.99477
    2.1     2.00000    -2.82147     1  1  d0   0.99994
    3.1     2.00000    -2.82147     1  1  d2- -0.66664    1  1  d2+  0.74417
    4.1     2.00000    -2.82147     1  1  d2-  0.74485    1  1  d2+  0.66707
    5.1     2.00000    -2.82147     1  1  d1+ -0.30656    1  1  d1-  0.95090
    6.1     2.00000    -2.82147     1  1  d1+  0.95164    1  1  d1-  0.30688
    7.1     2.00000    -0.71232     1  2  s    0.93903
    1.2     2.00000    -7.27044     1  1  px   0.99976
    2.2     2.00000    -7.27044     1  1  py   0.99632
    3.2     2.00000    -7.27044     1  1  pz   0.99612
    4.2     2.00000    -0.13741     1  2  px   0.87943
    5.2     2.00000    -0.13741     1  2  py   0.87941
    6.2     2.00000    -0.13741     1  2  pz   0.87941


 HOMO      6.2    -0.137413 =      -3.7392eV
 LUMO      8.1     0.265046 =       7.2123eV
 LUMO-HOMO         0.402459 =      10.9515eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.99      0.12      0.73
 REAL TIME  *         8.88 SEC
 DISK USED  *        29.67 MB (local),      120.59 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.594D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.492D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.479D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.279D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 6 4 1 1 3 5   2 6 4 1 5 3 4 6 2 1   4 6 5 3 2 1 3 5 4 6   2 812 71311 9101415
                                        3 5 6 4 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.379D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.912D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.101D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.688D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.688D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.192D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.192D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 3   2 1 6 7 910 8 5 410   8 5 4 9 7 6 3 1 2 8  10 7 9 6 5 4 1 2 3 8
                                       10 5 4 9 7 6 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    12850
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   61    0   -415.17775750    -415.26802132   -0.09026382    0.36037530 0.00159570 0.00117692  0.11E+01      1.68
   2    9   45    0   -415.24461634    -415.25008937   -0.00547303    0.27737778 0.00012748 0.00072188  0.19E+00      2.61
   3    9   42    0   -415.25012887    -415.25013030   -0.00000143    0.00210177 0.00000350 0.00000273  0.14E-01      3.42
   4    5   18    0   -415.25013030    -415.25013030   -0.00000000    0.00000061 0.00000000 0.00000010  0.21E-04      3.88

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.25E-07)
                       Final energy:   -415.25013030
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.485383862847
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.01650498
 One electron energy                          -730.27491323
 Two electron energy                           314.78952936
 Virial ratio                                    2.40358857
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.485383862847
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.01650498
 One electron energy                          -730.27491323
 Two electron energy                           314.78952936
 Virial ratio                                    2.40358857
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.485383862847
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.01650498
 One electron energy                          -730.27491323
 Two electron energy                           314.78952936
 Virial ratio                                    2.40358857
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -415.168631812043
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.38158349
 One electron energy                          -723.89599365
 Two electron energy                           308.72736184
 Virial ratio                                    2.40553323
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -415.168631812042
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.38158349
 One electron energy                          -723.89599365
 Two electron energy                           308.72736184
 Virial ratio                                    2.40553323
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -415.168631812042
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.38158349
 One electron energy                          -723.89599365
 Two electron energy                           308.72736184
 Virial ratio                                    2.40553323
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -415.157877255170
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.40014539
 One electron energy                          -723.96274617
 Two electron energy                           308.80486891
 Virial ratio                                    2.40540851
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -415.157877255170
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.40014539
 One electron energy                          -723.96274617
 Two electron energy                           308.80486891
 Virial ratio                                    2.40540851
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -415.157877255169
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.40014539
 One electron energy                          -723.96274617
 Two electron energy                           308.80486891
 Virial ratio                                    2.40540851
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -415.157877255169
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.40014539
 One electron energy                          -723.96274617
 Two electron energy                           308.80486891
 Virial ratio                                    2.40540851
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -415.157877255168
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.40014539
 One electron energy                          -723.96274617
 Two electron energy                           308.80486891
 Virial ratio                                    2.40540851
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999702589
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.076131786311
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.923868511100
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999970705
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.724206902619
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.275793126675
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000006550369
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.011906160947
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.046440285344
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.953575590689
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.988071412651
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999998814824
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.923868893597
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.076132291579
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999992386197
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.275799041560
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.724208572243
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000010947738
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.988152548968
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.953558541953
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.046407177263
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.011870784078
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000001482587
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999320091
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999197321
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000007643098
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999994055821
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999998301081
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999982501893
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999941290085
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000001172703
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000017232048
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000057803271
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 1 3   5 2 4 6 3 5 6 4 2 1   6 4 3 5 2 1 3 5 4 6   2 8 712 91114151310
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   2 1 6 9 7 810 4 5 8  10 4 5 6 9 7 3 2 1 8  10 4 5 6 9 7 3 2 1 8
                                       10 5 4 9 7 6 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.02378     1  1  s    0.99535
    2.1     2.00000    -3.32464     1  1  d0   1.00033
    3.1     2.00000    -3.32464     1  1  d1-  1.00033
    4.1     2.00000    -3.32464     1  1  d1+  1.00033
    5.1     2.00000    -3.32464     1  1  d2-  1.00033
    6.1     2.00000    -3.32464     1  1  d2+  1.00033
    7.1     1.99737    -1.15158     1  2  s    0.99979
    8.1     0.00286     0.54187     1  2  s   -1.19318    1  3  s   -1.59602    1  4  s    1.09202    1  5  s    1.35370
    1.2     2.00000    -7.77313     1  1  pz   0.99982
    2.2     2.00000    -7.77313     1  1  px   0.99982
    3.2     2.00000    -7.77313     1  1  py   0.99982
    4.2     1.42131    -0.46659     1  2  py   1.08923
    5.2     1.42131    -0.46659     1  2  px   1.08923
    6.2     1.42131    -0.46659     1  2  pz   1.08923
    7.2     0.24528     0.07567     1  2  py  -0.33540    1  7  py   1.19188
    8.2     0.24528     0.07567     1  2  px  -0.33540    1  7  px   1.19188
    9.2     0.24528     0.07567     1  2  pz  -0.33540    1  7  pz   1.19188
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.98868591     -0.00081524     -0.00088579
 20 2a2000      0.00053918      0.95030646     -0.27279778
 20 a22000      0.00107634      0.27279709      0.95030620
 20 2aa0b0     -0.06948777      0.00005730      0.00006226
 20 a2ab00     -0.06948777      0.00005730      0.00006226
 20 2aa00b      0.00003790      0.06679035     -0.01917303
 20 aa2b00     -0.00003790     -0.06679035      0.01917303
 20 a2a00b      0.00007565      0.01917299      0.06679033
 20 aa20b0      0.00007565      0.01917299      0.06679033
 20 2ba0a0      0.05260964     -0.00004338     -0.00004713
 20 b2aa00      0.05260964     -0.00004338     -0.00004713
 20 2ab00a     -0.00002869     -0.05056741      0.01451603
 20 ba2a00      0.00002869      0.05056741     -0.01451603
 20 a2b00a     -0.00005727     -0.01451599     -0.05056739
 20 ab20a0     -0.00005727     -0.01451599     -0.05056739
 
 Energy:     -415.48538386   -415.48538386   -415.48538386
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000      0.00000000      0.00000000      0.00026856     -0.00279329      0.00075906      0.00248636
 20 2aaa00     -0.00000000      0.00000000      0.00000000     -0.00245374      0.70664027      0.00009775     -0.00254762
 20 a2aa00      0.70515443     -0.00171922     -0.00091912      0.70524711      0.00232353     -0.00033268      0.00164345
 20 2aa0a0      0.70515443     -0.00171922     -0.00091912     -0.70524711     -0.00232353      0.00033268     -0.00164345
 20 a2a0a0     -0.00000000      0.00000000      0.00000000     -0.00218519      0.70384698      0.00085681     -0.00006125
 20 aa2a00     -0.00012069     -0.37032036      0.60009115     -0.00065348      0.00034511      0.58248384      0.39760621
 20 2aa00a      0.00012069      0.37032036     -0.60009115     -0.00065348      0.00034511      0.58248384      0.39760621
 20 aa20a0      0.00194575      0.60008870      0.37031924     -0.00154981      0.00134618     -0.39760980      0.58247920
 20 a2a00a      0.00194575      0.60008870      0.37031924      0.00154981     -0.00134618      0.39760980     -0.58247920
 
 Energy:     -415.16863181   -415.16863181   -415.16863181   -415.15787726   -415.15787726   -415.15787726   -415.15787726

 State:              8
 20 aa200a      0.81434700
 20 2aaa00     -0.40475014
 20 a2aa00     -0.00022932
 20 2aa0a0      0.00022932
 20 a2a0a0      0.40959686
 20 aa2a00     -0.00175551
 20 2aa00a     -0.00175551
 20 aa20a0     -0.00140268
 20 a2a00a      0.00140268
 
 Energy:     -415.15787726
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.40      2.41      0.12      0.73
 REAL TIME  *        13.79 SEC
 DISK USED  *        38.00 MB (local),      145.57 MB (total)
 SF USED    *        22.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4853839   2.0
    -415.4853839   2.0
    -415.4853839   2.0
    -415.1686318   2.0
    -415.1686318   2.0
    -415.1686318   2.0
    -415.1578773   6.0
    -415.1578773   6.0
    -415.1578773   6.0
    -415.1578773   6.0
    -415.1578773   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.48538386
     2      -415.48538386
     3      -415.48538386

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      19794040
 Number of doubly external configurations:       1354752
 Total number of contracted configurations:     21288092
 Total number of uncontracted configurations:  658987970

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    195.59 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4841109 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.48538386    -0.00000000    -0.97747657  0.37D-01  0.64D-01   229.16
    1     2     2     1.00000000     0.00000000  -415.48538386     0.00000000    -0.97756495  0.37D-01  0.64D-01   229.16
    1     3     3     1.00000000     0.00000000  -415.48538386     0.00000000    -0.97753546  0.37D-01  0.64D-01   229.16
    2     1     1     1.07149583    -0.82380551  -416.30918937    -0.82380551    -0.01901042  0.29D-02  0.98D-03  1936.78
    2     2     2     1.07151595    -0.82379311  -416.30917698    -0.82379311    -0.01902565  0.29D-02  0.97D-03  1936.78
    2     3     3     1.07152937    -0.82378401  -416.30916788    -0.82378401    -0.01903448  0.29D-02  0.97D-03  1936.78
    3     1     1     1.06506229    -0.84164370  -416.32702756    -0.01783819    -0.00050091  0.33D-04  0.57D-04  3622.45
    3     2     2     1.06506347    -0.84164326  -416.32702712    -0.01785014    -0.00050113  0.33D-04  0.57D-04  3622.45
    3     3     3     1.06506285    -0.84164318  -416.32702705    -0.01785917    -0.00050121  0.33D-04  0.57D-04  3622.45
    4     1     1     1.06578482    -0.84218687  -416.32757074    -0.00054317    -0.00002901  0.10D-05  0.44D-05  5297.22
    4     2     2     1.06578462    -0.84218681  -416.32757067    -0.00054355    -0.00002905  0.10D-05  0.44D-05  5297.22
    4     3     3     1.06578496    -0.84218680  -416.32757067    -0.00054362    -0.00002905  0.10D-05  0.44D-05  5297.22
    5     1     1     1.06620739    -0.84222169  -416.32760555    -0.00003482    -0.00000210  0.93D-07  0.28D-06  6961.80
    5     2     2     1.06620745    -0.84222169  -416.32760555    -0.00003488    -0.00000210  0.93D-07  0.28D-06  6961.80
    5     3     3     1.06620745    -0.84222169  -416.32760555    -0.00003488    -0.00000210  0.93D-07  0.28D-06  6961.80
    6     1     1     1.06623437    -0.84222415  -416.32760802    -0.00000247    -0.00000014  0.97D-08  0.18D-07  8621.89
    6     2     2     1.06623437    -0.84222415  -416.32760802    -0.00000247    -0.00000014  0.97D-08  0.18D-07  8621.89
    6     3     3     1.06623439    -0.84222415  -416.32760802    -0.00000247    -0.00000014  0.97D-08  0.18D-07  8621.89
    7     1     1     1.06624230    -0.84222431  -416.32760818    -0.00000016    -0.00000001  0.62D-09  0.15D-08 10298.88
    7     2     2     1.06624230    -0.84222431  -416.32760818    -0.00000016    -0.00000001  0.62D-09  0.15D-08 10298.88
    7     3     3     1.06624229    -0.84222431  -416.32760818    -0.00000016    -0.00000001  0.62D-09  0.15D-08 10298.88


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.4%  31.8%
 P   0.3%  57.5%   6.9%

 Initialization:   1.9%
 Other:            0.2%

 Total CPU:    10298.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000          -0.5511881   0.2775325   0.7354245
 222222202222/2000          -0.3434148   0.7229339  -0.5302023
 2222222022222/000           0.7070642   0.5674715   0.3157816
 22222220222//20\0          -0.0415138   0.0209029   0.0553900
 22222220222/2/00\          -0.0415138   0.0209029   0.0553900
 22222220222//2\00           0.0258650  -0.0544492   0.0399333
 222222202222//00\          -0.0258650   0.0544492  -0.0399332
 22222220222/2/\00          -0.0532540  -0.0427403  -0.0237837
 222222202222//0\0          -0.0532540  -0.0427403  -0.0237837

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.713066   -0.555867   -0.346330
 2           0.572288    0.279888    0.729070
 3           0.318462    0.741667   -0.534703

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968192   -0.000000   -0.000000
 2          -0.000000    0.968192   -0.000000
 3          -0.000000   -0.000000    0.968192


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.71306599 (fixed)   0.96840784 (relaxed)   0.96819177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050974   -0.00055711   -0.98586101
 Singles      0.01499712   -0.06777752   -0.07537120
 Pairs        0.05127895    0.27682643    0.21900789
 Total        1.06678580    0.20849180   -0.84222431
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48538386
 Nuclear energy                         0.00000000
 Kinetic energy                       295.80761343
 One electron energy                 -728.98238398
 Two electron energy                  312.65477581
 Virial quotient                       -1.40742695
 Correlation energy                    -0.84222431
 !MRCI STATE 1.2 Energy              -416.327608175658

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38385680 (Davidson, fixed reference)
 Cluster corrected energies          -416.38345591 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38385680 (Davidson, rotated reference)

 Cluster corrected energies          -416.38218733 (Pople, fixed reference)
 Cluster corrected energies          -416.38177589 (Pople, relaxed reference)
 Cluster corrected energies          -416.38218733 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.72907049 (fixed)   0.96840784 (relaxed)   0.96819177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050974   -0.00055711   -0.18009194
 Singles      0.01499712   -0.06777753   -0.07537120
 Pairs        0.05127895   -0.58275658   -0.58676118
 Total        1.06678580   -0.65109122   -0.84222431
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48538386
 Nuclear energy                         0.00000000
 Kinetic energy                       295.80761328
 One electron energy                 -728.98238411
 Two electron energy                  312.65477593
 Virial quotient                       -1.40742695
 Correlation energy                    -0.84222431
 !MRCI STATE 2.2 Energy              -416.327608175589

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38385680 (Davidson, fixed reference)
 Cluster corrected energies          -416.38345591 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38385680 (Davidson, rotated reference)

 Cluster corrected energies          -416.38218732 (Pople, fixed reference)
 Cluster corrected energies          -416.38177589 (Pople, relaxed reference)
 Cluster corrected energies          -416.38218732 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74166705 (fixed)   0.96840785 (relaxed)   0.96819177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050974   -0.00055711   -1.12700399
 Singles      0.01499712   -0.06777753   -0.07537119
 Pairs        0.05127894    0.42739575    0.36015087
 Total        1.06678580    0.35906111   -0.84222431
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48538386
 Nuclear energy                         0.00000000
 Kinetic energy                       295.80761242
 One electron energy                 -728.98238404
 Two electron energy                  312.65477587
 Virial quotient                       -1.40742696
 Correlation energy                    -0.84222431
 !MRCI STATE 3.2 Energy              -416.327608175414

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38385680 (Davidson, fixed reference)
 Cluster corrected energies          -416.38345590 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38385680 (Davidson, rotated reference)

 Cluster corrected energies          -416.38218732 (Pople, fixed reference)
 Cluster corrected energies          -416.38177588 (Pople, relaxed reference)
 Cluster corrected energies          -416.38218732 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      495.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10550.21  10546.80      2.41      0.12      0.73
 REAL TIME  *     10727.72 SEC
 DISK USED  *       532.82 MB (local),        1.59 GB (total)
 SF USED    *         5.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.38385680  AU                              
 SETTING HLSDIAG(2)     =      -416.38385680  AU                              
 SETTING HLSDIAG(3)     =      -416.38385680  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.16863181
     2      -415.16863181
     3      -415.16863181
     4      -415.15787726
     5      -415.15787726
     6      -415.15787726
     7      -415.15787726
     8      -415.15787726

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1036D-06

 Number of blocks in overlap matrix:   800   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2254
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      17915816
 Number of doubly external configurations:       3519872
 Total number of contracted configurations:     21550140
 Total number of uncontracted configurations:  616281052

 Diagonal Coupling coefficients finished.               Storage:  86416083 words, CPU-Time:    998.15 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7597476 words, CPU-time:      0.25 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.16863181    -0.00000000    -0.94987298  0.35D-01  0.56D-01  1081.64
    1     2     2     1.00000000     0.00000000  -415.16863181    -0.00000000    -0.95014503  0.35D-01  0.56D-01  1081.64
    1     3     3     1.00000000     0.00000000  -415.16863181     0.00000000    -0.95025835  0.35D-01  0.57D-01  1081.64
    1     4     4     1.00000000     0.00000000  -415.15787726    -0.00000000    -0.95223673  0.37D-01  0.56D-01  1081.64
    1     5     5     1.00000000     0.00000000  -415.15787726     0.00000000    -0.95239539  0.36D-01  0.57D-01  1081.64
    1     6     6     1.00000000     0.00000000  -415.15787726    -0.00000000    -0.95244268  0.37D-01  0.56D-01  1081.64
    1     7     7     1.00000000     0.00000000  -415.15787726     0.00000000    -0.95257245  0.37D-01  0.57D-01  1081.64
    1     8     8     1.00000000     0.00000000  -415.15787726    -0.00000000    -0.95590853  0.37D-01  0.59D-01  1081.64
    2     1     1     1.06544190    -0.80474626  -415.97337807    -0.80474626    -0.01706302  0.20D-02  0.96D-03  6184.18
    2     2     2     1.06556406    -0.80469818  -415.97332999    -0.80469818    -0.01712457  0.20D-02  0.96D-03  6184.18
    2     3     3     1.06562105    -0.80467547  -415.97330729    -0.80467547    -0.01716192  0.20D-02  0.96D-03  6184.18
    2     4     4     1.06659031    -0.80616984  -415.96404709    -0.80616984    -0.01734509  0.22D-02  0.96D-03  6184.18
    2     5     5     1.06661516    -0.80589367  -415.96377092    -0.80589367    -0.01756233  0.22D-02  0.97D-03  6184.18
    2     6     6     1.06673760    -0.80580189  -415.96367915    -0.80580189    -0.01765362  0.23D-02  0.98D-03  6184.18
    2     7     7     1.06680151    -0.80578205  -415.96365930    -0.80578205    -0.01768717  0.23D-02  0.98D-03  6184.18
    2     8     8     1.06777459    -0.80573006  -415.96360731    -0.80573006    -0.01789787  0.22D-02  0.11D-02  6184.18
    3     1     1     1.05945040    -0.82101829  -415.98965010    -0.01627203    -0.00055190  0.27D-04  0.68D-04 11272.27
    3     2     2     1.05944319    -0.82101329  -415.98964510    -0.01631511    -0.00055444  0.27D-04  0.69D-04 11272.27
    3     3     3     1.05943175    -0.82101048  -415.98964229    -0.01633501    -0.00055654  0.27D-04  0.69D-04 11272.27
    3     4     4     1.06026222    -0.82270414  -415.98058140    -0.01653430    -0.00053258  0.29D-04  0.66D-04 11272.27
    3     5     5     1.06016052    -0.82267430  -415.98055156    -0.01678063    -0.00055093  0.31D-04  0.67D-04 11272.27
    3     6     6     1.06005945    -0.82262784  -415.98050509    -0.01682594    -0.00057812  0.31D-04  0.72D-04 11272.27
    3     7     7     1.06006252    -0.82262670  -415.98050396    -0.01684466    -0.00057867  0.32D-04  0.72D-04 11272.27
    3     8     8     1.06005250    -0.82262100  -415.98049825    -0.01689094    -0.00058158  0.31D-04  0.72D-04 11272.27
    4     1     1     1.06022992    -0.82166251  -415.99029432    -0.00064422    -0.00005757  0.27D-05  0.75D-05 16358.72
    4     2     2     1.06022355    -0.82166156  -415.99029337    -0.00064828    -0.00005843  0.28D-05  0.76D-05 16358.72
    4     3     3     1.06022597    -0.82166155  -415.99029336    -0.00065107    -0.00005826  0.28D-05  0.76D-05 16358.72
    4     4     4     1.06092148    -0.82331827  -415.98119553    -0.00061413    -0.00005309  0.26D-05  0.73D-05 16358.72
    4     5     5     1.06091084    -0.82331519  -415.98119245    -0.00064089    -0.00005596  0.27D-05  0.74D-05 16358.72
    4     6     6     1.06087609    -0.82330836  -415.98118562    -0.00068053    -0.00006115  0.30D-05  0.79D-05 16358.72
    4     7     7     1.06087567    -0.82330800  -415.98118525    -0.00068129    -0.00006125  0.30D-05  0.79D-05 16358.72
    4     8     8     1.06087153    -0.82330697  -415.98118423    -0.00068598    -0.00006200  0.30D-05  0.80D-05 16358.72
    5     1     1     1.06086711    -0.82173551  -415.99036732    -0.00007300    -0.00000549  0.32D-06  0.61D-06 21430.78
    5     2     2     1.06086825    -0.82173550  -415.99036731    -0.00007394    -0.00000545  0.32D-06  0.60D-06 21430.78
    5     3     3     1.06086822    -0.82173543  -415.99036725    -0.00007388    -0.00000551  0.33D-06  0.60D-06 21430.78
    5     4     4     1.06154471    -0.82338647  -415.98126372    -0.00006819    -0.00000551  0.32D-06  0.64D-06 21430.78
    5     5     5     1.06154923    -0.82338632  -415.98126357    -0.00007113    -0.00000550  0.32D-06  0.64D-06 21430.78
    5     6     6     1.06154391    -0.82338616  -415.98126341    -0.00007779    -0.00000595  0.36D-06  0.67D-06 21430.78
    5     7     7     1.06154487    -0.82338606  -415.98126331    -0.00007806    -0.00000599  0.36D-06  0.67D-06 21430.78
    5     8     8     1.06154470    -0.82338599  -415.98126325    -0.00007902    -0.00000605  0.37D-06  0.68D-06 21430.78
    6     1     1     1.06086433    -0.82174197  -415.99037378    -0.00000646    -0.00000048  0.23D-07  0.61D-07 26499.44
    6     2     2     1.06086444    -0.82174191  -415.99037372    -0.00000641    -0.00000047  0.24D-07  0.60D-07 26499.44
    6     3     3     1.06086425    -0.82174190  -415.99037371    -0.00000647    -0.00000047  0.24D-07  0.61D-07 26499.44
    6     4     4     1.06154664    -0.82339320  -415.98127046    -0.00000674    -0.00000056  0.33D-07  0.72D-07 26499.44
    6     5     5     1.06154638    -0.82339314  -415.98127039    -0.00000682    -0.00000055  0.34D-07  0.71D-07 26499.44
    6     6     6     1.06154611    -0.82339314  -415.98127039    -0.00000698    -0.00000056  0.34D-07  0.72D-07 26499.44
    6     7     7     1.06154935    -0.82339309  -415.98127035    -0.00000703    -0.00000054  0.32D-07  0.70D-07 26499.44
    6     8     8     1.06155093    -0.82339290  -415.98127016    -0.00000691    -0.00000053  0.32D-07  0.70D-07 26499.44
    7     1     1     1.06087708    -0.82174255  -415.99037436    -0.00000058    -0.00000007  0.40D-08  0.85D-08 31607.54
    7     2     2     1.06087716    -0.82174247  -415.99037429    -0.00000057    -0.00000007  0.39D-08  0.83D-08 31607.54
    7     3     3     1.06087699    -0.82174247  -415.99037428    -0.00000057    -0.00000007  0.39D-08  0.83D-08 31607.54
    7     4     4     1.06156326    -0.82339388  -415.98127114    -0.00000068    -0.00000009  0.51D-08  0.11D-07 31607.54
    7     5     5     1.06156303    -0.82339382  -415.98127107    -0.00000068    -0.00000008  0.51D-08  0.11D-07 31607.54
    7     6     6     1.06156320    -0.82339382  -415.98127107    -0.00000068    -0.00000008  0.51D-08  0.10D-07 31607.54
    7     7     7     1.06156415    -0.82339376  -415.98127101    -0.00000067    -0.00000009  0.50D-08  0.10D-07 31607.54
    7     8     8     1.06156503    -0.82339356  -415.98127082    -0.00000066    -0.00000008  0.51D-08  0.10D-07 31607.54
    8     1     1     1.06088188    -0.82174263  -415.99037444    -0.00000008    -0.00000001  0.86D-09  0.12D-08 36715.04
    8     2     2     1.06088178    -0.82174255  -415.99037437    -0.00000008    -0.00000001  0.82D-09  0.12D-08 36715.04
    8     3     3     1.06088174    -0.82174255  -415.99037436    -0.00000008    -0.00000001  0.82D-09  0.12D-08 36715.04
    8     4     4     1.06156851    -0.82339399  -415.98127124    -0.00000010    -0.00000001  0.11D-08  0.15D-08 36715.04
    8     5     5     1.06156833    -0.82339392  -415.98127118    -0.00000010    -0.00000001  0.10D-08  0.15D-08 36715.04
    8     6     6     1.06156836    -0.82339392  -415.98127117    -0.00000010    -0.00000001  0.10D-08  0.15D-08 36715.04
    8     7     7     1.06156872    -0.82339386  -415.98127112    -0.00000010    -0.00000001  0.10D-08  0.15D-08 36715.04
    8     8     8     1.06156841    -0.82339366  -415.98127092    -0.00000010    -0.00000001  0.10D-08  0.15D-08 36715.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  27.0%
 P   0.3%  56.0%  12.6%

 Initialization:   2.7%
 Other:            0.5%

 Total CPU:    36715.0 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/           0.0000000   0.0000000   0.0000000  -0.0004775   0.0005658   0.0000130   0.0043477   0.7900312
 22222220222/2/0/0           0.0000000   0.0000000   0.0000000   0.0001298   0.0012234  -0.0009346   0.6863599   0.3912501
 22222220222/2//00           0.6843441  -0.0002071   0.0003226  -0.6841973   0.0006433  -0.0003925   0.0003649  -0.0004160
 222222202222//0/0           0.6843440  -0.0002071   0.0003226   0.6841971  -0.0006433   0.0003925  -0.0003649   0.0004160
 22222220222/2/00/           0.0002168   0.6840257  -0.0208105   0.0003993   0.0077850  -0.6841548  -0.0009519   0.0000111
 222222202222//00/           0.0003162  -0.0208106  -0.6840257   0.0006386   0.6841544   0.0077867  -0.0009328  -0.0004846
 22222220222//20/0           0.0002168   0.6840297  -0.0208106  -0.0003993  -0.0077850   0.6841508   0.0009519  -0.0000111
 22222220222//2/00          -0.0003162   0.0208108   0.6840296   0.0006386   0.6841505   0.0077866  -0.0009328  -0.0004846
 222222202222///00           0.0000000   0.0000000  -0.0000000   0.0006074   0.0006576  -0.0009475   0.6820121  -0.3987814

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970783   -0.000449    0.000308   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000294    0.029521    0.970334    0.000000    0.000000    0.000000    0.000003    0.000000
 3           0.000458    0.970334   -0.029521   -0.000000   -0.000000    0.000003   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.970467    0.000523    0.000906   -0.000566   -0.000587
 5          -0.000000   -0.000003    0.000000   -0.000912    0.001334    0.970404   -0.011042    0.000695
 6           0.000000   -0.000000   -0.000003    0.000557   -0.001335    0.011045    0.970404    0.000016
 7          -0.000000    0.000000   -0.000000   -0.000518    0.970452   -0.001323    0.001350    0.005316
 8          -0.000000   -0.000000   -0.000000    0.000590   -0.005317   -0.000687   -0.000016    0.970453

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970783    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.970783    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.970783   -0.000000    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.970468    0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.970468    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970468    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970468   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970468


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97078309 (fixed)   0.97085000 (relaxed)   0.97078324 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020363   -0.00061299   -0.70410404
 Singles      0.01639579   -0.07478663   -0.08317452
 Pairs        0.04449849   -0.00000001   -0.03446407
 Total        1.06109790   -0.07539963   -0.82174263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16863181
 Nuclear energy                         0.00000000
 Kinetic energy                       295.52841078
 One electron energy                 -723.24906990
 Two electron energy                  307.25869545
 Virial quotient                       -1.40761551
 Correlation energy                    -0.82174263
 !MRCI STATE 1.2 Energy              -415.990374442211

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.04058119 (Davidson, fixed reference)
 Cluster corrected energies          -416.04046130 (Davidson, relaxed reference)
 Cluster corrected energies          -416.04058119 (Davidson, rotated reference)

 Cluster corrected energies          -416.03840222 (Pople, fixed reference)
 Cluster corrected energies          -416.03828159 (Pople, relaxed reference)
 Cluster corrected energies          -416.03840222 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97033428 (fixed)   0.97085004 (relaxed)   0.97078329 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020363   -0.00061299   -0.70410422
 Singles      0.01639568   -0.07478644   -0.08317437
 Pairs        0.04449849   -0.00000000   -0.03446396
 Total        1.06109780   -0.07539944   -0.82174255
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16863181
 Nuclear energy                         0.00000000
 Kinetic energy                       295.52843637
 One electron energy                 -723.24908245
 Two electron energy                  307.25870808
 Virial quotient                       -1.40761539
 Correlation energy                    -0.82174255
 !MRCI STATE 2.2 Energy              -415.990374366389

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.04058103 (Davidson, fixed reference)
 Cluster corrected energies          -416.04046113 (Davidson, relaxed reference)
 Cluster corrected energies          -416.04058103 (Davidson, rotated reference)

 Cluster corrected energies          -416.03840206 (Pople, fixed reference)
 Cluster corrected energies          -416.03828143 (Pople, relaxed reference)
 Cluster corrected energies          -416.03840206 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97033424 (fixed)   0.97085006 (relaxed)   0.97078331 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020363   -0.00061299   -0.70410420
 Singles      0.01639570   -0.07478648   -0.08317439
 Pairs        0.04449844   -0.00000001   -0.03446396
 Total        1.06109776   -0.07539948   -0.82174255
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16863181
 Nuclear energy                         0.00000000
 Kinetic energy                       295.52843859
 One electron energy                 -723.24908393
 Two electron energy                  307.25870956
 Virial quotient                       -1.40761538
 Correlation energy                    -0.82174255
 !MRCI STATE 3.2 Energy              -415.990374364165

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.04058099 (Davidson, fixed reference)
 Cluster corrected energies          -416.04046110 (Davidson, relaxed reference)
 Cluster corrected energies          -416.04058099 (Davidson, rotated reference)

 Cluster corrected energies          -416.03840202 (Pople, fixed reference)
 Cluster corrected energies          -416.03828139 (Pople, relaxed reference)
 Cluster corrected energies          -416.03840202 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97046736 (fixed)   0.97053437 (relaxed)   0.97046826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020563   -0.00062850   -0.70467118
 Singles      0.01687619   -0.07580426   -0.08447692
 Pairs        0.04470499    0.00045151   -0.03424590
 Total        1.06178681   -0.07598125   -0.82339399
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.15787726
 Nuclear energy                         0.00000000
 Kinetic energy                       295.53722387
 One electron energy                 -723.28187059
 Two electron energy                  307.30059934
 Virial quotient                       -1.40754273
 Correlation energy                    -0.82339399
 !MRCI STATE 4.2 Energy              -415.981271243856

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03214613 (Davidson, fixed reference)
 Cluster corrected energies          -416.03202703 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03214613 (Davidson, rotated reference)

 Cluster corrected energies          -416.02996665 (Pople, fixed reference)
 Cluster corrected energies          -416.02984669 (Pople, relaxed reference)
 Cluster corrected energies          -416.02996665 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97040393 (fixed)   0.97053445 (relaxed)   0.97046835 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020563   -0.00062850   -0.70374229
 Singles      0.01687610   -0.07580414   -0.08447681
 Pairs        0.04470489   -0.00053494   -0.03517482
 Total        1.06178662   -0.07696759   -0.82339392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.15787726
 Nuclear energy                         0.00000000
 Kinetic energy                       295.53723682
 One electron energy                 -723.28187762
 Two electron energy                  307.30060644
 Virial quotient                       -1.40754267
 Correlation energy                    -0.82339392
 !MRCI STATE 5.2 Energy              -415.981271177411

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03214591 (Davidson, fixed reference)
 Cluster corrected energies          -416.03202681 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03214591 (Davidson, rotated reference)

 Cluster corrected energies          -416.02996643 (Pople, fixed reference)
 Cluster corrected energies          -416.02984647 (Pople, relaxed reference)
 Cluster corrected energies          -416.02996643 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97040441 (fixed)   0.97053444 (relaxed)   0.97046833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020563   -0.00062850   -0.70423456
 Singles      0.01687608   -0.07580410   -0.08447678
 Pairs        0.04470494   -0.00001228   -0.03468258
 Total        1.06178665   -0.07644488   -0.82339392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.15787726
 Nuclear energy                         0.00000000
 Kinetic energy                       295.53723673
 One electron energy                 -723.28187734
 Two electron energy                  307.30060616
 Virial quotient                       -1.40754267
 Correlation energy                    -0.82339392
 !MRCI STATE 6.2 Energy              -415.981271174040

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03214593 (Davidson, fixed reference)
 Cluster corrected energies          -416.03202683 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03214593 (Davidson, rotated reference)

 Cluster corrected energies          -416.02996645 (Pople, fixed reference)
 Cluster corrected energies          -416.02984649 (Pople, relaxed reference)
 Cluster corrected energies          -416.02996645 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97045163 (fixed)   0.97053428 (relaxed)   0.97046817 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020563   -0.00062848   -0.70039231
 Singles      0.01687609   -0.07580409   -0.08447669
 Pairs        0.04470529   -0.00409163   -0.03852486
 Total        1.06178701   -0.08052420   -0.82339386
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.15787726
 Nuclear energy                         0.00000000
 Kinetic energy                       295.53722017
 One electron energy                 -723.28186735
 Two electron energy                  307.30059624
 Virial quotient                       -1.40754275
 Correlation energy                    -0.82339386
 !MRCI STATE 7.2 Energy              -415.981271115332

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03214616 (Davidson, fixed reference)
 Cluster corrected energies          -416.03202706 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03214616 (Davidson, rotated reference)

 Cluster corrected energies          -416.02996669 (Pople, fixed reference)
 Cluster corrected energies          -416.02984672 (Pople, relaxed reference)
 Cluster corrected energies          -416.02996669 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97045333 (fixed)   0.97053442 (relaxed)   0.97046831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020563   -0.00062848   -0.00076223
 Singles      0.01687564   -0.07580343   -0.08447608
 Pairs        0.04470542   -0.74695023   -0.73815535
 Total        1.06178670   -0.82338213   -0.82339366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.15787726
 Nuclear energy                         0.00000000
 Kinetic energy                       295.53725545
 One electron energy                 -723.28187905
 Two electron energy                  307.30060813
 Virial quotient                       -1.40754258
 Correlation energy                    -0.82339366
 !MRCI STATE 8.2 Energy              -415.981270918507

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03214570 (Davidson, fixed reference)
 Cluster corrected energies          -416.03202660 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03214570 (Davidson, rotated reference)

 Cluster corrected energies          -416.02996622 (Pople, fixed reference)
 Cluster corrected energies          -416.02984626 (Pople, relaxed reference)
 Cluster corrected energies          -416.02996622 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1830.69       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     52343.07  41792.86  10546.80      2.41      0.12      0.73
 REAL TIME  *     52981.05 SEC
 DISK USED  *         1.82 GB (local),        5.50 GB (total)
 SF USED    *        14.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.04058119  AU                              
 SETTING HLSDIAG(5)     =      -416.04058103  AU                              
 SETTING HLSDIAG(6)     =      -416.04058099  AU                              
 SETTING HLSDIAG(7)     =      -416.03214613  AU                              
 SETTING HLSDIAG(8)     =      -416.03214591  AU                              
 SETTING HLSDIAG(9)     =      -416.03214593  AU                              
 SETTING HLSDIAG(10)    =      -416.03214616  AU                              
 SETTING HLSDIAG(11)    =      -416.03214570  AU                              


         HLSDIAG
    -416.3838568
    -416.3838568
    -416.3838568
    -416.0405812
    -416.0405810
    -416.0405810
    -416.0321461
    -416.0321459
    -416.0321459
    -416.0321462
    -416.0321457
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.327608   -416.327608   -416.327608
 Replaced energies:   -416.383857   -416.383857   -416.383857

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -415.990374   -415.990374   -415.990374   -415.981271   -415.981271   -415.981271   -415.981271   -415.981271
 Replaced energies:   -416.040581   -416.040581   -416.040581   -416.032146   -416.032146   -416.032146   -416.032146   -416.032146



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.38385680

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     950.66    -358.76     112.13       7.07     233.58     120.38
                            0.00     408.20    -733.55      -0.00    -685.37    -934.51     180.18    -233.56       7.19    -193.44

    2   2.2  0.5  0.5       0.00       0.00       0.00    -950.66      -0.00    -712.50    -236.37       5.77     187.31    -253.82
                         -408.20      -0.00     914.00     685.37       0.00    -443.92     -90.82    -187.38       5.66      97.17

    3   3.2  0.5  0.5       0.00       0.00       0.00     358.76     712.50      -0.00     173.24       3.12     104.38     185.61
                          733.55    -914.00       0.00     934.51     443.92       0.00    -240.54    -104.21       3.06     257.91

    4   1.2  0.5 -0.5      -0.00    -950.66     358.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -685.37    -934.51      -0.00    -408.20     733.55       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     950.66      -0.00     712.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          685.37      -0.00    -443.92     408.20       0.00    -914.00       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5    -358.76    -712.50      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          934.51     443.92      -0.00    -733.55     914.00      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5     112.13    -236.37     173.24       0.00       0.00       0.00   75340.29       0.00       0.00       0.00
                         -180.18      90.82     240.54      -0.00      -0.00      -0.00      -0.00       0.29       0.19      -0.52

    8   2.2  1.5  1.5       7.07       5.77       3.12       0.00       0.00       0.00       0.00   75340.32       0.00       0.00
                          233.56     187.38     104.21      -0.00      -0.00      -0.00      -0.29      -0.00     624.98      -0.71

    9   3.2  1.5  1.5     233.58     187.31     104.38       0.00       0.00       0.00       0.00       0.00   75340.33       0.00
                           -7.19      -5.66      -3.06      -0.00      -0.00      -0.00      -0.19    -624.98       0.00      -0.41

   10   4.2  1.5  1.5     120.38    -253.82     185.61       0.00       0.00       0.00       0.00       0.00       0.00   77191.57
                          193.44     -97.17    -257.91      -0.00      -0.00      -0.00       0.52       0.71       0.41      -0.00

   11   5.2  1.5  1.5    -250.66    -201.09    -112.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.45       2.84       1.18      -0.00      -0.00      -0.00      -0.38     744.20     -14.17      -1.36

   12   6.2  1.5  1.5      -3.06      -2.30      -0.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -250.44    -201.63    -111.87      -0.00      -0.00      -0.00       0.33     -14.17    -744.20       2.30

   13   7.2  1.5  1.5     195.07     -97.67    -259.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -122.54     256.79    -188.52      -0.00      -0.00      -0.00      -4.73      -1.04      -1.01   -1248.34

   14   8.2  1.5  1.5    -113.61      57.32     152.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.54     146.59    -107.70      -0.00      -0.00      -0.00    -859.47      -0.27      -0.38       6.87

   15   1.2  1.5  0.5       0.00       0.00       0.00      64.74    -136.47     100.02       0.00     -10.97    -360.67      -0.20
                            0.05       0.04      -0.19    -104.03      52.43     138.87       0.00     360.67     -10.97      -0.39

   16   2.2  1.5  0.5       0.00       0.00       0.00       4.08       3.33       1.80      10.97       0.00       0.11     -12.69
                         -137.36     279.02    -193.86     134.84     108.18      60.17    -360.67      -0.00      -0.17    -429.55

   17   3.2  1.5  0.5       0.00       0.00       0.00     134.86     108.14      60.26     360.67      -0.11       0.00    -429.56
                         -204.04      96.35     283.71      -4.15      -3.27      -1.77      10.97       0.17       0.00      12.99

   18   4.2  1.5  0.5       0.00       0.00       0.00      69.50    -146.54     107.16       0.20      12.69     429.56      -0.00
                           -0.33      -0.23       0.31     111.68     -56.10    -148.90       0.39     429.55     -12.99       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00    -144.72    -116.10     -64.90     429.71      -0.56      -0.19    -360.34
                         -221.36     109.21     300.38       1.42       1.64       0.68       4.89      -0.38       0.78       3.53

   20   6.2  1.5  0.5       0.00       0.00       0.00      -1.76      -1.33      -0.47       4.89       0.60       0.23      -4.28
                         -143.15     297.30    -213.71    -144.59    -116.41     -64.59    -429.71       0.36      -0.80    -360.35

   21   7.2  1.5  0.5       0.00       0.00       0.00     112.62     -56.39    -150.02      -0.72    -428.18      12.80       0.70
                            1.90       1.70       0.09     -70.75     148.26    -108.84      -0.80      12.88     430.91      -0.17

   22   8.2  1.5  0.5       0.00       0.00       0.00     -65.59      33.09      87.82      -0.23     250.36      -7.36       0.62
                          334.31     268.10     149.03     -40.15      84.63     -62.18      -0.11       7.73     245.62      -0.58

   23   1.2  1.5 -0.5      64.74    -136.47     100.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.03     -52.43    -138.87       0.05       0.04      -0.19      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       4.08       3.33       1.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -134.84    -108.18     -60.17    -137.36     279.02    -193.86      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5     134.86     108.14      60.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.15       3.27       1.77    -204.04      96.35     283.71      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      69.50    -146.54     107.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -111.68      56.10     148.90      -0.33      -0.23       0.31      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5    -144.72    -116.10     -64.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.42      -1.64      -0.68    -221.36     109.21     300.38      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      -1.76      -1.33      -0.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          144.59     116.41      64.59    -143.15     297.30    -213.71      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     112.62     -56.39    -150.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           70.75    -148.26     108.84       1.90       1.70       0.09      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5     -65.59      33.09      87.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.15     -84.63      62.18     334.31     268.10     149.03      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     112.13    -236.37     173.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     180.18     -90.82    -240.54      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       7.07       5.77       3.12       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -233.56    -187.38    -104.21      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00     233.58     187.31     104.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       7.19       5.66       3.06      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00     120.38    -253.82     185.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -193.44      97.17     257.91      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00    -250.66    -201.09    -112.41       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -2.45      -2.84      -1.18      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00      -3.06      -2.30      -0.81       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     250.44     201.63     111.87      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00     195.07     -97.67    -259.85       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     122.54    -256.79     188.52      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -113.61      57.32     152.11       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      69.54    -146.59     107.70      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5    -250.66      -3.06     195.07    -113.61       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.45     250.44     122.54      69.54      -0.05     137.36     204.04       0.33     221.36     143.15

    2   2.2  0.5  0.5    -201.09      -2.30     -97.67      57.32       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.84     201.63    -256.79    -146.59      -0.04    -279.02     -96.35       0.23    -109.21    -297.30

    3   3.2  0.5  0.5    -112.41      -0.81    -259.85     152.11       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.18     111.87     188.52     107.70       0.19     193.86    -283.71      -0.31    -300.38     213.71

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      64.74       4.08     134.86      69.50    -144.72      -1.76
                            0.00       0.00       0.00       0.00     104.03    -134.84       4.15    -111.68      -1.42     144.59

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00    -136.47       3.33     108.14    -146.54    -116.10      -1.33
                            0.00       0.00       0.00       0.00     -52.43    -108.18       3.27      56.10      -1.64     116.41

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     100.02       1.80      60.26     107.16     -64.90      -0.47
                            0.00       0.00       0.00       0.00    -138.87     -60.17       1.77     148.90      -0.68      64.59

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      10.97     360.67       0.20     429.71       4.89
                            0.38      -0.33       4.73     859.47      -0.00     360.67     -10.97      -0.39      -4.89     429.71

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00     -10.97       0.00      -0.11      12.69      -0.56       0.60
                         -744.20      14.17       1.04       0.27    -360.67       0.00      -0.17    -429.55       0.38      -0.36

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00    -360.67       0.11       0.00     429.56      -0.19       0.23
                           14.17     744.20       1.01       0.38      10.97       0.17      -0.00      12.99      -0.78       0.80

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.20     -12.69    -429.56      -0.00    -360.34      -4.28
                            1.36      -2.30    1248.34      -6.87       0.39     429.55     -12.99      -0.00      -3.53     360.35

   11   5.2  1.5  1.5   77191.62       0.00       0.00       0.00    -429.72       0.56       0.19     360.34      -0.00       1.15
                            0.00    -624.18      -2.03       0.02       4.89      -0.38       0.78       3.53      -0.00       0.17

   12   6.2  1.5  1.5       0.00   77191.61       0.00       0.00      -4.89      -0.60      -0.23       4.28      -1.15      -0.00
                          624.18      -0.00      -0.15      -0.44    -429.72       0.36      -0.80    -360.35      -0.17      -0.00

   13   7.2  1.5  1.5       0.00       0.00   77191.56       0.00       0.72     428.19     -12.80      -0.70      -3.95     363.78
                            2.03       0.15      -0.00      -0.76      -0.80      12.88     430.92      -0.17     356.91       3.87

   14   8.2  1.5  1.5       0.00       0.00       0.00   77191.67       0.23    -250.37       7.36      -0.62      -7.30     622.14
                           -0.02       0.44       0.76      -0.00      -0.11       7.73     245.62      -0.58    -626.12      -6.91

   15   1.2  1.5  0.5    -429.72      -4.89       0.72       0.23   75340.29       0.00       0.00       0.00       0.00       0.00
                           -4.89     429.72       0.80       0.11      -0.00       0.10       0.06      -0.17       0.13      -0.11

   16   2.2  1.5  0.5       0.56      -0.60     428.19    -250.37       0.00   75340.32       0.00       0.00       0.00       0.00
                            0.38      -0.36     -12.88      -7.73      -0.10      -0.00     208.33      -0.24    -248.07       4.72

   17   3.2  1.5  0.5       0.19      -0.23     -12.80       7.36       0.00       0.00   75340.33       0.00       0.00       0.00
                           -0.78       0.80    -430.92    -245.62      -0.06    -208.33       0.00      -0.14       4.72     248.07

   18   4.2  1.5  0.5     360.34       4.28      -0.70      -0.62       0.00       0.00       0.00   77191.57       0.00       0.00
                           -3.53     360.35       0.17       0.58       0.17       0.24       0.14      -0.00       0.45      -0.77

   19   5.2  1.5  0.5      -0.00      -1.15      -3.95      -7.30       0.00       0.00       0.00       0.00   77191.62       0.00
                            0.00       0.17    -356.91     626.12      -0.13     248.07      -4.72      -0.45       0.00    -208.06

   20   6.2  1.5  0.5       1.15      -0.00     363.78     622.14       0.00       0.00       0.00       0.00       0.00   77191.61
                           -0.17       0.00      -3.87       6.91       0.11      -4.72    -248.07       0.77     208.06      -0.00

   21   7.2  1.5  0.5       3.95    -363.78      -0.00       0.87       0.00       0.00       0.00       0.00       0.00       0.00
                          356.91       3.87       0.00      -1.11      -1.58      -0.35      -0.34    -416.11       0.68       0.05

   22   8.2  1.5  0.5       7.30    -622.14      -0.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -626.12      -6.91       1.11       0.00    -286.49      -0.09      -0.13       2.29      -0.01       0.15

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     -12.67    -416.47      -0.23    -496.20      -5.65
                           -0.00      -0.00      -0.00      -0.00       0.00     416.47     -12.67      -0.45      -5.65     496.20

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00      12.67       0.00       0.13     -14.65       0.64      -0.69
                           -0.00      -0.00      -0.00      -0.00    -416.47      -0.00      -0.19    -496.01       0.44      -0.41

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00     416.47      -0.13       0.00    -496.02       0.22      -0.27
                           -0.00      -0.00      -0.00      -0.00      12.67       0.19       0.00      15.00      -0.90       0.92

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.23      14.65     496.01      -0.00     416.09       4.95
                           -0.00      -0.00      -0.00      -0.00       0.45     496.00     -15.00       0.00      -4.08     416.10

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     496.19      -0.64      -0.22    -416.09      -0.00      -1.32
                           -0.00      -0.00      -0.00      -0.00       5.65      -0.44       0.90       4.08       0.00       0.20

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       5.65       0.69       0.27      -4.95       1.32      -0.00
                           -0.00      -0.00      -0.00      -0.00    -496.19       0.41      -0.92    -416.10      -0.20       0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.83    -494.42      14.78       0.81       4.56    -420.05
                           -0.00      -0.00      -0.00      -0.00      -0.92      14.87     497.57      -0.19     412.12       4.47

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.26     289.09      -8.49       0.71       8.43    -718.39
                           -0.00      -0.00      -0.00      -0.00      -0.12       8.93     283.62      -0.67    -722.98      -7.98

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


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00      64.74       4.08     134.86      69.50    -144.72      -1.76     112.62     -65.59
                           -1.90    -334.31    -104.03     134.84      -4.15     111.68       1.42    -144.59     -70.75     -40.15

    2   2.2  0.5  0.5       0.00       0.00    -136.47       3.33     108.14    -146.54    -116.10      -1.33     -56.39      33.09
                           -1.70    -268.10      52.43     108.18      -3.27     -56.10       1.64    -116.41     148.26      84.63

    3   3.2  0.5  0.5       0.00       0.00     100.02       1.80      60.26     107.16     -64.90      -0.47    -150.02      87.82
                           -0.09    -149.03     138.87      60.17      -1.77    -148.90       0.68     -64.59    -108.84     -62.18

    4   1.2  0.5 -0.5     112.62     -65.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           70.75      40.15      -0.05     137.36     204.04       0.33     221.36     143.15      -1.90    -334.31

    5   2.2  0.5 -0.5     -56.39      33.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -148.26     -84.63      -0.04    -279.02     -96.35       0.23    -109.21    -297.30      -1.70    -268.10

    6   3.2  0.5 -0.5    -150.02      87.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          108.84      62.18       0.19     193.86    -283.71      -0.31    -300.38     213.71      -0.09    -149.03

    7   1.2  1.5  1.5      -0.72      -0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.80       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5    -428.18     250.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.88      -7.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      12.80      -7.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -430.91    -245.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.70       0.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.17       0.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       3.95       7.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -356.91     626.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -363.78    -622.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.87       6.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00      -0.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00      12.67     416.47       0.23     496.19       5.65      -0.83      -0.26
                            1.58     286.49      -0.00     416.47     -12.67      -0.45      -5.65     496.19       0.92       0.12

   16   2.2  1.5  0.5       0.00       0.00     -12.67       0.00      -0.13      14.65      -0.64       0.69    -494.42     289.09
                            0.35       0.09    -416.47       0.00      -0.19    -496.00       0.44      -0.41     -14.87      -8.93

   17   3.2  1.5  0.5       0.00       0.00    -416.47       0.13       0.00     496.01      -0.22       0.27      14.78      -8.49
                            0.34       0.13      12.67       0.19      -0.00      15.00      -0.90       0.92    -497.57    -283.62

   18   4.2  1.5  0.5       0.00       0.00      -0.23     -14.65    -496.02      -0.00    -416.09      -4.95       0.81       0.71
                          416.11      -2.29       0.45     496.01     -15.00      -0.00      -4.08     416.10       0.19       0.67

   19   5.2  1.5  0.5       0.00       0.00    -496.20       0.64       0.22     416.09      -0.00       1.32       4.56       8.43
                           -0.68       0.01       5.65      -0.44       0.90       4.08      -0.00       0.20    -412.12     722.98

   20   6.2  1.5  0.5       0.00       0.00      -5.65      -0.69      -0.27       4.95      -1.32      -0.00    -420.05    -718.39
                           -0.05      -0.15    -496.20       0.41      -0.92    -416.10      -0.20      -0.00      -4.47       7.98

   21   7.2  1.5  0.5   77191.56       0.00       0.83     494.43     -14.78      -0.81      -4.56     420.05      -0.00      -1.01
                           -0.00      -0.25      -0.92      14.87     497.58      -0.19     412.12       4.47      -0.00      -1.28

   22   8.2  1.5  0.5       0.00   77191.67       0.26    -289.10       8.49      -0.71      -8.43     718.39       1.01      -0.00
                            0.25      -0.00      -0.12       8.93     283.62      -0.67    -722.98      -7.98       1.28      -0.00

   23   1.2  1.5 -0.5       0.83       0.26   75340.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.92       0.12       0.00      -0.10      -0.06       0.17      -0.13       0.11      -1.58    -286.49

   24   2.2  1.5 -0.5     494.43    -289.10       0.00   75340.32       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.87      -8.93       0.10       0.00    -208.33       0.24     248.07      -4.72      -0.35      -0.09

   25   3.2  1.5 -0.5     -14.78       8.49       0.00       0.00   75340.33       0.00       0.00       0.00       0.00       0.00
                         -497.58    -283.62       0.06     208.33      -0.00       0.14      -4.72    -248.07      -0.34      -0.13

   26   4.2  1.5 -0.5      -0.81      -0.71       0.00       0.00       0.00   77191.57       0.00       0.00       0.00       0.00
                            0.19       0.67      -0.17      -0.24      -0.14       0.00      -0.45       0.77    -416.11       2.29

   27   5.2  1.5 -0.5      -4.56      -8.43       0.00       0.00       0.00       0.00   77191.62       0.00       0.00       0.00
                         -412.12     722.98       0.13    -248.07       4.72       0.45      -0.00     208.06       0.68      -0.01

   28   6.2  1.5 -0.5     420.05     718.39       0.00       0.00       0.00       0.00       0.00   77191.61       0.00       0.00
                           -4.47       7.98      -0.11       4.72     248.07      -0.77    -208.06       0.00       0.05       0.15

   29   7.2  1.5 -0.5      -0.00       1.01       0.00       0.00       0.00       0.00       0.00       0.00   77191.56       0.00
                            0.00      -1.28       1.58       0.35       0.34     416.11      -0.68      -0.05       0.00       0.25

   30   8.2  1.5 -0.5      -1.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   77191.67
                            1.28       0.00     286.49       0.09       0.13      -2.29       0.01      -0.15      -0.25       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     -10.97    -360.67      -0.20    -429.72      -4.89       0.72       0.23
                           -0.00      -0.00       0.00     360.67     -10.97      -0.39      -4.89     429.72       0.80       0.11

   32   2.2  1.5 -1.5       0.00       0.00      10.97       0.00       0.11     -12.69       0.56      -0.60     428.19    -250.37
                           -0.00      -0.00    -360.67      -0.00      -0.17    -429.55       0.38      -0.36     -12.88      -7.73

   33   3.2  1.5 -1.5       0.00       0.00     360.67      -0.11       0.00    -429.56       0.19      -0.23     -12.80       7.36
                           -0.00      -0.00      10.97       0.17       0.00      12.99      -0.78       0.80    -430.92    -245.62

   34   4.2  1.5 -1.5       0.00       0.00       0.20      12.69     429.56      -0.00     360.34       4.28      -0.70      -0.62
                           -0.00      -0.00       0.39     429.55     -12.99       0.00      -3.53     360.35       0.17       0.58

   35   5.2  1.5 -1.5       0.00       0.00     429.71      -0.56      -0.19    -360.34      -0.00      -1.15      -3.95      -7.30
                           -0.00      -0.00       4.89      -0.38       0.78       3.53       0.00       0.17    -356.91     626.12

   36   6.2  1.5 -1.5       0.00       0.00       4.89       0.60       0.23      -4.28       1.15      -0.00     363.78     622.14
                           -0.00      -0.00    -429.71       0.36      -0.80    -360.35      -0.17       0.00      -3.87       6.91

   37   7.2  1.5 -1.5       0.00       0.00      -0.72    -428.18      12.80       0.70       3.95    -363.78      -0.00       0.87
                           -0.00      -0.00      -0.80      12.88     430.91      -0.17     356.91       3.87       0.00      -1.11

   38   8.2  1.5 -1.5       0.00       0.00      -0.23     250.36      -7.36       0.62       7.30    -622.14      -0.87      -0.00
                           -0.00      -0.00      -0.11       7.73     245.62      -0.58    -626.12      -6.91       1.11       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5     112.13       7.07     233.58     120.38    -250.66      -3.06     195.07    -113.61
                         -180.18     233.56      -7.19     193.44       2.45    -250.44    -122.54     -69.54

    5   2.2  0.5 -0.5    -236.37       5.77     187.31    -253.82    -201.09      -2.30     -97.67      57.32
                           90.82     187.38      -5.66     -97.17       2.84    -201.63     256.79     146.59

    6   3.2  0.5 -0.5     173.24       3.12     104.38     185.61    -112.41      -0.81    -259.85     152.11
                          240.54     104.21      -3.06    -257.91       1.18    -111.87    -188.52    -107.70

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00      10.97     360.67       0.20     429.71       4.89      -0.72      -0.23
                           -0.00     360.67     -10.97      -0.39      -4.89     429.71       0.80       0.11

   24   2.2  1.5 -0.5     -10.97       0.00      -0.11      12.69      -0.56       0.60    -428.18     250.36
                         -360.67       0.00      -0.17    -429.55       0.38      -0.36     -12.88      -7.73

   25   3.2  1.5 -0.5    -360.67       0.11       0.00     429.56      -0.19       0.23      12.80      -7.36
                           10.97       0.17      -0.00      12.99      -0.78       0.80    -430.91    -245.62

   26   4.2  1.5 -0.5      -0.20     -12.69    -429.56      -0.00    -360.34      -4.28       0.70       0.62
                            0.39     429.55     -12.99      -0.00      -3.53     360.35       0.17       0.58

   27   5.2  1.5 -0.5    -429.72       0.56       0.19     360.34      -0.00       1.15       3.95       7.30
                            4.89      -0.38       0.78       3.53      -0.00       0.17    -356.91     626.12

   28   6.2  1.5 -0.5      -4.89      -0.60      -0.23       4.28      -1.15      -0.00    -363.78    -622.14
                         -429.72       0.36      -0.80    -360.35      -0.17      -0.00      -3.87       6.91

   29   7.2  1.5 -0.5       0.72     428.19     -12.80      -0.70      -3.95     363.78      -0.00      -0.87
                           -0.80      12.88     430.92      -0.17     356.91       3.87      -0.00      -1.11

   30   8.2  1.5 -0.5       0.23    -250.37       7.36      -0.62      -7.30     622.14       0.87      -0.00
                           -0.11       7.73     245.62      -0.58    -626.12      -6.91       1.11      -0.00

   31   1.2  1.5 -1.5   75340.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.29      -0.19       0.52      -0.38       0.33      -4.73    -859.47

   32   2.2  1.5 -1.5       0.00   75340.32       0.00       0.00       0.00       0.00       0.00       0.00
                            0.29       0.00    -624.98       0.71     744.20     -14.17      -1.04      -0.27

   33   3.2  1.5 -1.5       0.00       0.00   75340.33       0.00       0.00       0.00       0.00       0.00
                            0.19     624.98      -0.00       0.41     -14.17    -744.20      -1.01      -0.38

   34   4.2  1.5 -1.5       0.00       0.00       0.00   77191.57       0.00       0.00       0.00       0.00
                           -0.52      -0.71      -0.41       0.00      -1.36       2.30   -1248.34       6.87

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   77191.62       0.00       0.00       0.00
                            0.38    -744.20      14.17       1.36      -0.00     624.18       2.03      -0.02

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   77191.61       0.00       0.00
                           -0.33      14.17     744.20      -2.30    -624.18       0.00       0.15       0.44

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   77191.56       0.00
                            4.73       1.04       1.01    1248.34      -2.03      -0.15       0.00       0.76

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   77191.67
                          859.47       0.27       0.38      -6.87       0.02      -0.44      -0.76       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.38955253    -0.00569572    -1250.07      0.00000000        0.00      0.0000
     2  -416.38955253    -0.00569572    -1250.07      0.00000000        0.00      0.0000
     3  -416.38955214    -0.00569533    -1249.98      0.00000039        0.09      0.0000
     4  -416.38955214    -0.00569533    -1249.98      0.00000039        0.09      0.0000
     5  -416.37260142     0.01125539     2470.27      0.01695111     3720.34      0.4613
     6  -416.37260142     0.01125539     2470.27      0.01695111     3720.34      0.4613
     7  -416.04532813     0.33852867    74298.45      0.34422439    75548.52      9.3668
     8  -416.04532813     0.33852868    74298.46      0.34422440    75548.52      9.3668
     9  -416.04532809     0.33852871    74298.46      0.34422443    75548.53      9.3668
    10  -416.04532807     0.33852873    74298.47      0.34422446    75548.54      9.3668
    11  -416.04532804     0.33852877    74298.48      0.34422449    75548.54      9.3668
    12  -416.04532800     0.33852880    74298.48      0.34422453    75548.55      9.3668
    13  -416.04016622     0.34369058    75431.36      0.34938630    76681.43      9.5073
    14  -416.04016618     0.34369062    75431.37      0.34938635    76681.44      9.5073
    15  -416.04016600     0.34369080    75431.41      0.34938653    76681.48      9.5073
    16  -416.04016599     0.34369082    75431.42      0.34938654    76681.48      9.5073
    17  -416.03783409     0.34602272    75943.21      0.35171844    77193.27      9.5707
    18  -416.03783409     0.34602272    75943.21      0.35171844    77193.27      9.5707
    19  -416.03783397     0.34602283    75943.23      0.35171855    77193.30      9.5707
    20  -416.03783397     0.34602283    75943.23      0.35171855    77193.30      9.5707
    21  -416.03783384     0.34602296    75943.26      0.35171868    77193.33      9.5708
    22  -416.03783384     0.34602296    75943.26      0.35171868    77193.33      9.5708
    23  -416.03783376     0.34602304    75943.28      0.35171876    77193.35      9.5708
    24  -416.03783376     0.34602304    75943.28      0.35171876    77193.35      9.5708
    25  -416.03633507     0.34752173    76272.20      0.35321746    77522.27      9.6115
    26  -416.03633504     0.34752176    76272.21      0.35321748    77522.28      9.6115
    27  -416.02929873     0.35455808    77816.50      0.36025380    79066.57      9.8030
    28  -416.02929869     0.35455811    77816.51      0.36025384    79066.58      9.8030
    29  -416.02929860     0.35455820    77816.53      0.36025392    79066.60      9.8030
    30  -416.02929860     0.35455821    77816.53      0.36025393    79066.60      9.8030
    31  -416.02929859     0.35455821    77816.53      0.36025393    79066.60      9.8030
    32  -416.02929857     0.35455823    77816.54      0.36025396    79066.60      9.8030
    33  -416.02493363     0.35892317    78774.53      0.36461889    80024.60      9.9218
    34  -416.02493360     0.35892321    78774.54      0.36461893    80024.61      9.9218
    35  -416.02493336     0.35892344    78774.59      0.36461916    80024.66      9.9218
    36  -416.02493335     0.35892345    78774.59      0.36461918    80024.66      9.9218
    37  -416.02306041     0.36079640    79185.66      0.36649212    80435.72      9.9728
    38  -416.02306038     0.36079642    79185.66      0.36649214    80435.73      9.9728


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.581641453  -0.241130844  -0.495762482  -0.156085567   0.425171152   0.390523312  -0.000010378   0.000000119
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.465563353   0.405152188   0.388349076  -0.124552711   0.341230313  -0.371527421   0.000021273   0.000000124
                         0.003088294   0.170246740  -0.300623198   0.000965891   0.000007623  -0.280726778  -0.000003111  -0.000000028

    3    3.2  0.5  0.5   0.258785745  -0.190574195   0.417861100  -0.068522438   0.189891593  -0.206764731  -0.000014996   0.000000044
                        -0.001358564  -0.300426225   0.541973022  -0.000167239   0.000002632   0.504458953   0.000005588   0.000000011

    4    1.2  0.5 -0.5   0.206929205   0.499144824  -0.065655139   0.208531422  -0.206500674   0.224821738  -0.000000069  -0.000010717
                         0.123792369   0.298596653   0.141609838  -0.449772105  -0.331460297   0.360867974   0.000000025   0.000003027

    5    2.2  0.5 -0.5  -0.435084986   0.401116021  -0.053267598  -0.436088015   0.434725506   0.180442022  -0.000000099   0.000022901
                        -0.061894261   0.236355522   0.112595134   0.225873739   0.166894827   0.289618374  -0.000000003  -0.000003212

    6    3.2  0.5 -0.5   0.317772213   0.221383683  -0.028671254   0.315936133  -0.318831307   0.100412993  -0.000000016  -0.000017163
                        -0.159985098   0.134018448   0.062237867   0.607064273   0.442240982   0.161170865   0.000000021  -0.000001003

    7    1.2  1.5  1.5  -0.000000709   0.001268460   0.002281385  -0.000000251   0.000001126   0.000000987   0.048272073   0.000262888
                         0.000015825   0.000741530  -0.004997703  -0.000000924  -0.000000772   0.000001579  -0.012834328  -0.000312195

    8    2.2  1.5  1.5  -0.000091890   0.000007082   0.000001403   0.000028185  -0.000074022  -0.000000024  -0.000020202   0.031771557
                        -0.003204240   0.000002777  -0.000006152   0.000857829  -0.002433543  -0.000000006   0.000054844   0.224438937

    9    3.2  1.5  1.5  -0.003204646   0.000003600  -0.000006588   0.000857502  -0.002433784  -0.000000005  -0.000147712   0.186116126
                         0.000091883  -0.000007118  -0.000004450  -0.000028198   0.000074013   0.000000025  -0.000039476  -0.025791881

   10    4.2  1.5  1.5   0.000002064   0.002828543  -0.000370524  -0.000001936   0.000002347  -0.002677420   0.098639138   0.000167391
                         0.000006257   0.001683924   0.000800017   0.000008606  -0.000001456  -0.004292300  -0.018455368  -0.000123698

   11    5.2  1.5  1.5   0.003329622  -0.000003258   0.000007208  -0.000891384   0.002557924  -0.000003448  -0.000130385   0.152761604
                        -0.000032073   0.000001629   0.000001102   0.000012311  -0.000029083   0.000007728  -0.000110610  -0.018711878

   12    6.2  1.5  1.5   0.000032069  -0.000008411  -0.000003702  -0.000012338   0.000029093   0.000004467   0.000096992   0.017102357
                         0.003329484   0.000001623   0.000007836  -0.000891004   0.002557769  -0.000006179   0.000055980   0.143592957

   13    7.2  1.5  1.5   0.000003792   0.001704585   0.000792288   0.000009382  -0.000003450  -0.004340204  -0.018413039  -0.000209999
                         0.000005683  -0.002864318   0.000369343  -0.000000125   0.000003599   0.002707196  -0.098530550   0.000190422

   14    8.2  1.5  1.5   0.000007803   0.000442529  -0.003033627  -0.000000136  -0.000001814   0.000021381   0.005495833   0.000054634
                         0.000001272  -0.000753315  -0.001384252  -0.000000076  -0.000000041  -0.000016944   0.020595253   0.000151687

   15    1.2  1.5  0.5  -0.001830851   0.000003703  -0.000005779   0.000491530   0.002781220  -0.000000706  -0.000326042   0.713812266
                        -0.000003199  -0.000004776   0.000000125  -0.000001186   0.000000028  -0.000000331   0.000097035  -0.078032999

   16    2.2  1.5  0.5   0.000019598   0.002253844  -0.001966541   0.000008282  -0.000000830  -0.001172214   0.086982666   0.000203862
                         0.000002471  -0.003964923  -0.001027614   0.000000868   0.000000009   0.000779615   0.395873411   0.000448089

   17    3.2  1.5  0.5  -0.000001543  -0.002500198   0.001794936   0.000001302   0.000001319   0.000763734   0.311644119   0.000149972
                         0.000000477  -0.001336502  -0.003749939  -0.000009762  -0.000000012   0.001144901  -0.067308530   0.000204482

   18    4.2  1.5  0.5  -0.000880894   0.000004507   0.000003727  -0.003292272  -0.000000506   0.000004365  -0.000024457   0.030914324
                        -0.000006393  -0.000008467  -0.000001757  -0.000018169   0.000003096   0.000002115  -0.000211683  -0.001910852

   19    5.2  1.5  0.5  -0.000000619   0.000774222   0.001399054   0.000003157   0.000000034   0.002368242   0.138724743   0.000003186
                         0.000008983   0.000464576  -0.002973725   0.000004569  -0.000003695   0.003705904  -0.027310436   0.000036694

   20    6.2  1.5  0.5   0.000009702   0.000458902  -0.003013679  -0.000002583   0.000000032  -0.003734519   0.029013189   0.000079444
                         0.000000162  -0.000764591  -0.001416806  -0.000004673  -0.000000048   0.002385635   0.145431692   0.000100759

   21    7.2  1.5  0.5  -0.000008472  -0.000009837  -0.000005837  -0.000017872  -0.000000003  -0.000008405  -0.000263038   0.000182569
                         0.000872548  -0.000005766   0.000001414   0.003333385  -0.000026675  -0.000001828   0.000437453  -0.019809230

   22    8.2  1.5  0.5   0.000005331   0.000007144   0.000001497   0.000000279   0.000000045  -0.000001641  -0.000090849   0.010830768
                        -0.003331935   0.000003054  -0.000005742   0.000872905  -0.005114572  -0.000002693  -0.000013827   0.099021127

   23    1.2  1.5 -0.5   0.000000726   0.001572816  -0.000207831  -0.000002544  -0.000000654  -0.001470674   0.711902074   0.000384348
                         0.000006000   0.000937157   0.000445446   0.000005191  -0.000000424  -0.002360570  -0.132708157  -0.000049632

   24    2.2  1.5 -0.5  -0.000101297  -0.000018087  -0.000002696   0.000105111   0.000041863   0.000000432   0.000133949   0.033235105
                         0.004559608  -0.000007941   0.000007879   0.002216384  -0.001407174   0.000000710  -0.000599688   0.437902520

   25    3.2  1.5 -0.5  -0.002831737   0.000001080  -0.000009404   0.004157049   0.001375594  -0.000000688  -0.000100553  -0.277928698
                        -0.000136583   0.000001201  -0.000002925  -0.000051111   0.000042826  -0.000001126  -0.000351220   0.023053173

   26    4.2  1.5 -0.5  -0.000000479   0.000759256   0.001368325   0.000003162   0.000004103  -0.000002360   0.020318638  -0.000090432
                         0.000009580   0.000446750  -0.002994501  -0.000002642   0.000002586   0.000002067  -0.004232778  -0.000167950

   27    5.2  1.5 -0.5   0.000902889  -0.000004080   0.000002817   0.003286349   0.004397698   0.000003118  -0.000029987  -0.136529334
                        -0.000001221   0.000008026   0.000004786  -0.000018448   0.000050462  -0.000001983  -0.000072722   0.013696564

   28    6.2  1.5 -0.5   0.000001297  -0.000008409  -0.000003153   0.000017748   0.000050093   0.000000024   0.000045181   0.014266683
                         0.000891711  -0.000004841  -0.000004309   0.003330063  -0.004431182  -0.000000052  -0.000096469   0.149342338

   29    7.2  1.5 -0.5  -0.000011402  -0.000440681   0.003031676  -0.000003738  -0.000005996   0.000022642   0.002705689   0.000329826
                        -0.000000102   0.000753161   0.001385888   0.000004701  -0.000006167  -0.000014103   0.005908084   0.000329445

   30    8.2  1.5 -0.5   0.000007698   0.001705938   0.000791833   0.000005839  -0.000003153   0.004341016  -0.018391138   0.000071948
                         0.000001047  -0.002862090   0.000367429   0.000001057   0.000000031  -0.002704518  -0.098678943  -0.000047880

   31    1.2  1.5 -1.5  -0.001469193   0.000007516   0.000000733  -0.005493706  -0.000001862  -0.000000060  -0.000513392   0.092508702
                        -0.000014832  -0.000013944   0.000000616  -0.000032406  -0.000000003   0.000001364  -0.000330543  -0.003068342

   32    2.2  1.5 -1.5  -0.000007503  -0.001723815  -0.000766417  -0.000006172   0.000000018  -0.002104633   0.035467792  -0.000034214
                        -0.000001252   0.002702596  -0.000386404  -0.000001315   0.000000018   0.001223981   0.231481493  -0.000100887

   33    3.2  1.5 -1.5   0.000000564  -0.002702947   0.000386278  -0.000001266  -0.000000019  -0.001224115  -0.181669209  -0.000201590
                        -0.000007956  -0.001724017  -0.000766114  -0.000007848   0.000000017  -0.002104833   0.028616009   0.000099334

   34    4.2  1.5 -1.5  -0.003291846   0.000004983  -0.000008622   0.000881633   0.005058895   0.000000005  -0.000187806   0.098921235
                        -0.000007000  -0.000004310  -0.000001863   0.000000355   0.000002805   0.000002762  -0.000064232  -0.010736710

   35    5.2  1.5 -1.5   0.000001960   0.002840902  -0.000386117  -0.000002032  -0.000004736   0.001327893  -0.154268021  -0.000088136
                         0.000003071   0.001736849   0.000803537   0.000007003   0.000007012   0.002186440   0.026606832   0.000141571

   36    6.2  1.5 -1.5   0.000006385   0.001736774   0.000803181   0.000008666   0.000002883   0.002186314   0.025189792   0.000088921
                         0.000005711  -0.002840786   0.000385982  -0.000000063  -0.000007059  -0.001327802   0.142283827  -0.000050036

   37    7.2  1.5 -1.5   0.000007635   0.000006172   0.000004059   0.000001824  -0.000002748   0.000001230   0.000254082   0.010753341
                        -0.003333154  -0.000002930  -0.000008459   0.000874124   0.005115299  -0.000004831   0.000131970   0.098707324

   38    8.2  1.5 -1.5   0.000006965   0.000007349   0.000000012   0.000020178   0.000003076  -0.000000994  -0.000052352  -0.001274488
                        -0.000873629   0.000002914   0.000000155  -0.003334468  -0.000027106  -0.000001518   0.000231327  -0.039002793


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000552  -0.000011326   0.000003173   0.000000318  -0.000350769  -0.002257836  -0.001134836  -0.002759362
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000464   0.000023775  -0.000002501   0.000000278  -0.000281753   0.001898050   0.001600509  -0.002214027
                        -0.000000024  -0.000000915   0.000001913   0.000000016   0.000000095  -0.001470064   0.000908567   0.000000726

    3    3.2  0.5  0.5   0.000000245  -0.000017369  -0.000002611   0.000000131  -0.000156611   0.001644964  -0.000333758  -0.001232483
                         0.000000008   0.000001651  -0.000003436  -0.000000005   0.000000231   0.002640290  -0.001633592   0.000000199

    4    1.2  0.5 -0.5  -0.000010546  -0.000000560  -0.000000140   0.000001526   0.001039228  -0.000203566   0.002062003  -0.000813581
                         0.000000498   0.000000033   0.000000286  -0.000002870  -0.001990484   0.000408383   0.001810275  -0.000825647

    5    2.2  0.5 -0.5   0.000022173  -0.000000466  -0.000000108  -0.000003105  -0.002229858  -0.000163598   0.001654083   0.001717945
                        -0.000000379   0.000000009   0.000000265   0.000001416   0.001027891   0.000327956   0.001452990   0.000412833

    6    3.2  0.5 -0.5  -0.000016236  -0.000000249  -0.000000062   0.000002162   0.001678962  -0.000091144   0.000920864  -0.001265122
                        -0.000000441   0.000000020   0.000000113   0.000003881   0.002609450   0.000182226   0.000808623   0.001108371

    7    1.2  1.5  1.5  -0.000011859   0.591079571   0.002621783   0.000065318   0.000024202  -0.332654845  -0.089513441   0.000097174
                         0.000021614  -0.026932035  -0.004638245   0.000069341  -0.000014424   0.644648566  -0.080805016  -0.000175192

    8    2.2  1.5  1.5  -0.004642308   0.000260658  -0.000019318   0.036232025  -0.001641489   0.000155286   0.000060515  -0.012863188
                        -0.032958069   0.000260206  -0.000045018  -0.656527488  -0.053487074  -0.000184818   0.000075613  -0.420977663

    9    3.2  1.5  1.5  -0.032003331  -0.000259840  -0.000042151   0.668660634  -0.053483095  -0.000146591   0.000008959  -0.420980425
                         0.003436141   0.000207983   0.000021541   0.037145015   0.001641561   0.000249307  -0.000071521   0.012863188

   10    4.2  1.5  1.5   0.000066081  -0.008504862   0.001264345  -0.000129381  -0.000031754  -0.010195938   0.104164332  -0.000125105
                        -0.000064614  -0.000391244  -0.003536959  -0.000109048   0.000006985   0.020657495   0.091387687   0.000100233

   11    5.2  1.5  1.5  -0.023550895   0.000007402  -0.000037664  -0.154808267  -0.017713083  -0.000046460   0.000056006  -0.139351210
                         0.002609580   0.000026146   0.000016339  -0.005365147   0.000206288  -0.000068764  -0.000252102   0.001603981

   12    6.2  1.5  1.5  -0.002315725  -0.000004632  -0.000009589  -0.006189205  -0.000206292  -0.000018269  -0.000055050  -0.001604451
                        -0.023326978  -0.000202757  -0.000032509   0.163532585  -0.017702191   0.000000374   0.000212549  -0.139354465

   13    7.2  1.5  1.5  -0.000051220  -0.000181105  -0.003525629   0.000194114   0.000020791   0.019945381   0.091478711   0.000208905
                        -0.000122629   0.009849938  -0.001259596   0.000220692  -0.000009414   0.009922850  -0.104285238  -0.000199001

   14    8.2  1.5  1.5   0.000003419   0.011191634   0.001949164  -0.000008865   0.000012076  -0.123256336   0.014993511   0.000106573
                        -0.000011468   0.245660816   0.001095057   0.000153529   0.000000089  -0.063585633  -0.016468037  -0.000016316

   15    1.2  1.5  0.5  -0.112890303  -0.000226049  -0.000153457   0.020962816  -0.030902289   0.000207309  -0.000229775  -0.243173693
                         0.010564496  -0.000251861   0.000074624   0.002220108   0.000008262  -0.000187076  -0.000012789   0.000032020

   16    2.2  1.5  0.5   0.000305542   0.007704982   0.016837815  -0.000225025   0.000020899   0.293185385  -0.356116140  -0.000017561
                         0.000278484   0.481656501   0.006575469   0.000355760  -0.000053112   0.169614936   0.423177896   0.000074794

   17    3.2  1.5  0.5   0.000274433  -0.543022009   0.001790203  -0.000258506  -0.000068357  -0.236973718   0.322695584  -0.000150803
                        -0.000322558   0.007787483  -0.008941894  -0.000294017  -0.000008637   0.439189603   0.259704386   0.000039549

   18    4.2  1.5  0.5   0.162409626   0.000059962   0.000032484  -0.183234577  -0.139342705   0.000131785  -0.000008928   0.017704278
                        -0.002788314  -0.000105949   0.000152223  -0.004700475   0.002013378  -0.000077943   0.000018558  -0.000339019

   19    5.2  1.5  0.5  -0.000032012  -0.053245943   0.001585860   0.000170847   0.000133786   0.064936609   0.016932725   0.000001543
                        -0.000351994   0.001183034  -0.004804176  -0.000282210   0.000201912  -0.122401602   0.015638261   0.000083890

   20    6.2  1.5  0.5   0.000212522   0.001616822   0.005442815  -0.000116531  -0.000083103  -0.122414170   0.015628743   0.000018687
                         0.000344255   0.028700173   0.001956640   0.000294434  -0.000190358  -0.064943303  -0.016921553   0.000007986

   21    7.2  1.5  0.5  -0.003146779   0.000174732   0.000164509   0.004655068   0.002023498  -0.000258139  -0.000007747  -0.000254607
                        -0.162746359   0.000140050  -0.000025793  -0.184468558   0.139451357   0.000078846  -0.000029048  -0.016938541

   22    8.2  1.5  0.5  -0.001348410   0.000091771  -0.000011592  -0.000444118  -0.000090806  -0.000060957  -0.000022887   0.000030457
                        -0.014750388  -0.000069277  -0.000018213   0.003917557   0.016931050   0.000084295  -0.000028005   0.139446377

   23    1.2  1.5 -0.5   0.000367721  -0.061335275   0.009145540   0.000093939   0.000247830   0.017945282  -0.181701645   0.000191577
                        -0.000430529  -0.001784024  -0.025513457  -0.000069189  -0.000110712  -0.035978821  -0.159555432   0.000138376

   24    2.2  1.5 -0.5   0.020879264   0.000210494  -0.000526539  -0.001305931  -0.020557637  -0.000067347   0.000036241  -0.012357722
                         0.450783578  -0.000222055   0.000050572   0.012398951  -0.359016273  -0.000002966  -0.000061580   0.539589414

   25    3.2  1.5 -0.5   0.563945298   0.000220666   0.000206872  -0.008486800  -0.482541306   0.000025900  -0.000072902  -0.432667118
                        -0.028005620   0.000215689   0.000448161  -0.001550451   0.016832490  -0.000079537  -0.000126363  -0.017093765

   26    4.2  1.5 -0.5  -0.000082013   0.164873088  -0.075336517   0.000098857   0.000129021   0.063599896   0.017036744   0.000002204
                        -0.000118415  -0.007664222   0.166111680   0.000075952  -0.000083632  -0.123117174   0.015508885   0.000018541

   27    5.2  1.5 -0.5   0.063230781  -0.000048278   0.000340969  -0.004030876   0.139298733   0.000123707   0.000044147  -0.017714301
                        -0.003038377   0.000317989  -0.000025143  -0.000498417  -0.003534196   0.000210585  -0.000059921   0.000446620

   28    6.2  1.5 -0.5  -0.000672955   0.000163588  -0.000328146  -0.000484714   0.003534583  -0.000132687   0.000026885  -0.000446843
                         0.018024259  -0.000323075  -0.000033120   0.004344061   0.139312684  -0.000158478  -0.000000415  -0.017696789

   29    7.2  1.5 -0.5  -0.000212249   0.007091591   0.168658848  -0.000074627  -0.000186776   0.123234669  -0.014943721   0.000015935
                         0.000156216   0.162803325   0.076786196   0.000109016   0.000196698   0.063673382   0.016520238  -0.000006388

   30    8.2  1.5 -0.5  -0.000124543  -0.000186452  -0.004509350  -0.000006845  -0.000102059   0.019967607   0.091526108   0.000031489
                        -0.000085971   0.007599362  -0.001589497  -0.000012787   0.000014334   0.009853378  -0.104206019  -0.000004947

   31    1.2  1.5 -1.5   0.586464379   0.000005685   0.000063578   0.002259110   0.729438519   0.000030970   0.000025328  -0.092673248
                        -0.010395294   0.000010495   0.000203546  -0.000072480  -0.010202694  -0.000018461  -0.000196767   0.001283636

   32    2.2  1.5 -1.5   0.000382778   0.002189491  -0.604620848   0.000020791  -0.000232261   0.061331319   0.285787399   0.000085541
                        -0.000309243  -0.013901596  -0.253423646   0.000026594   0.000048756   0.032956350  -0.306152682  -0.000013655

   33    3.2  1.5 -1.5  -0.000408071   0.021462525  -0.259148039  -0.000025786   0.000298242  -0.032954687   0.306154863  -0.000030422
                        -0.000241363  -0.000083197   0.619180704   0.000019420  -0.000016350   0.061327821   0.285789311   0.000058100

   34    4.2  1.5 -1.5  -0.015640041  -0.000056126  -0.000049896   0.002904818   0.017705108  -0.000025577   0.000026576   0.139350652
                         0.001602866  -0.000046070  -0.000160415   0.000309759   0.000089044   0.000031212   0.000156661   0.000046054

   35    5.2  1.5 -1.5  -0.000004353   0.011831778   0.062334617  -0.000022097  -0.000033213  -0.010520112   0.103082751  -0.000126061
                         0.000019476   0.000771181  -0.140384261   0.000018373  -0.000078987   0.020504470   0.092617150   0.000223222

   36    6.2  1.5 -1.5   0.000014200   0.000260319   0.150946394   0.000016945   0.000006588   0.020494836   0.092619918   0.000098865
                         0.000267898  -0.013656261   0.066256532   0.000015144  -0.000011463   0.010515327  -0.103085194  -0.000196166

   37    7.2  1.5 -1.5  -0.001479231   0.000038697   0.000113519  -0.000309285  -0.000015397   0.000024739  -0.000025250  -0.000054594
                        -0.016983783  -0.000086978   0.000262606   0.002899613   0.016940709  -0.000017757  -0.000286899   0.139472340

   38    8.2  1.5 -1.5  -0.004322686  -0.000002627   0.000190074  -0.000026639  -0.001938121   0.000007150  -0.000069340   0.000329790
                        -0.243699226  -0.000006171   0.000046218  -0.000955834  -0.139431432  -0.000014143  -0.000078857   0.016932938


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000022766  -0.000003728  -0.000008396  -0.000000231  -0.000000477   0.000012418  -0.000001758  -0.000010834
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000021217   0.000003307   0.000007779  -0.000000146   0.000000031  -0.000007498  -0.000001136   0.000006085
                        -0.000015920   0.000003976  -0.000005932   0.000000065  -0.000000543  -0.000004902  -0.000000075  -0.000003079

    3    3.2  0.5  0.5  -0.000012625   0.000003188   0.000004824  -0.000000035  -0.000000248  -0.000014288  -0.000000416   0.000013457
                         0.000029071  -0.000004330   0.000010663  -0.000000021  -0.000000793   0.000008743   0.000000102   0.000005541

    4    1.2  0.5 -0.5   0.000002543   0.000015527   0.000000092  -0.000003349  -0.000008064  -0.000000310   0.000002035  -0.000000330
                        -0.000002726  -0.000016649  -0.000000212   0.000007701   0.000009440   0.000000362  -0.000010643   0.000001727

    5    2.2  0.5 -0.5   0.000000652  -0.000002828   0.000000118   0.000008542   0.000001142   0.000000433  -0.000004166  -0.000000140
                         0.000005130   0.000026374  -0.000000107  -0.000004769  -0.000008885   0.000000329   0.000005399   0.000001130

    6    3.2  0.5 -0.5  -0.000005340  -0.000029870  -0.000000006  -0.000007854   0.000015926   0.000000442   0.000002911  -0.000000179
                        -0.000000621  -0.000010595  -0.000000040  -0.000008678  -0.000005182   0.000000704   0.000014262   0.000000390

    7    1.2  1.5  1.5  -0.000000151   0.000000041  -0.000003945  -0.000000005  -0.000000151   0.000000923  -0.000000015  -0.000001337
                        -0.000000205   0.000000045   0.000006583  -0.000000017  -0.000000029   0.000003612   0.000000156   0.000007133

    8    2.2  1.5  1.5   0.000002949   0.000018175   0.000000026  -0.000000597  -0.000006605  -0.000000249  -0.000000140  -0.000000005
                        -0.000001547  -0.000005654  -0.000000025  -0.000006088   0.000004900  -0.000000148  -0.000006402   0.000000133

    9    3.2  1.5  1.5  -0.000001541  -0.000005654  -0.000000021   0.000005727   0.000004909  -0.000000159  -0.000006784   0.000000152
                        -0.000002953  -0.000018171  -0.000000023  -0.000000563   0.000006621   0.000000251   0.000000128  -0.000000002

   10    4.2  1.5  1.5  -0.362850112   0.044040333  -0.001116537  -0.000664727   0.000489174  -0.002680957   0.000395574   0.021890644
                        -0.594176034   0.114086815   0.002041381   0.000834769   0.000057896  -0.011551294  -0.002626658  -0.118328529

   11    5.2  1.5  1.5   0.000563289   0.000029056  -0.000106044  -0.526496834   0.013099117  -0.001170835   0.247552952  -0.005021555
                         0.000677066   0.000219396   0.000035703   0.062173655   0.017402818   0.000769448  -0.001600741  -0.000197748

   12    6.2  1.5  1.5  -0.000459651  -0.000445303   0.000145500   0.063030075  -0.008775360  -0.000505442   0.001143998   0.000149701
                         0.000713406   0.000053849   0.000252609   0.534970605   0.006964834   0.000093703   0.229205740  -0.004780787

   13    7.2  1.5  1.5   0.594578241  -0.114089177   0.001733784  -0.000311834   0.000048093  -0.007416126  -0.002594701  -0.115870996
                        -0.363085867   0.044072590   0.000947486   0.000436730  -0.000323850   0.001360166  -0.000237622  -0.021427922

   14    8.2  1.5  1.5  -0.001124251   0.000211954   0.003978701   0.000663702   0.002270152  -0.515899506   0.000472767   0.037112606
                         0.000442587  -0.000044625   0.002342876  -0.000248717  -0.019684185   0.133160711  -0.000024356   0.005646811

   15    1.2  1.5  0.5   0.000000804   0.000002712   0.000000014  -0.000000921  -0.000002762   0.000000087  -0.000004033   0.000000063
                         0.000001610   0.000009766   0.000000013   0.000000091  -0.000003944  -0.000000139  -0.000000006  -0.000000015

   16    2.2  1.5  0.5   0.000000893  -0.000000158   0.000004597   0.000000005   0.000000029  -0.000008059  -0.000000157  -0.000008826
                        -0.000000574   0.000000069   0.000002865  -0.000000008  -0.000000307   0.000001837  -0.000000019  -0.000001074

   17    3.2  1.5  0.5  -0.000000632   0.000000097  -0.000002196   0.000000003   0.000000220  -0.000001417  -0.000000053  -0.000003090
                        -0.000000959   0.000000173   0.000003298   0.000000008   0.000000017  -0.000006308   0.000000373   0.000018153

   18    4.2  1.5  0.5   0.000376108  -0.000532601   0.000257979   0.456711170  -0.155683022   0.005709078   0.010541876  -0.000388480
                        -0.000719299  -0.001087432   0.000071227  -0.058920423  -0.221859681  -0.007758282   0.000510755  -0.000380348

   19    5.2  1.5  0.5  -0.000740246   0.000062916  -0.001080938  -0.000401000  -0.018653998   0.120711531   0.001129505   0.076731063
                        -0.001669205   0.000439896   0.002573350   0.000333450  -0.001907476   0.489711704  -0.008405291  -0.443216061

   20    6.2  1.5  0.5  -0.003091047   0.000451342  -0.010509846  -0.000031816  -0.002457317   0.545155758   0.007613871   0.370408827
                         0.001595916  -0.000183901  -0.005873239  -0.000342225   0.020482342  -0.133862571   0.001218801   0.064696928

   21    7.2  1.5  0.5   0.000316596  -0.001409456   0.000215505   0.059486107  -0.214595839  -0.007574184   0.000366401   0.000207083
                         0.000615031   0.000383379   0.000050820   0.461393544   0.150490624  -0.005997166  -0.022479308   0.000979970

   22    8.2  1.5  0.5  -0.000081837  -0.001351989   0.000168149   0.001086297  -0.038524419  -0.001784056  -0.004020355   0.000492042
                        -0.000066206   0.000400847   0.000210542   0.010148695   0.028680700  -0.001388253   0.715289864  -0.014099279

   23    1.2  1.5 -0.5  -0.000005299   0.000000630  -0.000000400   0.000000005   0.000000144  -0.000001118   0.000000008  -0.000000285
                        -0.000008654   0.000001687   0.000000717   0.000000019   0.000000022  -0.000004278   0.000000053   0.000001632

   24    2.2  1.5 -0.5  -0.000000160  -0.000001038   0.000000011   0.000000796  -0.000009407  -0.000000361  -0.000000502   0.000000006
                         0.000000070   0.000000266  -0.000000003   0.000005342   0.000007015  -0.000000245   0.000005815  -0.000000100

   25    3.2  1.5 -0.5  -0.000000059  -0.000000261  -0.000000007   0.000003980   0.000006181  -0.000000207  -0.000015865   0.000000324
                        -0.000000186  -0.000001093  -0.000000008  -0.000000706   0.000008271   0.000000300  -0.000000278   0.000000017

   26    4.2  1.5 -0.5   0.000429683  -0.000787880   0.236192971  -0.000037119   0.009611565  -0.067545991   0.000300531  -0.001464339
                         0.001131482  -0.000211998  -0.395322467   0.000261728   0.000697384  -0.262464208   0.000457797   0.010355082

   27    5.2  1.5 -0.5  -0.000280324  -0.000716541  -0.000460304   0.002731003  -0.293859558   0.010678403   0.449848998  -0.008455375
                        -0.000346980  -0.001690450   0.000234281   0.000045039  -0.409802161  -0.015419974   0.007953312  -0.000465931

   28    6.2  1.5 -0.5   0.000442323   0.003267561   0.000297719  -0.001190731   0.455964173   0.017170025   0.006092146  -0.000239529
                        -0.000203437  -0.001167686   0.000172696  -0.011974986  -0.327566321   0.011427139  -0.375850697   0.007721166

   29    7.2  1.5 -0.5  -0.001241836   0.000236972  -0.399367076  -0.000036189  -0.000362958   0.253842211  -0.000932775  -0.022131438
                         0.000769369   0.000656605  -0.238565755   0.000218420   0.009649303  -0.065406590  -0.000384773  -0.003858614

   30    8.2  1.5 -0.5  -0.001229453   0.000009657  -0.008920259   0.000128670  -0.000088141   0.046683921   0.013939032   0.703303775
                         0.000723834  -0.000103985  -0.005077590   0.000235691   0.002268271  -0.010617529   0.002167444   0.130519463

   31    1.2  1.5 -1.5   0.000000007   0.000000054  -0.000000015  -0.000007573   0.000004546  -0.000000163   0.000006970  -0.000000153
                         0.000000064   0.000000270  -0.000000016   0.000000987   0.000006472   0.000000262   0.000000017  -0.000000013

   32    2.2  1.5 -1.5  -0.000016529   0.000003143  -0.000008501   0.000000033   0.000000048  -0.000008155   0.000000101   0.000004700
                         0.000009436  -0.000001095  -0.000004734  -0.000000013  -0.000000294   0.000001868   0.000000016   0.000001003

   33    3.2  1.5 -1.5  -0.000009430   0.000001114  -0.000004586   0.000000015   0.000000297  -0.000001856  -0.000000024  -0.000001088
                        -0.000016526   0.000003141   0.000008229   0.000000027   0.000000047  -0.000008101   0.000000120   0.000005203

   34    4.2  1.5 -1.5   0.053396086   0.187049660   0.001037830  -0.002306648  -0.007057446   0.000270982  -0.120317022   0.002652459
                         0.110019459   0.670612891  -0.000269012   0.000207588  -0.009561743  -0.000409430  -0.000743706   0.000105939

   35    5.2  1.5 -1.5   0.000142044  -0.000116865   0.266993552  -0.000075877   0.001354388  -0.004702617   0.000748199   0.048114759
                         0.000175803  -0.000870560  -0.457995645   0.000081994  -0.000398007  -0.021188995  -0.004971164  -0.242889682

   36    6.2  1.5 -1.5   0.000347714  -0.000839898   0.465455730  -0.000174386   0.000397065  -0.010972700  -0.004720844  -0.224864081
                        -0.000293078  -0.000157036   0.271181446  -0.000233400  -0.000321495   0.002140587  -0.000753385  -0.044208344

   37    7.2  1.5 -1.5   0.110044396   0.671054335   0.000531395  -0.000175458   0.005874056   0.000278245   0.000736928  -0.000253792
                        -0.053375036  -0.187181489  -0.000118490  -0.001959877  -0.004766442   0.000170400  -0.117849927   0.002595480

   38    8.2  1.5 -1.5  -0.000176718  -0.001089006  -0.000494367  -0.000564555   0.436355588   0.016440333  -0.001428820   0.000107656
                         0.000124407   0.000522137   0.000515681  -0.004610447  -0.305733561   0.011061489   0.037626322  -0.000446616


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000979527  -0.001078601  -0.000000297   0.000008316  -0.000000694  -0.000005830  -0.000004243  -0.000000143
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000936029  -0.000865691  -0.000000221  -0.000007845  -0.000000484   0.000004744   0.000003227  -0.000000140
                        -0.000706152  -0.000000033   0.000000001   0.000005949  -0.000000040  -0.000003699  -0.000002478   0.000000044

    3    3.2  0.5  0.5  -0.000511077  -0.000481745  -0.000000127  -0.000004525  -0.000000245   0.000004523   0.000003731  -0.000000112
                         0.001268946   0.000000015   0.000000014  -0.000010687   0.000000037   0.000006642   0.000004465  -0.000000004

    4    1.2  0.5 -0.5   0.000573039   0.000520428  -0.000004412  -0.000000153  -0.000002591   0.000000301  -0.000000005   0.000001046
                         0.000913750   0.000829859   0.000007295   0.000000257   0.000005249  -0.000000629   0.000000098  -0.000003645

    5    2.2  0.5 -0.5   0.000459952  -0.001095572   0.000009342  -0.000000113   0.000005407   0.000000214  -0.000000098  -0.000002856
                         0.000733363  -0.000417824  -0.000003703   0.000000184  -0.000002613  -0.000000477   0.000000100   0.000002117

    6    3.2  0.5 -0.5   0.000255928   0.000803517  -0.000006906  -0.000000083  -0.000003913   0.000000141  -0.000000023   0.000002788
                         0.000408124  -0.001107184  -0.000009682   0.000000098  -0.000007049  -0.000000247   0.000000135   0.000004379

    7    1.2  1.5  1.5   0.000000410   0.000226558  -0.000080747  -0.011574350   0.000251882   0.001590591  -0.084781070  -0.000000854
                         0.000000723  -0.000155331  -0.000023277   0.018875848   0.001890166  -0.005605359   0.199182332   0.000001260

    8    2.2  1.5  1.5   0.000004059  -0.014905597   0.006450725  -0.000099501  -0.001593758   0.000172981  -0.000375603   0.001369407
                         0.000010961  -0.490114822  -0.240321066  -0.000153235  -0.084479479   0.000303422   0.000661163   0.015255443

    9    3.2  1.5  1.5   0.000010963  -0.490116086   0.245109636  -0.000147801  -0.069341507  -0.000374481   0.000470010  -0.015430061
                        -0.000004060   0.014905556   0.006327383   0.000099221   0.002003975   0.000192304   0.000317087   0.001269122

   10    4.2  1.5  1.5  -0.046539156  -0.000041322   0.000760402   0.005811369   0.000300117   0.119862006   0.003213939   0.000160445
                        -0.074119308   0.000023522   0.000086149  -0.009729919  -0.000176994  -0.247034039  -0.005278242   0.001181320

   11    5.2  1.5  1.5  -0.000057187  -0.043753241   0.420704910   0.000813478   0.425620248  -0.000864849  -0.003026726  -0.026882639
                         0.000133285   0.000497366   0.003242657  -0.000487621  -0.001681912   0.000350309  -0.001702645   0.003152865

   12    6.2  1.5  1.5   0.000075619  -0.000497505   0.003071939   0.000509187   0.001898874   0.000802411   0.001598767   0.002597571
                        -0.000105498  -0.043753590  -0.446357108   0.000784756   0.398576617   0.000819180  -0.003067648   0.027808802

   13    7.2  1.5  1.5  -0.074090879   0.000057608  -0.000747746  -0.009386256  -0.000499166  -0.247125729  -0.001722547   0.001234884
                         0.046520799  -0.000060381  -0.000985853  -0.005647343   0.000642104  -0.119877525  -0.002149046  -0.000153140

   14    8.2  1.5  1.5   0.000373491   0.000030995  -0.000134676   0.058440138   0.005626318  -0.015905570   0.616081944   0.000003992
                        -0.000297039   0.000000703  -0.000091147   0.035826521  -0.000688419  -0.004409470   0.262235688   0.000025253

   15    1.2  1.5  0.5   0.000132672   0.566180769   0.008293789  -0.000521995  -0.266481759  -0.000137240   0.002010358  -0.000296318
                         0.000067464   0.000006396   0.000038496   0.000320728  -0.001874063  -0.000042245   0.001200618  -0.000182628

   16    2.2  1.5  0.5   0.235143977  -0.000164804  -0.000137795  -0.020826070  -0.001557609  -0.116688245  -0.172738334   0.000578976
                        -0.157630711  -0.000001778  -0.000148279  -0.013210358   0.000185672  -0.053000520  -0.080309590  -0.000115311

   17    3.2  1.5  0.5  -0.157629116   0.000265158  -0.000198487   0.007822876  -0.000219911  -0.056048656   0.076977347  -0.000100886
                        -0.235141170  -0.000006513   0.000042810  -0.011244495  -0.001692841   0.126308395  -0.167669130  -0.000573749

   18    4.2  1.5  0.5   0.000075042  -0.000003904   0.472202780   0.000050280   0.015194021  -0.002437957  -0.000368422  -0.476545366
                         0.000036415  -0.000052904  -0.001678718   0.000100670  -0.000567527  -0.000997687  -0.000165981   0.055177714

   19    5.2  1.5  0.5   0.040989962   0.000000441   0.000102295   0.002207931  -0.000050749   0.169965040  -0.039756403   0.000797859
                         0.063736930   0.000064425   0.000495139  -0.004437562   0.001285573  -0.361289314   0.094703896   0.002236234

   20    6.2  1.5  0.5  -0.063730619  -0.000001733   0.000550162   0.023765601   0.000920782   0.355526751   0.109598037  -0.002061054
                         0.040986310   0.000001870  -0.000218801   0.014364044  -0.000256394   0.168253767   0.049962663  -0.000243953

   21    7.2  1.5  0.5  -0.000144187   0.000000058   0.001881736   0.000171301  -0.000323257  -0.001107684   0.000338382   0.047841686
                        -0.000031533   0.000487164   0.528938825  -0.000023341   0.017537704   0.001751954  -0.000252973   0.413462956

   22    8.2  1.5  0.5  -0.000028147  -0.000001003   0.000314755   0.000326447  -0.001922005  -0.000088551   0.001205954  -0.000740385
                        -0.000048128   0.087504196  -0.011462242   0.000531015   0.274637245   0.000378064  -0.002231267  -0.001937807

   23    1.2  1.5 -0.5   0.300814258  -0.000127643  -0.000359476  -0.005675944   0.000031019  -0.116382706  -0.003485422  -0.000260539
                         0.479656847  -0.000076555   0.000172434   0.009412940  -0.000093596   0.239556012   0.004965604  -0.001089453

   24    2.2  1.5 -0.5  -0.000089066   0.008611762   0.000252204  -0.000097703   0.004843880  -0.000362007  -0.000624285   0.027306974
                        -0.000138675  -0.282959847   0.016067018  -0.000289156  -0.132976354   0.000591939   0.001049272   0.186044580

   25    3.2  1.5 -0.5   0.000135360   0.282956623   0.007777817   0.000232538   0.133338409   0.000738857  -0.001014074   0.186336027
                         0.000228098   0.008611902  -0.000542794  -0.000199872   0.005134229   0.000480730  -0.000581550  -0.027115774

   26    4.2  1.5 -0.5  -0.000046896  -0.000070718  -0.000054964  -0.237118657   0.000147947   0.005725546   0.195340146   0.000038114
                         0.000024798  -0.000044226  -0.000095170   0.386182228  -0.005136847  -0.005680496  -0.457981314   0.000291478

   27    5.2  1.5 -0.5   0.000054816  -0.075773067   0.005236312   0.000101261  -0.396574975  -0.000842761   0.003404818  -0.111520380
                        -0.000033856  -0.000862997   0.000299074   0.000522862  -0.007387184  -0.000285628   0.002368463   0.013802889

   28    6.2  1.5 -0.5   0.000000664  -0.000863256   0.000096103  -0.000339242  -0.007217903   0.000322108   0.001365120  -0.014357995
                        -0.000002461   0.075765781  -0.019443178   0.000611065   0.396357324  -0.000226428  -0.003590091  -0.110644757

   29    7.2  1.5 -0.5   0.000412764   0.000103318   0.000101417   0.463925123   0.003539481  -0.030214246   0.363230430   0.000344190
                        -0.000258788   0.000105397  -0.000104624   0.284856769  -0.000862308  -0.012803786   0.154717218  -0.000272532

   30    8.2  1.5 -0.5   0.074134176   0.000055726  -0.000176849  -0.012400284   0.000317249  -0.246801348  -0.007001969   0.001272615
                        -0.046492874  -0.000001724  -0.000366300  -0.007185762   0.000095710  -0.119917703  -0.004723493  -0.000192956

   31    1.2  1.5 -1.5   0.000011224   0.000000830   0.013774383  -0.000022512   0.000204847   0.000789844   0.000017749   0.215825849
                        -0.000274463  -0.000000037  -0.000040129   0.000074679   0.000173525   0.000483093   0.000011214  -0.024865571

   32    2.2  1.5 -1.5   0.423137862   0.000011443  -0.000048794   0.207195451  -0.000460859  -0.076620841  -0.024656385   0.000370337
                        -0.247767792  -0.000002385  -0.000107924   0.118657598  -0.000428181  -0.039730307  -0.010201314  -0.000094686

   33    3.2  1.5 -1.5   0.247768499   0.000002385   0.000106872   0.122099175  -0.000482259   0.031641008  -0.008102643   0.000083633
                         0.423138911   0.000011445  -0.000045703  -0.212529368   0.000488674  -0.059584721   0.021852557   0.000224406

   34    4.2  1.5 -1.5   0.000002026  -0.087517799  -0.008551154   0.000507633   0.274732355  -0.000249403  -0.002165242   0.000260729
                         0.000047507  -0.000048111  -0.000070193  -0.000796050   0.002081867   0.000223318  -0.001129998  -0.000216859

   35    5.2  1.5 -1.5   0.022825503   0.000082533  -0.000551795   0.213096826  -0.000946421  -0.191690382  -0.022602626  -0.000308921
                         0.037333004  -0.000119260   0.000270188  -0.356110159   0.001131124   0.383452505   0.048818133  -0.001496458

   36    6.2  1.5 -1.5   0.037333378  -0.000049200   0.000248576   0.385023637  -0.000748868   0.353311062  -0.033590855  -0.001612789
                        -0.022825575   0.000120113   0.000558956   0.230980058  -0.001349411   0.176668684  -0.011649203   0.000166033

   37    7.2  1.5 -1.5   0.000020549   0.000047663   0.000046121   0.000565846  -0.002082723   0.000776724   0.001167039   0.000232942
                        -0.000080888  -0.087483962  -0.008315376   0.001336392   0.274727979  -0.000139357  -0.002246237   0.003982948

   38    8.2  1.5 -1.5  -0.000017064  -0.000053212   0.000119064   0.000028210  -0.000359620  -0.001317423  -0.000067069   0.076907239
                        -0.000025886   0.000474226   0.042652450   0.000157953  -0.000876689   0.002284190   0.000043052   0.667522206


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.004753770  -0.001513049   0.005600514  -0.002328018   0.005175079  -0.004725057
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003852347  -0.001214344   0.004493182   0.003615695   0.004153520   0.004505494
                        -0.002994771   0.000000838   0.000001072   0.001775874   0.000000196   0.003401678

    3    3.2  0.5  0.5   0.003725043  -0.000674989   0.002500996  -0.001284323   0.002311425   0.002482826
                         0.005381132   0.000000162  -0.000000922  -0.003188761  -0.000000063  -0.006112648

    4    1.2  0.5 -0.5  -0.000537011   0.001975801   0.001984993   0.004587714  -0.002504636  -0.002743174
                         0.001108683  -0.004341001   0.001152708   0.003330478  -0.004006585  -0.004388166

    5    2.2  0.5 -0.5  -0.000431700  -0.004171324  -0.004182559   0.003681116   0.005272685  -0.002201838
                         0.000889504   0.002192990  -0.000578481   0.002671027   0.002017262  -0.003521840

    6    3.2  0.5 -0.5  -0.000239649   0.003069632   0.003069476   0.002047969  -0.003867099  -0.001225173
                         0.000494498   0.005782436  -0.001539475   0.001488073   0.005345462  -0.001959987

    7    1.2  1.5  1.5  -0.103994238   0.000017874  -0.000035639  -0.041771140  -0.000045204  -0.000008780
                         0.213767894  -0.000010999   0.000007433  -0.030412338   0.000030992  -0.000014094

    8    2.2  1.5  1.5   0.000035643  -0.001123672   0.004117050  -0.000002236   0.002973871  -0.000001496
                        -0.000042906  -0.036608779   0.135516413   0.000013092   0.097792205  -0.000002041

    9    3.2  1.5  1.5  -0.000027251  -0.036613104   0.135515142  -0.000015799   0.097792204  -0.000002048
                         0.000096612   0.001123544  -0.004117105   0.000000544  -0.002973867   0.000001492

   10    4.2  1.5  1.5   0.039085262   0.000146005  -0.000343948  -0.335896932  -0.000204241  -0.232617785
                        -0.081319470  -0.000125319   0.000203958  -0.243620053   0.000116610  -0.371654213

   11    5.2  1.5  1.5   0.000052536   0.110714059  -0.409802512  -0.000068277  -0.219331767  -0.000287928
                         0.000163585  -0.001289409   0.004645521   0.000697850   0.002492819   0.000665816

   12    6.2  1.5  1.5   0.000129010   0.001289718  -0.004646512   0.000186945  -0.002493326   0.000381304
                        -0.000055524   0.110720285  -0.409799561  -0.000611446  -0.219331251  -0.000528336

   13    7.2  1.5  1.5  -0.079156875  -0.000211571   0.000523172  -0.243870852   0.000287641  -0.371661707
                        -0.038312807   0.000111392  -0.000608915   0.336330350  -0.000305634   0.232619691

   14    8.2  1.5  1.5   0.373563734  -0.000077001   0.000228509  -0.051940864   0.000155419   0.001882952
                         0.181670206  -0.000003240  -0.000040267   0.070906294   0.000003560  -0.001491598

   15    1.2  1.5  0.5   0.000076601  -0.021164272   0.078305111  -0.000081178  -0.112922264  -0.000026558
                        -0.000059110   0.000005617   0.000003352   0.000022006  -0.000001538  -0.000014291

   16    2.2  1.5  0.5   0.090088783  -0.000016873  -0.000057613  -0.107448991   0.000032698  -0.046937265
                         0.049687058  -0.000016153  -0.000030520   0.154609389  -0.000000017   0.031366431

   17    3.2  1.5  0.5  -0.077841201  -0.000025037   0.000038816   0.107465054  -0.000053257   0.031353592
                         0.152974436   0.000024023  -0.000006117   0.070880286   0.000001475   0.046915217

   18    4.2  1.5  0.5  -0.000385578   0.409839736   0.110744449  -0.000034586  -0.000026943   0.000375848
                         0.000240058  -0.000839952  -0.000458498  -0.000004764  -0.000265053   0.000183053

   19    5.2  1.5  0.5  -0.185742898  -0.000384668  -0.000056522  -0.072236298  -0.000000288   0.204957656
                         0.371018553  -0.000640949   0.000079912  -0.053863574   0.000324039   0.319701233

   20    6.2  1.5  0.5   0.370952503   0.000237139   0.000002335  -0.053944568  -0.000009882  -0.319753258
                         0.185712969   0.000559861   0.000111121   0.072350297   0.000006842   0.204990321

   21    7.2  1.5  0.5   0.000764252  -0.000904807  -0.000210439   0.000112475   0.000000014  -0.000722530
                        -0.000257372  -0.410457891  -0.108492520   0.000171495   0.002440168  -0.000158948

   22    8.2  1.5  0.5   0.000133116   0.000223473   0.000050570   0.000006654  -0.000005976  -0.000143788
                        -0.000201040  -0.108444191   0.410391400   0.000046815   0.438621942  -0.000240733

   23    1.2  1.5 -0.5   0.007516469   0.000090283  -0.000048064  -0.064141753   0.000026194  -0.059860956
                        -0.015506541  -0.000041239  -0.000067943  -0.046560759   0.000014943  -0.095754710

   24    2.2  1.5 -0.5  -0.000006309  -0.005625446   0.003604078   0.000065682  -0.001716589   0.000017319
                        -0.000021201  -0.093226402  -0.193129149   0.000009002   0.056423277   0.000027736

   25    3.2  1.5 -0.5   0.000028455  -0.177809899   0.119886193  -0.000028447  -0.056397772  -0.000026981
                        -0.000009837   0.003074633   0.005932432  -0.000033380  -0.001717389  -0.000045943

   26    4.2  1.5 -0.5  -0.181634360  -0.000380470  -0.000056022  -0.072719156  -0.000354449  -0.000239029
                         0.372976580   0.000240914   0.000002894  -0.053314921  -0.000221667   0.000117656

   27    5.2  1.5 -0.5  -0.000401793  -0.409871460  -0.110673436  -0.000036304  -0.379734198   0.000274614
                        -0.000626169   0.005349144   0.001412239   0.000102789  -0.004326936  -0.000172009

   28    6.2  1.5 -0.5   0.000405449  -0.005351095  -0.001410830  -0.000031550  -0.004327057   0.000000563
                         0.000461463  -0.409790048  -0.110816998   0.000071985   0.379795630  -0.000012007

   29    7.2  1.5 -0.5  -0.373408325   0.000556463   0.000212435   0.051772379   0.000517777   0.002069129
                        -0.181901685  -0.000569633  -0.000107438  -0.071021537   0.000528414  -0.001293458

   30    8.2  1.5 -0.5  -0.079158921   0.000229748   0.000042834  -0.244007122   0.000280348   0.371923304
                        -0.038086825  -0.000036531  -0.000037143   0.336047938  -0.000005683  -0.232507464

   31    1.2  1.5 -1.5   0.000015400   0.234849870   0.063460157  -0.000024446  -0.000016606  -0.000002318
                        -0.000009545  -0.000393137  -0.000086603  -0.000022397   0.000000027   0.000054759

   32    2.2  1.5 -1.5   0.026425407  -0.000051450  -0.000007942   0.083960077  -0.000002523  -0.084499220
                         0.013817071   0.000014852   0.000013124  -0.108558622  -0.000000187   0.049315861

   33    3.2  1.5 -1.5  -0.013818865   0.000095994   0.000016813   0.108557741   0.000000180  -0.049315864
                         0.026429408   0.000019430   0.000011221   0.083959501  -0.000002527  -0.084499219

   34    4.2  1.5 -1.5   0.000150265  -0.110804988   0.409929086  -0.000160681  -0.438447245   0.000009384
                        -0.000063327  -0.000277966   0.000171469  -0.000378075  -0.000242159   0.000234995

   35    5.2  1.5 -1.5   0.040241273   0.000148025  -0.000346414  -0.332920085   0.000411952   0.114147811
                        -0.080666108   0.000081079   0.000608060  -0.247500632  -0.000597081   0.187301196

   36    6.2  1.5 -1.5  -0.080671711  -0.000123638   0.000200431  -0.247499904  -0.000245880   0.187301031
                        -0.040244262   0.000115758  -0.000600972   0.332917359   0.000603383  -0.114147110

   37    7.2  1.5 -1.5  -0.000155889   0.000033210  -0.000235468   0.000072871   0.000239803   0.000106688
                         0.000122113  -0.108549668   0.410540382   0.000809664  -0.438454610  -0.000405909

   38    8.2  1.5 -1.5  -0.000024344   0.000618884   0.000400481   0.000154671  -0.000266686  -0.000085402
                         0.000059274   0.410493183   0.108499237   0.000169438   0.002387300  -0.000129898


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.831%   5.814%  24.578%   2.436%  18.077%  15.251%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  21.676%  19.313%  24.119%   1.551%  11.644%  21.684%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   6.697%  12.657%  46.834%   0.470%   3.606%  29.723%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   5.814%  33.831%   2.436%  24.578%  15.251%  18.077%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  19.313%  21.676%   1.552%  24.119%  21.684%  11.644%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5  12.657%   6.697%   0.470%  46.834%  29.723%   3.606%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.249%   0.000%   0.000%  35.010%
    8    2.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   5.138%   0.111%   0.000%
    9    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   3.530%   0.104%   0.000%
   10    4.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   1.007%   0.000%   0.000%   0.007%
   11    5.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   2.369%   0.056%   0.000%
   12    6.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   2.091%   0.055%   0.000%
   13    7.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   1.005%   0.000%   0.000%   0.010%
   14    8.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.045%   0.000%   0.000%   6.047%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%  51.562%   1.286%   0.000%
   16    2.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  16.428%   0.000%   0.000%  23.205%
   17    3.2  1.5  0.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%  10.165%   0.000%   0.000%  29.493%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.096%   2.638%   0.000%
   19    5.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   1.999%   0.000%   0.000%   0.284%
   20    6.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   2.199%   0.000%   0.000%   0.083%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.039%   2.650%   0.000%
   22    8.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.992%   0.022%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  52.442%   0.000%   0.000%   0.377%
   24    2.2  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.286%  20.364%   0.000%
   25    3.2  1.5 -0.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   7.778%  31.882%   0.000%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   2.724%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   1.883%   0.401%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   2.251%   0.033%   0.000%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   2.656%
   30    8.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%   1.008%   0.000%   0.000%   0.006%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.857%  34.405%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   5.484%   0.000%   0.000%   0.020%
   33    3.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   3.382%   0.000%   0.000%   0.046%
   34    4.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.990%   0.025%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   2.451%   0.000%   0.000%   0.014%
   36    6.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   2.088%   0.000%   0.000%   0.019%
   37    7.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.986%   0.029%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.152%   5.941%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.003%   0.000%   0.000%  52.623%   1.454%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%  43.234%   0.286%   0.000%   0.000%  17.739%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%  44.849%   0.286%   0.000%   0.000%  17.739%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.001%   0.000%   0.000%   0.053%   1.920%   0.000%  48.471%   1.496%   0.001%   0.000%
   11    5.2  1.5  1.5   0.000%   2.399%   0.031%   0.000%   0.000%   1.942%   0.000%   0.000%   0.000%  28.106%
   12    6.2  1.5  1.5   0.000%   2.678%   0.031%   0.000%   0.000%   1.942%   0.000%   0.000%   0.000%  29.017%
   13    7.2  1.5  1.5   0.001%   0.000%   0.000%   0.050%   1.924%   0.000%  48.535%   1.496%   0.000%   0.000%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   1.924%   0.050%   0.000%   0.000%   0.000%   0.002%   0.000%
   15    1.2  1.5  0.5   0.000%   0.044%   0.095%   0.000%   0.000%   5.913%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   0.033%   0.000%   0.000%  11.473%  30.590%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.008%   0.000%   0.000%  24.904%  17.158%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   3.360%   1.942%   0.000%   0.000%   0.031%   0.000%   0.000%   0.000%  21.206%
   19    5.2  1.5  0.5   0.003%   0.000%   0.000%   1.920%   0.053%   0.000%   0.000%   0.000%   0.001%   0.000%
   20    6.2  1.5  0.5   0.003%   0.000%   0.000%   1.920%   0.053%   0.000%   0.001%   0.000%   0.014%   0.000%
   21    7.2  1.5  0.5   0.000%   3.405%   1.945%   0.000%   0.000%   0.029%   0.000%   0.000%   0.000%  21.642%
   22    8.2  1.5  0.5   0.000%   0.002%   0.029%   0.000%   0.000%   1.945%   0.000%   0.000%   0.000%   0.010%
   23    1.2  1.5 -0.5   0.073%   0.000%   0.000%   0.162%   5.847%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.016%  12.932%   0.000%   0.000%  29.131%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.007%  23.313%   0.000%   0.000%  18.749%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   3.327%   0.000%   0.000%   1.920%   0.053%   0.000%   0.000%   0.000%  21.207%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.002%   1.942%   0.000%   0.000%   0.031%   0.000%   0.000%   0.000%   0.001%
   28    6.2  1.5 -0.5   0.000%   0.002%   1.942%   0.000%   0.000%   0.031%   0.000%   0.001%   0.000%   0.014%
   29    7.2  1.5 -0.5   3.434%   0.000%   0.000%   1.924%   0.050%   0.000%   0.000%   0.000%  21.641%   0.000%
   30    8.2  1.5 -0.5   0.002%   0.000%   0.000%   0.050%   1.924%   0.000%   0.000%   0.000%   0.011%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.001%  53.218%   0.000%   0.000%   0.859%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5  42.979%   0.000%   0.000%   0.485%  17.540%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5  45.054%   0.000%   0.000%   0.485%  17.541%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.001%   0.031%   0.000%   0.000%   1.942%   1.496%  48.471%   0.000%   0.001%
   35    5.2  1.5 -1.5   2.359%   0.000%   0.000%   0.053%   1.920%   0.000%   0.000%   0.000%  28.105%   0.000%
   36    6.2  1.5 -1.5   2.717%   0.000%   0.000%   0.053%   1.921%   0.000%   0.000%   0.000%  29.019%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.001%   0.029%   0.000%   0.000%   1.945%   1.496%  48.535%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   1.944%   0.000%   0.000%   0.029%   0.000%   0.000%   0.000%   0.002%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.049%   0.000%   0.003%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  24.043%   5.780%   0.000%   0.714%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  24.044%   6.012%   0.000%   0.481%   0.000%
   10    4.2  1.5  1.5   0.000%   0.014%   0.001%   1.448%   0.766%   0.000%   0.000%   0.013%   0.000%   7.539%
   11    5.2  1.5  1.5   0.047%   0.000%   6.129%   0.003%   0.000%   0.191%  17.700%   0.000%  18.116%   0.000%
   12    6.2  1.5  1.5   0.013%   0.000%   5.254%   0.002%   0.000%   0.191%  19.924%   0.000%  15.887%   0.000%
   13    7.2  1.5  1.5   0.000%   0.006%   0.001%   1.389%   0.765%   0.000%   0.000%   0.012%   0.000%   7.544%
   14    8.2  1.5  1.5   0.039%  28.388%   0.000%   0.141%   0.000%   0.000%   0.000%   0.470%   0.003%   0.027%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  32.056%   0.007%   0.000%   7.102%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   8.014%   0.000%   0.000%   0.061%   0.000%   1.643%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   8.014%   0.000%   0.000%   0.019%   0.000%   1.910%
   18    4.2  1.5  0.5   7.346%   0.009%   0.011%   0.000%   0.000%   0.000%  22.298%   0.000%   0.023%   0.001%
   19    5.2  1.5  0.5   0.035%  25.439%   0.007%  20.233%   0.574%   0.000%   0.000%   0.002%   0.000%  15.942%
   20    6.2  1.5  0.5   0.043%  31.511%   0.006%  14.139%   0.574%   0.000%   0.000%   0.077%   0.000%  15.471%
   21    7.2  1.5  0.5   6.870%   0.009%   0.051%   0.000%   0.000%   0.000%  27.978%   0.000%   0.031%   0.000%
   22    8.2  1.5  0.5   0.231%   0.001%  51.166%   0.020%   0.000%   0.766%   0.013%   0.000%   7.543%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%  32.056%   0.000%   0.000%   0.012%   0.000%   7.093%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   8.014%   0.026%   0.000%   1.771%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   8.014%   0.006%   0.000%   1.781%   0.000%
   26    4.2  1.5 -0.5   0.009%   7.345%   0.000%   0.011%   0.000%   0.000%   0.000%  20.536%   0.003%   0.007%
   27    5.2  1.5 -0.5  25.429%   0.035%  20.243%   0.007%   0.000%   0.574%   0.003%   0.000%  15.733%   0.000%
   28    6.2  1.5 -0.5  31.520%   0.043%  14.130%   0.006%   0.000%   0.574%   0.038%   0.000%  15.715%   0.000%
   29    7.2  1.5 -0.5   0.009%   6.871%   0.000%   0.050%   0.000%   0.000%   0.000%  29.637%   0.001%   0.108%
   30    8.2  1.5 -0.5   0.001%   0.229%   0.020%  51.167%   0.766%   0.000%   0.000%   0.021%   0.000%   7.529%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  24.043%   0.000%   0.000%   5.701%   0.000%   0.745%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  24.044%   0.000%   0.000%   6.008%   0.000%   0.455%
   34    4.2  1.5 -1.5   0.014%   0.000%   1.448%   0.001%   0.000%   0.766%   0.007%   0.000%   7.548%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.047%   0.003%   6.131%   0.191%   0.000%   0.000%  17.222%   0.000%  18.378%
   36    6.2  1.5 -1.5   0.000%   0.012%   0.002%   5.252%   0.191%   0.000%   0.000%  20.159%   0.000%  15.604%
   37    7.2  1.5 -1.5   0.006%   0.000%   1.389%   0.001%   0.000%   0.765%   0.007%   0.000%   7.548%   0.000%
   38    8.2  1.5 -1.5  28.388%   0.039%   0.142%   0.000%   0.000%   0.000%   0.182%   0.000%   0.000%   0.001%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.003%   0.001%   0.003%   0.002%
    2    2.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.002%   0.002%   0.002%   0.003%
    3    3.2  0.5  0.5   0.000%   0.000%   0.004%   0.000%   0.001%   0.001%   0.001%   0.004%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.003%   0.002%   0.003%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.002%   0.002%   0.003%   0.002%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.001%   0.001%   0.004%   0.001%
    7    1.2  1.5  1.5   4.686%   0.000%   5.651%   0.000%   0.000%   0.267%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.023%   0.000%   0.134%   1.838%   0.000%   0.957%   0.000%
    9    3.2  1.5  1.5   0.000%   0.024%   0.000%   0.134%   1.838%   0.000%   0.957%   0.000%
   10    4.2  1.5  1.5   0.004%   0.000%   0.814%   0.000%   0.000%  17.218%   0.000%  19.224%
   11    5.2  1.5  1.5   0.001%   0.073%   0.000%   1.226%  16.796%   0.000%   4.811%   0.000%
   12    6.2  1.5  1.5   0.001%   0.078%   0.000%   1.226%  16.796%   0.000%   4.811%   0.000%
   13    7.2  1.5  1.5   0.001%   0.000%   0.773%   0.000%   0.000%  17.259%   0.000%  19.224%
   14    8.2  1.5  1.5  44.832%   0.000%  17.255%   0.000%   0.000%   0.773%   0.000%   0.001%
   15    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.045%   0.613%   0.000%   1.275%   0.000%
   16    2.2  1.5  0.5   3.629%   0.000%   1.058%   0.000%   0.000%   3.545%   0.000%   0.319%
   17    3.2  1.5  0.5   3.404%   0.000%   2.946%   0.000%   0.000%   1.657%   0.000%   0.318%
   18    4.2  1.5  0.5   0.000%  23.014%   0.000%  16.797%   1.226%   0.000%   0.000%   0.000%
   19    5.2  1.5  0.5   1.055%   0.001%  17.216%   0.000%   0.000%   0.812%   0.000%  14.422%
   20    6.2  1.5  0.5   1.451%   0.000%  17.210%   0.000%   0.000%   0.814%   0.000%  14.426%
   21    7.2  1.5  0.5   0.000%  17.324%   0.000%  16.848%   1.177%   0.000%   0.001%   0.000%
   22    8.2  1.5  0.5   0.001%   0.000%   0.000%   1.176%  16.842%   0.000%  19.239%   0.000%
   23    1.2  1.5 -0.5   0.004%   0.000%   0.030%   0.000%   0.000%   0.628%   0.000%   1.275%
   24    2.2  1.5 -0.5   0.000%   3.536%   0.000%   0.872%   3.731%   0.000%   0.319%   0.000%
   25    3.2  1.5 -0.5   0.000%   3.546%   0.000%   3.163%   1.441%   0.000%   0.318%   0.000%
   26    4.2  1.5 -0.5  24.790%   0.000%  17.210%   0.000%   0.000%   0.813%   0.000%   0.000%
   27    5.2  1.5 -0.5   0.002%   1.263%   0.000%  16.802%   1.225%   0.000%  14.422%   0.000%
   28    6.2  1.5 -0.5   0.001%   1.245%   0.000%  16.796%   1.228%   0.000%  14.426%   0.000%
   29    7.2  1.5 -0.5  15.587%   0.000%  17.252%   0.000%   0.000%   0.772%   0.000%   0.001%
   30    8.2  1.5 -0.5   0.007%   0.000%   0.772%   0.000%   0.000%  17.247%   0.000%  19.239%
   31    1.2  1.5 -1.5   0.000%   4.720%   0.000%   5.515%   0.403%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.071%   0.000%   0.089%   0.000%   0.000%   1.883%   0.000%   0.957%
   33    3.2  1.5 -1.5   0.054%   0.000%   0.089%   0.000%   0.000%   1.883%   0.000%   0.957%
   34    4.2  1.5 -1.5   0.001%   0.000%   0.000%   1.228%  16.804%   0.000%  19.224%   0.000%
   35    5.2  1.5 -1.5   0.289%   0.000%   0.813%   0.000%   0.000%  17.209%   0.000%   4.811%
   36    6.2  1.5 -1.5   0.126%   0.000%   0.813%   0.000%   0.000%  17.209%   0.000%   4.811%
   37    7.2  1.5 -1.5   0.001%   0.002%   0.000%   1.178%  16.854%   0.000%  19.224%   0.000%
   38    8.2  1.5 -1.5   0.000%  45.150%   0.000%  16.851%   1.177%   0.000%   0.001%   0.000%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1830.69       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    352791.92 300448.85  41792.86  10546.80      2.41      0.12      0.73
 REAL TIME  *    355572.93 SEC
 DISK USED  *         1.82 GB (local),        5.50 GB (total)
 SF USED    *        14.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -416.023060382933

              CI              CI           MULTI         RHF-SCF
   -415.98127092   -416.32760818   -415.15787726   -415.57789914
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
