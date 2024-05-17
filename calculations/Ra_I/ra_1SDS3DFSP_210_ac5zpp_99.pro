
 Working directory              : /wrk/irikura/molpro.kczNctCLpq/
 Global scratch directory       : /wrk/irikura/molpro.kczNctCLpq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.kczNctCLpq/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Ra SO-CI
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf,so-sci;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=16
 
 w(1) = 99
 do i=2,NSING
     w(i) = 1
 enddo
 
                                                                                 ! active space (2/10) as orbitals [7 3]
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=0;state,NSING;
         weight,w
     wf,sym=1,spin=2;state,NTRIP;
         weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 08-May-24          TIME: 13:04:10  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ra   ECP ECP78MDF                 selected for group  1
 Library entry RA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry RA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  RA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.228E-04 0.671E-04 0.724E-03 0.257E-02 0.257E-02 0.257E-02 0.257E-02 0.257E-02
         2 0.191E-03 0.191E-03 0.191E-03 0.200E-02 0.200E-02 0.200E-02 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     243.532 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 35.652 MB, node maximum: 45.089 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   21834438.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15993204      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   226482739. AND WROTE     3718919. INTEGRALS IN     12 RECORDS. CPU TIME:     0.89 SEC, REAL TIME:     0.96 SEC
 SORT2 READ    23245259. AND WROTE   131080516. INTEGRALS IN    942 RECORDS. CPU TIME:     0.30 SEC, REAL TIME:     0.35 SEC

 Node minimum:    21832526.  Node maximum:    21855633. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.41      4.23
 REAL TIME  *         7.39 SEC
 DISK USED  *        30.19 MB (local),      656.51 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   3
 
 SO-SCI SOLVER WITH NELEC=10 SYM=1 MS2=0 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                 4   (    1    3)
 Number of doubly occupied active orbitals:       1   (    1    0)
 Number of non-occupied active orbitals:          3   (    0    3)
 Number of virtual orbitals:                    205   (   99  106)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -23.68007334     -23.68007334    0.00571434    0.00571434    0.00000000    0    0.89E-03      0.40
    2    1    0     -23.68007619      -0.00000285    0.00036677    0.00036677    0.00000000    0    0.13E-03      0.78
    3    1    0     -23.68007621      -0.00000002    0.00003972    0.00003972    0.00000000    1    0.17E-04      1.16

 CONVERGENCE REACHED!  Final gradient:     0.00000302 ( 0.30E-05)
                       Final energy:     -23.68007621
 

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -23.680076212637
  RHF One-electron energy             -39.023955066897
  RHF Two-electron energy              15.343878854260
  RHF Kinetic energy                    6.017282505260
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.935343935063

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58867     1  1  s    0.99991
    2.1     2.00000    -0.16544     1  1  s   -0.41045    1  4  s    0.46069    1  5  s    0.62846
    1.2     2.00000    -0.80466     1  1  py   0.99757
    2.2     2.00000    -0.80466     1  1  px   0.99880
    3.2     2.00000    -0.80466     1  1  pz   0.99857


 HOMO      2.1    -0.165445 =      -4.5020eV
 LUMO      4.2     0.007921 =       0.2155eV
 LUMO-HOMO         0.173366 =       4.7175eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.93       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         5.95      1.54      4.23
 REAL TIME  *         9.04 SEC
 DISK USED  *        33.80 MB (local),      678.17 MB (total)
 SF USED    *        12.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  
 SETTING W(1)           =        99.00000000                                  

 DO I                   =         2.00000000   
 SETTING W(2)           =         1.00000000                                  

 DO I                   =         3.00000000   
 SETTING W(3)           =         1.00000000                                  

 DO I                   =         4.00000000   
 SETTING W(4)           =         1.00000000                                  

 DO I                   =         5.00000000   
 SETTING W(5)           =         1.00000000                                  

 DO I                   =         6.00000000   
 SETTING W(6)           =         1.00000000                                  

 DO I                   =         7.00000000   
 SETTING W(7)           =         1.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     199 (   93  106)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.567D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.512D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.658D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.656D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.627D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 6 4 2 3   5 4 6 1 2 5 3 6 4 7  141511 9131012 8 1 6   4 3 5 211 9 8121310
                                       1415 7 1 2 6 4 3 5 1   7 812151411 91310 2   3 4 6 5 7 812141511   91310 1 2 3 4 6 5 8
                                       121514 711 91310 2 5   4 3 6 1 5 2 4 6 3 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.887D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.538D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.596D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 3 2 1 3   2 1 4 5 9 7 810 6 1   2 31614151718201912  112113 810 5 4 6 9 7
                                        2 1 3 4 5 9 7 6 810  14162113151718201112  19 9 7 5 4 610 8 1 2   3132115171916181420
                                       1112 9 7 5 4 610 8 2   1 3 5 4 610 8 9 7 5   4 610 8 9 7 2 1 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.81818   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
 Weight factors for state symmetry  2:    0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
                                          0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826   0.00826
 
 Number of orbital rotations:  1396  ( 16 closed/active, 411 closed/virtual, 0 active/active, 969 active/virtual )
 Total number of variables:    2186
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   26   50   13    -23.64297624     -23.68227553   -0.03929929    0.01235320 0.00001676 0.00000000  0.25E+01      1.72
   2    9   16    0    -23.67749338     -23.67971890   -0.00222552    0.00960425 0.00002227 0.00000000  0.60E+00      2.90
   3   10   18    0    -23.67972757     -23.67972801   -0.00000043    0.00010365 0.00000000 0.00000000  0.95E-02      4.12
   4    3    6    0    -23.67972801     -23.67972801   -0.00000000    0.00000002 0.00000000 0.00000000  0.14E-05      4.97

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-08)
                       Final energy:    -23.67972801
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -23.700517871006
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.02682686
 One electron energy                           -39.01217207
 Two electron energy                            15.31165420
 Virial ratio                                    4.93250352
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -23.616927312520
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13204608
 One electron energy                           -39.05019612
 Two electron energy                            15.43326881
 Virial ratio                                    4.85139430
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -23.616927312519
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13204608
 One electron energy                           -39.05019612
 Two electron energy                            15.43326881
 Virial ratio                                    4.85139430
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -23.616927312514
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13204608
 One electron energy                           -39.05019612
 Two electron energy                            15.43326881
 Virial ratio                                    4.85139430
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -23.616927312509
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13204608
 One electron energy                           -39.05019612
 Two electron energy                            15.43326881
 Virial ratio                                    4.85139430
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -23.616927312508
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13204608
 One electron energy                           -39.05019612
 Two electron energy                            15.43326881
 Virial ratio                                    4.85139430
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -23.568571790099
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.01139944
 One electron energy                           -38.27361132
 Two electron energy                            14.70503953
 Virial ratio                                    4.92064644
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -23.626552728256
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13444173
 One electron energy                           -39.12320788
 Two electron energy                            15.49665515
 Virial ratio                                    4.85145931
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -23.626552728256
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13444173
 One electron energy                           -39.12320788
 Two electron energy                            15.49665515
 Virial ratio                                    4.85145931
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -23.626552728255
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13444173
 One electron energy                           -39.12320788
 Two electron energy                            15.49665515
 Virial ratio                                    4.85145931
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -23.626552728253
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13444173
 One electron energy                           -39.12320788
 Two electron energy                            15.49665515
 Virial ratio                                    4.85145931
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -23.626552728253
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.13444173
 One electron energy                           -39.12320788
 Two electron energy                            15.49665515
 Virial ratio                                    4.85145931
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -23.582372205994
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.94951705
 One electron energy                           -38.08751959
 Two electron energy                            14.50514739
 Virial ratio                                    4.96374563
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -23.553137295908
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481362
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -23.553137295907
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481362
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -23.553137295899
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481362
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -23.553137295897
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481363
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -23.553137295894
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481363
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -23.553137295893
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481363
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -23.553137295889
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.25608821
 One electron energy                           -39.22795092
 Two electron energy                            15.67481363
 Virial ratio                                    4.76483459
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -23.551838200489
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.21890837
 One electron energy                           -39.03789881
 Two electron energy                            15.48606061
 Virial ratio                                    4.78713382
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -23.551838200482
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.21890837
 One electron energy                           -39.03789881
 Two electron energy                            15.48606061
 Virial ratio                                    4.78713382
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -23.551838200475
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.21890837
 One electron energy                           -39.03789881
 Two electron energy                            15.48606061
 Virial ratio                                    4.78713382
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.882477646888
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999997098
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     2.117482062412
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999999981
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000065
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999949775
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.523772138099
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.476227281580
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000005
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000009895
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.947391493945
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     4.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.078046977156
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.942383621750
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     8.921936481541
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     4.057636412611
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.052608346554
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.000000001173
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999999811
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.999999999994
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.329703232952
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999998712
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.670318965947
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000001477311
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999998615983
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000029981
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.409714080661
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.590286345876
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000001440
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999449190
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.143836754715
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     4.000000000000
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.870915149186
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     6.057395901865
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.129047030166
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.942584218359
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     6.856161846415
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999999915
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999864
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.000000000017
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.787819120160
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000004190
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.212198971641
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999998522708
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000001383953
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000020244
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.066513781240
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.933486372544
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999998555
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000540914
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.908771751339
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.051037873658
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000220476385
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.949016488293
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.999779369030
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     5.091229807031
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999998912
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000325
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.999999999988
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 3 5 2 4 1 6 2   4 3 5 1 6 3 2 4 5 7  11 912 814151310 1 6   2 3 4 5 7 91112 814
                                       151310 1 2 6 4 5 3 1   711 912 815141310 2   4 6 5 3 711 912 815  141310 1 2 4 6 5 3 7
                                       11 912 815141310 2 6   4 5 3 1 2 6 4 5 3 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 3 2 1 3   2 1 5 6 8 410 7 9 3   2 11911121321141615  172018 5 8 610 9 7 4
                                        3 2 1 5 6 410 8 9 7  19111213211416151718  20 6 5 410 8 9 7 3 2   1191112132116141517
                                       2018 6 5 410 8 7 9 3   2 1 6 5 410 8 7 9 6   5 410 8 9 7 3 2 1 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58459     1  1  s    0.99689
    2.1     1.61994    -0.13568     1  1  s   -0.41103    1  4  s    0.50092    1  5  s    0.65778
    3.1     0.04968     0.06981     1  2  d1-  0.35939    1  3  d1-  0.41534
    4.1     0.04968     0.06981     1  2  d2-  0.35939    1  3  d2-  0.41534
    5.1     0.04968     0.06981     1  2  d2+  0.35939    1  3  d2+  0.41534
    6.1     0.04968     0.06981     1  2  d0   0.35939    1  3  d0   0.41534
    7.1     0.04968     0.06981     1  2  d1+  0.35939    1  3  d1+  0.41534
    8.1     0.01770     0.04453     1  1  s    0.28977    1  4  s   -0.81011    1  5  s   -0.80064    1  6  s    0.78710
                                    1 11  s    0.82432
    1.2     2.00000    -0.80213     1  1  pz   1.00029
    2.2     2.00000    -0.80213     1  1  py   1.00029
    3.2     2.00000    -0.80213     1  1  px   1.00029
    4.2     0.03798     0.06356     1  1  px  -0.42868    1  2  px   0.26526    1  3  px   0.76005
    5.2     0.03798     0.06356     1  1  pz  -0.42868    1  2  pz   0.26526    1  3  pz   0.76005
    6.2     0.03798     0.06356     1  1  py  -0.42868    1  2  py   0.26526    1  3  py   0.76005
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96609957     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00571014
 b00000a 000      0.00020754      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.68650478
 a00000b 000     -0.00020754     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.68650478
 ab00000 000     -0.00000000      0.00000046      0.65331576     -0.00000230      0.00000458     -0.00000160     -0.00000000
 ba00000 000      0.00000000     -0.00000046     -0.65331576      0.00000230     -0.00000458      0.00000160      0.00000000
 a0000b0 000      0.00000000      0.00000128      0.00000160     -0.00000037      0.00045845      0.65331560     -0.00000000
 b0000a0 000     -0.00000000     -0.00000128     -0.00000160      0.00000037     -0.00045845     -0.65331560      0.00000000
 a0b0000 000     -0.00000000      0.00000156     -0.00000458     -0.00000034      0.65331560     -0.00045845      0.00000000
 b0a0000 000      0.00000000     -0.00000156      0.00000458      0.00000034     -0.65331560      0.00045845     -0.00000000
 b00a000 000     -0.00000000     -0.63575203      0.00000098      0.15046873      0.00000160      0.00000133     -0.00000000
 a00b000 000      0.00000000      0.63575203     -0.00000098     -0.15046873     -0.00000160     -0.00000133      0.00000000
 b000a00 000     -0.00000000     -0.15046873     -0.00000214     -0.63575203      0.00000002     -0.00000006     -0.00000000
 a000b00 000      0.00000000      0.15046873      0.00000214      0.63575203     -0.00000002      0.00000006      0.00000000
 0000000 020     -0.13613373     -0.05824526     -0.00000083     -0.24609461      0.00000001     -0.00000002     -0.01969982
 0000000 002     -0.13613373      0.24224681      0.00000008      0.07260543     -0.00000054     -0.00000043     -0.01969982
 0000000 0ba     -0.00000000      0.00000016      0.21901210     -0.00000077      0.00000153     -0.00000054     -0.00000000
 0000000 0ab      0.00000000     -0.00000016     -0.21901210      0.00000077     -0.00000153      0.00000054      0.00000000
 0000000 ba0      0.00000000      0.00000043      0.00000054     -0.00000012      0.00015369      0.21901204      0.00000000
 0000000 ab0     -0.00000000     -0.00000043     -0.00000054      0.00000012     -0.00015369     -0.21901204     -0.00000000
 0000000 b0a     -0.00000000      0.00000052     -0.00000153     -0.00000012      0.21901204     -0.00015369      0.00000000
 0000000 a0b      0.00000000     -0.00000052      0.00000153      0.00000012     -0.21901204      0.00015369     -0.00000000
 0000000 200     -0.13613373     -0.18400155      0.00000074      0.17348918      0.00000053      0.00000046     -0.01969982
 0000002 000     -0.02622691      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.16285138
 00a0b00 000     -0.00000000      0.00000028     -0.00000082     -0.00000006      0.11769595     -0.00008259     -0.00000000
 00b0a00 000      0.00000000     -0.00000028      0.00000082      0.00000006     -0.11769595      0.00008259      0.00000000
 0020000 000     -0.04553352      0.02710721      0.00000038      0.11453184     -0.00000000      0.00000001      0.07707782
 0000200 000     -0.04553352     -0.02710721     -0.00000038     -0.11453184      0.00000000     -0.00000001      0.07707782
 0002000 000     -0.04553352      0.02710721      0.00000038      0.11453184     -0.00000000      0.00000001      0.07707782
 000ba00 000     -0.00000000     -0.11453184      0.00000018      0.02710721      0.00000029      0.00000024     -0.00000000
 000ab00 000      0.00000000      0.11453184     -0.00000018     -0.02710721     -0.00000029     -0.00000024      0.00000000
 0000020 000     -0.04553352     -0.11274109     -0.00000004     -0.03379039      0.00000025      0.00000020      0.07707782
 00a00b0 000      0.00000000     -0.00000007     -0.10192771      0.00000036     -0.00000071      0.00000025     -0.00000000
 00b00a0 000     -0.00000000      0.00000007      0.10192771     -0.00000036      0.00000071     -0.00000025      0.00000000
 0a0b000 000     -0.00000000      0.00000007      0.10192771     -0.00000036      0.00000071     -0.00000025      0.00000000
 0b0a000 000      0.00000000     -0.00000007     -0.10192771      0.00000036     -0.00000071      0.00000025     -0.00000000
 0a000b0 000      0.00000000     -0.00000024      0.00000071      0.00000005     -0.10192768      0.00007153      0.00000000
 0b000a0 000     -0.00000000      0.00000024     -0.00000071     -0.00000005      0.10192768     -0.00007153     -0.00000000
 0ab0000 000     -0.00000000     -0.00000020     -0.00000025      0.00000006     -0.00007153     -0.10192768      0.00000000
 0ba0000 000      0.00000000      0.00000020      0.00000025     -0.00000006      0.00007153      0.10192768     -0.00000000
 000a0b0 000     -0.00000000     -0.00000020     -0.00000025      0.00000006     -0.00007153     -0.10192768      0.00000000
 000b0a0 000      0.00000000      0.00000020      0.00000025     -0.00000006      0.00007153      0.10192768     -0.00000000
 0200000 000     -0.04553352      0.08563388     -0.00000035     -0.08074145     -0.00000025     -0.00000021      0.07707782
 0b00a00 000     -0.00000000      0.00000004      0.05884799     -0.00000021      0.00000041     -0.00000014      0.00000000
 0a00b00 000      0.00000000     -0.00000004     -0.05884799      0.00000021     -0.00000041      0.00000014     -0.00000000
 0000ba0 000      0.00000000      0.00000012      0.00000014     -0.00000003      0.00004130      0.05884797     -0.00000000
 0000ab0 000     -0.00000000     -0.00000012     -0.00000014      0.00000003     -0.00004130     -0.05884797      0.00000000
 
 Energy:        -23.70051787    -23.61692731    -23.61692731    -23.61692731    -23.61692731    -23.61692731    -23.56857179
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 000aa00 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a00000a 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 00a0a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000063
 a0a0000 000      0.00000061      0.00000000     -0.00000000      0.99994830     -0.00002191     -0.00000000     -0.00000000
 a0000a0 000      0.00008047      0.00000000     -0.00000001      0.00002191      0.99994829     -0.00000000      0.00000000
 aa00000 000      0.99994829      0.00004064     -0.00007938     -0.00000061     -0.00008047      0.00000000     -0.00000000
 a000a00 000     -0.00003006      0.99159965      0.12894466      0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00008395     -0.12894466      0.99159965     -0.00000000      0.00000000      0.00000000     -0.00000000
 0a000a0 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000061
 00a00a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.10257534
 0a0a000 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.88595535
 000a0a0 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000895
 0aa0000 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000054
 00aa000 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000030
 0000aa0 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000548
 0a00a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.45228466
 0000000 aa0      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 0aa     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 a0a      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:        -23.62655273    -23.62655273    -23.62655273    -23.62655273    -23.62655273    -23.58237221    -23.55313730

 State:                8               9              10              11              12              13              14
 000aa00 000      1.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a00000a 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 00a0a00 000      0.00000000      0.00000149      0.00742422      0.00002059      0.99997244     -0.00000694      0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a0000a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a000a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0a000a0 000     -0.00000000      0.00000618      0.89440254      0.00000319     -0.00664042     -0.00000220     -0.00001231
 00a00a0 000      0.00000000     -0.00000746      0.00000230      0.00003898      0.00000608      0.88852591      0.37335318
 0a0a000 000     -0.00000000      0.00000849     -0.00000091     -0.00001069     -0.00000029     -0.12281333      0.37335317
 000a0a0 000      0.00000000      0.85248749     -0.00000489     -0.27067522      0.00000434      0.00001800     -0.00000344
 0aa0000 000     -0.00000000      0.47520203     -0.00000611      0.75774866     -0.00001627     -0.00002919      0.00000344
 00aa000 000      0.00000000     -0.00000309     -0.44720127     -0.00000160      0.00332021      0.00000110     -0.00002463
 0000aa0 000      0.00000000      0.21782586      0.00000070     -0.59376080      0.00001190      0.00002725      0.00000597
 0a00a00 000      0.00000000     -0.00000060     -0.00000080     -0.00001633     -0.00000334     -0.44208437      0.64666667
 0000000 aa0     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000508
 0000000 0aa     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.55048799
 0000000 a0a      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00001815
 
 Energy:        -23.55313730    -23.55313730    -23.55313730    -23.55313730    -23.55313730    -23.55313730    -23.55183820

 State:               15              16
 000aa00 000     -0.00000000     -0.00000000
 a00000a 000     -0.00000000      0.00000000
 00a0a00 000      0.00000000      0.00000000
 a0a0000 000      0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000
 aa00000 000      0.00000000     -0.00000000
 a000a00 000     -0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000
 0a000a0 000      0.37335318      0.00000436
 00a00a0 000      0.00001231     -0.00000344
 0a0a000 000      0.00001231     -0.00000344
 000a0a0 000      0.00000436     -0.37335317
 0aa0000 000     -0.00000436      0.37335318
 00aa000 000      0.74670635      0.00000872
 0000aa0 000     -0.00000755      0.64666667
 0a00a00 000      0.00002133     -0.00000597
 0000000 aa0     -0.00000643      0.55048799
 0000000 0aa      0.00001815     -0.00000508
 0000000 a0a      0.55048799      0.00000643
 
 Energy:        -23.55183820    -23.55183820
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.25       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.73       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.44      4.49      1.54      4.23
 REAL TIME  *        14.80 SEC
 DISK USED  *        60.09 MB (local),      835.96 MB (total)
 SF USED    *        88.67 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -23.70051787   -0.0
    -23.61692731    6.0
    -23.61692731    6.0
    -23.61692731    6.0
    -23.61692731    6.0
    -23.61692731    6.0
    -23.56857179   -0.0
    -23.62655273    6.0
    -23.62655273    6.0
    -23.62655273    6.0
    -23.62655273    6.0
    -23.62655273    6.0
    -23.58237221   -0.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55313730   12.0
    -23.55183820    2.0
    -23.55183820    2.0
    -23.55183820    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     199 (  93 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.70051787
     2       -23.61692731
     3       -23.61692731
     4       -23.61692731
     5       -23.61692731
     6       -23.61692731
     7       -23.56857179

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.65D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        637457
 Number of doubly external configurations:       1914183
 Total number of contracted configurations:      2559491
 Total number of uncontracted configurations:   12066380

 Diagonal Coupling coefficients finished.               Storage:   3217856 words, CPU-Time:      0.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1476828 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.70051787     0.00000000    -0.23724712  0.36D-01  0.51D-01     1.25
    1     2     2     1.00000000     0.00000000   -23.61692731    -0.00000000    -0.25034338  0.49D-01  0.57D-01     1.25
    1     3     3     1.00000000     0.00000000   -23.61692731    -0.00000000    -0.25043510  0.49D-01  0.57D-01     1.25
    1     4     4     1.00000000     0.00000000   -23.61692731    -0.00000000    -0.25033336  0.49D-01  0.57D-01     1.25
    1     5     5     1.00000000     0.00000000   -23.61692731     0.00000000    -0.25040739  0.49D-01  0.57D-01     1.25
    1     6     6     1.00000000     0.00000000   -23.61692731     0.00000000    -0.25063655  0.49D-01  0.57D-01     1.25
    1     7     7     1.00000000     0.00000000   -23.56857179    -0.00000000    -0.24373738  0.63D-01  0.51D-01     1.25
    2     1     1     1.07118551    -0.23153694   -23.93205481    -0.23153694    -0.00603602  0.18D-02  0.83D-03    28.54
    2     2     2     1.08350733    -0.23469833   -23.85162564    -0.23469833    -0.00692895  0.25D-02  0.12D-02    28.54
    2     3     3     1.08354253    -0.23469332   -23.85162063    -0.23469332    -0.00693700  0.25D-02  0.12D-02    28.54
    2     4     4     1.08360449    -0.23467997   -23.85160729    -0.23467997    -0.00695408  0.25D-02  0.12D-02    28.54
    2     5     5     1.08365420    -0.23466056   -23.85158787    -0.23466056    -0.00697981  0.25D-02  0.12D-02    28.54
    2     6     6     1.08366593    -0.23463949   -23.85156680    -0.23463949    -0.00700050  0.25D-02  0.12D-02    28.54
    2     7     7     1.08955798    -0.23137022   -23.79994201    -0.23137022    -0.00811886  0.36D-02  0.14D-02    28.54
    3     1     1     1.07385078    -0.23776217   -23.93828004    -0.00622523    -0.00022101  0.56D-04  0.33D-04    55.98
    3     2     2     1.08410111    -0.24158973   -23.85851704    -0.00689140    -0.00032958  0.11D-03  0.62D-04    55.98
    3     3     3     1.08411090    -0.24158946   -23.85851677    -0.00689614    -0.00032975  0.11D-03  0.63D-04    55.98
    3     4     4     1.08412418    -0.24158838   -23.85851569    -0.00690841    -0.00033072  0.11D-03  0.63D-04    55.98
    3     5     5     1.08412384    -0.24158707   -23.85851439    -0.00692652    -0.00033229  0.11D-03  0.63D-04    55.98
    3     6     6     1.08412523    -0.24158693   -23.85851424    -0.00694744    -0.00033251  0.11D-03  0.63D-04    55.98
    3     7     7     1.08500972    -0.23910925   -23.80768104    -0.00773903    -0.00036001  0.10D-03  0.70D-04    55.98
    4     1     1     1.07487563    -0.23800228   -23.93852015    -0.00024011    -0.00001111  0.54D-05  0.14D-05    83.18
    4     2     2     1.08591438    -0.24195224   -23.85887955    -0.00036251    -0.00002984  0.23D-04  0.36D-05    83.18
    4     3     3     1.08591812    -0.24195219   -23.85887950    -0.00036273    -0.00002991  0.23D-04  0.37D-05    83.18
    4     4     4     1.08590818    -0.24195218   -23.85887949    -0.00036380    -0.00002989  0.23D-04  0.36D-05    83.18
    4     5     5     1.08591749    -0.24195218   -23.85887949    -0.00036510    -0.00002990  0.23D-04  0.37D-05    83.18
    4     6     6     1.08591621    -0.24195203   -23.85887934    -0.00036510    -0.00003003  0.23D-04  0.37D-05    83.18
    4     7     7     1.08579572    -0.23946985   -23.80804164    -0.00036060    -0.00001865  0.72D-05  0.37D-05    83.18
    5     1     1     1.07513098    -0.23801535   -23.93853322    -0.00001307    -0.00000080  0.43D-06  0.11D-06   110.46
    5     2     2     1.08662804    -0.24199127   -23.85891858    -0.00003903    -0.00000438  0.22D-05  0.66D-06   110.46
    5     3     3     1.08662850    -0.24199126   -23.85891857    -0.00003907    -0.00000439  0.22D-05  0.67D-06   110.46
    5     4     4     1.08662851    -0.24199125   -23.85891856    -0.00003907    -0.00000440  0.22D-05  0.67D-06   110.46
    5     5     5     1.08662780    -0.24199124   -23.85891855    -0.00003907    -0.00000440  0.22D-05  0.67D-06   110.46
    5     6     6     1.08662796    -0.24199122   -23.85891853    -0.00003919    -0.00000441  0.22D-05  0.67D-06   110.46
    5     7     7     1.08579808    -0.23948944   -23.80806123    -0.00001959    -0.00000131  0.10D-05  0.21D-06   110.46
    6     1     1     1.07516560    -0.23801632   -23.93853419    -0.00000097    -0.00000006  0.18D-07  0.93D-08   137.49
    6     2     2     1.08672857    -0.24199670   -23.85892401    -0.00000543    -0.00000047  0.23D-06  0.71D-07   137.49
    6     3     3     1.08672894    -0.24199669   -23.85892401    -0.00000544    -0.00000047  0.23D-06  0.71D-07   137.49
    6     4     4     1.08672888    -0.24199669   -23.85892400    -0.00000545    -0.00000048  0.23D-06  0.71D-07   137.49
    6     5     5     1.08672865    -0.24199669   -23.85892400    -0.00000545    -0.00000048  0.23D-06  0.72D-07   137.49
    6     6     6     1.08672848    -0.24199669   -23.85892400    -0.00000547    -0.00000048  0.24D-06  0.72D-07   137.49
    6     7     7     1.08569341    -0.23949094   -23.80806273    -0.00000150    -0.00000015  0.78D-07  0.31D-07   137.49
    7     1     1     1.07517380    -0.23801638   -23.93853425    -0.00000006    -0.00000000  0.18D-08  0.57D-09   164.55
    7     2     2     1.08677199    -0.24199720   -23.85892451    -0.00000050    -0.00000005  0.43D-07  0.72D-08   164.55
    7     3     3     1.08677184    -0.24199720   -23.85892451    -0.00000050    -0.00000005  0.43D-07  0.72D-08   164.55
    7     4     4     1.08677195    -0.24199720   -23.85892451    -0.00000051    -0.00000005  0.43D-07  0.73D-08   164.55
    7     5     5     1.08677201    -0.24199720   -23.85892451    -0.00000051    -0.00000005  0.43D-07  0.73D-08   164.55
    7     6     6     1.08677190    -0.24199720   -23.85892451    -0.00000051    -0.00000005  0.43D-07  0.73D-08   164.55
    7     7     7     1.08567780    -0.23949110   -23.80806289    -0.00000016    -0.00000002  0.12D-07  0.32D-08   164.55
    8     1     1     1.07517528    -0.23801638   -23.93853425    -0.00000000    -0.00000000  0.55D-09  0.34D-09   188.07
    8     2     2     1.08678451    -0.24199726   -23.85892457    -0.00000006    -0.00000001  0.51D-08  0.14D-08   188.07
    8     3     3     1.08678449    -0.24199726   -23.85892457    -0.00000006    -0.00000001  0.51D-08  0.14D-08   188.07
    8     4     4     1.08678448    -0.24199726   -23.85892457    -0.00000006    -0.00000001  0.52D-08  0.14D-08   188.07
    8     5     5     1.08678445    -0.24199726   -23.85892457    -0.00000006    -0.00000001  0.52D-08  0.14D-08   188.07
    8     6     6     1.08678443    -0.24199726   -23.85892457    -0.00000006    -0.00000001  0.52D-08  0.14D-08   188.07
    8     7     7     1.08566585    -0.23949112   -23.80806291    -0.00000002    -0.00000000  0.75D-09  0.36D-09   188.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.1%
 S   2.1%  16.4%
 P   0.6%  13.0%  22.7%

 Initialization:   0.4%
 Other:           42.8%

 Total CPU:      188.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9303935  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0622256
 2/00000\222000          -0.0605844  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9196633
 2/\00000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8964284  -0.0000000   0.0000000
 2/0000\0222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.8964283   0.0000000
 2/0\0000222000          -0.0000000  -0.0000000   0.0000000   0.8964283   0.0000000   0.0000000   0.0000000
 2/000\00222000          -0.0000000   0.4461284   0.7775303  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/00\000222000           0.0000000   0.7775302  -0.4461283  -0.0000000  -0.0000000   0.0000000   0.0000000
 20000000222/\0          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2609861  -0.0000000
 200000002220/\          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2609860  -0.0000000  -0.0000000
 20000000222/0\          -0.0000000  -0.0000000   0.0000000  -0.2609860   0.0000000   0.0000000  -0.0000000
 20000000222002          -0.1143945   0.2130934   0.0005720  -0.0000000   0.0000000  -0.0000000  -0.0405689
 20000000222020          -0.1143945  -0.1060512  -0.1848303  -0.0000000   0.0000000  -0.0000000  -0.0405689
 20000000222200          -0.1143945  -0.1070422   0.1842583   0.0000000   0.0000000   0.0000000  -0.0405689
 20000002222000          -0.0170944   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.1811321
 200/0\00222000          -0.0000000   0.0000000   0.0000000   0.1544117   0.0000000   0.0000000   0.0000000
 2000/\00222000          -0.0000000   0.1339312  -0.0768466   0.0000000  -0.0000000   0.0000000  -0.0000000
 2000/0\0222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1337245  -0.0000000
 20/\0000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1337245  -0.0000000
 200/00\0222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.1337245  -0.0000000  -0.0000000
 20/0\000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1337245  -0.0000000   0.0000000
 20/000\0222000           0.0000000  -0.0000000  -0.0000000  -0.1337245  -0.0000000  -0.0000000  -0.0000000
 20000020222000          -0.0478934  -0.1091851  -0.0002931  -0.0000000  -0.0000000  -0.0000000   0.0711389
 20020000222000          -0.0478935   0.0543387   0.0947036   0.0000000   0.0000000   0.0000000   0.0711388
 20002000222000          -0.0478934   0.0543386   0.0947035  -0.0000000  -0.0000000  -0.0000000   0.0711389
 20000200222000          -0.0478936  -0.0543386  -0.0947034   0.0000000   0.0000000   0.0000000   0.0711386
 20200000222000          -0.0478935   0.0548464  -0.0944105   0.0000000  -0.0000000  -0.0000000   0.0711388
 20000/\0222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0772057  -0.0000000
 20/00\00222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0772057   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956942   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.062420
 2           0.000000    0.915102   -0.000000    0.272547    0.000000    0.000000    0.000000
 3           0.000000   -0.272547   -0.000000    0.915102    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000   -0.000000    0.954826   -0.000000   -0.000000
 5           0.000000   -0.000000    0.954826    0.000000    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.954826   -0.000000
 7           0.064969   -0.000000    0.000000    0.000000    0.000000    0.000000    0.952535

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958974    0.000000    0.000000    0.000000   -0.000000    0.000000    0.001419
 2           0.000000    0.954826   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.954826    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.954826   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.954826   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954826    0.000000
 7           0.001419    0.000000    0.000000    0.000000    0.000000    0.000000    0.954747


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95694153 (fixed)   0.95933415 (relaxed)   0.95897409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01136282   -0.01675402   -0.17787649
 Singles      0.02978913   -0.06274250   -0.06422113
 Pairs        0.04624035    0.01544311    0.00408124
 Total        1.08739230   -0.06405341   -0.23801638
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.69993321
 Nuclear energy                         0.00000000
 Kinetic energy                         6.24119670
 One electron energy                  -38.98174362
 Two electron energy                   15.04320937
 Virial quotient                       -3.83556799
 Correlation energy                    -0.23860104
 !MRCI STATE 1.1 Energy               -23.938534250632

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.95938614 (Davidson, fixed reference)
 Cluster corrected energies           -23.95919142 (Davidson, relaxed reference)
 Cluster corrected energies           -23.95938614 (Davidson, rotated reference)

 Cluster corrected energies           -23.95611498 (Pople, fixed reference)
 Cluster corrected energies           -23.95594227 (Pople, relaxed reference)
 Cluster corrected energies           -23.95611498 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.91510153 (fixed)   0.95589467 (relaxed)   0.95482605 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927158   -0.01181174   -0.16411364
 Singles      0.03693167   -0.06423115   -0.06670798
 Pairs        0.05065746   -0.00000000   -0.01117564
 Total        1.09686072   -0.07604289   -0.24199726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61692731
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33071636
 One electron energy                  -38.99274948
 Two electron energy                   15.13382491
 Virial quotient                       -3.76875589
 Correlation energy                    -0.24199726
 !MRCI STATE 2.1 Energy               -23.858924571226

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88236460 (Davidson, fixed reference)
 Cluster corrected energies           -23.88177145 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88236460 (Davidson, rotated reference)

 Cluster corrected energies           -23.87880006 (Pople, fixed reference)
 Cluster corrected energies           -23.87826864 (Pople, relaxed reference)
 Cluster corrected energies           -23.87880006 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.91510154 (fixed)   0.95589467 (relaxed)   0.95482605 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927159   -0.01181174   -0.16411364
 Singles      0.03693166   -0.06423115   -0.06670797
 Pairs        0.05065746   -0.00000000   -0.01117565
 Total        1.09686071   -0.07604290   -0.24199726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61692731
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33071632
 One electron energy                  -38.99274931
 Two electron energy                   15.13382474
 Virial quotient                       -3.76875592
 Correlation energy                    -0.24199726
 !MRCI STATE 3.1 Energy               -23.858924571206

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88236460 (Davidson, fixed reference)
 Cluster corrected energies           -23.88177145 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88236460 (Davidson, rotated reference)

 Cluster corrected energies           -23.87880006 (Pople, fixed reference)
 Cluster corrected energies           -23.87826864 (Pople, relaxed reference)
 Cluster corrected energies           -23.87880006 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95482606 (fixed)   0.95589468 (relaxed)   0.95482606 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927159   -0.01181174   -0.16411367
 Singles      0.03693164   -0.06423112   -0.06670797
 Pairs        0.05065747    0.00000000   -0.01117562
 Total        1.09686069   -0.07604286   -0.24199726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61692731
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33071648
 One electron energy                  -38.99274958
 Two electron energy                   15.13382501
 Virial quotient                       -3.76875582
 Correlation energy                    -0.24199726
 !MRCI STATE 4.1 Energy               -23.858924571172

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88236459 (Davidson, fixed reference)
 Cluster corrected energies           -23.88177145 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88236459 (Davidson, rotated reference)

 Cluster corrected energies           -23.87880006 (Pople, fixed reference)
 Cluster corrected energies           -23.87826863 (Pople, relaxed reference)
 Cluster corrected energies           -23.87880006 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95482607 (fixed)   0.95589469 (relaxed)   0.95482607 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927159   -0.01181174   -0.16411368
 Singles      0.03693161   -0.06423111   -0.06670796
 Pairs        0.05065747    0.00000000   -0.01117561
 Total        1.09686067   -0.07604285   -0.24199726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61692731
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33071639
 One electron energy                  -38.99274927
 Two electron energy                   15.13382470
 Virial quotient                       -3.76875587
 Correlation energy                    -0.24199726
 !MRCI STATE 5.1 Energy               -23.858924571143

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88236459 (Davidson, fixed reference)
 Cluster corrected energies           -23.88177144 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88236459 (Davidson, rotated reference)

 Cluster corrected energies           -23.87880005 (Pople, fixed reference)
 Cluster corrected energies           -23.87826863 (Pople, relaxed reference)
 Cluster corrected energies           -23.87880005 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95482608 (fixed)   0.95589470 (relaxed)   0.95482608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927158   -0.01181174   -0.16411367
 Singles      0.03693160   -0.06423113   -0.06670797
 Pairs        0.05065746    0.00000000   -0.01117562
 Total        1.09686064   -0.07604287   -0.24199726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61692731
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33071639
 One electron energy                  -38.99274909
 Two electron energy                   15.13382452
 Virial quotient                       -3.76875587
 Correlation energy                    -0.24199726
 !MRCI STATE 6.1 Energy               -23.858924571092

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88236458 (Davidson, fixed reference)
 Cluster corrected energies           -23.88177143 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88236458 (Davidson, rotated reference)

 Cluster corrected energies           -23.87880005 (Pople, fixed reference)
 Cluster corrected energies           -23.87826862 (Pople, relaxed reference)
 Cluster corrected energies           -23.87880005 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95253497 (fixed)   0.95535469 (relaxed)   0.95474700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01047883   -0.01499634   -0.01653631
 Singles      0.03999853   -0.06622808   -0.06910183
 Pairs        0.04656500   -0.15763160   -0.15385298
 Total        1.09704235   -0.23885602   -0.23949112
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.56915645
 Nuclear energy                         0.00000000
 Kinetic energy                         6.20390339
 One electron energy                  -38.11295497
 Two electron energy                   14.30489206
 Virial quotient                       -3.83759408
 Correlation energy                    -0.23890646
 !MRCI STATE 7.1 Energy               -23.808062907555

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.83124695 (Davidson, fixed reference)
 Cluster corrected energies           -23.83091363 (Davidson, relaxed reference)
 Cluster corrected energies           -23.83124695 (Davidson, rotated reference)

 Cluster corrected energies           -23.82772349 (Pople, fixed reference)
 Cluster corrected energies           -23.82742461 (Pople, relaxed reference)
 Cluster corrected energies           -23.82772349 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.25       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      142.68       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       203.79    193.34      4.49      1.54      4.23
 REAL TIME  *       217.27 SEC
 DISK USED  *       201.04 MB (local),        1.64 GB (total)
 SF USED    *         1.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -23.95938614  AU                              
 SETTING HLSDIAG(2)     =       -23.88236460  AU                              
 SETTING HLSDIAG(3)     =       -23.88236460  AU                              
 SETTING HLSDIAG(4)     =       -23.88236459  AU                              
 SETTING HLSDIAG(5)     =       -23.88236459  AU                              
 SETTING HLSDIAG(6)     =       -23.88236458  AU                              
 SETTING HLSDIAG(7)     =       -23.83124695  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     199 (  93 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.62655273
     2       -23.62655273
     3       -23.62655273
     4       -23.62655273
     5       -23.62655273
     6       -23.58237221
     7       -23.55313730
     8       -23.55313730
     9       -23.55313730
    10       -23.55313730
    11       -23.55313730
    12       -23.55313730
    13       -23.55313730
    14       -23.55183820
    15       -23.55183820
    16       -23.55183820

 Number of blocks in overlap matrix:   321   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        951726
 Number of doubly external configurations:       3344723
 Total number of contracted configurations:      4308287
 Total number of uncontracted configurations:   17821951

 Diagonal Coupling coefficients finished.               Storage:   6506972 words, CPU-Time:      2.65 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1526401 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.62655273    -0.00000000    -0.25452694  0.50D-01  0.58D-01     4.59
    1     2     2     1.00000000     0.00000000   -23.62655273    -0.00000000    -0.25450748  0.50D-01  0.58D-01     4.59
    1     3     3     1.00000000     0.00000000   -23.62655273    -0.00000000    -0.25451074  0.50D-01  0.58D-01     4.59
    1     4     4     1.00000000     0.00000000   -23.62655273    -0.00000000    -0.25452171  0.50D-01  0.58D-01     4.59
    1     5     5     1.00000000     0.00000000   -23.62655273    -0.00000000    -0.25451599  0.50D-01  0.58D-01     4.59
    1     6     6     1.00000000     0.00000000   -23.58237221    -0.00000000    -0.23253528  0.46D-01  0.48D-01     4.59
    1     7     7     1.00000000     0.00000000   -23.55313730    -0.00000000    -0.26180451  0.46D-01  0.68D-01     4.59
    1     8     8     1.00000000     0.00000000   -23.55313730    -0.00000000    -0.26194414  0.46D-01  0.68D-01     4.59
    1     9     9     1.00000000     0.00000000   -23.55313730     0.00000000    -0.26184811  0.46D-01  0.68D-01     4.59
    1    10    10     1.00000000     0.00000000   -23.55313730    -0.00000000    -0.26180429  0.46D-01  0.68D-01     4.59
    1    11    11     1.00000000     0.00000000   -23.55313730     0.00000000    -0.26178822  0.46D-01  0.68D-01     4.59
    1    12    12     1.00000000     0.00000000   -23.55313730     0.00000000    -0.26195375  0.46D-01  0.68D-01     4.59
    1    13    13     1.00000000     0.00000000   -23.55313730    -0.00000000    -0.26182316  0.46D-01  0.68D-01     4.59
    1    14    14     1.00000000     0.00000000   -23.55183820    -0.00000000    -0.25398841  0.46D-01  0.65D-01     4.59
    1    15    15     1.00000000     0.00000000   -23.55183820     0.00000000    -0.25392527  0.45D-01  0.65D-01     4.59
    1    16    16     1.00000000     0.00000000   -23.55183820    -0.00000000    -0.25400347  0.46D-01  0.65D-01     4.59
    2     1     1     1.08267105    -0.23652424   -23.86307697    -0.23652424    -0.00760968  0.28D-02  0.12D-02   115.14
    2     2     2     1.08268238    -0.23651550   -23.86306823    -0.23651550    -0.00761938  0.28D-02  0.12D-02   115.14
    2     3     3     1.08268841    -0.23651419   -23.86306692    -0.23651419    -0.00762013  0.28D-02  0.12D-02   115.14
    2     4     4     1.08269945    -0.23651372   -23.86306645    -0.23651372    -0.00761980  0.28D-02  0.12D-02   115.14
    2     5     5     1.08269992    -0.23651247   -23.86306520    -0.23651247    -0.00762157  0.28D-02  0.12D-02   115.14
    2     6     6     1.07883847    -0.22784822   -23.81022042    -0.22784822    -0.00592879  0.20D-02  0.91D-03   115.14
    2     7     7     1.08689769    -0.23730586   -23.79044316    -0.23730586    -0.00717840  0.29D-02  0.13D-02   115.14
    2     8     8     1.08690434    -0.23730508   -23.79044238    -0.23730508    -0.00717983  0.29D-02  0.13D-02   115.14
    2     9     9     1.08694590    -0.23729681   -23.79043410    -0.23729681    -0.00718773  0.29D-02  0.13D-02   115.14
    2    10    10     1.08694143    -0.23728801   -23.79042531    -0.23728801    -0.00720282  0.29D-02  0.13D-02   115.14
    2    11    11     1.08694002    -0.23728735   -23.79042465    -0.23728735    -0.00720329  0.29D-02  0.13D-02   115.14
    2    12    12     1.08690050    -0.23728249   -23.79041979    -0.23728249    -0.00721292  0.29D-02  0.14D-02   115.14
    2    13    13     1.08693111    -0.23727680   -23.79041409    -0.23727680    -0.00721905  0.29D-02  0.14D-02   115.14
    2    14    14     1.08560681    -0.23336146   -23.78519967    -0.23336146    -0.00698983  0.26D-02  0.14D-02   115.14
    2    15    15     1.08559505    -0.23334821   -23.78518641    -0.23334821    -0.00700509  0.26D-02  0.14D-02   115.14
    2    16    16     1.08560689    -0.23334611   -23.78518431    -0.23334611    -0.00700866  0.26D-02  0.14D-02   115.14
    3     1     1     1.08334039    -0.24408471   -23.87063744    -0.00756047    -0.00032696  0.11D-03  0.57D-04   225.95
    3     2     2     1.08334063    -0.24408444   -23.87063717    -0.00756894    -0.00032743  0.11D-03  0.57D-04   225.95
    3     3     3     1.08334059    -0.24408410   -23.87063683    -0.00756992    -0.00032771  0.11D-03  0.57D-04   225.95
    3     4     4     1.08333969    -0.24408403   -23.87063676    -0.00757032    -0.00032742  0.11D-03  0.57D-04   225.95
    3     5     5     1.08334095    -0.24408400   -23.87063673    -0.00757153    -0.00032786  0.11D-03  0.57D-04   225.95
    3     6     6     1.07978845    -0.23391576   -23.81628797    -0.00606755    -0.00021908  0.58D-04  0.36D-04   225.95
    3     7     7     1.08758096    -0.24454346   -23.79768076    -0.00723760    -0.00028988  0.87D-04  0.61D-04   225.95
    3     8     8     1.08757761    -0.24454325   -23.79768054    -0.00723816    -0.00028922  0.87D-04  0.61D-04   225.95
    3     9     9     1.08757261    -0.24454274   -23.79768004    -0.00724593    -0.00028957  0.88D-04  0.60D-04   225.95
    3    10    10     1.08757359    -0.24454271   -23.79768001    -0.00725470    -0.00028989  0.88D-04  0.60D-04   225.95
    3    11    11     1.08756518    -0.24454232   -23.79767961    -0.00725496    -0.00028891  0.88D-04  0.60D-04   225.95
    3    12    12     1.08756427    -0.24454222   -23.79767952    -0.00725973    -0.00028925  0.88D-04  0.60D-04   225.95
    3    13    13     1.08756809    -0.24454192   -23.79767922    -0.00726512    -0.00028930  0.88D-04  0.60D-04   225.95
    3    14    14     1.08470956    -0.24032953   -23.79216773    -0.00696807    -0.00028763  0.54D-04  0.75D-04   225.95
    3    15    15     1.08470607    -0.24032834   -23.79216654    -0.00698012    -0.00028907  0.54D-04  0.76D-04   225.95
    3    16    16     1.08470838    -0.24032824   -23.79216644    -0.00698213    -0.00028922  0.54D-04  0.76D-04   225.95
    4     1     1     1.08519745    -0.24445012   -23.87100285    -0.00036541    -0.00002769  0.23D-04  0.29D-05   337.11
    4     2     2     1.08519770    -0.24445012   -23.87100285    -0.00036567    -0.00002771  0.23D-04  0.29D-05   337.11
    4     3     3     1.08519746    -0.24445010   -23.87100283    -0.00036600    -0.00002772  0.23D-04  0.29D-05   337.11
    4     4     4     1.08519448    -0.24444977   -23.87100250    -0.00036574    -0.00002763  0.23D-04  0.29D-05   337.11
    4     5     5     1.08519478    -0.24444959   -23.87100232    -0.00036558    -0.00002766  0.23D-04  0.29D-05   337.11
    4     6     6     1.08090367    -0.23414540   -23.81651760    -0.00022963    -0.00000971  0.49D-05  0.14D-05   337.11
    4     7     7     1.08942613    -0.24487703   -23.79801433    -0.00033357    -0.00002238  0.18D-04  0.26D-05   337.11
    4     8     8     1.08942802    -0.24487670   -23.79801399    -0.00033345    -0.00002253  0.18D-04  0.26D-05   337.11
    4     9     9     1.08942802    -0.24487669   -23.79801399    -0.00033395    -0.00002253  0.18D-04  0.26D-05   337.11
    4    10    10     1.08942316    -0.24487608   -23.79801338    -0.00033337    -0.00002229  0.18D-04  0.26D-05   337.11
    4    11    11     1.08942768    -0.24487568   -23.79801298    -0.00033336    -0.00002257  0.18D-04  0.26D-05   337.11
    4    12    12     1.08942456    -0.24487564   -23.79801294    -0.00033342    -0.00002251  0.18D-04  0.26D-05   337.11
    4    13    13     1.08942487    -0.24487563   -23.79801293    -0.00033371    -0.00002251  0.18D-04  0.26D-05   337.11
    4    14    14     1.08562281    -0.24064872   -23.79248692    -0.00031919    -0.00002151  0.16D-04  0.28D-05   337.11
    4    15    15     1.08562244    -0.24064871   -23.79248691    -0.00032038    -0.00002151  0.16D-04  0.28D-05   337.11
    4    16    16     1.08562521    -0.24064865   -23.79248685    -0.00032041    -0.00002142  0.16D-04  0.28D-05   337.11
    5     1     1     1.08599201    -0.24448583   -23.87103856    -0.00003571    -0.00000366  0.17D-05  0.58D-06   447.95
    5     2     2     1.08599187    -0.24448583   -23.87103856    -0.00003571    -0.00000366  0.17D-05  0.58D-06   447.95
    5     3     3     1.08599178    -0.24448581   -23.87103854    -0.00003571    -0.00000366  0.17D-05  0.58D-06   447.95
    5     4     4     1.08598981    -0.24448538   -23.87103811    -0.00003561    -0.00000365  0.17D-05  0.58D-06   447.95
    5     5     5     1.08598930    -0.24448523   -23.87103796    -0.00003564    -0.00000365  0.17D-05  0.58D-06   447.95
    5     6     6     1.08105680    -0.23415578   -23.81652798    -0.00001038    -0.00000058  0.37D-06  0.70D-07   447.95
    5     7     7     1.09014006    -0.24490545   -23.79804275    -0.00002842    -0.00000211  0.90D-06  0.36D-06   447.95
    5     8     8     1.09014010    -0.24490535   -23.79804265    -0.00002865    -0.00000213  0.91D-06  0.36D-06   447.95
    5     9     9     1.09014011    -0.24490535   -23.79804265    -0.00002866    -0.00000213  0.91D-06  0.36D-06   447.95
    5    10    10     1.09013982    -0.24490443   -23.79804173    -0.00002835    -0.00000214  0.91D-06  0.36D-06   447.95
    5    11    11     1.09013845    -0.24490439   -23.79804169    -0.00002871    -0.00000210  0.89D-06  0.36D-06   447.95
    5    12    12     1.09013949    -0.24490432   -23.79804162    -0.00002868    -0.00000213  0.90D-06  0.36D-06   447.95
    5    13    13     1.09013950    -0.24490432   -23.79804162    -0.00002869    -0.00000213  0.91D-06  0.36D-06   447.95
    5    14    14     1.08594438    -0.24067581   -23.79251401    -0.00002709    -0.00000240  0.10D-05  0.42D-06   447.95
    5    15    15     1.08594443    -0.24067581   -23.79251401    -0.00002710    -0.00000240  0.10D-05  0.42D-06   447.95
    5    16    16     1.08594413    -0.24067569   -23.79251389    -0.00002704    -0.00000240  0.10D-05  0.42D-06   447.95
    6     1     1     1.08611352    -0.24449028   -23.87104300    -0.00000444    -0.00000036  0.18D-06  0.46D-07   558.77
    6     2     2     1.08611347    -0.24449027   -23.87104300    -0.00000444    -0.00000036  0.18D-06  0.46D-07   558.77
    6     3     3     1.08611338    -0.24449025   -23.87104298    -0.00000444    -0.00000036  0.18D-06  0.46D-07   558.77
    6     4     4     1.08611131    -0.24448982   -23.87104254    -0.00000443    -0.00000036  0.18D-06  0.46D-07   558.77
    6     5     5     1.08611101    -0.24448967   -23.87104240    -0.00000444    -0.00000036  0.18D-06  0.46D-07   558.77
    6     6     6     1.08106185    -0.23415645   -23.81652865    -0.00000067    -0.00000005  0.24D-07  0.66D-08   558.77
    6     7     7     1.09019105    -0.24490793   -23.79804522    -0.00000248    -0.00000014  0.46D-07  0.30D-07   558.77
    6     8     8     1.09019186    -0.24490786   -23.79804515    -0.00000251    -0.00000014  0.46D-07  0.30D-07   558.77
    6     9     9     1.09019185    -0.24490786   -23.79804515    -0.00000251    -0.00000014  0.46D-07  0.30D-07   558.77
    6    10    10     1.09019109    -0.24490695   -23.79804424    -0.00000251    -0.00000014  0.46D-07  0.30D-07   558.77
    6    11    11     1.09018905    -0.24490686   -23.79804416    -0.00000247    -0.00000014  0.46D-07  0.30D-07   558.77
    6    12    12     1.09019039    -0.24490683   -23.79804412    -0.00000251    -0.00000014  0.46D-07  0.30D-07   558.77
    6    13    13     1.09019041    -0.24490683   -23.79804412    -0.00000251    -0.00000014  0.46D-07  0.30D-07   558.77
    6    14    14     1.08590837    -0.24067873   -23.79251693    -0.00000292    -0.00000019  0.50D-07  0.37D-07   558.77
    6    15    15     1.08590838    -0.24067873   -23.79251693    -0.00000292    -0.00000019  0.50D-07  0.37D-07   558.77
    6    16    16     1.08590778    -0.24067861   -23.79251681    -0.00000292    -0.00000019  0.49D-07  0.37D-07   558.77
    7     1     1     1.08615645    -0.24449066   -23.87104339    -0.00000038    -0.00000003  0.29D-07  0.38D-08   668.67
    7     2     2     1.08615642    -0.24449066   -23.87104339    -0.00000038    -0.00000003  0.29D-07  0.38D-08   668.67
    7     3     3     1.08615626    -0.24449063   -23.87104336    -0.00000038    -0.00000003  0.29D-07  0.38D-08   668.67
    7     4     4     1.08615400    -0.24449020   -23.87104293    -0.00000038    -0.00000003  0.29D-07  0.38D-08   668.67
    7     5     5     1.08615383    -0.24449005   -23.87104278    -0.00000038    -0.00000003  0.29D-07  0.38D-08   668.67
    7     6     6     1.08105991    -0.23415650   -23.81652871    -0.00000006    -0.00000000  0.39D-08  0.45D-09   668.67
    7     7     7     1.09020871    -0.24490808   -23.79804538    -0.00000015    -0.00000001  0.94D-08  0.24D-08   668.67
    7     8     8     1.09020950    -0.24490801   -23.79804531    -0.00000015    -0.00000001  0.95D-08  0.25D-08   668.67
    7     9     9     1.09020950    -0.24490801   -23.79804531    -0.00000015    -0.00000001  0.95D-08  0.25D-08   668.67
    7    10    10     1.09020880    -0.24490710   -23.79804440    -0.00000015    -0.00000001  0.95D-08  0.25D-08   668.67
    7    11    11     1.09020665    -0.24490701   -23.79804431    -0.00000015    -0.00000001  0.93D-08  0.24D-08   668.67
    7    12    12     1.09020815    -0.24490698   -23.79804428    -0.00000015    -0.00000001  0.94D-08  0.25D-08   668.67
    7    13    13     1.09020814    -0.24490698   -23.79804428    -0.00000015    -0.00000001  0.95D-08  0.25D-08   668.67
    7    14    14     1.08590951    -0.24067893   -23.79251713    -0.00000020    -0.00000001  0.12D-07  0.21D-08   668.67
    7    15    15     1.08590951    -0.24067893   -23.79251713    -0.00000020    -0.00000001  0.12D-07  0.21D-08   668.67
    7    16    16     1.08590916    -0.24067881   -23.79251701    -0.00000020    -0.00000001  0.12D-07  0.21D-08   668.67
    8     1     1     1.08617265    -0.24449070   -23.87104343    -0.00000004    -0.00000001  0.29D-08  0.80D-09   772.19
    8     2     2     1.08617265    -0.24449070   -23.87104343    -0.00000004    -0.00000001  0.29D-08  0.81D-09   772.19
    8     3     3     1.08617248    -0.24449067   -23.87104340    -0.00000004    -0.00000001  0.29D-08  0.81D-09   772.19
    8     4     4     1.08617024    -0.24449024   -23.87104297    -0.00000004    -0.00000001  0.29D-08  0.81D-09   772.19
    8     5     5     1.08617006    -0.24449009   -23.87104282    -0.00000004    -0.00000001  0.29D-08  0.81D-09   772.19
    8     6     6     1.08105991    -0.23415650   -23.81652871    -0.00000000    -0.00000000  0.40D-08  0.45D-09   772.19
    8     7     7     1.09021573    -0.24490810   -23.79804539    -0.00000001    -0.00000000  0.66D-09  0.38D-09   772.19
    8     8     8     1.09021659    -0.24490803   -23.79804532    -0.00000001    -0.00000000  0.67D-09  0.38D-09   772.19
    8     9     9     1.09021659    -0.24490803   -23.79804532    -0.00000001    -0.00000000  0.67D-09  0.38D-09   772.19
    8    10    10     1.09021592    -0.24490711   -23.79804441    -0.00000001    -0.00000000  0.67D-09  0.38D-09   772.19
    8    11    11     1.09021365    -0.24490703   -23.79804432    -0.00000001    -0.00000000  0.65D-09  0.37D-09   772.19
    8    12    12     1.09021525    -0.24490700   -23.79804429    -0.00000001    -0.00000000  0.67D-09  0.38D-09   772.19
    8    13    13     1.09021526    -0.24490700   -23.79804429    -0.00000001    -0.00000000  0.67D-09  0.38D-09   772.19
    8    14    14     1.08591062    -0.24067895   -23.79251715    -0.00000002    -0.00000000  0.97D-09  0.42D-09   772.19
    8    15    15     1.08591062    -0.24067895   -23.79251715    -0.00000002    -0.00000000  0.97D-09  0.42D-09   772.19
    8    16    16     1.08590917    -0.24067883   -23.79251703    -0.00000002    -0.00000000  0.26D-09  0.23D-09   772.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.9%
 S   1.3%  15.2%
 P   0.6%  17.2%  19.1%

 Initialization:   0.4%
 Other:           44.4%

 Total CPU:      772.2 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000055   0.0000000   0.9575658   0.0000000   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/00/000222000          -0.0000000   0.0000000   0.0000000   0.0000058   0.9552209  -0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.0000000   0.0000645   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/000/00222000          -0.0000000  -0.0000000  -0.0000000   0.9552206  -0.0000058   0.0000063  -0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2/0/0000222000           0.0000000   0.0000000   0.9552201   0.0000000  -0.0000000  -0.0000000   0.0000688  -0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2/0000/0222000           0.0000000   0.9552200  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000377   0.0000000   0.0000000   0.0000518  -0.0000000   0.0000000  -0.0000005  -0.0000000
 2//00000222000           0.9552200  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000377
                          0.0000000   0.0000000   0.0000000   0.0000000  -0.0000518   0.0000005   0.0000000  -0.0000000
 2000//00222000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000574  -0.0000000  -0.0000000  -0.0000000
                          0.0000000   0.0000000   0.9551642   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 200/0/00222000           0.0000000  -0.0000000  -0.0000612   0.0000000   0.0000000  -0.0000000   0.9551629   0.0000000
                         -0.0000000  -0.0000008   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/000/0222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000007  -0.0000000
                          0.0000000   0.8544342  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.3647622
 200//000222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000003   0.0000000
                         -0.0000000  -0.4269416  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.7301647
 200/00/0222000           0.0000003  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6953712
                          0.0000000   0.0000000   0.0000000   0.0000000  -0.4964633   0.3648143  -0.0000000  -0.0000000
 20//0000222000          -0.0000000  -0.0000003   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.6953697   0.0000000  -0.0000000  -0.4964654  -0.0000000   0.0000000   0.3648143   0.0000000
 2000/0/0222000          -0.0000000  -0.0000497   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                          0.6544038  -0.0000000  -0.0000000   0.5492148   0.0000000   0.0000000  -0.3649997   0.0000000
 20/0/000222000          -0.0000497  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6544021
                         -0.0000000   0.0000000  -0.0000000   0.0000000  -0.5492168   0.3649997   0.0000000   0.0000000
 20/00/00222000           0.0000283   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0234992
                         -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6035087   0.6323516  -0.0000000   0.0000000
 20000//0222000          -0.0000000  -0.0000283   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0234973   0.0000000   0.0000000   0.6035088   0.0000000  -0.0000000   0.6323516   0.0000000
 20000000222//0           0.0000000   0.0000003  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000682   0.0000000   0.0000000  -0.0000953   0.0000000   0.0000000   0.4995472  -0.0000000
 200000002220//          -0.0000003  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000682
                         -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000953   0.4995472  -0.0000000   0.0000000
 20000000222/0/           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000   0.0001413  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.4995393

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  29.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0530188   0.0000000   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955015   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000057   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000006   -0.000000    0.000000   -0.000000
 2          -0.000000   -0.000000    0.000000    0.000000    0.955015    0.000000   -0.000000   -0.000000   -0.000049   -0.000000
             0.000030   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.000000    0.955015   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000061    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.955015    0.000006    0.000000    0.000000   -0.000005    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000006    0.955016   -0.000000   -0.000000    0.000000   -0.000000   -0.000057   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 6           0.000000    0.000006   -0.000000   -0.000000   -0.000000    0.957566   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000069    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000001
             0.000000    0.955163   -0.000000    0.000000    0.000000    0.000000
 8          -0.000038   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.640425   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.708655    0.000137    0.000000    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000038    0.000000   -0.000000    0.000000    0.883084    0.000000
             0.364003   -0.000000    0.000000   -0.000000   -0.000000    0.000137
 10          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.955163
            -0.000000   -0.000001    0.000000   -0.000000    0.000284    0.000000
 11          0.000000    0.000000    0.000065    0.000000    0.000000    0.000000   -0.000000    0.955164   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000052   -0.000000    0.000000    0.000000    0.364004   -0.000000
            -0.883085    0.000000    0.000000    0.000000    0.000000   -0.000191
 13         -0.000052    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.708656   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.640425   -0.000191    0.000000    0.000000
 14          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000050   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000233    0.956394   -0.000000   -0.000000
 15          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000055   -0.000000
            -0.000232   -0.000000   -0.000000    0.000000   -0.000000    0.956394
 16         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000286
             0.000000   -0.000000   -0.000000    0.000000    0.956394    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955015    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000002    0.000000   -0.000000
            -0.000000   -0.000000   -0.000003    0.000000    0.000000   -0.000000
 2           0.000000    0.955015    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000002    0.000000
             0.000000    0.000003    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.955015    0.000000    0.000000    0.000000    0.000004   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.955015   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.955016   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000004    0.000000   -0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.957566    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000004   -0.000000    0.000000    0.000000    0.955163   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 8          -0.000002   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955163   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000000
 9           0.000000    0.000002   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955163    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000001   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955163
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000001
 11         -0.000000    0.000000    0.000000    0.000000    0.000004   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.955164   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000000    0.000003    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.955164   -0.000000    0.000000    0.000001    0.000000
 13         -0.000003    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.955164    0.000001   -0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000001   -0.000000    0.000000
            -0.000000    0.000000    0.000001    0.956394   -0.000000   -0.000000
 15          0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000001    0.000000
            -0.000000    0.000001   -0.000000   -0.000000    0.956394   -0.000000
 16         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000001
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956394


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95501463 (fixed)   0.95534309 (relaxed)   0.95501463 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00944134   -0.01389585   -0.16591058
 Singles      0.03671680   -0.06489009   -0.06737126
 Pairs        0.05026944    0.00000000   -0.01120886
 Total        1.09642757   -0.07878594   -0.24449070
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62655273
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33184416
 One electron energy                  -39.06576366
 Two electron energy                   15.19472023
 Virial quotient                       -3.76999857
 Correlation energy                    -0.24449070
 !MRCI STATE 1.1 Energy               -23.871043425662

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89461907 (Davidson, fixed reference)
 Cluster corrected energies           -23.89443477 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89461907 (Davidson, rotated reference)

 Cluster corrected energies           -23.88958523 (Pople, fixed reference)
 Cluster corrected energies           -23.88943358 (Pople, relaxed reference)
 Cluster corrected energies           -23.88958523 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95501463 (fixed)   0.95534310 (relaxed)   0.95501464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00944133   -0.01389585   -0.16591067
 Singles      0.03671679   -0.06489008   -0.06737126
 Pairs        0.05026944    0.00000010   -0.01120876
 Total        1.09642756   -0.07878583   -0.24449070
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62655273
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33184415
 One electron energy                  -39.06576358
 Two electron energy                   15.19472016
 Virial quotient                       -3.76999858
 Correlation energy                    -0.24449070
 !MRCI STATE 2.1 Energy               -23.871043425662

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89461907 (Davidson, fixed reference)
 Cluster corrected energies           -23.89443477 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89461907 (Davidson, rotated reference)

 Cluster corrected energies           -23.88958523 (Pople, fixed reference)
 Cluster corrected energies           -23.88943358 (Pople, relaxed reference)
 Cluster corrected energies           -23.88958523 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95501472 (fixed)   0.95534318 (relaxed)   0.95501472 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00944130   -0.01389586   -0.16591060
 Singles      0.03671670   -0.06489006   -0.06737122
 Pairs        0.05026937   -0.00000000   -0.01120884
 Total        1.09642736   -0.07878591   -0.24449067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62655273
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33184390
 One electron energy                  -39.06576370
 Two electron energy                   15.19472030
 Virial quotient                       -3.76999872
 Correlation energy                    -0.24449067
 !MRCI STATE 3.1 Energy               -23.871043398112

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89461899 (Davidson, fixed reference)
 Cluster corrected energies           -23.89443469 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89461899 (Davidson, rotated reference)

 Cluster corrected energies           -23.88958516 (Pople, fixed reference)
 Cluster corrected energies           -23.88943351 (Pople, relaxed reference)
 Cluster corrected energies           -23.88958516 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95501528 (fixed)   0.95534378 (relaxed)   0.95501528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00944220   -0.01389642   -0.16591186
 Singles      0.03671418   -0.06488867   -0.06736947
 Pairs        0.05026970   -0.00000000   -0.01120891
 Total        1.09642608   -0.07878510   -0.24449024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62655273
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33184262
 One electron energy                  -39.06575863
 Two electron energy                   15.19471566
 Virial quotient                       -3.76999941
 Correlation energy                    -0.24449024
 !MRCI STATE 4.1 Energy               -23.871042966131

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89461820 (Davidson, fixed reference)
 Cluster corrected energies           -23.89443388 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89461820 (Davidson, rotated reference)

 Cluster corrected energies           -23.88958444 (Pople, fixed reference)
 Cluster corrected energies           -23.88943276 (Pople, relaxed reference)
 Cluster corrected energies           -23.88958444 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95501551 (fixed)   0.95534401 (relaxed)   0.95501552 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00944188   -0.01389625   -0.16591170
 Singles      0.03671407   -0.06488872   -0.06736951
 Pairs        0.05026960    0.00000000   -0.01120889
 Total        1.09642554   -0.07878496   -0.24449009
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62655273
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33184229
 One electron energy                  -39.06575883
 Two electron energy                   15.19471601
 Virial quotient                       -3.76999958
 Correlation energy                    -0.24449009
 !MRCI STATE 5.1 Energy               -23.871042819299

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89461791 (Davidson, fixed reference)
 Cluster corrected energies           -23.89443359 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89461791 (Davidson, rotated reference)

 Cluster corrected energies           -23.88958417 (Pople, fixed reference)
 Cluster corrected energies           -23.88943250 (Pople, relaxed reference)
 Cluster corrected energies           -23.88958417 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95756576 (fixed)   0.95756576 (relaxed)   0.95756576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00881845   -0.01459734   -0.15856330
 Singles      0.03609927   -0.06329335   -0.06578618
 Pairs        0.04567547    0.00000000   -0.00980702
 Total        1.09059318   -0.07789068   -0.23415650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.58237221
 Nuclear energy                         0.00000000
 Kinetic energy                         6.18111884
 One electron energy                  -38.02883249
 Two electron energy                   14.21230378
 Virial quotient                       -3.85310966
 Correlation energy                    -0.23415650
 !MRCI STATE 6.1 Energy               -23.816528710785

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.83774169 (Davidson, fixed reference)
 Cluster corrected energies           -23.83774169 (Davidson, relaxed reference)
 Cluster corrected energies           -23.83774169 (Davidson, rotated reference)

 Cluster corrected energies           -23.83316526 (Pople, fixed reference)
 Cluster corrected energies           -23.83316526 (Pople, relaxed reference)
 Cluster corrected energies           -23.83316526 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95516295 (fixed)   0.95516295 (relaxed)   0.95516295 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538551   -0.00914827   -0.16949051
 Singles      0.03343215   -0.06045068   -0.06262156
 Pairs        0.05726944   -0.00000000   -0.01279602
 Total        1.09608710   -0.06959895   -0.24490810
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43330648
 One electron energy                  -39.14405938
 Two electron energy                   15.34601399
 Virial quotient                       -3.69919348
 Correlation energy                    -0.24490810
 !MRCI STATE 7.1 Energy               -23.798045391527

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157790 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157790 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157790 (Davidson, rotated reference)

 Cluster corrected energies           -23.81655022 (Pople, fixed reference)
 Cluster corrected energies           -23.81655022 (Pople, relaxed reference)
 Cluster corrected energies           -23.81655022 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.70865496 (fixed)   0.95516254 (relaxed)   0.95516254 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538558   -0.00914813   -0.16949009
 Singles      0.03343322   -0.06045094   -0.06262198
 Pairs        0.05726923   -0.00000000   -0.01279595
 Total        1.09608804   -0.06959907   -0.24490803
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43332342
 One electron energy                  -39.14408427
 Two electron energy                   15.34603895
 Virial quotient                       -3.69918373
 Correlation energy                    -0.24490803
 !MRCI STATE 8.1 Energy               -23.798045321247

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157805 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157805 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157805 (Davidson, rotated reference)

 Cluster corrected energies           -23.81655034 (Pople, fixed reference)
 Cluster corrected energies           -23.81655034 (Pople, relaxed reference)
 Cluster corrected energies           -23.81655034 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.88308385 (fixed)   0.95516254 (relaxed)   0.95516254 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538558   -0.00914813   -0.16946762
 Singles      0.03343322   -0.06045094   -0.06262198
 Pairs        0.05726923   -0.00002462   -0.01281842
 Total        1.09608804   -0.06962369   -0.24490803
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43332342
 One electron energy                  -39.14408427
 Two electron energy                   15.34603895
 Virial quotient                       -3.69918373
 Correlation energy                    -0.24490803
 !MRCI STATE 9.1 Energy               -23.798045321247

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157805 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157805 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157805 (Davidson, rotated reference)

 Cluster corrected energies           -23.81655034 (Pople, fixed reference)
 Cluster corrected energies           -23.81655034 (Pople, relaxed reference)
 Cluster corrected energies           -23.81655034 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95516325 (fixed)   0.95516329 (relaxed)   0.95516329 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538461   -0.00914748   -0.16948952
 Singles      0.03343235   -0.06045070   -0.06262164
 Pairs        0.05726935   -0.00000000   -0.01279596
 Total        1.09608631   -0.06959818   -0.24490711
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43333063
 One electron energy                  -39.14409906
 Two electron energy                   15.34605465
 Virial quotient                       -3.69917944
 Correlation energy                    -0.24490712
 !MRCI STATE 10.1 Energy              -23.798044410851

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157663 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157663 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157663 (Davidson, rotated reference)

 Cluster corrected energies           -23.81654901 (Pople, fixed reference)
 Cluster corrected energies           -23.81654901 (Pople, relaxed reference)
 Cluster corrected energies           -23.81654901 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95516424 (fixed)   0.95516424 (relaxed)   0.95516424 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538471   -0.00914789   -0.16949060
 Singles      0.03342982   -0.06044982   -0.06262038
 Pairs        0.05726960   -0.00000000   -0.01279604
 Total        1.09608413   -0.06959771   -0.24490703
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43328684
 One electron energy                  -39.14403223
 Two electron energy                   15.34598791
 Virial quotient                       -3.69920461
 Correlation energy                    -0.24490703
 !MRCI STATE 11.1 Energy              -23.798044322113

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157600 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157600 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157600 (Davidson, rotated reference)

 Cluster corrected energies           -23.81654848 (Pople, fixed reference)
 Cluster corrected energies           -23.81654848 (Pople, relaxed reference)
 Cluster corrected energies           -23.81654848 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.88308470 (fixed)   0.95516366 (relaxed)   0.95516366 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538446   -0.00914750   -0.16952107
 Singles      0.03343158   -0.06045046   -0.06262129
 Pairs        0.05726943    0.00003435   -0.01276464
 Total        1.09608547   -0.06956361   -0.24490700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43331726
 One electron energy                  -39.14407911
 Two electron energy                   15.34603482
 Virial quotient                       -3.69918711
 Correlation energy                    -0.24490700
 !MRCI STATE 12.1 Energy              -23.798044292868

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157630 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157630 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157630 (Davidson, rotated reference)

 Cluster corrected energies           -23.81654871 (Pople, fixed reference)
 Cluster corrected energies           -23.81654871 (Pople, relaxed reference)
 Cluster corrected energies           -23.81654871 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.70865607 (fixed)   0.95516365 (relaxed)   0.95516365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00538447   -0.00914750   -0.16948973
 Singles      0.03343159   -0.06045046   -0.06262129
 Pairs        0.05726943   -0.00000000   -0.01279598
 Total        1.09608548   -0.06959796   -0.24490700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55313730
 Nuclear energy                         0.00000000
 Kinetic energy                         6.43331727
 One electron energy                  -39.14407916
 Two electron energy                   15.34603487
 Virial quotient                       -3.69918711
 Correlation energy                    -0.24490700
 !MRCI STATE 13.1 Energy              -23.798044292867

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82157630 (Davidson, fixed reference)
 Cluster corrected energies           -23.82157630 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82157630 (Davidson, rotated reference)

 Cluster corrected energies           -23.81654872 (Pople, fixed reference)
 Cluster corrected energies           -23.81654872 (Pople, relaxed reference)
 Cluster corrected energies           -23.81654872 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95639384 (fixed)   0.95693796 (relaxed)   0.95639387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00677484   -0.00968240   -0.16719194
 Singles      0.03094125   -0.05952400   -0.06125725
 Pairs        0.05555140    0.00000000   -0.01222976
 Total        1.09326749   -0.06920640   -0.24067895
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55183820
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39095735
 One electron energy                  -38.89867628
 Two electron energy                   15.10615914
 Virial quotient                       -3.72284086
 Correlation energy                    -0.24067895
 !MRCI STATE 14.1 Energy              -23.792517146702

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81496467 (Davidson, fixed reference)
 Cluster corrected energies           -23.81466554 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81496467 (Davidson, rotated reference)

 Cluster corrected energies           -23.81014472 (Pople, fixed reference)
 Cluster corrected energies           -23.80989936 (Pople, relaxed reference)
 Cluster corrected energies           -23.81014472 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95639384 (fixed)   0.95693796 (relaxed)   0.95639387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00677484   -0.00968240   -0.01034785
 Singles      0.03094125   -0.05952400   -0.06125725
 Pairs        0.05555140   -0.17147255   -0.16907385
 Total        1.09326749   -0.24067894   -0.24067895
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55183820
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39095733
 One electron energy                  -38.89867623
 Two electron energy                   15.10615908
 Virial quotient                       -3.72284087
 Correlation energy                    -0.24067895
 !MRCI STATE 15.1 Energy              -23.792517146696

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81496467 (Davidson, fixed reference)
 Cluster corrected energies           -23.81466554 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81496467 (Davidson, rotated reference)

 Cluster corrected energies           -23.81014472 (Pople, fixed reference)
 Cluster corrected energies           -23.80989936 (Pople, relaxed reference)
 Cluster corrected energies           -23.81014472 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95639417 (fixed)   0.95693863 (relaxed)   0.95639422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00677545   -0.00968238   -0.16719343
 Singles      0.03093933   -0.05952253   -0.06125633
 Pairs        0.05555191   -0.00000000   -0.01222907
 Total        1.09326669   -0.06920491   -0.24067883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55183820
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39097183
 One electron energy                  -38.89873350
 Two electron energy                   15.10621647
 Virial quotient                       -3.72283240
 Correlation energy                    -0.24067883
 !MRCI STATE 16.1 Energy              -23.792517029126

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81496435 (Davidson, fixed reference)
 Cluster corrected energies           -23.81466504 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81496435 (Davidson, rotated reference)

 Cluster corrected energies           -23.81014444 (Pople, fixed reference)
 Cluster corrected energies           -23.80989893 (Pople, relaxed reference)
 Cluster corrected energies           -23.81014444 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.25       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      674.91       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1033.73    829.93    193.34      4.49      1.54      4.23
 REAL TIME  *      1090.66 SEC
 DISK USED  *       733.26 MB (local),        4.76 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -23.89461907  AU                              
 SETTING HLSDIAG(9)     =       -23.89461907  AU                              
 SETTING HLSDIAG(10)    =       -23.89461899  AU                              
 SETTING HLSDIAG(11)    =       -23.89461820  AU                              
 SETTING HLSDIAG(12)    =       -23.89461791  AU                              
 SETTING HLSDIAG(13)    =       -23.83774169  AU                              
 SETTING HLSDIAG(14)    =       -23.82157790  AU                              
 SETTING HLSDIAG(15)    =       -23.82157805  AU                              
 SETTING HLSDIAG(16)    =       -23.82157805  AU                              
 SETTING HLSDIAG(17)    =       -23.82157663  AU                              
 SETTING HLSDIAG(18)    =       -23.82157600  AU                              
 SETTING HLSDIAG(19)    =       -23.82157630  AU                              
 SETTING HLSDIAG(20)    =       -23.82157630  AU                              
 SETTING HLSDIAG(21)    =       -23.81496467  AU                              
 SETTING HLSDIAG(22)    =       -23.81496467  AU                              
 SETTING HLSDIAG(23)    =       -23.81496435  AU                              


        HLSDIAG
    -23.95938614
    -23.88236460
    -23.88236460
    -23.88236459
    -23.88236459
    -23.88236458
    -23.83124695
    -23.89461907
    -23.89461907
    -23.89461899
    -23.89461820
    -23.89461791
    -23.83774169
    -23.82157790
    -23.82157805
    -23.82157805
    -23.82157663
    -23.82157600
    -23.82157630
    -23.82157630
    -23.81496467
    -23.81496467
    -23.81496435
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -23.938534    -23.858925    -23.858925    -23.858925    -23.858925    -23.858925    -23.808063
 Replaced energies:    -23.959386    -23.882365    -23.882365    -23.882365    -23.882365    -23.882365    -23.831247

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -23.871043    -23.871043    -23.871043    -23.871043    -23.871043    -23.816529    -23.798045    -23.798045
                       -23.798045    -23.798044    -23.798044    -23.798044    -23.798044    -23.792517    -23.792517    -23.792517
 Replaced energies:    -23.894619    -23.894619    -23.894619    -23.894618    -23.894618    -23.837742    -23.821578    -23.821578
                       -23.821578    -23.821577    -23.821576    -23.821576    -23.821576    -23.814965    -23.814965    -23.814964



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -23.95938614

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00   16904.28       0.00       0.00       0.00       0.00       0.00       0.00      -0.76      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00     228.92      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00   16904.28       0.00       0.00       0.00       0.00       0.00     264.71      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     132.93       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   16904.28       0.00       0.00       0.00    -132.49       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -132.49      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   16904.28       0.00       0.00       0.00       0.00     132.48
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   16904.28       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     132.48

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   28123.30      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00    -132.49       0.00      -0.00      -0.00   14214.73       0.00       0.00
                            0.00    -228.92    -132.93      -0.00      -0.00      -0.00       0.00      -0.00     175.43       0.00

    9   2.1  1.0  1.0      -0.00      -0.76     264.71       0.00       0.00       0.00      -0.00       0.00   14214.73       0.00
                           -0.00       0.00      -0.00     132.49      -0.00      -0.00       0.00    -175.43      -0.00       0.00

   10   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     132.48      -0.00      -0.00       0.00       0.00   14214.75
                            0.00       0.00       0.00       0.00      -0.00    -132.48       0.00      -0.00      -0.00      -0.00

   11   4.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00    -229.40       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     229.40      -0.00      -0.00       0.00       0.00      -0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00     132.44      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     132.44      -0.00       0.00      -0.00      -0.00    -350.73

   13   6.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0      -0.00       0.00       0.00       0.00      31.50      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     -31.50      -0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00       0.00      38.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04     -33.22      20.66      -0.00       0.00       0.00       0.02      -0.00       0.52      -0.00

   16   9.1  1.0  1.0       0.04      34.60     -18.26       0.00      -0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      38.09      -0.00       0.00       0.00       0.52      -0.00      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00      -0.00     -24.33       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -24.33      -0.00      -0.00       0.00      -0.00

   18  11.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00      31.49       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      31.49      -0.00       0.00      -0.00       0.00      12.27

   19  12.1  1.0  1.0      -0.07     -24.73     -25.85      -0.00       0.00       0.00      -0.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00      11.50       0.00      -0.00       0.00     -15.70       0.00      -0.00

   20  13.1  1.0  1.0       0.00       0.00      -0.00      11.50      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07      -9.84     -34.40      -0.00       0.00      -0.00      -0.02       0.00     -15.70      -0.00

   21  14.1  1.0  1.0      -0.00      -0.00       0.00    -161.12      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          253.12     -93.42     160.71       0.00       0.00       0.00      64.63      -0.00     -15.17       0.00

   22  15.1  1.0  1.0     253.12     185.89       0.44      -0.00       0.00      -0.00      64.63       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -161.12      -0.00      -0.00      -0.00     -15.17      -0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00      -0.00       0.00     161.14       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     161.14       0.00      -0.00       0.00      -0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     124.05
                            0.00      -0.00       0.00      -0.00       0.00    -187.36       0.00       0.00      -0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00     187.36      -0.00       0.00       0.00       0.00     124.05

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -124.05       0.00      -0.00
                            0.00    -324.70     186.31       0.00      -0.00       0.00      -0.00      -0.00    -124.05      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     214.78      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00     214.78      -0.00      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -124.01       0.00
                           -0.00       0.00      -0.00     374.63      -0.00      -0.00      -0.00     124.01      -0.00      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -8.85       0.00      -0.00
                           -0.00      38.62     -22.16      -0.00       0.00       0.00      -0.00      -0.00      -8.85       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -10.63
                            0.00       0.00      -0.00       0.00       0.00      -2.12       0.00       0.00       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -2.12      -0.00      -0.00      -0.00      -0.00      10.63

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.75      -0.00       0.00
                            0.13     -30.00     -52.29      -0.00       0.00      -0.00       0.03      -0.00      -6.75       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -8.82       0.00
                            0.00      -0.00       0.00     -44.45       0.00      -0.00      -0.00       8.82      -0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      56.23      -0.00       0.00      -0.00      -0.00       3.25

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.25
                           -0.00      -0.00       0.00       0.00      -0.00      56.23       0.00       0.00      -0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.75
                           -0.00       0.00      -0.00      -0.00       0.00     227.88       0.00       0.00      -0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     227.88       0.00       0.00      -0.00      -0.00     -10.75

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.74      -0.00      -0.00
                          357.95    -130.82    -228.00       0.00      -0.00       0.00      91.42      -0.00      10.74       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00    -132.49       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     228.92     132.93       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.00      -0.76     264.71       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -132.49       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     132.48      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     132.48      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00    -229.40       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00    -229.40       0.00       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00     132.44      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00    -132.44       0.00      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00      31.50      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      31.50       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0      -0.00       0.00       0.00      38.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      33.22     -20.66       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.04      34.60     -18.26       0.00      -0.00       0.00       0.02       0.00       0.00       0.00
                            0.00       0.00       0.00     -38.09       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00      -0.00     -24.33       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      24.33       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00      31.49       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -31.49       0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.07     -24.73     -25.85      -0.00       0.00       0.00      -0.02       0.00       0.00       0.00
                           -0.00       0.00       0.00     -11.50      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00      -0.00      11.50      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.07       9.84      34.40       0.00      -0.00       0.00       0.02      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0      -0.00      -0.00       0.00    -161.12      -0.00      -0.00      -0.00       0.00       0.00       0.00
                         -253.12      93.42    -160.71      -0.00      -0.00      -0.00     -64.63      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0     253.12     185.89       0.44      -0.00       0.00      -0.00      64.63       0.00       0.00       0.00
                            0.00       0.00       0.00     161.12       0.00       0.00       0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00      -0.00       0.00     161.14       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -161.14      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00       0.04       0.00      -0.00      -0.07       0.00
                            0.00       0.00      -0.00      -0.00      -0.04       0.00      -0.00       0.00      -0.00       0.07

    2   2.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00      34.60       0.00      -0.00     -24.73       0.00
                           -0.00       0.00       0.00      -0.00      33.22       0.00       0.00       0.00       0.00       9.84

    3   3.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00     -18.26       0.00       0.00     -25.85      -0.00
                            0.00       0.00       0.00      -0.00     -20.66       0.00       0.00       0.00       0.00      34.40

    4   4.1  0.0  0.0       0.00      -0.00      -0.00       0.00      38.09       0.00      -0.00      -0.00      -0.00      11.50
                           -0.00      -0.00       0.00      -0.00       0.00     -38.09       0.00       0.00     -11.50       0.00

    5   5.1  0.0  0.0      -0.00      -0.00      -0.00      31.50       0.00      -0.00     -24.33       0.00       0.00      -0.00
                         -229.40    -132.44       0.00       0.00      -0.00       0.00       0.00     -31.49      -0.00      -0.00

    6   6.1  0.0  0.0    -229.40     132.44       0.00      -0.00       0.00       0.00       0.00      31.49       0.00       0.00
                            0.00       0.00      -0.00      31.50      -0.00      -0.00      24.33       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.02       0.00       0.00      -0.02       0.00
                            0.00      -0.00      -0.00       0.00      -0.02      -0.00       0.00      -0.00      -0.00       0.02

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.52       0.00       0.00      15.70      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.52       0.00      -0.00      -0.00      -0.00      15.70

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     350.73       0.00      -0.00       0.00       0.00       0.00     -12.27       0.00       0.00

   11   4.1  1.0  1.0   14214.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00     -16.77       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00   14214.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      12.27       0.00       0.00       0.00       0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   26697.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   30245.41       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.27       0.00       0.00      -0.00      -0.00       0.00     348.86      -0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   30245.38       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     522.15      -0.00      -0.00      27.24       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   30245.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    -522.15       0.00      -0.00      -0.00       0.00     -27.24

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   30245.69       0.00       0.00       0.00
                           16.77      -0.00       0.02      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.83       0.00       0.00
                           -0.00      -0.00       0.00    -348.86       0.00       0.00       0.00      -0.00      -0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.77       0.00
                           -0.00       0.00       0.00       0.00     -27.24      -0.00      -0.00       0.00      -0.00     173.39

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.76
                           -0.00       0.00      -0.00       0.00      -0.00      27.24      -0.00      -0.00    -173.39      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.15      -0.00      -0.00      -0.00      -0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.15      -0.00      -0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.41      -0.00      64.51       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   24   1.1  1.0  0.0      -0.00       0.00      -0.00       8.85       0.00      -0.00      -6.75       0.00       0.00       0.00
                         -214.78    -124.01      -0.00       0.00      -0.00       0.00       0.00      -8.82       0.00      -0.00

   25   2.1  1.0  0.0    -214.78     124.01      -0.00      -0.00       0.00       0.00       0.00       8.82       0.00       0.00
                            0.00       0.00      -0.00       8.85      -0.00       0.00       6.75       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00      10.63      -0.00      -0.00      -0.00      -0.00       3.25
                            0.00       0.00       0.00      -0.00      -0.00     -10.63      -0.00      -0.00      -3.25       0.00

   27   4.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00       0.41      -0.00      -0.00      -9.58      -0.00
                            0.00       0.00       0.00      -0.00      -0.41      -0.00       0.00       0.00       0.00       9.58

   28   5.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      10.83       0.00       0.00      -2.43      -0.00
                           -0.00       0.00       0.00      -0.00      10.83      -0.00      -0.00       0.00       0.00      -2.43

   29   6.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00       0.01       0.00
                           -0.00      -0.00       0.00      -0.00       0.01       0.00       0.00      -0.00      -0.00      -0.01

   30   7.1  1.0  0.0       0.00      -0.00      -0.00       0.00     158.51       0.00       0.00       0.00       0.00    -188.94
                            0.00       0.00       0.00      -0.00       0.00    -158.50      -0.00       0.00     188.94      -0.00

   31   8.1  1.0  0.0      -0.00      -0.00       0.00    -158.51      -0.00      -0.00     -11.79      -0.00      -0.00      -0.00
                            0.41     -10.83      -0.01      -0.00       0.00      -0.00       0.00    -143.26       0.00      -0.00

   32   9.1  1.0  0.0      -0.41     -10.83       0.01      -0.00       0.00       0.00      -0.00    -143.27       0.00       0.00
                            0.00       0.00      -0.00     158.50       0.00      -0.00     -11.79      -0.00       0.00       0.00

   33  10.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      11.79       0.00       0.00      -0.00       0.00    -301.86
                           -0.00       0.00      -0.00       0.00      -0.00      11.79      -0.00      -0.00    -301.86       0.00

   34  11.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00     143.27       0.00       0.00     200.69       0.00
                           -0.00      -0.00       0.00      -0.00     143.26       0.00       0.00      -0.00       0.00     200.69

   35  12.1  1.0  0.0       9.58       2.43      -0.01      -0.00       0.00      -0.00      -0.00    -200.69       0.00      -0.00
                           -0.00      -0.00       0.00    -188.94      -0.00      -0.00     301.86      -0.00      -0.00       0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.00     188.94       0.00      -0.00     301.86      -0.00       0.00       0.00
                           -9.58       2.43       0.01       0.00       0.00      -0.00      -0.00    -200.69      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00      -0.00       0.00       0.09       0.00      -0.00       0.17      -0.00      -0.00      -0.00
                            6.21     -10.72     -45.60      -0.00      -0.00      -0.00      -0.00      -0.03       0.00       0.00

   38  15.1  1.0  0.0      -6.21     -10.72      45.60       0.00       0.00       0.00       0.00      -0.03      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.09       0.00      -0.00       0.17      -0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.04       0.00      -0.00      -0.00      -0.00       0.17
                            0.00       0.00      -0.00      -0.00       0.00      -0.03      -0.00       0.00       0.17      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00     253.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -253.12       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0      -0.00     185.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.42       0.00      -0.00       0.00       0.00     324.70      -0.00      -0.00      -0.00     -38.62

    3   3.1  0.0  0.0       0.00       0.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -160.71       0.00       0.00      -0.00      -0.00    -186.31      -0.00       0.00       0.00      22.16

    4   4.1  0.0  0.0    -161.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     161.12      -0.00       0.00      -0.00      -0.00      -0.00    -374.63       0.00       0.00

    5   5.1  0.0  0.0      -0.00       0.00     161.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -187.36       0.00      -0.00       0.00       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -161.14     187.36       0.00      -0.00       0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.00      64.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -64.63       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    -124.05       0.00      -0.00       0.00      -8.85
                            0.00      15.17       0.00      -0.00      -0.00       0.00    -214.78    -124.01      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     214.78    -124.01       0.00       0.00
                           15.17       0.00      -0.00       0.00      -0.00     124.05       0.00       0.00      -0.00       8.85

   10   3.1  1.0  1.0       0.00       0.00       0.00     124.05      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00    -124.05       0.00       0.00       0.00       0.00      -0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00    -214.78       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -17.41     214.78      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00     124.01      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00     124.01      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -64.51       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       8.85      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -8.85       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      10.63       0.00       0.00      -0.00     158.51
                            0.00      -0.15      -0.00       0.00       0.00       0.00       0.41     -10.83      -0.01      -0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.41      10.83      -0.01       0.00
                            0.15       0.00       0.00      -0.00      -0.00      10.63       0.00       0.00      -0.00     158.50

   17  10.1  1.0  1.0       0.00       0.00       0.00      -6.75       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -6.75       0.00      -0.00       0.00      -0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       8.82      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       8.82      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00      -9.58      -2.43       0.01       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       3.25      -0.00      -0.00       0.00    -188.94

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       3.25      -0.00      -0.00       0.00    -188.94
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -9.58       2.43       0.01       0.00

   21  14.1  1.0  1.0   31696.85       0.00       0.00      -0.00      -0.00     -10.75       0.00       0.00      -0.00      -0.09
                            0.00    -593.44       0.00       0.00      -0.00      -0.00       6.21     -10.72     -45.60      -0.00

   22  15.1  1.0  1.0       0.00   31696.85       0.00       0.00      -0.00      -0.00       6.21      10.72     -45.60      -0.00
                          593.44       0.00       0.00      -0.00      -0.00     -10.75      -0.00      -0.00       0.00      -0.09

   23  16.1  1.0  1.0       0.00       0.00   31696.92      10.74       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      10.74       0.00       0.00       0.00      -0.00      -0.00

   24   1.1  1.0  0.0      -0.00       0.00      10.74   14214.73       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00   14214.73       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -10.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0     -10.75      -0.00       0.00       0.00       0.00   14214.75       0.00       0.00       0.00       0.00
                            0.00      10.75      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       6.21      -0.00       0.00       0.00       0.00   14214.92       0.00       0.00       0.00
                           -6.21       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00      10.72       0.00       0.00       0.00       0.00       0.00   14214.98       0.00       0.00
                           10.72       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0      -0.00     -45.60       0.00       0.00       0.00       0.00       0.00       0.00   26697.87       0.00
                           45.60      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0      -0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.41
                            0.00       0.09       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0      -0.00      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0      -0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.17       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.17      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00       0.00     419.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     419.64      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0    -419.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -419.64       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     124.05      -0.00       0.00      -0.00       8.85
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -214.78    -124.01      -0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00    -214.78     124.01      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     124.05       0.00       0.00      -0.00       8.85

   42   3.1  1.0 -1.0       0.00       0.00       0.00    -124.05       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -124.05      -0.00       0.00       0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00     214.78      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     214.78      -0.00      -0.00       0.00       0.00       0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -124.01       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     124.01      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00      -8.85       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -8.85       0.00       0.00       0.00       0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     -10.63      -0.00      -0.00       0.00    -158.51
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.41     -10.83      -0.01      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.41     -10.83       0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      10.63       0.00       0.00      -0.00     158.50

   49  10.1  1.0 -1.0       0.00       0.00       0.00       6.75      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -6.75       0.00      -0.00       0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -8.82       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       8.82      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       9.58       2.43      -0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       3.25      -0.00      -0.00       0.00    -188.94

   52  13.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -3.25       0.00       0.00      -0.00     188.94
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -9.58       2.43       0.01       0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      10.75      -0.00      -0.00       0.00       0.09
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       6.21     -10.72     -45.60      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00      -6.21     -10.72      45.60       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -10.75      -0.00      -0.00       0.00      -0.09

   55  16.1  1.0 -1.0       0.00       0.00       0.00     -10.74      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      10.74       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.13      -0.00       0.00       0.00       0.00      -0.00    -357.95       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      30.00       0.00       0.00       0.00      -0.00       0.00     130.82    -228.92

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      52.29      -0.00      -0.00      -0.00       0.00      -0.00     228.00    -132.93

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -132.49
                           -0.00      -0.00       0.00      44.45      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.12      -0.00      -0.00     -56.23       0.00      -0.00    -227.88       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            2.12       0.00       0.00       0.00       0.00     -56.23    -227.88      -0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.03       0.00      -0.00      -0.00      -0.00      -0.00     -91.42       0.00

    8   1.1  1.0  1.0      -0.00       0.00       6.75      -0.00      -0.00      -0.00       0.00      -0.00     -10.74       0.00
                           -0.00       0.00       0.00      -8.82       0.00      -0.00      -0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0      -0.00      -0.00      -0.00      -8.82      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       6.75       0.00       0.00       0.00       0.00       0.00     -10.74       0.00

   10   3.1  1.0  1.0     -10.63       0.00       0.00       0.00       0.00      -3.25      10.75       0.00      -0.00       0.00
                           -0.00     -10.63      -0.00      -0.00      -3.25       0.00       0.00      10.75      -0.00       0.00

   11   4.1  1.0  1.0      -0.00      -0.41       0.00       0.00       9.58       0.00      -0.00      -6.21       0.00       0.00
                           -0.41      -0.00       0.00       0.00       0.00       9.58      -6.21       0.00      -0.00       0.00

   12   5.1  1.0  1.0      -0.00     -10.83      -0.00      -0.00       2.43       0.00      -0.00     -10.72      -0.00       0.00
                           10.83      -0.00      -0.00       0.00       0.00      -2.43      10.72       0.00      -0.00       0.00

   13   6.1  1.0  1.0       0.00       0.01      -0.00       0.00      -0.01      -0.00       0.00      45.60      -0.00       0.00
                            0.01       0.00       0.00      -0.00      -0.00      -0.01      45.60      -0.00       0.00       0.00

   14   7.1  1.0  1.0    -158.51      -0.00      -0.00      -0.00      -0.00     188.94       0.09       0.00      -0.00       0.00
                            0.00    -158.50      -0.00       0.00     188.94      -0.00       0.00       0.09       0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00      11.79       0.00       0.00       0.00       0.00       0.00      -0.04       0.00
                           -0.00      -0.00       0.00    -143.26       0.00      -0.00       0.00      -0.00      -0.00       0.00

   16   9.1  1.0  1.0      -0.00       0.00       0.00     143.27      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00     -11.79      -0.00       0.00       0.00       0.00       0.00       0.03       0.00

   17  10.1  1.0  1.0     -11.79      -0.00       0.00       0.00      -0.00     301.86       0.17       0.00      -0.00       0.00
                           -0.00      11.79       0.00      -0.00    -301.86       0.00       0.00      -0.17       0.00       0.00

   18  11.1  1.0  1.0      -0.00    -143.27      -0.00       0.00    -200.69      -0.00      -0.00      -0.03      -0.00       0.00
                          143.26       0.00       0.00       0.00       0.00     200.69       0.03       0.00      -0.00       0.00

   19  12.1  1.0  1.0      -0.00       0.00       0.00     200.69       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00     301.86      -0.00       0.00       0.00      -0.00      -0.00      -0.17       0.00

   20  13.1  1.0  1.0      -0.00       0.00    -301.86       0.00      -0.00       0.00      -0.00      -0.00       0.17       0.00
                            0.00      -0.00      -0.00    -200.69      -0.00       0.00      -0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0      -0.00       0.00      -0.17       0.00       0.00       0.00      -0.00      -0.00    -419.64       0.00
                           -0.00      -0.00      -0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0      -0.00      -0.00      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.17      -0.00       0.00      -0.00      -0.00      -0.00     419.64       0.00

   23  16.1  1.0  1.0       0.04      -0.00       0.00       0.00       0.00      -0.17     419.64      -0.00       0.00       0.00
                            0.00      -0.03      -0.00       0.00       0.17      -0.00      -0.00    -419.64      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     124.05
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     214.78

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     124.01

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.85
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31   8.1  1.0  0.0   30245.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   9.1  1.0  0.0       0.00   30245.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00   30245.69       0.00       0.00       0.00       0.00       0.00       0.00      -6.75
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   30245.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.82

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   30245.77       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   30245.76       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   31696.85       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31696.85       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31696.92      10.74
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0       0.00      -0.00      -6.75       0.00       0.00       0.00      -0.00       0.00      10.74   14214.73
                           -0.00       0.00       0.00      -8.82       0.00      -0.00      -0.00       0.00       0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       8.82       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       6.75       0.00       0.00       0.00       0.00       0.00     -10.74     175.43

   42   3.1  1.0 -1.0      10.63      -0.00      -0.00      -0.00      -0.00       3.25     -10.75      -0.00       0.00       0.00
                           -0.00     -10.63      -0.00      -0.00      -3.25       0.00       0.00      10.75      -0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.41      -0.00      -0.00      -9.58      -0.00       0.00       6.21      -0.00       0.00
                           -0.41      -0.00       0.00       0.00       0.00       9.58      -6.21       0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00      10.83       0.00       0.00      -2.43      -0.00       0.00      10.72       0.00       0.00
                           10.83      -0.00      -0.00       0.00       0.00      -2.43      10.72       0.00      -0.00       0.00

   45   6.1  1.0 -1.0      -0.00      -0.01       0.00      -0.00       0.01       0.00      -0.00     -45.60       0.00       0.00
                            0.01       0.00       0.00      -0.00      -0.00      -0.01      45.60      -0.00       0.00      -0.00

   46   7.1  1.0 -1.0     158.51       0.00       0.00       0.00       0.00    -188.94      -0.09      -0.00       0.00       0.00
                            0.00    -158.50      -0.00       0.00     188.94      -0.00       0.00       0.09       0.00       0.00

   47   8.1  1.0 -1.0      -0.00      -0.00     -11.79      -0.00      -0.00      -0.00      -0.00      -0.00       0.04       0.00
                            0.00      -0.00       0.00    -143.26       0.00      -0.00       0.00      -0.00      -0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00      -0.00    -143.27       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00     -11.79      -0.00       0.00       0.00       0.00       0.00       0.03      -0.52

   49  10.1  1.0 -1.0      11.79       0.00       0.00      -0.00       0.00    -301.86      -0.17      -0.00       0.00       0.00
                           -0.00      11.79      -0.00      -0.00    -301.86       0.00       0.00      -0.17       0.00       0.00

   50  11.1  1.0 -1.0       0.00     143.27       0.00       0.00     200.69       0.00       0.00       0.03       0.00       0.00
                          143.26       0.00       0.00      -0.00       0.00     200.69       0.03       0.00      -0.00       0.00

   51  12.1  1.0 -1.0       0.00      -0.00      -0.00    -200.69       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     301.86      -0.00      -0.00       0.00      -0.00      -0.00      -0.17      15.70

   52  13.1  1.0 -1.0       0.00      -0.00     301.86      -0.00       0.00       0.00       0.00       0.00      -0.17       0.00
                            0.00      -0.00      -0.00    -200.69      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00       0.17      -0.00      -0.00      -0.00      -0.00       0.00     419.64       0.00
                           -0.00      -0.00      -0.00      -0.03       0.00       0.00      -0.00       0.00       0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00      -0.03      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.17      -0.00       0.00      -0.00      -0.00       0.00     419.64      15.17

   55  16.1  1.0 -1.0      -0.04       0.00      -0.00      -0.00      -0.00       0.17    -419.64       0.00       0.00       0.00
                            0.00      -0.03      -0.00       0.00       0.17      -0.00      -0.00    -419.64       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.04       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.04      -0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.76      -0.00       0.00      -0.00      -0.00       0.00       0.00      34.60       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00     -33.22      -0.00      -0.00      -0.00

    3   3.1  0.0  0.0     264.71      -0.00      -0.00       0.00      -0.00       0.00       0.00     -18.26       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      20.66      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00      38.09       0.00      -0.00      -0.00
                          132.49       0.00       0.00       0.00      -0.00       0.00      -0.00      38.09      -0.00      -0.00

    5   5.1  0.0  0.0       0.00     132.48      -0.00      -0.00      -0.00      31.50       0.00      -0.00     -24.33       0.00
                           -0.00      -0.00     229.40     132.44      -0.00      -0.00       0.00      -0.00      -0.00      31.49

    6   6.1  0.0  0.0       0.00      -0.00    -229.40     132.44       0.00      -0.00       0.00       0.00       0.00      31.49
                           -0.00    -132.48      -0.00      -0.00       0.00     -31.50       0.00       0.00     -24.33      -0.00

    7   7.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.02       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.02       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0      -0.00    -124.05       0.00      -0.00       0.00      -8.85      -0.00       0.00       6.75      -0.00
                           -0.00       0.00    -214.78    -124.01      -0.00       0.00      -0.00       0.00       0.00      -8.82

   25   2.1  1.0  0.0       0.00       0.00     214.78    -124.01       0.00       0.00      -0.00      -0.00      -0.00      -8.82
                           -0.00     124.05       0.00       0.00      -0.00       8.85      -0.00       0.00       6.75       0.00

   26   3.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00     -10.63       0.00       0.00       0.00
                         -124.05       0.00       0.00       0.00       0.00      -0.00      -0.00     -10.63      -0.00      -0.00

   27   4.1  1.0  0.0    -214.78       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.41       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.41      -0.00       0.00       0.00

   28   5.1  1.0  0.0     124.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00     -10.83      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      10.83      -0.00      -0.00       0.00

   29   6.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.01      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01       0.00       0.00      -0.00

   30   7.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00    -158.51      -0.00      -0.00      -0.00
                           -8.85       0.00       0.00       0.00       0.00       0.00       0.00    -158.50      -0.00       0.00

   31   8.1  1.0  0.0       0.00      10.63       0.00       0.00      -0.00     158.51      -0.00       0.00      11.79       0.00
                            0.00       0.00       0.41     -10.83      -0.01      -0.00      -0.00      -0.00       0.00    -143.26

   32   9.1  1.0  0.0       0.00      -0.00       0.41      10.83      -0.01       0.00      -0.00       0.00       0.00     143.27
                           -0.00      10.63       0.00       0.00      -0.00     158.50       0.00       0.00     -11.79      -0.00

   33  10.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00     -11.79      -0.00       0.00       0.00
                           -6.75       0.00      -0.00       0.00      -0.00       0.00      -0.00      11.79       0.00      -0.00

   34  11.1  1.0  0.0       8.82      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -143.27      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00     143.26       0.00       0.00       0.00

   35  12.1  1.0  0.0       0.00      -0.00      -9.58      -2.43       0.01       0.00      -0.00       0.00       0.00     200.69
                           -0.00       3.25      -0.00      -0.00       0.00    -188.94      -0.00      -0.00     301.86      -0.00

   36  13.1  1.0  0.0       0.00       3.25      -0.00      -0.00       0.00    -188.94      -0.00       0.00    -301.86       0.00
                           -0.00      -0.00      -9.58       2.43       0.01       0.00       0.00      -0.00      -0.00    -200.69

   37  14.1  1.0  0.0      -0.00     -10.75       0.00       0.00      -0.00      -0.09      -0.00       0.00      -0.17       0.00
                           -0.00      -0.00       6.21     -10.72     -45.60      -0.00      -0.00      -0.00      -0.00      -0.03

   38  15.1  1.0  0.0      -0.00      -0.00       6.21      10.72     -45.60      -0.00      -0.00      -0.00      -0.00       0.03
                           -0.00     -10.75      -0.00      -0.00       0.00      -0.09       0.00      -0.00       0.17      -0.00

   39  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.04      -0.00       0.00       0.00
                           10.74       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.03      -0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -175.43      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.52      -0.00      -0.00

   41   2.1  1.0 -1.0   14214.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.52      -0.00       0.00       0.00

   42   3.1  1.0 -1.0       0.00   14214.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -350.73      -0.00       0.00      -0.00      -0.00      -0.00      12.27

   43   4.1  1.0 -1.0       0.00       0.00   14214.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      16.77      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00   14214.98       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     350.73       0.00      -0.00      -0.00     -12.27      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26697.87       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.02       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   30245.41       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      12.27      -0.00      -0.00       0.00       0.00      -0.00    -348.86

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   30245.38       0.00       0.00       0.00
                           -0.52       0.00      -0.00       0.00       0.00      -0.00      -0.00    -522.15       0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.38       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     522.15      -0.00       0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.69       0.00
                           -0.00       0.00     -16.77       0.00      -0.02       0.00      -0.00      -0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30245.83
                           -0.00     -12.27       0.00       0.00      -0.00     348.86      -0.00      -0.00      -0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      27.24       0.00       0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.70       0.00       0.00      -0.00       0.00      -0.00       0.00     -27.24       0.00       0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.17      -0.00       0.00       0.00      -0.00       0.00       0.00       0.15       0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.15       0.00       0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -17.41       0.00     -64.51      -0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0      -0.07       0.00      -0.00     253.12       0.00
                            0.00      -0.07     253.12      -0.00       0.00

    2   2.1  0.0  0.0     -24.73       0.00      -0.00     185.89       0.00
                           -0.00      -9.84     -93.42      -0.00       0.00

    3   3.1  0.0  0.0     -25.85      -0.00       0.00       0.44      -0.00
                           -0.00     -34.40     160.71      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00      11.50    -161.12      -0.00       0.00
                           11.50      -0.00       0.00    -161.12       0.00

    5   5.1  0.0  0.0       0.00      -0.00      -0.00       0.00     161.14
                            0.00       0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00     161.14

    7   7.1  0.0  0.0      -0.02       0.00      -0.00      64.63       0.00
                            0.00      -0.02      64.63      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0      -0.00      -0.00       0.00      -0.00     -10.74
                            0.00      -0.00      -0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00     -10.74

   26   3.1  1.0  0.0       0.00      -3.25      10.75       0.00      -0.00
                           -3.25       0.00       0.00      10.75      -0.00

   27   4.1  1.0  0.0       9.58       0.00      -0.00      -6.21       0.00
                            0.00       9.58      -6.21       0.00      -0.00

   28   5.1  1.0  0.0       2.43       0.00      -0.00     -10.72      -0.00
                            0.00      -2.43      10.72       0.00      -0.00

   29   6.1  1.0  0.0      -0.01      -0.00       0.00      45.60      -0.00
                           -0.00      -0.01      45.60      -0.00       0.00

   30   7.1  1.0  0.0      -0.00     188.94       0.09       0.00      -0.00
                          188.94      -0.00       0.00       0.09       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.04
                            0.00      -0.00       0.00      -0.00      -0.00

   32   9.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.03

   33  10.1  1.0  0.0      -0.00     301.86       0.17       0.00      -0.00
                         -301.86       0.00       0.00      -0.17       0.00

   34  11.1  1.0  0.0    -200.69      -0.00      -0.00      -0.03      -0.00
                            0.00     200.69       0.03       0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.17

   36  13.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.17
                           -0.00       0.00      -0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00      -0.00      -0.00    -419.64
                            0.00       0.00       0.00       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     419.64

   39  16.1  1.0  0.0       0.00      -0.17     419.64      -0.00       0.00
                            0.17      -0.00      -0.00    -419.64      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -15.70       0.00      -0.00     -15.17      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.70     -15.17      -0.00       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      17.41

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      64.51

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -27.24      -0.00      -0.00       0.15       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      27.24      -0.15      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00

   51  12.1  1.0 -1.0   30245.77       0.00       0.00       0.00       0.00
                            0.00    -173.39      -0.00       0.00      -0.00

   52  13.1  1.0 -1.0       0.00   30245.76       0.00       0.00       0.00
                          173.39       0.00      -0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00   31696.85       0.00       0.00
                            0.00       0.00      -0.00     593.44      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   31696.85       0.00
                           -0.00      -0.00    -593.44      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   31696.92
                            0.00       0.00       0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by    -23.95938614 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   16904.275       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   16904.276       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   16904.276       0.000       0.000       0.000    -187.365
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   16904.278       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   16904.279       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   28123.302      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000    -187.365       0.000      -0.000      -0.000   14214.730
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.006      -1.074     374.362       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000     187.352      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000    -324.421       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000     187.302      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.001      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000      44.544      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000      53.871       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.052      48.928     -25.819       0.000      -0.000       0.000       0.022       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000      -0.000     -34.407       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      44.535       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.095     -34.975     -36.560      -0.000       0.000       0.000      -0.026       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000      16.257      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000    -227.865      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            357.969     262.883       0.629      -0.000       0.000      -0.000      91.395       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000      -0.000       0.000     227.891       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000    -187.361       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     187.361      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000    -324.700     186.305       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.002       0.000      -0.000       0.000     303.746

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000     374.629      -0.000      -0.000      -0.000     175.370

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.003

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      38.624     -22.162      -0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -2.122       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -2.122      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.132     -30.004     -52.291      -0.000       0.000      -0.000       0.033      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -44.445       0.000      -0.000      -0.000      12.474

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      56.227      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      56.227       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     227.879       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     227.880       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              357.954    -130.819    -227.997       0.000      -0.000       0.000      91.422      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006    -323.740    -187.991      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     187.365      -0.000      -0.000       0.000    -175.432

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -187.352       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     324.424      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     187.299      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -44.544      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.052     -46.982      29.211      -0.000       0.000       0.000       0.022      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      53.871      -0.000       0.000       0.000       0.518

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000     -34.407      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      44.535      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      16.257       0.000      -0.000       0.000     -15.695

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.095     -13.914     -48.644      -0.000       0.000      -0.000      -0.026       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              357.969    -132.119     227.272       0.000       0.000       0.000      91.395      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -227.865      -0.000      -0.000      -0.000     -15.171

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000     227.891       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.006      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.052
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -1.074      -0.000       0.000      -0.000      -0.000       0.000       0.000      48.928
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             374.362      -0.000      -0.000       0.000      -0.000       0.000       0.000     -25.819
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      53.871       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000     187.352      -0.000      -0.000      -0.000      44.544       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000    -324.421     187.302       0.001      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.022
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          14214.730       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   14214.748       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   14214.920       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   14214.985       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26697.871       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   30245.414       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   30245.380       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30245.380
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -303.746    -175.370      -0.003       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     175.437       0.000       0.000      -0.000      12.510      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                             -175.437       0.000       0.000       0.000       0.000      -0.000      -0.000     -15.032

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.574      -0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      15.318      -0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.010       0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -12.510       0.000       0.000       0.000       0.000       0.000       0.000    -224.160

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.574     -15.318      -0.010      -0.000       0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      15.032       0.000       0.000      -0.000     224.160       0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -9.546       0.000      -0.000       0.000      -0.000       0.000      -0.000      16.675

   11    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000     202.606       0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       4.597      -0.000      -0.000       0.000    -267.202      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000     -13.542       3.432       0.016       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       8.785     -15.162     -64.486      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -15.203      -0.000      -0.000       0.000      -0.123       0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               15.191       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.049

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              175.432       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.518

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.518       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.002     350.727       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.002       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -350.727      -0.000       0.000       0.000      12.270       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -12.270       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.518      -0.000       0.000      -0.000      -0.000       0.000       0.000     522.154

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000    -522.154       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      16.769      -0.000       0.021      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      12.275      -0.000      -0.000       0.000    -348.858       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000     -27.236      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.695      -0.000      -0.000       0.000      -0.000       0.000      -0.000      27.237

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.171       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.153

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.153      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      17.405      -0.000      64.507       0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.095       0.000      -0.000     357.969       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000      -0.000     -34.975       0.000      -0.000     262.883       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000     -36.560      -0.000       0.000       0.629      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |0 0>              -0.000      -0.000      -0.000      16.257    -227.865      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             -34.407       0.000       0.000      -0.000      -0.000       0.000     227.891       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000      44.535       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     187.361

    7    1  |0 0>               0.000       0.000      -0.026       0.000      -0.000      91.395       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     303.746

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     175.370

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.003

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+          30245.692       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000   30245.830       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      12.474

   12    1  |1 1>+              0.000       0.000   30245.765       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000   30245.765       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   31696.850       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   31696.851       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   31696.921      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000   14214.730
                                0.000     -12.474       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                9.546       0.000       0.000       0.000       0.000       0.000     -15.191      -0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -4.597       0.000       0.000      15.203      -0.000      -0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      13.542      -8.785       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -3.432      15.162       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.016      64.486      -0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000     267.202      -0.000       0.000       0.123       0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000    -202.606       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -16.675      -0.000       0.000       0.000       0.000       0.000       0.049      -0.000

   10    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000    -426.897       0.000       0.000      -0.235       0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     283.813       0.036       0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              426.897      -0.000       0.000       0.000      -0.000      -0.000      -0.244      -0.000

   13    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -283.813      -0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.036       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.235      -0.000       0.000      -0.000      -0.000       0.000     593.454      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.244      -0.000      -0.000    -593.454       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      15.695      -0.000       0.000      15.171       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      15.695      15.171       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     175.437
                                0.000     -12.275       0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              -16.769       0.000       0.000       0.000       0.000       0.000     -17.405      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.021      -0.000      -0.000       0.000      -0.000      -0.000     -64.507      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      12.510
                                0.000     348.858      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      27.236       0.000       0.000      -0.153      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000     -27.237       0.153       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -9.546
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     173.391       0.002      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -173.391      -0.000       0.000      -0.002       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.002      -0.000       0.000    -593.437       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.002     593.437       0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      15.191
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     324.700      -0.000      -0.000      -0.000     -38.624      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -186.305      -0.000       0.000       0.000      22.162       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002    -374.629       0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -187.361       0.000      -0.000       0.000       0.000      -0.000      -0.000       2.122

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       2.122       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -303.746    -175.370      -0.003       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     175.437       0.000       0.000      -0.000      12.510      -0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                             -175.437       0.000       0.000       0.000       0.000      -0.000      -0.000     -15.032

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.574      -0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      15.318      -0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.010       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -12.510       0.000       0.000       0.000       0.000       0.000       0.000    -224.160

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.574     -15.318      -0.010      -0.000       0.000      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      15.032       0.000       0.000      -0.000     224.160       0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -9.546       0.000      -0.000       0.000      -0.000       0.000      -0.000      16.675

   11    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000     202.606       0.000

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       4.597      -0.000      -0.000       0.000    -267.202      -0.000      -0.000

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000     -13.542       3.432       0.016       0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       8.785     -15.162     -64.486      -0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -15.203      -0.000      -0.000       0.000      -0.123       0.000      -0.000

   16    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               15.191       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.049

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           14214.730       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   14214.748       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   14214.920       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   14214.985       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26697.871       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   30245.414       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   30245.380       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   30245.380
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000    -175.437       0.000      -0.000       0.000     -12.510      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000     303.744    -175.374       0.003       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000      -0.000     -15.032       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-           -303.744       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.574
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-            175.374      -0.000       0.000       0.000      -0.000      -0.000      -0.000     -15.318
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.003      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.010
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000       0.000    -224.161      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000      15.032       0.000       0.000      -0.000     224.161       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000      -0.000       0.574      15.318      -0.010       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000       0.000     -16.676      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>-             12.474      -0.000      -0.000       0.000      -0.000       0.000      -0.000    -202.607
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000     -13.542      -3.432       0.016       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       4.597      -0.000      -0.000       0.000    -267.202      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000     -15.203       0.000       0.000      -0.000      -0.123      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       8.785      15.162     -64.486      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000       0.000       0.050      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.132      -0.000       0.000       0.000       0.000      -0.000    -357.954      -0.006

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.004       0.000       0.000       0.000      -0.000       0.000     130.819     323.740

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               52.291      -0.000      -0.000      -0.000       0.000      -0.000     227.997     187.991

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      44.445      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -56.227       0.000      -0.000    -227.880       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -56.227    -227.879      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.033       0.000      -0.000      -0.000      -0.000      -0.000     -91.422      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000     -12.474       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                9.546       0.000       0.000       0.000       0.000       0.000     -15.191    -175.432

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -4.597       0.000       0.000      15.203      -0.000      -0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      13.542      -8.785       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -3.432      15.162       0.000      -0.000      -0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.016      64.486      -0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000     267.202      -0.000       0.000       0.123       0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000    -202.606       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -16.675      -0.000       0.000       0.000       0.000       0.000       0.049       0.518

   10    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000    -426.897       0.000       0.000      -0.235       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     283.813       0.036       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              426.897      -0.000       0.000       0.000      -0.000      -0.000      -0.244     -15.695

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000    -283.813      -0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.036       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.235      -0.000       0.000      -0.000      -0.000       0.000     593.454     -15.171

   16    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.244      -0.000      -0.000    -593.454       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    -175.437
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -12.510
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>           30245.692       0.000       0.000       0.000       0.000       0.000       0.000       9.546
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000   30245.830       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000   30245.765       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   30245.765       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   31696.850       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31696.851       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   31696.921     -15.191
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              9.546      -0.000      -0.000      -0.000       0.000      -0.000     -15.191   14214.730
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-             -0.000     -12.474      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -4.597      15.203       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000      13.542       0.000      -0.000      -8.785       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -0.000       3.432       0.000      -0.000     -15.162      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000      -0.016      -0.000       0.000      64.486      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-             -0.000      -0.000      -0.000     267.202       0.123       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-             16.676       0.000       0.000       0.000       0.000       0.000      -0.050       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000     202.607      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.000     426.896       0.236       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000       0.000    -283.812      -0.000      -0.000      -0.036      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000     283.812       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>-           -426.896       0.000      -0.000       0.000      -0.000      -0.000       0.244       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-             -0.236       0.000       0.000       0.000       0.000      -0.000    -593.454       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 1>-             -0.000       0.036       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000      -0.244     593.454      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.052       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      46.982       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000     -29.211       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -187.365      -0.000      -0.000      -0.000       0.000      -0.000       0.000     -53.871

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -324.424    -187.299       0.001       0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     187.352       0.000       0.000      -0.000      44.544      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.022      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              175.432       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.518

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.518       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.002     350.727       0.000      -0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.002       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -350.727      -0.000       0.000       0.000      12.270       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -12.270       0.000       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.518      -0.000       0.000      -0.000      -0.000       0.000       0.000     522.154

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000    -522.154       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      16.769      -0.000       0.021      -0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      12.275      -0.000      -0.000       0.000    -348.858       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000     -27.236      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.695      -0.000      -0.000       0.000      -0.000       0.000      -0.000      27.237

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.171       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.153

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.153      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      17.405      -0.000      64.507       0.000       0.000      -0.000

    1    1  |1 0>               0.000     175.437      -0.000       0.000      -0.000      12.510       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000    -303.744     175.374      -0.003      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      15.032      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>             303.744      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.574
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>            -175.374       0.000      -0.000       0.000       0.000       0.000       0.000      15.318
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.003       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.010
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000     224.161       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              -0.000     -15.032      -0.000      -0.000       0.000    -224.161       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.574     -15.318       0.010      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      16.676       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>             -12.474       0.000       0.000      -0.000       0.000      -0.000       0.000     202.607
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      13.542       3.432      -0.016      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 0>              -0.000      -4.597       0.000       0.000      -0.000     267.202       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000      15.203      -0.000      -0.000       0.000       0.123       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -8.785     -15.162      64.486       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.050       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          14214.730       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   14214.748       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   14214.920       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   14214.985       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26697.871       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   30245.414       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   30245.380       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30245.380
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.095    -357.969       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      13.914     132.119       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      48.644    -227.272       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -16.257       0.000      -0.000     227.865      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -44.535      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               34.407       0.000       0.000       0.000      -0.000       0.000    -227.891

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.026     -91.395       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      15.695      -0.000       0.000      15.171       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      15.695      15.171       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -12.275       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.769       0.000       0.000       0.000       0.000       0.000     -17.405

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.021      -0.000      -0.000       0.000      -0.000      -0.000     -64.507

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     348.858      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      27.236       0.000       0.000      -0.153      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -27.237       0.153       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     173.391       0.002      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -173.391      -0.000       0.000      -0.002       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002      -0.000       0.000    -593.437       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.002     593.437       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 0>              -9.546       0.000       0.000       0.000      -0.000       0.000      15.191
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000      12.474       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       4.597     -15.203      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000     -13.542      -0.000       0.000       8.785      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000      -3.432      -0.000       0.000      15.162       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000      -0.000       0.016       0.000      -0.000     -64.486       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000    -267.202      -0.123      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>             -16.676      -0.000      -0.000      -0.000      -0.000      -0.000       0.050
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.000    -202.607       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000       0.000    -426.896      -0.236      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000     283.812       0.000       0.000       0.036       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000    -283.812       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 0>             426.896      -0.000       0.000       0.000       0.000       0.000      -0.244
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.236      -0.000      -0.000      -0.000       0.000       0.000     593.454
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 0>               0.000      -0.036      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.244    -593.454       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          30245.692       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   30245.830       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   30245.765       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   30245.765       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   31696.850       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   31696.851       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   31696.921
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -23.95944353    -0.00005739      -12.59      0.00000000        0.00      0.0000
    2   -23.89701610     0.06237005    13688.64      0.06242743    13701.24      1.6987
    3   -23.89701599     0.06237015    13688.67      0.06242754    13701.26      1.6987
    4   -23.89701599     0.06237015    13688.67      0.06242754    13701.26      1.6987
    5   -23.89574605     0.06364010    13967.39      0.06369748    13979.98      1.7333
    6   -23.89574594     0.06364020    13967.41      0.06369759    13980.00      1.7333
    7   -23.89574545     0.06364069    13967.52      0.06369808    13980.11      1.7333
    8   -23.89574545     0.06364069    13967.52      0.06369808    13980.11      1.7333
    9   -23.89574541     0.06364073    13967.53      0.06369812    13980.12      1.7333
   10   -23.89302078     0.06636536    14565.51      0.06642275    14578.11      1.8075
   11   -23.89302071     0.06636544    14565.53      0.06642282    14578.12      1.8075
   12   -23.89302071     0.06636544    14565.53      0.06642282    14578.13      1.8075
   13   -23.89302060     0.06636555    14565.55      0.06642293    14578.15      1.8075
   14   -23.89302060     0.06636555    14565.55      0.06642293    14578.15      1.8075
   15   -23.89302057     0.06636557    14565.56      0.06642296    14578.15      1.8075
   16   -23.89302054     0.06636560    14565.57      0.06642299    14578.16      1.8075
   17   -23.88207101     0.07731514    16968.71      0.07737252    16981.31      2.1054
   18   -23.88207088     0.07731526    16968.74      0.07737265    16981.33      2.1054
   19   -23.88207045     0.07731570    16968.83      0.07737308    16981.43      2.1054
   20   -23.88207044     0.07731570    16968.84      0.07737309    16981.43      2.1054
   21   -23.88207041     0.07731573    16968.84      0.07737312    16981.44      2.1054
   22   -23.83775029     0.12163585    26695.98      0.12169324    26708.58      3.3114
   23   -23.83775029     0.12163585    26695.98      0.12169324    26708.58      3.3114
   24   -23.83775029     0.12163585    26695.98      0.12169324    26708.58      3.3114
   25   -23.83129432     0.12809182    28112.91      0.12814921    28125.50      3.4871
   26   -23.82475309     0.13463306    29548.54      0.13469044    29561.14      3.6651
   27   -23.82475246     0.13463369    29548.68      0.13469107    29561.27      3.6651
   28   -23.82475207     0.13463407    29548.76      0.13469146    29561.36      3.6651
   29   -23.82475201     0.13463414    29548.78      0.13469152    29561.37      3.6651
   30   -23.82475201     0.13463414    29548.78      0.13469152    29561.37      3.6651
   31   -23.82237203     0.13701411    30071.12      0.13707150    30083.72      3.7299
   32   -23.82237203     0.13701411    30071.12      0.13707150    30083.72      3.7299
   33   -23.82237178     0.13701436    30071.18      0.13707175    30083.77      3.7299
   34   -23.82237126     0.13701488    30071.29      0.13707227    30083.89      3.7299
   35   -23.82237126     0.13701488    30071.29      0.13707227    30083.89      3.7299
   36   -23.82237100     0.13701515    30071.35      0.13707253    30083.94      3.7299
   37   -23.82237091     0.13701524    30071.37      0.13707262    30083.96      3.7299
   38   -23.82026770     0.13911844    30532.97      0.13917583    30545.56      3.7872
   39   -23.81919410     0.14019205    30768.60      0.14024943    30781.19      3.8164
   40   -23.81919409     0.14019206    30768.60      0.14024944    30781.19      3.8164
   41   -23.81919346     0.14019268    30768.74      0.14025007    30781.33      3.8164
   42   -23.81919346     0.14019268    30768.74      0.14025007    30781.33      3.8164
   43   -23.81919310     0.14019304    30768.82      0.14025043    30781.41      3.8164
   44   -23.81919273     0.14019341    30768.90      0.14025080    30781.49      3.8164
   45   -23.81919259     0.14019355    30768.93      0.14025094    30781.52      3.8164
   46   -23.81919259     0.14019355    30768.93      0.14025094    30781.52      3.8164
   47   -23.81919251     0.14019363    30768.95      0.14025102    30781.54      3.8164
   48   -23.81765987     0.14172628    31105.32      0.14178366    31117.92      3.8581
   49   -23.81765978     0.14172636    31105.34      0.14178375    31117.94      3.8581
   50   -23.81765978     0.14172637    31105.34      0.14178375    31117.94      3.8581
   51   -23.81223000     0.14715615    32297.04      0.14721353    32309.64      4.0059
   52   -23.81222996     0.14715619    32297.05      0.14721357    32309.64      4.0059
   53   -23.81222972     0.14715643    32297.10      0.14721381    32309.70      4.0059
   54   -23.81222972     0.14715643    32297.10      0.14721381    32309.70      4.0059
   55   -23.81222971     0.14715644    32297.10      0.14721382    32309.70      4.0059

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99979373 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000063 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000004  0.00000000 -0.00000000  0.00000000  0.13479026 -0.07588705  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000007 -0.00000000  0.00000000  0.00000000 -0.07590131 -0.13476581  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00001352  0.00000000 -0.00000000 -0.15479769  0.00000021
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   6    1  |0 0>           0.00000000  0.00000000  0.00001359  0.00000000  0.00000000 -0.00000000  0.00000021  0.15479751
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002

   7    1  |0 0>           0.00011428 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.54778629  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000164 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000042  0.00000000 -0.00000000 -0.00000000  0.39770483  0.70182240 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000005 -0.54776529 -0.00000000  0.00000000  0.40344585 -0.00000055
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000002

   4    1  |1 1>+         -0.00000000  0.00000000  0.31622301  0.00000003  0.00000000 -0.00000000  0.00000095  0.69850365
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000010

   5    1  |1 1>+          0.00000000  0.00000000  0.54757447  0.00000005 -0.00000000  0.00000000 -0.00000055 -0.40332109
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000801  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000814  0.00000000 -0.00000000 -0.00019900  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000464 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000178  0.00000000 -0.00000000 -0.00000000  0.00024291 -0.00000218  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000422 -0.00000000  0.00000000  0.00016252 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000662  0.00000000  0.00000000 -0.00000000  0.00000000  0.00019836
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000318 -0.00000000 -0.00000000 -0.00000000 -0.00004993  0.00021563 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000210 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00079624 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.01172592 -0.00000000 -0.00000000 -0.00000000 -0.00293915  0.00166365 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00079417 -0.00000000  0.00000000  0.00292303 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006
                          -0.00000000  0.00000000  0.54782973  0.00000005  0.00000000 -0.00000000  0.00000055  0.40333157

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                           0.00000000  0.00000000 -0.00000005  0.54782933 -0.00000000  0.00000000  0.40333166 -0.00000055

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.80661323  0.00650591  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000189 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.63234470 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000351  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000764  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00020511  0.00000165  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000171 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001184

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000171 -0.00000000  0.00000000  0.00001184 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000444 -0.00000000  0.00000000 -0.00000000 -0.00000208  0.00025792 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000664  0.00000000 -0.00000000 -0.00025630  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000664 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00025630

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00079524  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00292879

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00079524 -0.00000000  0.00000000  0.00292880 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01172544 -0.00000000 -0.00000000  0.00000000  0.00002724 -0.00337712  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000042 -0.00000000 -0.00000000  0.00000000  0.40897342 -0.69531652  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000164  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.54778563  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006
                          -0.00000000 -0.00000000 -0.54776503 -0.00000005  0.00000000 -0.00000000  0.00000055  0.40344619

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000003
                           0.00000000  0.00000000 -0.00000003  0.31621615 -0.00000000  0.00000000  0.69850886 -0.00000095

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                           0.00000000 -0.00000000  0.00000005 -0.54757857 -0.00000000  0.00000000  0.40331226 -0.00000055

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000801  0.00000000 -0.00000000  0.00000006 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000814 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00019900

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000178 -0.00000000  0.00000000 -0.00000000 -0.00024285 -0.00000610 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000464  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000422 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00016252

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000663  0.00000000 -0.00000000 -0.00019836  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000210  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000318  0.00000000 -0.00000000 -0.00000000  0.00004645  0.00021641 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01172592 -0.00000000  0.00000000  0.00000000  0.00291194  0.00171084  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00079624  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00079417 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00292303

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00002088
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001206
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.15480601 -0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000860 -0.00000000
                           0.00000301  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000656  0.00000000  0.00000147  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000656 -0.00000000 -0.00000147  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.40341923  0.44834097  0.00000000  0.00000000  0.00000001 -0.00000000 -0.57634489  0.00000000
                           0.00000785 -0.00000365 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001770 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57733269
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000001  0.09077892  0.00000158  0.72453024 -0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.62754536  0.00000003 -0.07933484  0.00000017 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.26983503  0.00000001  0.67873830 -0.00000148  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010  0.00000003 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000021  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00079918  0.00000000  0.00046151 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00024428  0.00004240 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00058968 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00054054
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00112420 -0.00000000 -0.00014488 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00065611 -0.00000000  0.00064726 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00075559
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00006758 -0.00112767 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00071450 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

  14    1  |1 1>+         -0.00292666  0.00000133  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000075
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000493  0.00000000  0.00000057  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.72444178 -0.00000003  0.09159848 -0.00000020  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000004  0.72422156  0.00000020  0.09332563  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57738362

   4    1  |1 0>           0.00000000  0.00000630  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000
                           0.00000444  0.77468415  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00161621  0.00000000

   5    1  |1 0>           0.00001569  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001774  0.00000000
                           0.80655023  0.00120291  0.00000000  0.00000000  0.00000001 -0.00000000 -0.57748491  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000024 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00093147

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00015369  0.00000000  0.00137550 -0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00015697 -0.00000000 -0.00137513  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.00020403 -0.00000194 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00092902 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00046094  0.00000000  0.00000587  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00046095  0.00000000 -0.00000477  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000097 -0.00000000 -0.00000132  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000132 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57733225

   2    1  |1 1>-          0.00000785  0.00000363 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001776  0.00000000
                           0.40341968  0.44592695 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.57821497 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000003 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.09250628 -0.00000000  0.72431173 -0.00000158  0.00000002 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000003 -0.62735085 -0.00000018 -0.08083914 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001  0.27146025 -0.00000148 -0.67809199  0.00000000  0.00000001

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000021  0.00000000  0.00000002  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00079808  0.00000000  0.00046341 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00054054

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00024428 -0.00004486 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00058949 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00112454 -0.00000000  0.00014220 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00065457 -0.00000000 -0.00064882  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                          -0.00006758  0.00113065  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070978  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00075559

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000075

  15    1  |1 1>-         -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00292666 -0.00000133 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000493  0.00000000 -0.00000055  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.49882622  0.85249964  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.85250345 -0.49882408 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.98769707 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000134  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.98769830 -0.00000005 -0.00000000  0.00000004 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000005  0.98769833 -0.00000000  0.00000000 -0.00000004  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06322779  0.00000000 -0.00000000 -0.00001682
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.10885426 -0.06411608 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.06322561 -0.00000000 -0.00000000  0.00001709 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000001 -0.10947915  0.00000000 -0.00000000 -0.00000969 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.06320919 -0.00000000 -0.00000000 -0.00001705  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000072  0.99978593 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00362205  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00438143 -0.00000000 -0.00000000 -0.00000315
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00019611 -0.00449286 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00279996 -0.00000000 -0.00000000  0.00000633 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00362120  0.00000000  0.00000000 -0.00000005  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00400118  0.00095100  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132049 -0.00000000  0.00000000  0.00000463
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.01450163  0.00000000 -0.00000000 -0.01462805
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000013

  15    1  |1 1>+         -0.00848341 -0.01441943 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.01450401  0.00000000  0.00000000  0.01463218 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.06322774  0.00000000 -0.00000000 -0.00001733  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.06322779 -0.00000000 -0.00000000 -0.00001733  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00107384 -0.12631998 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000078 -0.00000000  0.00000000  0.00001978

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.12642560  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000921
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99978600

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00003080 -0.00362294 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00017339 -0.00000000  0.00000000  0.00000313 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00017338 -0.00000000 -0.00000000 -0.00000312  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00489899 -0.00004164  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00361527 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00457333  0.00000000  0.00000000  0.00000464 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00457333  0.00000000 -0.00000000 -0.00000464  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.01450220  0.00000000  0.00000001  0.01462859 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.01450220  0.00000000  0.00000000 -0.01462860  0.00000001 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01672813 -0.00014220  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.10992850 -0.06225629 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.06322785  0.00000000 -0.00000000 -0.00001682

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.06322556  0.00000000  0.00000000  0.00001710 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.10948008 -0.00000001 -0.00000000 -0.00000969  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.06320793 -0.00000000 -0.00000000  0.00001705 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.99978593 -0.00000072  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00362207 -0.00000000 -0.00000000  0.00000005 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00011971  0.00449555  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00438144 -0.00000000 -0.00000000  0.00000314

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00279995 -0.00000000 -0.00000000 -0.00000633 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00362120  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132047  0.00000000 -0.00000000 -0.00000463

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00398443 -0.00101886 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00823704  0.01456156  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000013
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.01450162 -0.00000000  0.00000000  0.01462806

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.01450401  0.00000000 -0.00000001 -0.01463217  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00144521  0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000024 -0.00631200 -0.00000000 -0.00363769  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000042  0.00362210 -0.00000000 -0.00633915  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00724452 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000050 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00724965  0.00000000  0.00000285
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00724966  0.00000000  0.00000286 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.99784957  0.00000008  0.00000000 -0.00000181  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00064011  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000006  0.00063453 -0.00000000 -0.00109801  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00063358  0.00000000  0.00087210
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00110037 -0.00000000 -0.00046414  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063473  0.00000000 -0.00113307  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000045  0.00000000 -0.00000390  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.48812840 -0.00000036 -0.52316657
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000003 -0.00000002

   8    1  |1 1>+         -0.00000000  0.00000000  0.59130960 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00004103 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00001114 -0.60322105  0.00000000 -0.02091030  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009 -0.37793401 -0.00000022 -0.32393252
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002 -0.00000001

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.48784983  0.00000012  0.10508611 -0.00000007
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001

  12    1  |1 1>+          0.00001385  0.13072355  0.00000000  0.53410037 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.17733863 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00001230 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00056498 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.03783160  0.00064915  0.00000000  0.00040890 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00053883 -0.00000000 -0.00000295
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00064163 -0.00000000  0.00053699 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00064163 -0.00000000 -0.00053673

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00126874 -0.00000000  0.00000007  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00126549 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.48785091  0.00000000 -0.00002404 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02420880 -0.00000001  0.76405386 -0.00000052

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000003
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.02420685  0.00000052  0.76415526

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001810 -0.00003268  0.00000000  0.65464391 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00003383 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.48759863  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.61665017  0.00000011  0.16234510

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.61665025  0.00000015  0.16240726 -0.00000011

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00052918 -0.00000000  0.00001046 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00052919  0.00000000  0.00001040

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.03783759  0.00000005 -0.00000000 -0.00077515  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000006  0.00063442  0.00000000  0.00109807 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00064011 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00063358 -0.00000000 -0.00087191  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00110038  0.00000000  0.00046390

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00063472 -0.00000000 -0.00113314

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000  0.00000390

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000003
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.48812889 -0.00000012  0.52322661 -0.00000036

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001124  0.60322359 -0.00000000 -0.02085083  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00004103  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.59131017 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.37793330 -0.00000009 -0.32408926  0.00000022

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.48784997  0.00000007  0.10522700

  12    1  |1 1>-          0.00000000  0.00000000 -0.00001230  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.17733664 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001386 -0.13077569  0.00000000  0.53408743 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03783156 -0.00064920  0.00000000  0.00040885 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00056499 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00053884 -0.00000000 -0.00000300  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.02025843 -0.00001253 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000254  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000204  0.00000181  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000145  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000356  0.00000316 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000647  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000647  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000648  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.06554549 -0.00003255 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00071123  0.00092865 -0.00000000  0.00000000  0.00000427
                           0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000017 -0.00000000  0.00000000 -0.00000002

   2    1  |1 1>+         -0.00093037  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000374  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00077229  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00090481  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00026179  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000189 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.24396664  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.02956551  0.37067752  0.00000000  0.00000000  0.70656235
                          -0.00000000  0.00000000 -0.00000000 -0.00000189  0.00006832  0.00000000  0.00000000 -0.00270921

   9    1  |1 1>+         -0.33540297  0.00000000 -0.00000000  0.00000000  0.00000000  0.00048625  0.70590721 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.62853119  0.00000018 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000002  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000016  0.56758247  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.46975245  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00064458 -0.00753174 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.70885032 -0.43864011 -0.00000000 -0.00000000  0.02764836
                           0.00000000 -0.00000000 -0.00000000  0.00004521 -0.00008085 -0.00000000  0.00000000 -0.00010601

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000223 -0.00003531  0.00000000  0.00000000  0.00031943
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000122

  15    1  |1 1>+         -0.00000880  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57599567 -0.00042608 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00003146 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00104030 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00104043  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00092880 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00123628  0.00000642  0.00000000 -0.00000000 -0.00000394

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000482  0.00092814  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000679 -0.00000003 -0.00000000 -0.00000000  0.00001354

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57764399 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00001129 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000012  0.40669512  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.40650477  0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000072 -0.00000000  0.00000000  0.00000000  0.00000000  0.00104533  0.05730443 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000019 -0.00010648  0.00000000 -0.00000000  0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00299623  0.57765601  0.00000000 -0.00000000  0.00000777

  12    1  |1 0>           0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.24095656 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000007 -0.24091499 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00004944 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00004941 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.57597642 -0.00045636  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00093037  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000060  0.00000374 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000017 -0.00000000 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00072082 -0.00092122 -0.00000000  0.00000000  0.00000427

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00077251 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00090492 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00026150 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000190 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000007 -0.24383592 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.33540146 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00048622  0.70590190 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00006838 -0.00000000  0.00000000 -0.00270920
                           0.00000000 -0.00000000 -0.00000000  0.02571616  0.37096286 -0.00000000 -0.00000000 -0.70655975

  10    1  |1 1>-         -0.00000000 -0.00000002  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000018  0.62845100  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000002 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.56755622  0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00004492  0.00008220  0.00000000 -0.00000000 -0.00010596
                          -0.00000000  0.00000000  0.00000000 -0.70426149 -0.44597143 -0.00000000 -0.00000000 -0.02763370

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.46975331 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00064447 -0.00751170  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000875  0.00000000  0.00000000  0.00000000 -0.00000000  0.57599579 -0.00042606 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000122
                           0.00000000  0.00000000  0.00000000  0.00000260 -0.00003525 -0.00000000 -0.00000000 -0.00031941

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00003146  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00002123  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00001832 -0.00000000 -0.00000000  0.00000000 -0.00000259  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00001051  0.00000000  0.00000000  0.00000000 -0.00000454 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000714  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000253 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000113 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000254  0.00000000 -0.00000000  0.00000113 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00006290 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000139  0.00000000 -0.00000000 -0.00000000  0.00061578
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000404 -0.00000000 -0.00000000 -0.00000000  0.00000342  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000356 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000661  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000008  0.00000000 -0.00000000  0.00000639 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000554 -0.00000000 -0.00000000  0.00000597 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000869  0.00000000  0.00000000  0.00002153 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.64419535 -0.00000063  0.00000000  0.00000000 -0.00000001 -0.11621473 -0.00000000  0.00000000
                           0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.11322308  0.00000000  0.00000000 -0.00000000 -0.00031939
                           0.00000000  0.00000000  0.00000000 -0.00011314 -0.00000000  0.00000000 -0.00000000  0.00000004

   9    1  |1 1>+          0.00000000 -0.00000000 -0.15365508  0.00000000  0.00000000 -0.00000000 -0.03544133  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.10870227  0.00000011 -0.00000000 -0.00000000  0.00000003  0.58767046  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000055  0.56031471  0.00000000  0.00000000 -0.33888480  0.00000002 -0.00000000  0.00000000
                          -0.00000003  0.00000042  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.51181438  0.00000000  0.00000000  0.00000000 -0.46362910 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.52240675  0.00000000  0.00000000  0.00000000 -0.00000996
                          -0.00000000  0.00000000  0.00000000 -0.00052203 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00002650  0.00000000  0.00000000 -0.00000000  0.70695501
                           0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00008371

  15    1  |1 1>+          0.00000000  0.00000000 -0.00003515  0.00000000  0.00000000  0.00000000 -0.00078977 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00019220  0.00000000  0.00000000 -0.00000000  0.00000000  0.00050357  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000214 -0.00000000 -0.00000000  0.00000450 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000213 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000450 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000486 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00071325

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000690 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000245
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.02068722

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.65445744  0.00000000  0.00000000  0.00000000 -0.00038744  0.00000000

   8    1  |1 0>          -0.00000002  0.00000037  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000049 -0.49629285 -0.00000000 -0.00000000  0.06265902 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.49629067 -0.00000049 -0.00000000 -0.00000000  0.00000000  0.06267573  0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00044753 -0.00000000 -0.00000000 -0.00000000  0.75374527  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00065415  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.65462782  0.00000000  0.00000000  0.00000000  0.00000004

  12    1  |1 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                          -0.11379875  0.00000011 -0.00000000 -0.00000000  0.00000004  0.72274118  0.00000000 -0.00000000

  13    1  |1 0>           0.00000001 -0.00000008 -0.00000000  0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000
                           0.00000011  0.11377610 -0.00000000 -0.00000000  0.72274457 -0.00000004  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00021244 -0.00000000  0.00000000 -0.00049849  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00021248 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00049844 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000040  0.00000000  0.00000000  0.00000000 -0.00075739 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000404 -0.00000000 -0.00000000  0.00000000 -0.00000341  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000 -0.00000000 -0.00000000  0.00061578

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000356  0.00000000  0.00000000 -0.00000661  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000639 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000554  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000597  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000868 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002152 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000003 -0.00000048 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000063  0.64419214  0.00000000 -0.00000000  0.11623446 -0.00000001 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.15363906  0.00000000  0.00000000  0.00000000 -0.03562208  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00011316  0.00000000 -0.00000000  0.00000000  0.00000004
                           0.00000000  0.00000000 -0.00000000  0.11324150  0.00000000  0.00000000  0.00000000  0.00031943

  10    1  |1 1>-          0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000
                           0.00000011  0.10868410 -0.00000000 -0.00000000  0.58767362 -0.00000003  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                          -0.56030483  0.00000055  0.00000000  0.00000000 -0.00000002 -0.33890117 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00052203  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.52240741  0.00000000  0.00000000  0.00000000  0.00001000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.51236359 -0.00000000  0.00000000  0.00000000 -0.46302174  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00003429  0.00000000  0.00000000  0.00000000 -0.00078978 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00008371
                           0.00000000 -0.00000000 -0.00000000 -0.00002642 -0.00000000 -0.00000000  0.00000000 -0.70695485

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00019221  0.00000000 -0.00000000  0.00050358 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000008
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.01811329  0.00000000  0.00000000 -0.00000000 -0.01040866
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.01041263 -0.00000000  0.00000000 -0.00000000 -0.01810634
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.02090718  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.02090877 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000007 -0.00000000 -0.00000000  0.00000000  0.02090876  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000593
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00037256  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00037332  0.00000000 -0.00000000  0.00000000  0.00064658
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00061714  0.00000000  0.00000000  0.00000000 -0.00037380  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00034966  0.00000000 -0.00000000  0.00000000  0.00064211  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00061542  0.00000000  0.00000000 -0.00000000 -0.00037230 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.02069049  0.00000000  0.00000000  0.00000000  0.00000315  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00026202 -0.00000000 -0.00000000 -0.00000000  0.00030314 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00036097  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00045111  0.00000000 -0.00000000 -0.00000000  0.00000109
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00046132  0.00000000  0.00000000  0.00000000 -0.00019164  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00007693  0.00000000 -0.00000000  0.00000000  0.00033620  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00008039  0.00000000 -0.00000000  0.00000000  0.00044766
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00011745  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.70695170 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.70661847  0.00000000  0.00000000 -0.00000001 -0.40872718
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000001 -0.70693373 -0.00000000 -0.00000000 -0.00000005  0.70697276 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00061671  0.00000000 -0.00000000  0.00000000  0.00037339  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00061671  0.00000000  0.00000000  0.00000000 -0.00037339  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00074826  0.00000000 -0.00000000 -0.00000000 -0.00000061

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00074465 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00041387  0.00000000 -0.00000000 -0.00000000 -0.00000035

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00009963  0.00000000 -0.00000000  0.00000000 -0.00000286 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00009957  0.00000000  0.00000000  0.00000000 -0.00000289  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000  0.00000000  0.00051520

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00036969 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00053609 -0.00000000 -0.00000000 -0.00000000  0.00035739 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00053609 -0.00000000 -0.00000000  0.00000000  0.00035741  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.70697587 -0.00000001 -0.00000000  0.00000000  0.70693071  0.00000005  0.00000001

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.00000001  0.70697579 -0.00000000 -0.00000000 -0.00000005  0.70693079 -0.00000002

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00066661  0.00000000 -0.00000001  0.00000003  0.81632647

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00037226  0.00000000  0.00000000 -0.00000000 -0.00064719

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00037256 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00061715 -0.00000000 -0.00000000  0.00000000  0.00037380  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00034965  0.00000000  0.00000000  0.00000000 -0.00064212  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00061542  0.00000000  0.00000000  0.00000000 -0.00037229  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.02069050  0.00000000 -0.00000000  0.00000000 -0.00000314 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00026199 -0.00000000  0.00000000 -0.00000000 -0.00030316 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00045108 -0.00000000  0.00000000  0.00000000  0.00000179

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00036095  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00046138 -0.00000000  0.00000000 -0.00000000 -0.00019161 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00007691 -0.00000000 -0.00000000 -0.00000000  0.00033622 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00011744  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00008112  0.00000000 -0.00000000  0.00000000  0.00044752

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70728491 -0.00000000  0.00000000 -0.00000001 -0.40757268

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.70695186 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.70693364  0.00000001 -0.00000000  0.00000000  0.70697284  0.00000005  0.00000001


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -23.95944353     -0.00005739      -12.59      0.00000000        0.00      0.0000
     2   1    -23.89701610      0.06237005    13688.64      0.06242743    13701.24      1.6987
     3   1    -23.89701599      0.06237015    13688.67      0.06242754    13701.26      1.6987
     4   1    -23.89701599      0.06237015    13688.67      0.06242754    13701.26      1.6987
     5   1    -23.89574605      0.06364010    13967.39      0.06369748    13979.98      1.7333
     6   1    -23.89574594      0.06364020    13967.41      0.06369759    13980.00      1.7333
     7   1    -23.89574545      0.06364069    13967.52      0.06369808    13980.11      1.7333
     8   1    -23.89574545      0.06364069    13967.52      0.06369808    13980.11      1.7333
     9   1    -23.89574541      0.06364073    13967.53      0.06369812    13980.12      1.7333
    10   1    -23.89302078      0.06636536    14565.51      0.06642275    14578.11      1.8075
    11   1    -23.89302071      0.06636544    14565.53      0.06642282    14578.12      1.8075
    12   1    -23.89302071      0.06636544    14565.53      0.06642282    14578.13      1.8075
    13   1    -23.89302060      0.06636555    14565.55      0.06642293    14578.15      1.8075
    14   1    -23.89302060      0.06636555    14565.55      0.06642293    14578.15      1.8075
    15   1    -23.89302057      0.06636557    14565.56      0.06642296    14578.15      1.8075
    16   1    -23.89302054      0.06636560    14565.57      0.06642299    14578.16      1.8075
    17   1    -23.88207101      0.07731514    16968.71      0.07737252    16981.31      2.1054
    18   1    -23.88207088      0.07731526    16968.74      0.07737265    16981.33      2.1054
    19   1    -23.88207045      0.07731570    16968.83      0.07737308    16981.43      2.1054
    20   1    -23.88207044      0.07731570    16968.84      0.07737309    16981.43      2.1054
    21   1    -23.88207041      0.07731573    16968.84      0.07737312    16981.44      2.1054
    22   1    -23.83775029      0.12163585    26695.98      0.12169324    26708.58      3.3114
    23   1    -23.83775029      0.12163585    26695.98      0.12169324    26708.58      3.3114
    24   1    -23.83775029      0.12163585    26695.98      0.12169324    26708.58      3.3114
    25   1    -23.83129432      0.12809182    28112.91      0.12814921    28125.50      3.4871
    26   1    -23.82475309      0.13463306    29548.54      0.13469044    29561.14      3.6651
    27   1    -23.82475246      0.13463369    29548.68      0.13469107    29561.27      3.6651
    28   1    -23.82475207      0.13463407    29548.76      0.13469146    29561.36      3.6651
    29   1    -23.82475201      0.13463414    29548.78      0.13469152    29561.37      3.6651
    30   1    -23.82475201      0.13463414    29548.78      0.13469152    29561.37      3.6651
    31   1    -23.82237203      0.13701411    30071.12      0.13707150    30083.72      3.7299
    32   1    -23.82237203      0.13701411    30071.12      0.13707150    30083.72      3.7299
    33   1    -23.82237178      0.13701436    30071.18      0.13707175    30083.77      3.7299
    34   1    -23.82237126      0.13701488    30071.29      0.13707227    30083.89      3.7299
    35   1    -23.82237126      0.13701488    30071.29      0.13707227    30083.89      3.7299
    36   1    -23.82237100      0.13701515    30071.35      0.13707253    30083.94      3.7299
    37   1    -23.82237091      0.13701524    30071.37      0.13707262    30083.96      3.7299
    38   1    -23.82026770      0.13911844    30532.97      0.13917583    30545.56      3.7872
    39   1    -23.81919410      0.14019205    30768.60      0.14024943    30781.19      3.8164
    40   1    -23.81919409      0.14019206    30768.60      0.14024944    30781.19      3.8164
    41   1    -23.81919346      0.14019268    30768.74      0.14025007    30781.33      3.8164
    42   1    -23.81919346      0.14019268    30768.74      0.14025007    30781.33      3.8164
    43   1    -23.81919310      0.14019304    30768.82      0.14025043    30781.41      3.8164
    44   1    -23.81919273      0.14019341    30768.90      0.14025080    30781.49      3.8164
    45   1    -23.81919259      0.14019355    30768.93      0.14025094    30781.52      3.8164
    46   1    -23.81919259      0.14019355    30768.93      0.14025094    30781.52      3.8164
    47   1    -23.81919251      0.14019363    30768.95      0.14025102    30781.54      3.8164
    48   1    -23.81765987      0.14172628    31105.32      0.14178366    31117.92      3.8581
    49   1    -23.81765978      0.14172636    31105.34      0.14178375    31117.94      3.8581
    50   1    -23.81765978      0.14172637    31105.34      0.14178375    31117.94      3.8581
    51   1    -23.81223000      0.14715615    32297.04      0.14721353    32309.64      4.0059
    52   1    -23.81222996      0.14715619    32297.05      0.14721357    32309.64      4.0059
    53   1    -23.81222972      0.14715643    32297.10      0.14721381    32309.70      4.0059
    54   1    -23.81222972      0.14715643    32297.10      0.14721381    32309.70      4.0059
    55   1    -23.81222971      0.14715644    32297.10      0.14721382    32309.70      4.0059

 E0 =    -23.95938614 is the energy of the lowest zeroth-order state
 E1 =    -23.95944353 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99979373 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000063 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000004  0.00000000 -0.00000000  0.00000000  0.13479026 -0.07588705  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000007 -0.00000000  0.00000000  0.00000000 -0.07590131 -0.13476581  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00001352  0.00000000 -0.00000000 -0.15479769  0.00000021
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00001359  0.00000000  0.00000000 -0.00000000  0.00000021  0.15479751
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002

  7  1     7    1  |0 0>        0.00011428 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.54778629  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000164 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000042  0.00000000 -0.00000000 -0.00000000  0.39770483  0.70182240 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000005 -0.54776529 -0.00000000  0.00000000  0.40344585 -0.00000055
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000002

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.31622301  0.00000003  0.00000000 -0.00000000  0.00000095  0.69850365
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000010

 12  1     5    1  |1 1>+       0.00000000  0.00000000  0.54757447  0.00000005 -0.00000000  0.00000000 -0.00000055 -0.40332109
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000801  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000814  0.00000000 -0.00000000 -0.00019900  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000464 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000178  0.00000000 -0.00000000 -0.00000000  0.00024291 -0.00000218  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000422 -0.00000000  0.00000000  0.00016252 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000662  0.00000000  0.00000000 -0.00000000  0.00000000  0.00019836
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000318 -0.00000000 -0.00000000 -0.00000000 -0.00004993  0.00021563 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000210 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00079624 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.01172592 -0.00000000 -0.00000000 -0.00000000 -0.00293915  0.00166365 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00079417 -0.00000000  0.00000000  0.00292303 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006
                               -0.00000000  0.00000000  0.54782973  0.00000005  0.00000000 -0.00000000  0.00000055  0.40333157

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                                0.00000000  0.00000000 -0.00000005  0.54782933 -0.00000000  0.00000000  0.40333166 -0.00000055

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.80661323  0.00650591  0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000189 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.63234470 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000351  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000764  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00020511  0.00000165  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000171 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001184

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000171 -0.00000000  0.00000000  0.00001184 -0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000444 -0.00000000  0.00000000 -0.00000000 -0.00000208  0.00025792 -0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000664  0.00000000 -0.00000000 -0.00025630  0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000664 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00025630

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00079524  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00292879

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00079524 -0.00000000  0.00000000  0.00292880 -0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01172544 -0.00000000 -0.00000000  0.00000000  0.00002724 -0.00337712  0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000042 -0.00000000 -0.00000000  0.00000000  0.40897342 -0.69531652  0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000164  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.54778563  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000006
                               -0.00000000 -0.00000000 -0.54776503 -0.00000005  0.00000000 -0.00000000  0.00000055  0.40344619

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000003
                                0.00000000  0.00000000 -0.00000003  0.31621615 -0.00000000  0.00000000  0.69850886 -0.00000095

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                                0.00000000 -0.00000000  0.00000005 -0.54757857 -0.00000000  0.00000000  0.40331226 -0.00000055

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000801  0.00000000 -0.00000000  0.00000006 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000814 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00019900

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000178 -0.00000000  0.00000000 -0.00000000 -0.00024285 -0.00000610 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000464  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000422 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00016252

 50  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000663  0.00000000 -0.00000000 -0.00019836  0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000210  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000318  0.00000000 -0.00000000 -0.00000000  0.00004645  0.00021641 -0.00000000  0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01172592 -0.00000000  0.00000000  0.00000000  0.00291194  0.00171084  0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00079624  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00079417 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00292303


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00002088
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001206
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.15480601 -0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000860 -0.00000000
                                0.00000301  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000656  0.00000000  0.00000147  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000656 -0.00000000 -0.00000147  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.40341923  0.44834097  0.00000000  0.00000000  0.00000001 -0.00000000 -0.57634489  0.00000000
                                0.00000785 -0.00000365 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001770 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57733269
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000001  0.09077892  0.00000158  0.72453024 -0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000001 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.62754536  0.00000003 -0.07933484  0.00000017 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.26983503  0.00000001  0.67873830 -0.00000148  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010  0.00000003 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000021  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00079918  0.00000000  0.00046151 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00024428  0.00004240 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00058968 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00054054
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00112420 -0.00000000 -0.00014488 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00065611 -0.00000000  0.00064726 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00075559
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00006758 -0.00112767 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00071450 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

 21  1    14    1  |1 1>+      -0.00292666  0.00000133  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000075
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000493  0.00000000  0.00000057  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.72444178 -0.00000003  0.09159848 -0.00000020  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000004  0.72422156  0.00000020  0.09332563  0.00000000  0.00000000

 26  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57738362

 27  1     4    1  |1 0>        0.00000000  0.00000630  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000
                                0.00000444  0.77468415  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00161621  0.00000000

 28  1     5    1  |1 0>        0.00001569  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001774  0.00000000
                                0.80655023  0.00120291  0.00000000  0.00000000  0.00000001 -0.00000000 -0.57748491  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000024 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00093147

 31  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00015369  0.00000000  0.00137550 -0.00000000  0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00015697 -0.00000000 -0.00137513  0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.00020403 -0.00000194 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00092902 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00046094  0.00000000  0.00000587  0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00046095  0.00000000 -0.00000477  0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000097 -0.00000000 -0.00000132  0.00000000 -0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000132 -0.00000000 -0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57733225

 41  1     2    1  |1 1>-       0.00000785  0.00000363 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001776  0.00000000
                                0.40341968  0.44592695 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.57821497 -0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000003 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.09250628 -0.00000000  0.72431173 -0.00000158  0.00000002 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000003 -0.62735085 -0.00000018 -0.08083914 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001  0.27146025 -0.00000148 -0.67809199  0.00000000  0.00000001

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000021  0.00000000  0.00000002  0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00079808  0.00000000  0.00046341 -0.00000000  0.00000000 -0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00054054

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00024428 -0.00004486 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00058949 -0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00112454 -0.00000000  0.00014220 -0.00000000  0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00065457 -0.00000000 -0.00064882  0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                               -0.00006758  0.00113065  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070978  0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00075559

 53  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000075

 54  1    15    1  |1 1>-      -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00292666 -0.00000133 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000493  0.00000000 -0.00000055  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.49882622  0.85249964  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.85250345 -0.49882408 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.98769707 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000134  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.98769830 -0.00000005 -0.00000000  0.00000004 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000005  0.98769833 -0.00000000  0.00000000 -0.00000004  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06322779  0.00000000 -0.00000000 -0.00001682
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.10885426 -0.06411608 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.06322561 -0.00000000 -0.00000000  0.00001709 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000001 -0.10947915  0.00000000 -0.00000000 -0.00000969 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.06320919 -0.00000000 -0.00000000 -0.00001705  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000072  0.99978593 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00362205  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00438143 -0.00000000 -0.00000000 -0.00000315
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00019611 -0.00449286 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00279996 -0.00000000 -0.00000000  0.00000633 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00362120  0.00000000  0.00000000 -0.00000005  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00400118  0.00095100  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132049 -0.00000000  0.00000000  0.00000463
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.01450163  0.00000000 -0.00000000 -0.01462805
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000013

 22  1    15    1  |1 1>+      -0.00848341 -0.01441943 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.01450401  0.00000000  0.00000000  0.01463218 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.06322774  0.00000000 -0.00000000 -0.00001733  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.06322779 -0.00000000 -0.00000000 -0.00001733  0.00000000 -0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00107384 -0.12631998 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000078 -0.00000000  0.00000000  0.00001978

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.12642560  0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000921
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99978600

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00003080 -0.00362294 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00017339 -0.00000000  0.00000000  0.00000313 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00017338 -0.00000000 -0.00000000 -0.00000312  0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00489899 -0.00004164  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00361527 -0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00457333  0.00000000  0.00000000  0.00000464 -0.00000000  0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00457333  0.00000000 -0.00000000 -0.00000464  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.01450220  0.00000000  0.00000001  0.01462859 -0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.01450220  0.00000000  0.00000000 -0.01462860  0.00000001 -0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01672813 -0.00014220  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.10992850 -0.06225629 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.06322785  0.00000000 -0.00000000 -0.00001682

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.06322556  0.00000000  0.00000000  0.00001710 -0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.10948008 -0.00000001 -0.00000000 -0.00000969  0.00000000  0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.06320793 -0.00000000 -0.00000000  0.00001705 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.99978593 -0.00000072  0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00362207 -0.00000000 -0.00000000  0.00000005 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00011971  0.00449555  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00438144 -0.00000000 -0.00000000  0.00000314

 49  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00279995 -0.00000000 -0.00000000 -0.00000633 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00362120  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00132047  0.00000000 -0.00000000 -0.00000463

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00398443 -0.00101886 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00823704  0.01456156  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000013
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.01450162 -0.00000000  0.00000000  0.01462806

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.01450401  0.00000000 -0.00000001 -0.01463217  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00144521  0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000024 -0.00631200 -0.00000000 -0.00363769  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000042  0.00362210 -0.00000000 -0.00633915  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00724452 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000050 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00724965  0.00000000  0.00000285
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00724966  0.00000000  0.00000286 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99784957  0.00000008  0.00000000 -0.00000181  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00064011  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000006  0.00063453 -0.00000000 -0.00109801  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00063358  0.00000000  0.00087210
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00110037 -0.00000000 -0.00046414  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063473  0.00000000 -0.00113307  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000045  0.00000000 -0.00000390  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.48812840 -0.00000036 -0.52316657
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000003 -0.00000002

 15  1     8    1  |1 1>+      -0.00000000  0.00000000  0.59130960 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00004103 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00001114 -0.60322105  0.00000000 -0.02091030  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009 -0.37793401 -0.00000022 -0.32393252
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000002 -0.00000001

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.48784983  0.00000012  0.10508611 -0.00000007
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001

 19  1    12    1  |1 1>+       0.00001385  0.13072355  0.00000000  0.53410037 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.17733863 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00001230 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00056498 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.03783160  0.00064915  0.00000000  0.00040890 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00053883 -0.00000000 -0.00000295
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00064163 -0.00000000  0.00053699 -0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00064163 -0.00000000 -0.00053673

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00126874 -0.00000000  0.00000007  0.00000000  0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00126549 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.48785091  0.00000000 -0.00002404 -0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02420880 -0.00000001  0.76405386 -0.00000052

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000003
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.02420685  0.00000052  0.76415526

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001810 -0.00003268  0.00000000  0.65464391 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00003383 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.48759863  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.61665017  0.00000011  0.16234510

 36  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.61665025  0.00000015  0.16240726 -0.00000011

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00052918 -0.00000000  0.00001046 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00052919  0.00000000  0.00001040

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.03783759  0.00000005 -0.00000000 -0.00077515  0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000006  0.00063442  0.00000000  0.00109807 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00064011 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00063358 -0.00000000 -0.00087191  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00110038  0.00000000  0.00046390

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00063472 -0.00000000 -0.00113314

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000045  0.00000000  0.00000390

 46  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000003
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.48812889 -0.00000012  0.52322661 -0.00000036

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001124  0.60322359 -0.00000000 -0.02085083  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00004103  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.59131017 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.37793330 -0.00000009 -0.32408926  0.00000022

 50  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000012  0.48784997  0.00000007  0.10522700

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00001230  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.17733664 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001386 -0.13077569  0.00000000  0.53408743 -0.00000000 -0.00000000  0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03783156 -0.00064920  0.00000000  0.00040885 -0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00056499 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00053884 -0.00000000 -0.00000300  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.02025843 -0.00001253 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000254  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000204  0.00000181  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000145  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000356  0.00000316 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000647  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000647  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000648  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.06554549 -0.00003255 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00071123  0.00092865 -0.00000000  0.00000000  0.00000427
                                0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000017 -0.00000000  0.00000000 -0.00000002

  9  1     2    1  |1 1>+      -0.00093037  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000374  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00077229  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00090481  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00026179  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000189 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.24396664  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.02956551  0.37067752  0.00000000  0.00000000  0.70656235
                               -0.00000000  0.00000000 -0.00000000 -0.00000189  0.00006832  0.00000000  0.00000000 -0.00270921

 16  1     9    1  |1 1>+      -0.33540297  0.00000000 -0.00000000  0.00000000  0.00000000  0.00048625  0.70590721 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.62853119  0.00000018 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000002  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000 -0.00000016  0.56758247  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.46975245  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00064458 -0.00753174 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.70885032 -0.43864011 -0.00000000 -0.00000000  0.02764836
                                0.00000000 -0.00000000 -0.00000000  0.00004521 -0.00008085 -0.00000000  0.00000000 -0.00010601

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000223 -0.00003531  0.00000000  0.00000000  0.00031943
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000122

 22  1    15    1  |1 1>+      -0.00000880  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57599567 -0.00042608 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00003146 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00104030 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00104043  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00092880 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00123628  0.00000642  0.00000000 -0.00000000 -0.00000394

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000482  0.00092814  0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000679 -0.00000003 -0.00000000 -0.00000000  0.00001354

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57764399 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00001129 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000012  0.40669512  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.40650477  0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000072 -0.00000000  0.00000000  0.00000000  0.00000000  0.00104533  0.05730443 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000019 -0.00010648  0.00000000 -0.00000000  0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00299623  0.57765601  0.00000000 -0.00000000  0.00000777

 35  1    12    1  |1 0>        0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.24095656 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000007 -0.24091499 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00004944 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00004941 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.57597642 -0.00045636  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00093037  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000060  0.00000374 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000017 -0.00000000 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00072082 -0.00092122 -0.00000000  0.00000000  0.00000427

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00077251 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00090492 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00026150 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000190 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000007 -0.24383592 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.33540146 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00048622  0.70590190 -0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00006838 -0.00000000  0.00000000 -0.00270920
                                0.00000000 -0.00000000 -0.00000000  0.02571616  0.37096286 -0.00000000 -0.00000000 -0.70655975

 49  1    10    1  |1 1>-      -0.00000000 -0.00000002  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000018  0.62845100  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000  0.00000002 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.56755622  0.00000016 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00004492  0.00008220  0.00000000 -0.00000000 -0.00010596
                               -0.00000000  0.00000000  0.00000000 -0.70426149 -0.44597143 -0.00000000 -0.00000000 -0.02763370

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.46975331 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00064447 -0.00751170  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000875  0.00000000  0.00000000  0.00000000 -0.00000000  0.57599579 -0.00042606 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000122
                                0.00000000  0.00000000  0.00000000  0.00000260 -0.00003525 -0.00000000 -0.00000000 -0.00031941

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00003146  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00002123  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00001832 -0.00000000 -0.00000000  0.00000000 -0.00000259  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00001051  0.00000000  0.00000000  0.00000000 -0.00000454 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000714  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000253 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000113 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000254  0.00000000 -0.00000000  0.00000113 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00006290 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000139  0.00000000 -0.00000000 -0.00000000  0.00061578
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000404 -0.00000000 -0.00000000 -0.00000000  0.00000342  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000356 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000661  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000008  0.00000000 -0.00000000  0.00000639 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000554 -0.00000000 -0.00000000  0.00000597 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000869  0.00000000  0.00000000  0.00002153 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.64419535 -0.00000063  0.00000000  0.00000000 -0.00000001 -0.11621473 -0.00000000  0.00000000
                                0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.11322308  0.00000000  0.00000000 -0.00000000 -0.00031939
                                0.00000000  0.00000000  0.00000000 -0.00011314 -0.00000000  0.00000000 -0.00000000  0.00000004

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.15365508  0.00000000  0.00000000 -0.00000000 -0.03544133  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.10870227  0.00000011 -0.00000000 -0.00000000  0.00000003  0.58767046  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000055  0.56031471  0.00000000  0.00000000 -0.33888480  0.00000002 -0.00000000  0.00000000
                               -0.00000003  0.00000042  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.51181438  0.00000000  0.00000000  0.00000000 -0.46362910 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.52240675  0.00000000  0.00000000  0.00000000 -0.00000996
                               -0.00000000  0.00000000  0.00000000 -0.00052203 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00002650  0.00000000  0.00000000 -0.00000000  0.70695501
                                0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00008371

 22  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00003515  0.00000000  0.00000000  0.00000000 -0.00078977 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00019220  0.00000000  0.00000000 -0.00000000  0.00000000  0.00050357  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000214 -0.00000000 -0.00000000  0.00000450 -0.00000000 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000213 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000450 -0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000486 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00071325

 28  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000690 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000245
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.02068722

 30  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.65445744  0.00000000  0.00000000  0.00000000 -0.00038744  0.00000000

 31  1     8    1  |1 0>       -0.00000002  0.00000037  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000049 -0.49629285 -0.00000000 -0.00000000  0.06265902 -0.00000000  0.00000000  0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.49629067 -0.00000049 -0.00000000 -0.00000000  0.00000000  0.06267573  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00044753 -0.00000000 -0.00000000 -0.00000000  0.75374527  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00065415  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.65462782  0.00000000  0.00000000  0.00000000  0.00000004

 35  1    12    1  |1 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                               -0.11379875  0.00000011 -0.00000000 -0.00000000  0.00000004  0.72274118  0.00000000 -0.00000000

 36  1    13    1  |1 0>        0.00000001 -0.00000008 -0.00000000  0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000
                                0.00000011  0.11377610 -0.00000000 -0.00000000  0.72274457 -0.00000004  0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00021244 -0.00000000  0.00000000 -0.00049849  0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00021248 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00049844 -0.00000000 -0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000040  0.00000000  0.00000000  0.00000000 -0.00075739 -0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000404 -0.00000000 -0.00000000  0.00000000 -0.00000341  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000139 -0.00000000 -0.00000000 -0.00000000  0.00061578

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000356  0.00000000  0.00000000 -0.00000661  0.00000000 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000639 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000554  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000597  0.00000000  0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000868 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002152 -0.00000000 -0.00000000

 46  1     7    1  |1 1>-       0.00000003 -0.00000048 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000063  0.64419214  0.00000000 -0.00000000  0.11623446 -0.00000001 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.15363906  0.00000000  0.00000000  0.00000000 -0.03562208  0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00011316  0.00000000 -0.00000000  0.00000000  0.00000004
                                0.00000000  0.00000000 -0.00000000  0.11324150  0.00000000  0.00000000  0.00000000  0.00031943

 49  1    10    1  |1 1>-       0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000
                                0.00000011  0.10868410 -0.00000000 -0.00000000  0.58767362 -0.00000003  0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                               -0.56030483  0.00000055  0.00000000  0.00000000 -0.00000002 -0.33890117 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00052203  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.52240741  0.00000000  0.00000000  0.00000000  0.00001000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.51236359 -0.00000000  0.00000000  0.00000000 -0.46302174  0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00003429  0.00000000  0.00000000  0.00000000 -0.00078978 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00008371
                                0.00000000 -0.00000000 -0.00000000 -0.00002642 -0.00000000 -0.00000000  0.00000000 -0.70695485

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00019221  0.00000000 -0.00000000  0.00050358 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000008
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.01811329  0.00000000  0.00000000 -0.00000000 -0.01040866
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.01041263 -0.00000000  0.00000000 -0.00000000 -0.01810634
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.02090718  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.02090877 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000007 -0.00000000 -0.00000000  0.00000000  0.02090876  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000593
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00037256  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00037332  0.00000000 -0.00000000  0.00000000  0.00064658
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00061714  0.00000000  0.00000000  0.00000000 -0.00037380  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00034966  0.00000000 -0.00000000  0.00000000  0.00064211  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00061542  0.00000000  0.00000000 -0.00000000 -0.00037230 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.02069049  0.00000000  0.00000000  0.00000000  0.00000315  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00026202 -0.00000000 -0.00000000 -0.00000000  0.00030314 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00036097  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00045111  0.00000000 -0.00000000 -0.00000000  0.00000109
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00046132  0.00000000  0.00000000  0.00000000 -0.00019164  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00007693  0.00000000 -0.00000000  0.00000000  0.00033620  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000  0.00008039  0.00000000 -0.00000000  0.00000000  0.00044766
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00011745  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.70695170 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.70661847  0.00000000  0.00000000 -0.00000001 -0.40872718
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000001 -0.70693373 -0.00000000 -0.00000000 -0.00000005  0.70697276 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00061671  0.00000000 -0.00000000  0.00000000  0.00037339  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00061671  0.00000000  0.00000000  0.00000000 -0.00037339  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00074826  0.00000000 -0.00000000 -0.00000000 -0.00000061

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00074465 -0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00041387  0.00000000 -0.00000000 -0.00000000 -0.00000035

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00009963  0.00000000 -0.00000000  0.00000000 -0.00000286 -0.00000000  0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00009957  0.00000000  0.00000000  0.00000000 -0.00000289  0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000  0.00000000  0.00051520

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00036969 -0.00000000  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00053609 -0.00000000 -0.00000000 -0.00000000  0.00035739 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00053609 -0.00000000 -0.00000000  0.00000000  0.00035741  0.00000000  0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.70697587 -0.00000001 -0.00000000  0.00000000  0.70693071  0.00000005  0.00000001

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.00000001  0.70697579 -0.00000000 -0.00000000 -0.00000005  0.70693079 -0.00000002

 39  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00066661  0.00000000 -0.00000001  0.00000003  0.81632647

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00037226  0.00000000  0.00000000 -0.00000000 -0.00064719

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00037256 -0.00000000  0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00061715 -0.00000000 -0.00000000  0.00000000  0.00037380  0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00034965  0.00000000  0.00000000  0.00000000 -0.00064212  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00061542  0.00000000  0.00000000  0.00000000 -0.00037229  0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.02069050  0.00000000 -0.00000000  0.00000000 -0.00000314 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00026199 -0.00000000  0.00000000 -0.00000000 -0.00030316 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00045108 -0.00000000  0.00000000  0.00000000  0.00000179

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00036095  0.00000000 -0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00046138 -0.00000000  0.00000000 -0.00000000 -0.00019161 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00007691 -0.00000000 -0.00000000 -0.00000000  0.00033622 -0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00011744  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00008112  0.00000000 -0.00000000  0.00000000  0.00044752

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70728491 -0.00000000  0.00000000 -0.00000001 -0.40757268

 54  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.70695186 -0.00000000  0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.70693364  0.00000001 -0.00000000  0.00000000  0.70697284  0.00000005  0.00000001



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.82%    0.58%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.58%    1.82%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.40%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.40%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.82%   49.26%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.28%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   48.79%
 12  1     5    1  |1 1>+         0.00%    0.00%   29.98%    0.00%    0.00%    0.00%    0.00%   16.27%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.27%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.27%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.06%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   39.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.73%   48.35%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.28%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   10.00%    0.00%    0.00%   48.79%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   29.98%    0.00%    0.00%   16.27%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          2.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+        16.27%   20.10%    0.00%    0.00%    0.00%    0.00%   33.22%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.82%    0.00%   52.49%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   39.38%    0.00%    0.63%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    7.28%    0.00%   46.07%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%   52.48%    0.00%    0.84%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   52.45%    0.00%    0.87%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.05%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 41  1     2    1  |1 1>-        16.27%   19.89%    0.00%    0.00%    0.00%    0.00%   33.43%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.86%    0.00%   52.46%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   39.36%    0.00%    0.65%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    7.37%    0.00%   45.98%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         24.88%   72.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         72.68%   24.88%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   97.55%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   97.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   97.55%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         1.18%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.20%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.02%
 22  1    15    1  |1 1>+         0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    1.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.60%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.00%    0.00%
 39  1    16    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         1.21%    0.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    1.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.02%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.02%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         99.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%   27.37%
 15  1     8    1  |1 1>+         0.00%    0.00%   34.96%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   36.39%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%   10.49%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.80%    0.00%    1.10%    0.00%
 19  1    12    1  |1 1>+         0.00%    1.71%    0.00%   28.53%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    3.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%   58.38%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%   58.39%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   42.86%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%   23.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   38.03%    0.00%    2.64%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%   38.03%    0.00%    2.64%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.83%    0.00%   27.38%    0.00%
 47  1     8    1  |1 1>-         0.00%   36.39%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%   34.96%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%   10.50%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.80%    0.00%    1.11%
 51  1    12    1  |1 1>-         0.00%    0.00%    3.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    1.71%    0.00%   28.52%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.43%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    5.95%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.09%   13.74%    0.00%    0.00%   49.92%
 16  1     9    1  |1 1>+        11.25%    0.00%    0.00%    0.00%    0.00%    0.00%   49.83%    0.00%
 17  1    10    1  |1 1>+         0.00%   39.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%   32.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+        22.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   50.25%   19.24%    0.00%    0.00%    0.08%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.18%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>         33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%   16.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%   16.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    5.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    5.80%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.17%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    5.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-        11.25%    0.00%    0.00%    0.00%    0.00%    0.00%   49.83%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.07%   13.76%    0.00%    0.00%   49.92%
 49  1    10    1  |1 1>-         0.00%    0.00%   39.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%   32.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   49.60%   19.89%    0.00%    0.00%    0.08%
 52  1    13    1  |1 1>-        22.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.18%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+        41.50%    0.00%    0.00%    0.00%    0.00%    1.35%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    1.28%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    2.36%    0.00%    0.00%    0.00%    0.13%    0.00%
 17  1    10    1  |1 1>+         1.18%    0.00%    0.00%    0.00%    0.00%   34.54%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%   31.40%    0.00%    0.00%   11.48%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%   26.20%    0.00%    0.00%    0.00%   21.50%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   27.29%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 30  1     7    1  |1 0>          0.00%    0.00%   42.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%   24.63%    0.00%    0.00%    0.39%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>         24.63%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.81%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          1.30%    0.00%    0.00%    0.00%    0.00%   52.24%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    1.29%    0.00%    0.00%   52.24%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%   41.50%    0.00%    0.00%    1.35%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    2.36%    0.00%    0.00%    0.00%    0.13%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    1.28%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    1.18%    0.00%    0.00%   34.54%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-        31.39%    0.00%    0.00%    0.00%    0.00%   11.49%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   27.29%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%   26.25%    0.00%    0.00%    0.00%   21.44%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.03%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%   49.93%    0.00%    0.00%    0.00%   16.71%
 23  1    16    1  |1 1>+         0.00%   49.98%    0.00%    0.00%    0.00%   49.98%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>         49.98%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%   49.98%    0.00%    0.00%    0.00%   49.98%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.64%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   16.61%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-        49.98%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.25       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      674.91       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2356.64   1322.90    829.93    193.34      4.49      1.54      4.23
 REAL TIME  *      2506.71 SEC
 DISK USED  *       733.26 MB (local),        4.76 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -23.812229706780

              CI              CI           MULTI         RHF-SCF
    -23.79251703    -23.80806291    -23.55313730    -23.68007621
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
