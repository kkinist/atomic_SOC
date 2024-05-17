
 Working directory              : /wrk/irikura/molpro.Jmt8mqWmOh/
 Global scratch directory       : /wrk/irikura/molpro.Jmt8mqWmOh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Jmt8mqWmOh/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ra SO-CI
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf,so-sci;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=16
 
                                                                                 ! active space (2/10) as orbitals [7 3]
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
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
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 08-May-24          TIME: 12:04:29  
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

     243.794 MB (compressed) written to integral file ( 13.4%)

     Node minimum: 35.652 MB, node maximum: 46.662 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   21834438.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15993204      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   226482739. AND WROTE     3718919. INTEGRALS IN     12 RECORDS. CPU TIME:     0.88 SEC, REAL TIME:     0.94 SEC
 SORT2 READ    23245259. AND WROTE   131080516. INTEGRALS IN   1068 RECORDS. CPU TIME:     0.30 SEC, REAL TIME:     0.34 SEC

 Node minimum:    21832526.  Node maximum:    21855633. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.43      4.26
 REAL TIME  *         7.37 SEC
 DISK USED  *        30.19 MB (local),      656.76 MB (total)
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
    3    1    0     -23.68007621      -0.00000002    0.00003972    0.00003972    0.00000000    1    0.17E-04      1.17

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
    1.2     2.00000    -0.80466     1  1  px   0.99980
    2.2     2.00000    -0.80466     1  1  py   0.88988    1  1  pz  -0.45574
    3.2     2.00000    -0.80466     1  1  py   0.45581    1  1  pz   0.89000


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
 CPU TIMES  *         6.03      1.60      4.26
 REAL TIME  *         9.05 SEC
 DISK USED  *        33.80 MB (local),      678.42 MB (total)
 SF USED    *        11.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.528D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.720D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.514D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 6 4 3 2 5   3 6 4 1 2 5 6 4 3 7  141511 9131012 8 1 6   3 4 5 2 911 8121310
                                       1514 7 1 6 2 4 5 3 1   7 812151411 91310 2   3 6 5 4 7 812151411   91310 1 2 3 6 4 5 8
                                       121415 711 91013 2 5   3 4 6 1 5 2 4 3 6 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.216D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.347D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.322D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.322D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 3 1 3   2 1 4 5 9 7 810 6 1   2 31416151718201912  111321 810 5 4 6 9 7
                                        1 2 3 5 4 9 7 6 810  14162113151718201112  19 7 9 5 4 6 810 1 2   3132115171918201614
                                       1112 7 9 5 4 610 8 1   2 3 4 5 610 8 7 9 4   5 610 8 7 9 1 2 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  1396  ( 16 closed/active, 411 closed/virtual, 0 active/active, 969 active/virtual )
 Total number of variables:    2186
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30   13    -23.48356541     -23.60117002   -0.11760461    0.06389596 0.00018556 0.00000000  0.25E+01      1.40
   2    8   14    0    -23.58618546     -23.59255184   -0.00636638    0.04522186 0.00001985 0.00000000  0.50E+00      2.57
   3    8   14    0    -23.59259389     -23.59259662   -0.00000273    0.00074157 0.00000014 0.00000000  0.92E-02      3.73
   4    4    8    0    -23.59259662     -23.59259662   -0.00000000    0.00000106 0.00000001 0.00000000  0.15E-04      4.61

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-08)
                       Final energy:    -23.59259662
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -23.698525961554
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.99900746
 One electron energy                           -38.96632632
 Two electron energy                            15.26780036
 Virial ratio                                    4.95040782
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -23.617169391630
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09441777
 One electron energy                           -38.96355122
 Two electron energy                            15.34638183
 Virial ratio                                    4.87521340
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -23.617169391628
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09441777
 One electron energy                           -38.96355122
 Two electron energy                            15.34638183
 Virial ratio                                    4.87521340
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -23.617169391624
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09441777
 One electron energy                           -38.96355122
 Two electron energy                            15.34638183
 Virial ratio                                    4.87521340
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -23.617169391620
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09441777
 One electron energy                           -38.96355122
 Two electron energy                            15.34638183
 Virial ratio                                    4.87521340
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -23.617169391614
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09441777
 One electron energy                           -38.96355122
 Two electron energy                            15.34638183
 Virial ratio                                    4.87521340
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -23.576115880477
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.93974666
 One electron energy                           -38.07105980
 Two electron energy                            14.49494392
 Virial ratio                                    4.96921236
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -23.626585865301
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11321862
 One electron energy                           -39.08711051
 Two electron energy                            15.46052465
 Virial ratio                                    4.86483575
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -23.626585865297
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11321862
 One electron energy                           -39.08711051
 Two electron energy                            15.46052465
 Virial ratio                                    4.86483575
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -23.626585865288
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11321862
 One electron energy                           -39.08711051
 Two electron energy                            15.46052464
 Virial ratio                                    4.86483575
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -23.626585865275
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11321862
 One electron energy                           -39.08711051
 Two electron energy                            15.46052464
 Virial ratio                                    4.86483575
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -23.626585865275
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11321862
 One electron energy                           -39.08711051
 Two electron energy                            15.46052464
 Virial ratio                                    4.86483575
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -23.583423727360
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.88400668
 One electron energy                           -37.88986210
 Two electron energy                            14.30643837
 Virial ratio                                    5.00805523
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -23.558893660547
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10510748
 One electron energy                           -38.71594915
 Two electron energy                            15.15705549
 Virial ratio                                    4.85888270
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -23.558893660541
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10510748
 One electron energy                           -38.71594915
 Two electron energy                            15.15705549
 Virial ratio                                    4.85888270
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -23.558893660531
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10510748
 One electron energy                           -38.71594915
 Two electron energy                            15.15705549
 Virial ratio                                    4.85888270
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -23.553742778942
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728716
 Two electron energy                            15.60354438
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -23.553742778940
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728715
 Two electron energy                            15.60354438
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -23.553742778936
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728715
 Two electron energy                            15.60354438
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -23.553742778936
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728715
 Two electron energy                            15.60354437
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -23.553742778932
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728715
 Two electron energy                            15.60354437
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -23.553742778931
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728716
 Two electron energy                            15.60354438
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -23.553742778930
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614497
 One electron energy                           -39.15728716
 Two electron energy                            15.60354438
 Virial ratio                                    4.78303796
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.457922182155
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000005979
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000008
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999990834
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.542077653927
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999984398
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000017008
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.965853726067
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.034146315454
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999997258
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999864
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000001383
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999305
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     8.403049708577
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     8.998319187717
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     1.294488171553
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     1.596968578837
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     4.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     2.705509524270
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     1.001684239068
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.457078782790
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000110
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999998788
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000658
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.542921333565
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000015482
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999982975
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.335764752455
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.664235034693
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000004778
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999803
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999430
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000808
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.040055596248
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.444077758884
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     8.976765424620
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     6.959914060135
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     4.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.023233589997
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     2.555971101342
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.084999035055
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999993911
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000001204
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000008508
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.915001012508
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000120
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000017
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.698381521479
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.301618649853
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999997963
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000000333
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999999187
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999887
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.556894695175
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.557603053399
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.728746403827
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     3.443117361028
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     4.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     8.271256885733
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     8.442344659590
 
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
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>    12.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>    12.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 4 5 2 3 6 1 5 4   2 3 6 1 5 4 2 3 613  101415 81112 7 9 1 5   4 2 3 613101415 811
                                       12 7 9 1 3 5 6 4 2 1  15141310 81112 7 9 3   6 5 2 41514 8131011  12 7 9 1 6 3 5 2 415
                                       14 813101112 7 9 6 3   5 2 4 1 3 6 5 2 4 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 1 2 3 1   2 3 9 7 410 6 8 5 1   2 31517182014162112  131911 4 7 9 610 5 8
                                        1 2 3 7 9 810 5 4 6  15171820141621121319  11 8 9 7 510 6 4 1 2   3151720181614211213
                                       1911 8 7 9 510 6 4 1   2 3 8 7 9 510 6 4 8   9 7 510 6 4 1 2 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58159     1  1  s    0.99420
    2.1     0.56390    -0.05612     1  1  s   -0.41486    1  4  s    0.49906    1  5  s    0.66025
    3.1     0.23352     0.04989     1  2  d1+ -0.33439    1  3  d1+ -0.40804
    4.1     0.23352     0.04989     1  2  d2+  0.33439    1  3  d2+  0.40804
    5.1     0.23352     0.04989     1  2  d0   0.33439    1  3  d0   0.40804
    6.1     0.23352     0.04989     1  2  d2- -0.33439    1  3  d2- -0.40804
    7.1     0.23352     0.04989     1  2  d1-  0.33439    1  3  d1-  0.40804
    8.1     0.08577     0.02589     1  4  s   -0.48695    1  5  s   -0.62004    1 11  s    1.47212
    1.2     2.00000    -0.80379     1  1  px   0.99957
    2.2     2.00000    -0.80379     1  1  py   0.99957
    3.2     2.00000    -0.80379     1  1  pz   0.99957
    4.2     0.06090     0.04323     1  1  px  -0.33824    1  3  px   0.59892    1  4  px   0.43097
    5.2     0.06090     0.04323     1  1  pz  -0.33824    1  3  pz   0.59892    1  4  pz   0.43097
    6.2     0.06090     0.04323     1  1  py  -0.33824    1  3  py   0.59892    1  4  py   0.43097
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96553005     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.02270058
 b00000a 000     -0.00841837     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.67973571
 a00000b 000      0.00841837      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.67973571
 ab00000 000      0.00000000      0.00000000      0.00000427      0.64653261     -0.00000105      0.00000027     -0.00000000
 ba00000 000     -0.00000000     -0.00000000     -0.00000427     -0.64653261      0.00000105     -0.00000027      0.00000000
 a0000b0 000      0.00000000      0.00000206      0.00002868      0.00000105      0.64653261     -0.00000398     -0.00000000
 b0000a0 000     -0.00000000     -0.00000206     -0.00002868     -0.00000105     -0.64653261      0.00000398      0.00000000
 a000b00 000     -0.00000000      0.00000003      0.64653261     -0.00000427     -0.00002868     -0.00000277      0.00000000
 b000a00 000      0.00000000     -0.00000003     -0.64653261      0.00000427      0.00002868      0.00000277     -0.00000000
 b00a000 000     -0.00000000     -0.63962639     -0.00000038      0.00000004      0.00000146     -0.09424698      0.00000000
 a00b000 000      0.00000000      0.63962639      0.00000038     -0.00000004     -0.00000146      0.09424698     -0.00000000
 a0b0000 000     -0.00000000     -0.09424698      0.00000274     -0.00000026      0.00000423      0.63962639      0.00000000
 b0a0000 000      0.00000000      0.09424698     -0.00000274      0.00000026     -0.00000423     -0.63962639     -0.00000000
 0000000 020     -0.13618747     -0.27709428     -0.00000016      0.00000002      0.00000063     -0.04082899     -0.07302790
 0000000 002     -0.13618747      0.10318820      0.00000111     -0.00000011      0.00000127      0.26038518     -0.07302790
 0000000 a0b      0.00000000      0.00000001      0.24256171     -0.00000160     -0.00001076     -0.00000104      0.00000000
 0000000 b0a     -0.00000000     -0.00000001     -0.24256171      0.00000160      0.00001076      0.00000104     -0.00000000
 0000000 ba0     -0.00000000     -0.00000000     -0.00000160     -0.24256171      0.00000039     -0.00000010      0.00000000
 0000000 ab0      0.00000000      0.00000000      0.00000160      0.24256171     -0.00000039      0.00000010     -0.00000000
 0000000 0ab     -0.00000000     -0.00000077     -0.00001076     -0.00000039     -0.24256171      0.00000149      0.00000000
 0000000 0ba      0.00000000      0.00000077      0.00001076      0.00000039      0.24256171     -0.00000149     -0.00000000
 0000000 200     -0.13618747      0.17390608     -0.00000095      0.00000009     -0.00000190     -0.21955619     -0.07302790
 0000002 000     -0.01619319      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.13952683
 000ab00 000      0.00000000      0.00000000      0.11276165     -0.00000074     -0.00000500     -0.00000048      0.00000000
 000ba00 000     -0.00000000     -0.00000000     -0.11276165      0.00000074      0.00000500      0.00000048     -0.00000000
 00ba000 000      0.00000000      0.01643760     -0.00000048      0.00000005     -0.00000074     -0.11155714     -0.00000000
 00ab000 000     -0.00000000     -0.01643760      0.00000048     -0.00000005      0.00000074      0.11155714      0.00000000
 0020000 000     -0.04838736      0.11155714      0.00000007     -0.00000001     -0.00000025      0.01643760      0.08937164
 0000200 000     -0.04838736      0.11155714      0.00000007     -0.00000001     -0.00000025      0.01643760      0.08937163
 0002000 000     -0.04838736     -0.11155714     -0.00000007      0.00000001      0.00000025     -0.01643760      0.08937163
 0200000 000     -0.04838736     -0.04154319     -0.00000045      0.00000004     -0.00000051     -0.10483011      0.08937163
 0ba0000 000      0.00000000      0.00000000      0.00000064      0.09765445     -0.00000016      0.00000004      0.00000000
 0ab0000 000     -0.00000000     -0.00000000     -0.00000064     -0.09765445      0.00000016     -0.00000004     -0.00000000
 0000ab0 000      0.00000000     -0.00000000     -0.00000064     -0.09765445      0.00000016     -0.00000004     -0.00000000
 0000ba0 000     -0.00000000      0.00000000      0.00000064      0.09765445     -0.00000016      0.00000004      0.00000000
 0a00b00 000      0.00000000     -0.00000031     -0.00000433     -0.00000016     -0.09765445      0.00000060     -0.00000000
 0b00a00 000     -0.00000000      0.00000031      0.00000433      0.00000016      0.09765445     -0.00000060      0.00000000
 00a00b0 000      0.00000000      0.00000031      0.00000433      0.00000016      0.09765445     -0.00000060      0.00000000
 00b00a0 000     -0.00000000     -0.00000031     -0.00000433     -0.00000016     -0.09765445      0.00000060     -0.00000000
 0b000a0 000     -0.00000000      0.00000000      0.09765445     -0.00000064     -0.00000433     -0.00000042      0.00000000
 0a000b0 000      0.00000000     -0.00000000     -0.09765445      0.00000064      0.00000433      0.00000042     -0.00000000
 0000020 000     -0.04838736     -0.07001395      0.00000038     -0.00000004      0.00000077      0.08839251      0.08937164
 0b0a000 000      0.00000000      0.00000000      0.00000037      0.05638082     -0.00000009      0.00000002      0.00000000
 0a0b000 000     -0.00000000     -0.00000000     -0.00000037     -0.05638082      0.00000009     -0.00000002     -0.00000000
 000b0a0 000     -0.00000000      0.00000018      0.00000250      0.00000009      0.05638082     -0.00000035      0.00000000
 000a0b0 000      0.00000000     -0.00000018     -0.00000250     -0.00000009     -0.05638082      0.00000035     -0.00000000
 
 Energy:        -23.69852596    -23.61716939    -23.61716939    -23.61716939    -23.61716939    -23.61716939    -23.57611588
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 00aa000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a00000a 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 a000a00 000     -0.00000396     -0.00000131      0.00000000      0.00000000      0.99999810     -0.00000000      0.00000000
 aa00000 000     -0.00007189      0.99999809      0.00000168      0.00000145      0.00000131      0.00000000     -0.00000000
 a0000a0 000      0.99999809      0.00007189     -0.00000368     -0.00000384      0.00000396      0.00000000     -0.00000000
 000aa00 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000 000      0.00000174     -0.00000092      0.90851608     -0.41784532      0.00000000      0.00000000     -0.00000000
 a0a0000 000      0.00000503     -0.00000202      0.41784532      0.90851608     -0.00000000     -0.00000000      0.00000000
 00a00a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000375
 0a000a0 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.32237941
 0aa0000 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000453
 0a00a00 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000375
 0000aa0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000453
 0000000 a0a      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.69307834
 0000000 0aa     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000807
 0000000 aa0      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000973
 00a0a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.64475882
 0a0a000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000784
 000a0a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000650
 
 Energy:        -23.62658587    -23.62658587    -23.62658587    -23.62658587    -23.62658587    -23.58342373    -23.55889366

 State:                8               9              10              11              12              13              14
 00aa000 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000
 a00000a 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0000a0 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 000aa00 000      0.00000000      0.00000000     -0.37312688     -0.00002062      0.00042456      0.92778023     -0.00000000
 a00a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a0a0000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 00a00a0 000     -0.32237941     -0.00000769      0.00000572     -0.00000982      0.30876348     -0.00012970      0.00000000
 0a000a0 000      0.00000375      0.00000453      0.82983194      0.00009567      0.00013040      0.33373480     -0.00000000
 0aa0000 000      0.00000769     -0.32237941      0.00003653     -0.34160752     -0.00001178      0.00001047      0.00000000
 0a00a00 000     -0.32237941     -0.00000769      0.00001790     -0.00000541      0.73559655     -0.00033505      0.00000000
 0000aa0 000     -0.00000769      0.32237941     -0.00007645      0.71497164      0.00000388     -0.00001267     -0.00000000
 0000000 a0a      0.00000807      0.00000973      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 0aa      0.69307834      0.00001654     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 aa0     -0.00001654      0.69307834     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 00a0a00 000      0.00000751      0.00000905     -0.41491597     -0.00004783     -0.00006520     -0.16686740      0.00000000
 0a0a000 000     -0.00001333      0.55837751      0.00006523     -0.61001626     -0.00000904      0.00001336      0.00000000
 000a0a0 000     -0.55837751     -0.00001333     -0.00001364      0.00000879     -0.60296155      0.00026832     -0.00000000
 
 Energy:        -23.55889366    -23.55889366    -23.55374278    -23.55374278    -23.55374278    -23.55374278    -23.55374278

 State:               15              16
 00aa000 000     -0.00000000      0.00000000
 a00000a 000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000
 aa00000 000      0.00000000     -0.00000000
 a0000a0 000      0.00000000      0.00000000
 000aa00 000     -0.00001027     -0.00000378
 a00a000 000      0.00000000     -0.00000000
 a0a0000 000      0.00000000      0.00000000
 00a00a0 000      0.83944330      0.00019393
 0a000a0 000     -0.00000205     -0.00000136
 0aa0000 000     -0.00019063      0.82662220
 0a00a00 000     -0.50881980     -0.00010910
 0000aa0 000     -0.00011722      0.53741561
 0000000 a0a     -0.00000000      0.00000000
 0000000 0aa      0.00000000      0.00000000
 0000000 aa0      0.00000000     -0.00000000
 00a0a00 000      0.00000103      0.00000068
 0a0a000 000     -0.00004238      0.16697350
 000a0a0 000     -0.19088557     -0.00004898
 
 Energy:        -23.55374278    -23.55374278
 


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
 CPU TIMES  *        10.23      4.20      1.60      4.26
 REAL TIME  *        14.45 SEC
 DISK USED  *        60.09 MB (local),      836.21 MB (total)
 SF USED    *        88.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -23.69852596   -0.0
    -23.61716939    6.0
    -23.61716939    6.0
    -23.61716939    6.0
    -23.61716939    6.0
    -23.61716939    6.0
    -23.57611588   -0.0
    -23.62658587    6.0
    -23.62658587    6.0
    -23.62658587    6.0
    -23.62658587    6.0
    -23.62658587    6.0
    -23.58342373   -0.0
    -23.55889366    2.0
    -23.55889366    2.0
    -23.55889366    2.0
    -23.55374278   12.0
    -23.55374278   12.0
    -23.55374278   12.0
    -23.55374278   12.0
    -23.55374278   12.0
    -23.55374278   12.0
    -23.55374278   12.0
                                                  


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
     1       -23.69852596
     2       -23.61716939
     3       -23.61716939
     4       -23.61716939
     5       -23.61716939
     6       -23.61716939
     7       -23.57611588

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.83D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        637457
 Number of doubly external configurations:       1914183
 Total number of contracted configurations:      2559491
 Total number of uncontracted configurations:   12066380

 Diagonal Coupling coefficients finished.               Storage:   3217856 words, CPU-Time:      0.53 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1476828 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.69852596     0.00000000    -0.24059327  0.38D-01  0.53D-01     1.23
    1     2     2     1.00000000     0.00000000   -23.61716939     0.00000000    -0.24946487  0.45D-01  0.59D-01     1.23
    1     3     3     1.00000000     0.00000000   -23.61716939    -0.00000000    -0.24965877  0.45D-01  0.59D-01     1.23
    1     4     4     1.00000000     0.00000000   -23.61716939     0.00000000    -0.24954299  0.45D-01  0.59D-01     1.23
    1     5     5     1.00000000     0.00000000   -23.61716939     0.00000000    -0.24972128  0.46D-01  0.59D-01     1.23
    1     6     6     1.00000000     0.00000000   -23.61716939     0.00000000    -0.24948343  0.45D-01  0.59D-01     1.23
    1     7     7     1.00000000     0.00000000   -23.57611588    -0.00000000    -0.23524432  0.45D-01  0.52D-01     1.23
    2     1     1     1.07465842    -0.23216417   -23.93069013    -0.23216417    -0.00648077  0.21D-02  0.98D-03    28.52
    2     2     2     1.08359598    -0.23365817   -23.85082756    -0.23365817    -0.00696648  0.27D-02  0.12D-02    28.52
    2     3     3     1.08366687    -0.23365207   -23.85082146    -0.23365207    -0.00697606  0.27D-02  0.12D-02    28.52
    2     4     4     1.08373659    -0.23363256   -23.85080195    -0.23363256    -0.00699900  0.27D-02  0.12D-02    28.52
    2     5     5     1.08377862    -0.23363184   -23.85080123    -0.23363184    -0.00700423  0.27D-02  0.12D-02    28.52
    2     6     6     1.08377801    -0.23361768   -23.85078707    -0.23361768    -0.00701516  0.27D-02  0.12D-02    28.52
    2     7     7     1.07998554    -0.22852566   -23.80464154    -0.22852566    -0.00623112  0.24D-02  0.11D-02    28.52
    3     1     1     1.07719169    -0.23875307   -23.93727903    -0.00658890    -0.00026932  0.68D-04  0.46D-04    55.89
    3     2     2     1.08451661    -0.24057664   -23.85774603    -0.00691847    -0.00033827  0.11D-03  0.70D-04    55.89
    3     3     3     1.08452983    -0.24057653   -23.85774593    -0.00692446    -0.00033891  0.11D-03  0.70D-04    55.89
    3     4     4     1.08450178    -0.24057629   -23.85774568    -0.00694373    -0.00033823  0.11D-03  0.70D-04    55.89
    3     5     5     1.08452892    -0.24057540   -23.85774479    -0.00694355    -0.00033988  0.11D-03  0.70D-04    55.89
    3     6     6     1.08452922    -0.24057439   -23.85774379    -0.00695671    -0.00034092  0.11D-03  0.71D-04    55.89
    3     7     7     1.08048495    -0.23480913   -23.81092501    -0.00628347    -0.00026782  0.74D-04  0.54D-04    55.89
    4     1     1     1.07836271    -0.23904220   -23.93756817    -0.00028913    -0.00001582  0.86D-05  0.22D-05    83.15
    4     2     2     1.08634821    -0.24094851   -23.85811790    -0.00037187    -0.00002910  0.23D-04  0.36D-05    83.15
    4     3     3     1.08635142    -0.24094845   -23.85811784    -0.00037191    -0.00002917  0.23D-04  0.36D-05    83.15
    4     4     4     1.08635254    -0.24094831   -23.85811770    -0.00037203    -0.00002926  0.23D-04  0.36D-05    83.15
    4     5     5     1.08635143    -0.24094829   -23.85811768    -0.00037290    -0.00002928  0.23D-04  0.36D-05    83.15
    4     6     6     1.08634034    -0.24094828   -23.85811767    -0.00037389    -0.00002921  0.23D-04  0.36D-05    83.15
    4     7     7     1.08172580    -0.23509197   -23.81120785    -0.00028285    -0.00001547  0.93D-05  0.23D-05    83.15
    5     1     1     1.07872985    -0.23906050   -23.93758646    -0.00001830    -0.00000135  0.66D-06  0.24D-06   110.23
    5     2     2     1.08711486    -0.24098666   -23.85815605    -0.00003815    -0.00000408  0.21D-05  0.64D-06   110.23
    5     3     3     1.08711518    -0.24098664   -23.85815603    -0.00003819    -0.00000409  0.21D-05  0.64D-06   110.23
    5     4     4     1.08711449    -0.24098664   -23.85815603    -0.00003832    -0.00000411  0.21D-05  0.65D-06   110.23
    5     5     5     1.08711462    -0.24098662   -23.85815601    -0.00003833    -0.00000411  0.21D-05  0.64D-06   110.23
    5     6     6     1.08711403    -0.24098662   -23.85815601    -0.00003833    -0.00000411  0.21D-05  0.64D-06   110.23
    5     7     7     1.08195882    -0.23510993   -23.81122581    -0.00001795    -0.00000144  0.10D-05  0.22D-06   110.23
    6     1     1     1.07878714    -0.23906203   -23.93758800    -0.00000153    -0.00000011  0.32D-07  0.24D-07   137.28
    6     2     2     1.08724671    -0.24099178   -23.85816117    -0.00000512    -0.00000044  0.20D-06  0.74D-07   137.28
    6     3     3     1.08724651    -0.24099178   -23.85816117    -0.00000514    -0.00000044  0.20D-06  0.74D-07   137.28
    6     4     4     1.08724694    -0.24099178   -23.85816117    -0.00000514    -0.00000044  0.20D-06  0.74D-07   137.28
    6     5     5     1.08724660    -0.24099178   -23.85816117    -0.00000516    -0.00000044  0.20D-06  0.74D-07   137.28
    6     6     6     1.08724651    -0.24099178   -23.85816117    -0.00000516    -0.00000044  0.20D-06  0.75D-07   137.28
    6     7     7     1.08199427    -0.23511173   -23.81122761    -0.00000180    -0.00000016  0.61D-07  0.35D-07   137.28
    7     1     1     1.07880236    -0.23906215   -23.93758811    -0.00000012    -0.00000001  0.41D-08  0.13D-08   164.36
    7     2     2     1.08728993    -0.24099226   -23.85816165    -0.00000047    -0.00000005  0.40D-07  0.73D-08   164.36
    7     3     3     1.08728977    -0.24099226   -23.85816165    -0.00000047    -0.00000005  0.40D-07  0.73D-08   164.36
    7     4     4     1.08728995    -0.24099226   -23.85816165    -0.00000048    -0.00000005  0.40D-07  0.73D-08   164.36
    7     5     5     1.08728992    -0.24099226   -23.85816165    -0.00000048    -0.00000005  0.40D-07  0.74D-08   164.36
    7     6     6     1.08728993    -0.24099226   -23.85816165    -0.00000048    -0.00000005  0.40D-07  0.74D-08   164.36
    7     7     7     1.08200794    -0.23511191   -23.81122779    -0.00000018    -0.00000002  0.14D-07  0.37D-08   164.36
    8     1     1     1.07880601    -0.23906216   -23.93758812    -0.00000001    -0.00000000  0.12D-08  0.64D-09   187.81
    8     2     2     1.08730445    -0.24099231   -23.85816170    -0.00000006    -0.00000001  0.45D-08  0.13D-08   187.81
    8     3     3     1.08730441    -0.24099231   -23.85816170    -0.00000006    -0.00000001  0.45D-08  0.13D-08   187.81
    8     4     4     1.08730441    -0.24099231   -23.85816170    -0.00000006    -0.00000001  0.46D-08  0.13D-08   187.81
    8     5     5     1.08730436    -0.24099231   -23.85816170    -0.00000006    -0.00000001  0.46D-08  0.13D-08   187.81
    8     6     6     1.08730433    -0.24099231   -23.85816170    -0.00000006    -0.00000001  0.46D-08  0.13D-08   187.81
    8     7     7     1.08201083    -0.23511193   -23.81122781    -0.00000002    -0.00000000  0.69D-09  0.31D-09   187.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.1%
 S   2.0%  16.5%
 P   0.6%  12.9%  23.0%

 Initialization:   0.4%
 Other:           42.5%

 Total CPU:      187.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9310614  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0451578
 2/00000\222000          -0.0508491  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9149968
 2/\00000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8914226  -0.0000000
 2/0000\0222000           0.0000000   0.0000000   0.0000000   0.0000000   0.8914226  -0.0000000  -0.0000000
 2/000\00222000           0.0000000  -0.0000000   0.0000000   0.8914226  -0.0000000   0.0000000  -0.0000000
 2/00\000222000           0.0000000   0.3016427   0.8388361  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/0\0000222000          -0.0000000   0.8388361  -0.3016427  -0.0000000   0.0000000  -0.0000000  -0.0000000
 20000000222/\0           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.2841663  -0.0000000
 200000002220/\          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2841663  -0.0000000  -0.0000000
 20000000222/0\           0.0000000  -0.0000000  -0.0000000   0.2841662   0.0000000   0.0000000  -0.0000000
 20000000222002          -0.1109343   0.2283383   0.0411733   0.0000000  -0.0000000   0.0000000  -0.0832486
 20000000222020          -0.1109343  -0.0785120  -0.2183334  -0.0000000   0.0000000   0.0000000  -0.0832486
 20000000222200          -0.1109343  -0.1498263   0.1771601  -0.0000000   0.0000000  -0.0000000  -0.0832486
 20000002222000          -0.0097348   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1548182
 2000/\00222000           0.0000000   0.0000000   0.0000000   0.1482954  -0.0000000   0.0000000  -0.0000000
 200/\000222000           0.0000000   0.1395471  -0.0501807   0.0000000   0.0000000   0.0000000  -0.0000000
 20/00\00222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.1284277   0.0000000   0.0000000
 200/00\0222000           0.0000000   0.0000000   0.0000000  -0.0000000   0.1284277  -0.0000000  -0.0000000
 20000/\0222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1284276  -0.0000000
 20/000\0222000          -0.0000000  -0.0000000  -0.0000000  -0.1284276   0.0000000   0.0000000   0.0000000
 20/\0000222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1284276   0.0000000
 20200000222000          -0.0496131  -0.1031963  -0.0186081  -0.0000000  -0.0000000  -0.0000000   0.0813243
 20000200222000          -0.0496132   0.0354831   0.0986747  -0.0000000   0.0000000   0.0000000   0.0813244
 20020000222000          -0.0496132   0.0354831   0.0986746   0.0000000   0.0000000   0.0000000   0.0813244
 20002000222000          -0.0496131  -0.0354830  -0.0986745   0.0000000   0.0000000  -0.0000000   0.0813244
 20000020222000          -0.0496132   0.0677133  -0.0800666   0.0000000  -0.0000000   0.0000000   0.0813244
 2000/0\0222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0741476   0.0000000   0.0000000
 20/0\000222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0741476   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955847   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.066524
 2          -0.000000    0.188417   -0.000000   -0.000000    0.000000    0.935932    0.000000
 3          -0.000000    0.935932    0.000000   -0.000000    0.000000   -0.188417   -0.000000
 4          -0.000000   -0.000000    0.954709   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.954709   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.954709   -0.000000    0.000000    0.000000
 7           0.071338   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954734

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958156   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.002441
 2          -0.000000    0.954709    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.954709   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.954709    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.954709    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.954709   -0.000000
 7           0.002441   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957392


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95584685 (fixed)   0.95853133 (relaxed)   0.95815590 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00968124   -0.01426413   -0.18013656
 Singles      0.03087756   -0.06120176   -0.06296511
 Pairs        0.04869139    0.01603896    0.00403951
 Total        1.08925018   -0.05942693   -0.23906216
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.69789191
 Nuclear energy                         0.00000000
 Kinetic energy                         6.23243560
 One electron energy                  -38.96406275
 Two electron energy                   15.02647463
 Virial quotient                       -3.84080793
 Correlation energy                    -0.23969621
 !MRCI STATE 1.1 Energy               -23.937588118516

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.95898105 (Davidson, fixed reference)
 Cluster corrected energies           -23.95877657 (Davidson, relaxed reference)
 Cluster corrected energies           -23.95898105 (Davidson, rotated reference)

 Cluster corrected energies           -23.95564514 (Pople, fixed reference)
 Cluster corrected energies           -23.95546338 (Pople, relaxed reference)
 Cluster corrected energies           -23.95564514 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93593191 (fixed)   0.95614360 (relaxed)   0.95470921 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00903587   -0.01018042   -0.16660790
 Singles      0.03497257   -0.06037950   -0.06271703
 Pairs        0.05312075    0.00000000   -0.01166738
 Total        1.09712920   -0.07055992   -0.24099231
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716939
 Nuclear energy                         0.00000000
 Kinetic energy                         6.31710312
 One electron energy                  -38.94550911
 Two electron energy                   15.08734741
 Virial quotient                       -3.77675673
 Correlation energy                    -0.24099231
 !MRCI STATE 2.1 Energy               -23.858161703644

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88156909 (Davidson, fixed reference)
 Cluster corrected energies           -23.88077639 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88156909 (Davidson, rotated reference)

 Cluster corrected energies           -23.87801272 (Pople, fixed reference)
 Cluster corrected energies           -23.87730263 (Pople, relaxed reference)
 Cluster corrected energies           -23.87801272 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93593193 (fixed)   0.95614362 (relaxed)   0.95470923 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00903587   -0.01018042   -0.16660790
 Singles      0.03497254   -0.06037950   -0.06271703
 Pairs        0.05312075   -0.00000000   -0.01166738
 Total        1.09712915   -0.07055992   -0.24099231
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716939
 Nuclear energy                         0.00000000
 Kinetic energy                         6.31710308
 One electron energy                  -38.94550870
 Two electron energy                   15.08734699
 Virial quotient                       -3.77675675
 Correlation energy                    -0.24099231
 !MRCI STATE 3.1 Energy               -23.858161703619

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88156908 (Davidson, fixed reference)
 Cluster corrected energies           -23.88077638 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88156908 (Davidson, rotated reference)

 Cluster corrected energies           -23.87801271 (Pople, fixed reference)
 Cluster corrected energies           -23.87730262 (Pople, relaxed reference)
 Cluster corrected energies           -23.87801271 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95470923 (fixed)   0.95614362 (relaxed)   0.95470923 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00903587   -0.01018042   -0.16660791
 Singles      0.03497253   -0.06037949   -0.06271702
 Pairs        0.05312076   -0.00000000   -0.01166738
 Total        1.09712915   -0.07055991   -0.24099231
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716939
 Nuclear energy                         0.00000000
 Kinetic energy                         6.31710300
 One electron energy                  -38.94550858
 Two electron energy                   15.08734688
 Virial quotient                       -3.77675680
 Correlation energy                    -0.24099231
 !MRCI STATE 4.1 Energy               -23.858161703575

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88156908 (Davidson, fixed reference)
 Cluster corrected energies           -23.88077638 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88156908 (Davidson, rotated reference)

 Cluster corrected energies           -23.87801271 (Pople, fixed reference)
 Cluster corrected energies           -23.87730262 (Pople, relaxed reference)
 Cluster corrected energies           -23.87801271 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95470926 (fixed)   0.95614364 (relaxed)   0.95470926 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00903586   -0.01018042   -0.16660792
 Singles      0.03497248   -0.06037949   -0.06271702
 Pairs        0.05312075   -0.00000000   -0.01166737
 Total        1.09712909   -0.07055991   -0.24099231
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716939
 Nuclear energy                         0.00000000
 Kinetic energy                         6.31710292
 One electron energy                  -38.94550812
 Two electron energy                   15.08734642
 Virial quotient                       -3.77675685
 Correlation energy                    -0.24099231
 !MRCI STATE 5.1 Energy               -23.858161703535

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88156907 (Davidson, fixed reference)
 Cluster corrected energies           -23.88077637 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88156907 (Davidson, rotated reference)

 Cluster corrected energies           -23.87801270 (Pople, fixed reference)
 Cluster corrected energies           -23.87730261 (Pople, relaxed reference)
 Cluster corrected energies           -23.87801270 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95470927 (fixed)   0.95614366 (relaxed)   0.95470927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00903586   -0.01018042   -0.16660794
 Singles      0.03497246   -0.06037947   -0.06271702
 Pairs        0.05312074   -0.00000000   -0.01166735
 Total        1.09712906   -0.07055989   -0.24099231
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716939
 Nuclear energy                         0.00000000
 Kinetic energy                         6.31710280
 One electron energy                  -38.94550773
 Two electron energy                   15.08734603
 Virial quotient                       -3.77675692
 Correlation energy                    -0.24099231
 !MRCI STATE 6.1 Energy               -23.858161703524

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.88156906 (Davidson, fixed reference)
 Cluster corrected energies           -23.88077636 (Davidson, relaxed reference)
 Cluster corrected energies           -23.88156906 (Davidson, rotated reference)

 Cluster corrected energies           -23.87801269 (Pople, fixed reference)
 Cluster corrected energies           -23.87730260 (Pople, relaxed reference)
 Cluster corrected energies           -23.87801269 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95473369 (fixed)   0.95764625 (relaxed)   0.95739210 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00829755   -0.01280278   -0.01419606
 Singles      0.03427734   -0.06048760   -0.06283017
 Pairs        0.04841397   -0.16108743   -0.15808569
 Total        1.09098886   -0.23437782   -0.23511193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.57674993
 Nuclear energy                         0.00000000
 Kinetic energy                         6.17519009
 One electron energy                  -37.99230374
 Two electron energy                   14.18107593
 Virial quotient                       -3.85595058
 Correlation energy                    -0.23447788
 !MRCI STATE 7.1 Energy               -23.811227809939

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.83256269 (Davidson, fixed reference)
 Cluster corrected energies           -23.83242693 (Davidson, relaxed reference)
 Cluster corrected energies           -23.83256269 (Davidson, rotated reference)

 Cluster corrected energies           -23.82925463 (Pople, fixed reference)
 Cluster corrected energies           -23.82913370 (Pople, relaxed reference)
 Cluster corrected energies           -23.82925463 (Pople, rotated reference)



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
 CPU TIMES  *       203.31    193.08      4.20      1.60      4.26
 REAL TIME  *       216.70 SEC
 DISK USED  *       201.04 MB (local),        1.64 GB (total)
 SF USED    *         1.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -23.95898105  AU                              
 SETTING HLSDIAG(2)     =       -23.88156909  AU                              
 SETTING HLSDIAG(3)     =       -23.88156908  AU                              
 SETTING HLSDIAG(4)     =       -23.88156908  AU                              
 SETTING HLSDIAG(5)     =       -23.88156907  AU                              
 SETTING HLSDIAG(6)     =       -23.88156906  AU                              
 SETTING HLSDIAG(7)     =       -23.83256269  AU                              


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
     1       -23.62658587
     2       -23.62658587
     3       -23.62658587
     4       -23.62658587
     5       -23.62658587
     6       -23.58342373
     7       -23.55889366
     8       -23.55889366
     9       -23.55889366
    10       -23.55374278
    11       -23.55374278
    12       -23.55374278
    13       -23.55374278
    14       -23.55374278
    15       -23.55374278
    16       -23.55374278

 Number of blocks in overlap matrix:   313   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        951726
 Number of doubly external configurations:       3344723
 Total number of contracted configurations:      4308287
 Total number of uncontracted configurations:   17821951

 Diagonal Coupling coefficients finished.               Storage:   6507020 words, CPU-Time:      2.65 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1526401 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.62658587     0.00000000    -0.25477196  0.47D-01  0.61D-01     4.58
    1     2     2     1.00000000     0.00000000   -23.62658587     0.00000000    -0.25478634  0.47D-01  0.61D-01     4.58
    1     3     3     1.00000000     0.00000000   -23.62658587     0.00000000    -0.25476173  0.47D-01  0.61D-01     4.58
    1     4     4     1.00000000     0.00000000   -23.62658587     0.00000000    -0.25476795  0.47D-01  0.61D-01     4.58
    1     5     5     1.00000000     0.00000000   -23.62658587     0.00000000    -0.25476482  0.47D-01  0.61D-01     4.58
    1     6     6     1.00000000     0.00000000   -23.58342373     0.00000000    -0.22881704  0.41D-01  0.49D-01     4.58
    1     7     7     1.00000000     0.00000000   -23.55889366     0.00000000    -0.24113722  0.35D-01  0.60D-01     4.58
    1     8     8     1.00000000     0.00000000   -23.55889366    -0.00000000    -0.24118136  0.35D-01  0.60D-01     4.58
    1     9     9     1.00000000     0.00000000   -23.55889366     0.00000000    -0.24118799  0.35D-01  0.60D-01     4.58
    1    10    10     1.00000000     0.00000000   -23.55374278     0.00000000    -0.26034672  0.43D-01  0.70D-01     4.58
    1    11    11     1.00000000     0.00000000   -23.55374278     0.00000000    -0.26030689  0.43D-01  0.70D-01     4.58
    1    12    12     1.00000000     0.00000000   -23.55374278     0.00000000    -0.26031095  0.43D-01  0.70D-01     4.58
    1    13    13     1.00000000     0.00000000   -23.55374278     0.00000000    -0.26042737  0.43D-01  0.70D-01     4.58
    1    14    14     1.00000000     0.00000000   -23.55374278    -0.00000000    -0.26042539  0.43D-01  0.70D-01     4.58
    1    15    15     1.00000000     0.00000000   -23.55374278    -0.00000000    -0.26036791  0.43D-01  0.70D-01     4.58
    1    16    16     1.00000000     0.00000000   -23.55374278     0.00000000    -0.26035930  0.43D-01  0.70D-01     4.58
    2     1     1     1.08369676    -0.23624973   -23.86283559    -0.23624973    -0.00734939  0.27D-02  0.12D-02   117.26
    2     2     2     1.08371875    -0.23624947   -23.86283533    -0.23624947    -0.00735019  0.27D-02  0.12D-02   117.26
    2     3     3     1.08371323    -0.23624889   -23.86283476    -0.23624889    -0.00735128  0.27D-02  0.12D-02   117.26
    2     4     4     1.08372282    -0.23624069   -23.86282656    -0.23624069    -0.00735782  0.27D-02  0.12D-02   117.26
    2     5     5     1.08372719    -0.23624062   -23.86282649    -0.23624062    -0.00735827  0.27D-02  0.12D-02   117.26
    2     6     6     1.07837639    -0.22707253   -23.81049626    -0.22707253    -0.00516360  0.16D-02  0.78D-03   117.26
    2     7     7     1.08728381    -0.23146265   -23.79035631    -0.23146265    -0.00692728  0.27D-02  0.13D-02   117.26
    2     8     8     1.08727819    -0.23146207   -23.79035573    -0.23146207    -0.00692779  0.27D-02  0.13D-02   117.26
    2     9     9     1.08732303    -0.23145458   -23.79034824    -0.23145458    -0.00693478  0.27D-02  0.13D-02   117.26
    2    10    10     1.08732099    -0.23660159   -23.79034437    -0.23660159    -0.00694460  0.27D-02  0.13D-02   117.26
    2    11    11     1.08731793    -0.23659953   -23.79034231    -0.23659953    -0.00694678  0.27D-02  0.13D-02   117.26
    2    12    12     1.08727937    -0.23659656   -23.79033934    -0.23659656    -0.00695416  0.27D-02  0.13D-02   117.26
    2    13    13     1.08730984    -0.23659318   -23.79033595    -0.23659318    -0.00695831  0.27D-02  0.13D-02   117.26
    2    14    14     1.07795500    -0.23271605   -23.78645883    -0.23271605    -0.00637052  0.25D-02  0.12D-02   117.26
    2    15    15     1.07795315    -0.23269878   -23.78644156    -0.23269878    -0.00638953  0.25D-02  0.12D-02   117.26
    2    16    16     1.07796019    -0.23269549   -23.78643827    -0.23269549    -0.00639341  0.25D-02  0.12D-02   117.26
    3     1     1     1.08494831    -0.24362933   -23.87021519    -0.00737960    -0.00031084  0.97D-04  0.57D-04   230.76
    3     2     2     1.08495009    -0.24362931   -23.87021518    -0.00737984    -0.00031086  0.97D-04  0.57D-04   230.76
    3     3     3     1.08494875    -0.24362899   -23.87021486    -0.00738010    -0.00031095  0.97D-04  0.57D-04   230.76
    3     4     4     1.08494847    -0.24362880   -23.87021467    -0.00738811    -0.00031132  0.97D-04  0.57D-04   230.76
    3     5     5     1.08494887    -0.24362872   -23.87021459    -0.00738810    -0.00031137  0.97D-04  0.57D-04   230.76
    3     6     6     1.08179269    -0.23256974   -23.81599346    -0.00549721    -0.00018541  0.45D-04  0.31D-04   230.76
    3     7     7     1.08871465    -0.23848303   -23.79737669    -0.00702038    -0.00027359  0.75D-04  0.60D-04   230.76
    3     8     8     1.08871063    -0.23848298   -23.79737664    -0.00702091    -0.00027305  0.75D-04  0.60D-04   230.76
    3     9     9     1.08870541    -0.23848221   -23.79737587    -0.00702763    -0.00027348  0.76D-04  0.60D-04   230.76
    3    10    10     1.08870553    -0.24363305   -23.79737583    -0.00703145    -0.00027363  0.76D-04  0.60D-04   230.76
    3    11    11     1.08869422    -0.24363262   -23.79737540    -0.00703309    -0.00027281  0.76D-04  0.60D-04   230.76
    3    12    12     1.08869283    -0.24363256   -23.79737534    -0.00703599    -0.00027296  0.76D-04  0.60D-04   230.76
    3    13    13     1.08869789    -0.24363230   -23.79737508    -0.00703912    -0.00027305  0.76D-04  0.59D-04   230.76
    3    14    14     1.07804788    -0.23913733   -23.79288011    -0.00642127    -0.00027445  0.51D-04  0.72D-04   230.76
    3    15    15     1.07804275    -0.23913528   -23.79287806    -0.00643650    -0.00027611  0.52D-04  0.73D-04   230.76
    3    16    16     1.07804417    -0.23913511   -23.79287789    -0.00643962    -0.00027630  0.51D-04  0.73D-04   230.76
    4     1     1     1.08682355    -0.24397966   -23.87056553    -0.00035033    -0.00002543  0.22D-04  0.27D-05   344.37
    4     2     2     1.08682349    -0.24397963   -23.87056550    -0.00035032    -0.00002546  0.22D-04  0.27D-05   344.37
    4     3     3     1.08682353    -0.24397962   -23.87056549    -0.00035063    -0.00002547  0.22D-04  0.27D-05   344.37
    4     4     4     1.08682128    -0.24397955   -23.87056542    -0.00035075    -0.00002542  0.22D-04  0.27D-05   344.37
    4     5     5     1.08682182    -0.24397940   -23.87056526    -0.00035068    -0.00002543  0.22D-04  0.27D-05   344.37
    4     6     6     1.08314906    -0.23277296   -23.81619669    -0.00020322    -0.00000936  0.66D-05  0.11D-05   344.37
    4     7     7     1.09053662    -0.23879664   -23.79769030    -0.00031360    -0.00002032  0.17D-04  0.23D-05   344.37
    4     8     8     1.09053730    -0.23879626   -23.79768992    -0.00031328    -0.00002045  0.17D-04  0.23D-05   344.37
    4     9     9     1.09053739    -0.23879626   -23.79768992    -0.00031405    -0.00002045  0.17D-04  0.23D-05   344.37
    4    10    10     1.09053468    -0.24394689   -23.79768967    -0.00031384    -0.00002025  0.17D-04  0.23D-05   344.37
    4    11    11     1.09053413    -0.24394625   -23.79768903    -0.00031363    -0.00002046  0.17D-04  0.23D-05   344.37
    4    12    12     1.09053370    -0.24394625   -23.79768903    -0.00031369    -0.00002046  0.17D-04  0.23D-05   344.37
    4    13    13     1.09053663    -0.24394621   -23.79768899    -0.00031391    -0.00002049  0.17D-04  0.23D-05   344.37
    4    14    14     1.07912234    -0.23943990   -23.79318268    -0.00030257    -0.00001900  0.14D-04  0.26D-05   344.37
    4    15    15     1.07911912    -0.23943938   -23.79318215    -0.00030409    -0.00001910  0.14D-04  0.26D-05   344.37
    4    16    16     1.07911949    -0.23943937   -23.79318215    -0.00030426    -0.00001910  0.14D-04  0.26D-05   344.37
    5     1     1     1.08766362    -0.24401241   -23.87059828    -0.00003275    -0.00000318  0.14D-05  0.54D-06   457.68
    5     2     2     1.08766353    -0.24401241   -23.87059828    -0.00003278    -0.00000318  0.14D-05  0.54D-06   457.68
    5     3     3     1.08766357    -0.24401241   -23.87059827    -0.00003279    -0.00000318  0.14D-05  0.54D-06   457.68
    5     4     4     1.08766224    -0.24401227   -23.87059814    -0.00003272    -0.00000318  0.14D-05  0.54D-06   457.68
    5     5     5     1.08766200    -0.24401213   -23.87059800    -0.00003274    -0.00000318  0.14D-05  0.54D-06   457.68
    5     6     6     1.08352305    -0.23278377   -23.81620750    -0.00001081    -0.00000080  0.46D-06  0.11D-06   457.68
    5     7     7     1.09130669    -0.23882249   -23.79771615    -0.00002585    -0.00000193  0.78D-06  0.35D-06   457.68
    5     8     8     1.09130674    -0.23882233   -23.79771599    -0.00002607    -0.00000194  0.79D-06  0.35D-06   457.68
    5     9     9     1.09130678    -0.23882233   -23.79771599    -0.00002608    -0.00000194  0.79D-06  0.35D-06   457.68
    5    10    10     1.09130581    -0.24397266   -23.79771544    -0.00002577    -0.00000192  0.78D-06  0.35D-06   457.68
    5    11    11     1.09130657    -0.24397238   -23.79771516    -0.00002614    -0.00000195  0.79D-06  0.35D-06   457.68
    5    12    12     1.09130628    -0.24397238   -23.79771516    -0.00002613    -0.00000195  0.79D-06  0.35D-06   457.68
    5    13    13     1.09130634    -0.24397238   -23.79771516    -0.00002617    -0.00000195  0.79D-06  0.35D-06   457.68
    5    14    14     1.07947342    -0.23946376   -23.79320654    -0.00002387    -0.00000207  0.91D-06  0.38D-06   457.68
    5    15    15     1.07947274    -0.23946333   -23.79320611    -0.00002395    -0.00000207  0.92D-06  0.38D-06   457.68
    5    16    16     1.07947285    -0.23946332   -23.79320610    -0.00002395    -0.00000207  0.92D-06  0.38D-06   457.68
    6     1     1     1.08780269    -0.24401628   -23.87060215    -0.00000387    -0.00000030  0.15D-06  0.40D-07   571.00
    6     2     2     1.08780272    -0.24401628   -23.87060215    -0.00000387    -0.00000030  0.15D-06  0.40D-07   571.00
    6     3     3     1.08780266    -0.24401628   -23.87060214    -0.00000387    -0.00000030  0.15D-06  0.40D-07   571.00
    6     4     4     1.08780140    -0.24401614   -23.87060200    -0.00000387    -0.00000030  0.15D-06  0.40D-07   571.00
    6     5     5     1.08780120    -0.24401600   -23.87060187    -0.00000387    -0.00000030  0.15D-06  0.40D-07   571.00
    6     6     6     1.08360392    -0.23278476   -23.81620849    -0.00000099    -0.00000009  0.55D-07  0.11D-07   571.00
    6     7     7     1.09138318    -0.23882477   -23.79771843    -0.00000228    -0.00000013  0.40D-07  0.28D-07   571.00
    6     8     8     1.09138362    -0.23882464   -23.79771830    -0.00000230    -0.00000013  0.40D-07  0.29D-07   571.00
    6     9     9     1.09138364    -0.23882464   -23.79771830    -0.00000230    -0.00000013  0.40D-07  0.29D-07   571.00
    6    10    10     1.09138197    -0.24397494   -23.79771772    -0.00000227    -0.00000013  0.39D-07  0.28D-07   571.00
    6    11    11     1.09138286    -0.24397470   -23.79771747    -0.00000231    -0.00000013  0.40D-07  0.29D-07   571.00
    6    12    12     1.09138252    -0.24397469   -23.79771747    -0.00000231    -0.00000013  0.40D-07  0.29D-07   571.00
    6    13    13     1.09138253    -0.24397469   -23.79771747    -0.00000231    -0.00000013  0.40D-07  0.29D-07   571.00
    6    14    14     1.07949917    -0.23946630   -23.79320908    -0.00000254    -0.00000017  0.39D-07  0.34D-07   571.00
    6    15    15     1.07949897    -0.23946586   -23.79320864    -0.00000254    -0.00000017  0.39D-07  0.34D-07   571.00
    6    16    16     1.07949898    -0.23946586   -23.79320864    -0.00000254    -0.00000017  0.39D-07  0.34D-07   571.00
    7     1     1     1.08784582    -0.24401661   -23.87060248    -0.00000033    -0.00000003  0.24D-07  0.34D-08   683.32
    7     2     2     1.08784582    -0.24401661   -23.87060248    -0.00000033    -0.00000003  0.24D-07  0.34D-08   683.32
    7     3     3     1.08784568    -0.24401661   -23.87060247    -0.00000033    -0.00000003  0.24D-07  0.34D-08   683.32
    7     4     4     1.08784434    -0.24401647   -23.87060233    -0.00000033    -0.00000003  0.24D-07  0.34D-08   683.32
    7     5     5     1.08784421    -0.24401633   -23.87060220    -0.00000033    -0.00000003  0.24D-07  0.34D-08   683.32
    7     6     6     1.08362392    -0.23278486   -23.81620859    -0.00000010    -0.00000001  0.70D-08  0.10D-08   683.32
    7     7     7     1.09140417    -0.23882491   -23.79771857    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7     8     8     1.09140470    -0.23882478   -23.79771844    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7     9     9     1.09140470    -0.23882478   -23.79771844    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7    10    10     1.09140287    -0.24397508   -23.79771786    -0.00000014    -0.00000001  0.79D-08  0.23D-08   683.32
    7    11    11     1.09140402    -0.24397484   -23.79771761    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7    12    12     1.09140366    -0.24397483   -23.79771761    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7    13    13     1.09140366    -0.24397483   -23.79771761    -0.00000014    -0.00000001  0.80D-08  0.24D-08   683.32
    7    14    14     1.07951101    -0.23946648   -23.79320926    -0.00000018    -0.00000001  0.97D-08  0.20D-08   683.32
    7    15    15     1.07951078    -0.23946604   -23.79320882    -0.00000018    -0.00000001  0.97D-08  0.20D-08   683.32
    7    16    16     1.07951078    -0.23946604   -23.79320882    -0.00000018    -0.00000001  0.97D-08  0.20D-08   683.32
    8     1     1     1.08786398    -0.24401665   -23.87060251    -0.00000003    -0.00000000  0.22D-08  0.70D-09   789.93
    8     2     2     1.08786399    -0.24401665   -23.87060251    -0.00000003    -0.00000000  0.22D-08  0.70D-09   789.93
    8     3     3     1.08786385    -0.24401664   -23.87060250    -0.00000003    -0.00000000  0.22D-08  0.70D-09   789.93
    8     4     4     1.08786254    -0.24401650   -23.87060237    -0.00000003    -0.00000000  0.22D-08  0.71D-09   789.93
    8     5     5     1.08786239    -0.24401636   -23.87060223    -0.00000003    -0.00000000  0.22D-08  0.71D-09   789.93
    8     6     6     1.08362392    -0.23278486   -23.81620859    -0.00000000    -0.00000001  0.70D-08  0.10D-08   789.93
    8     7     7     1.09141345    -0.23882492   -23.79771859    -0.00000001    -0.00000000  0.53D-09  0.37D-09   789.93
    8     8     8     1.09141401    -0.23882479   -23.79771845    -0.00000001    -0.00000000  0.54D-09  0.37D-09   789.93
    8     9     9     1.09141401    -0.23882479   -23.79771845    -0.00000001    -0.00000000  0.54D-09  0.37D-09   789.93
    8    10    10     1.09141212    -0.24397509   -23.79771787    -0.00000001    -0.00000000  0.52D-09  0.36D-09   789.93
    8    11    11     1.09141337    -0.24397485   -23.79771763    -0.00000001    -0.00000000  0.54D-09  0.37D-09   789.93
    8    12    12     1.09141302    -0.24397484   -23.79771762    -0.00000001    -0.00000000  0.53D-09  0.37D-09   789.93
    8    13    13     1.09141303    -0.24397484   -23.79771762    -0.00000001    -0.00000000  0.53D-09  0.37D-09   789.93
    8    14    14     1.07951600    -0.23946650   -23.79320927    -0.00000001    -0.00000000  0.67D-09  0.41D-09   789.93
    8    15    15     1.07951637    -0.23946606   -23.79320884    -0.00000002    -0.00000000  0.17D-09  0.23D-09   789.93
    8    16    16     1.07951579    -0.23946606   -23.79320884    -0.00000001    -0.00000000  0.67D-09  0.41D-09   789.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   1.2%  14.8%
 P   0.5%  16.7%  21.3%

 Initialization:   0.4%
 Other:           43.3%

 Total CPU:      789.9 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000           0.0000000   0.0000000   0.0000000  -0.0000049  -0.0000000   0.9569577  -0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2/0/0000222000          -0.0000000  -0.0000000  -0.0000000   0.0000079   0.9550961  -0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.0000540   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/00/000222000          -0.0000000   0.0000000   0.0000000   0.9550959  -0.0000079   0.0000058   0.0000000   0.0000000
                         -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2/000/00222000           0.0000000  -0.0000000   0.9550957  -0.0000000   0.0000000  -0.0000000  -0.0000572   0.0000000
                          0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2//00000222000           0.9550957  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000347
                         -0.0000000  -0.0000000   0.0000000  -0.0000405  -0.0000000  -0.0000000  -0.0000009   0.0000000
 2/0000/0222000           0.0000000   0.9550957   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000347   0.0000000   0.0000000  -0.0000000   0.0000405   0.0000000  -0.0000000  -0.0000009
 200//000222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000481  -0.0000000   0.0000000  -0.0000000
                          0.0000000   0.9550199  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2000//00222000           0.0000000   0.0000000   0.0000508  -0.0000000  -0.0000000   0.0000000   0.9550190  -0.0000000
                          0.0000000   0.0000000   0.0000003  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/000/0222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000003  -0.0000000
                          0.0000000   0.0000000   0.8542785   0.0000000   0.0000000   0.3246129  -0.0000000  -0.0000000
 20//0000222000           0.0000410   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6963332
                         -0.0000000   0.0000000  -0.0000000   0.4947564  -0.0000000  -0.0000000  -0.3248110   0.0000000
 200/00/0222000           0.0000000   0.0000410  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.6963292  -0.0000000  -0.0000000  -0.0000000  -0.4947621  -0.0000000   0.0000000  -0.3248069
 20/00/00222000          -0.0000000  -0.0000005   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.6531149  -0.0000000  -0.0000000  -0.0000000  -0.5506415  -0.0000000   0.0000000  -0.3246537
 20000//0222000           0.0000005   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.6531104
                          0.0000000  -0.0000000   0.0000000  -0.5506468   0.0000000   0.0000000   0.3246578  -0.0000000
 200/0/00222000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000
                          0.0000000  -0.0000000  -0.4269315  -0.0000000  -0.0000000   0.6497611   0.0000000  -0.0000000
 20000000222/0/           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000   0.0000000   0.0001498   0.0000000  -0.0000000   0.6273771   0.0000000  -0.0000000
 200000002220//          -0.0000000   0.0000005   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.0000629   0.0000000   0.0000000   0.0000000   0.0001160   0.0000000   0.0000000   0.6273724
 20000000222//0           0.0000005   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000629
                          0.0000000  -0.0000000   0.0000000  -0.0001161   0.0000000  -0.0000000   0.6273612   0.0000000
 2000/0/0222000           0.0000000  -0.0000241  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0250508   0.0000000  -0.0000000   0.0000000   0.6033796  -0.0000000  -0.0000000  -0.5627345
 20/0/000222000           0.0000241   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0250557
                          0.0000000   0.0000000  -0.0000000   0.6033795  -0.0000000  -0.0000000   0.5627417  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  29.1    -0.0000000   0.0000000   0.0000000  -0.0000001   0.0000000   0.0584516  -0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.955060   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001   -0.000000
            -0.000028   -0.000000    0.000000    0.000000    0.000000    0.000038
 2           0.955060   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000
            -0.000000    0.000027    0.000000   -0.000000    0.000039    0.000000
 3           0.000000   -0.000000    0.000000   -0.000000    0.955060    0.000000   -0.000000    0.000000   -0.000000   -0.000019
             0.000000    0.000000    0.000047    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.867670   -0.399110   -0.000000   -0.000005    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.399110    0.867671    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000048    0.000000    0.000000
 6          -0.000000   -0.000000    0.000005   -0.000002   -0.000000    0.956958   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000057   -0.000000    0.000000    0.000000    0.000000   -0.356292
            -0.000000    0.000000    0.886068    0.000000   -0.000000    0.000000
 8          -0.000000   -0.000035    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000100   -0.000000
             0.213784    0.000000   -0.000000   -0.000000    0.000000    0.930783
 9          -0.000035   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000100    0.000000   -0.000000
             0.000000   -0.249634    0.000000    0.000000    0.921815   -0.000000
 10          0.000000   -0.000000    0.000023    0.000049   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.955020   -0.000000    0.000000
 11          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000238    0.000000    0.000000    0.886069
             0.000000    0.000000    0.356292   -0.000000   -0.000000    0.000000
 12         -0.000000   -0.000041    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000183    0.000000
            -0.930784   -0.000000    0.000000   -0.000000   -0.000000    0.213784
 13          0.000041   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000183    0.000000    0.000000
             0.000000   -0.921816   -0.000000   -0.000000   -0.249635   -0.000000
 14          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958409    0.000000   -0.000000   -0.000222
             0.000000   -0.000000   -0.000089   -0.000000   -0.000000    0.000000
 15         -0.000000   -0.000001    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958408    0.000000
            -0.000203    0.000000   -0.000000    0.000000   -0.000000   -0.000057
 16         -0.000001    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958409   -0.000000   -0.000000
             0.000000    0.000205   -0.000000   -0.000000   -0.000049    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955060   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000002   -0.000000    0.000000
            -0.000000   -0.000002   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.955060   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000002   -0.000000
             0.000000   -0.000000    0.000002   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.955060   -0.000000    0.000000    0.000000   -0.000003   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.955061    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.955061   -0.000000    0.000000   -0.000000   -0.000000    0.000003
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.956958   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000003    0.000000    0.000000   -0.000000    0.955019    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 8          -0.000002    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.955019   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000   -0.000002    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.955019    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000003    0.000000    0.000000   -0.000000    0.000000    0.955020
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 11         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.955019   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 12         -0.000002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.955020    0.000000   -0.000000    0.000000   -0.000000
 13         -0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.955020   -0.000000    0.000000   -0.000000
 14          0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.958409    0.000000   -0.000000
 15         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.958408    0.000000
 16          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958409


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95506037 (fixed)   0.95524959 (relaxed)   0.95506037 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00777540   -0.01178810   -0.16827124
 Singles      0.03568859   -0.06142702   -0.06397407
 Pairs        0.05285857   -0.00000740   -0.01177134
 Total        1.09632256   -0.07322252   -0.24401665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658587
 Nuclear energy                         0.00000000
 Kinetic energy                         6.32509649
 One electron energy                  -39.04630296
 Two electron energy                   15.17570045
 Virial quotient                       -3.77395073
 Correlation energy                    -0.24401665
 !MRCI STATE 1.1 Energy               -23.870602512341

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89410682 (Davidson, fixed reference)
 Cluster corrected energies           -23.89400084 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89410682 (Davidson, rotated reference)

 Cluster corrected energies           -23.88908727 (Pople, fixed reference)
 Cluster corrected energies           -23.88900007 (Pople, relaxed reference)
 Cluster corrected energies           -23.88908727 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95506037 (fixed)   0.95524959 (relaxed)   0.95506037 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00777540   -0.01178810   -0.16827798
 Singles      0.03568859   -0.06142702   -0.06397407
 Pairs        0.05285858   -0.00000000   -0.01176459
 Total        1.09632256   -0.07321512   -0.24401665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658587
 Nuclear energy                         0.00000000
 Kinetic energy                         6.32509649
 One electron energy                  -39.04630297
 Two electron energy                   15.17570046
 Virial quotient                       -3.77395073
 Correlation energy                    -0.24401665
 !MRCI STATE 2.1 Energy               -23.870602512336

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89410682 (Davidson, fixed reference)
 Cluster corrected energies           -23.89400085 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89410682 (Davidson, rotated reference)

 Cluster corrected energies           -23.88908727 (Pople, fixed reference)
 Cluster corrected energies           -23.88900007 (Pople, relaxed reference)
 Cluster corrected energies           -23.88908727 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95506043 (fixed)   0.95524966 (relaxed)   0.95506043 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00777539   -0.01178812   -0.16827802
 Singles      0.03568852   -0.06142700   -0.06397404
 Pairs        0.05285851    0.00000000   -0.01176458
 Total        1.09632242   -0.07321511   -0.24401664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658587
 Nuclear energy                         0.00000000
 Kinetic energy                         6.32509626
 One electron energy                  -39.04630300
 Two electron energy                   15.17570049
 Virial quotient                       -3.77395087
 Correlation energy                    -0.24401664
 !MRCI STATE 3.1 Energy               -23.870602504804

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89410678 (Davidson, fixed reference)
 Cluster corrected energies           -23.89400080 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89410678 (Davidson, rotated reference)

 Cluster corrected energies           -23.88908724 (Pople, fixed reference)
 Cluster corrected energies           -23.88900003 (Pople, relaxed reference)
 Cluster corrected energies           -23.88908724 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.86767039 (fixed)   0.95524989 (relaxed)   0.95506065 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00777613   -0.01178858   -0.16827897
 Singles      0.03568700   -0.06142609   -0.06397290
 Pairs        0.05285878    0.00000000   -0.01176464
 Total        1.09632191   -0.07321468   -0.24401650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658587
 Nuclear energy                         0.00000000
 Kinetic energy                         6.32509645
 One electron energy                  -39.04630072
 Two electron energy                   15.17569835
 Virial quotient                       -3.77395073
 Correlation energy                    -0.24401650
 !MRCI STATE 4.1 Energy               -23.870602367367

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89410650 (Davidson, fixed reference)
 Cluster corrected energies           -23.89400052 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89410650 (Davidson, rotated reference)

 Cluster corrected energies           -23.88908699 (Pople, fixed reference)
 Cluster corrected energies           -23.88899977 (Pople, relaxed reference)
 Cluster corrected energies           -23.88908699 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.86767057 (fixed)   0.95525010 (relaxed)   0.95506086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00777584   -0.01178843   -0.16827882
 Singles      0.03568689   -0.06142612   -0.06397293
 Pairs        0.05285870   -0.00000000   -0.01176462
 Total        1.09632144   -0.07321454   -0.24401636
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658587
 Nuclear energy                         0.00000000
 Kinetic energy                         6.32509625
 One electron energy                  -39.04630107
 Two electron energy                   15.17569884
 Virial quotient                       -3.77395083
 Correlation energy                    -0.24401636
 !MRCI STATE 5.1 Energy               -23.870602229352

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.89410624 (Davidson, fixed reference)
 Cluster corrected energies           -23.89400025 (Davidson, relaxed reference)
 Cluster corrected energies           -23.89410624 (Davidson, rotated reference)

 Cluster corrected energies           -23.88908674 (Pople, fixed reference)
 Cluster corrected energies           -23.88899953 (Pople, relaxed reference)
 Cluster corrected energies           -23.88908674 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95695768 (fixed)   0.95695768 (relaxed)   0.95695768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00771089   -0.01278907   -0.15942319
 Singles      0.03696455   -0.06049297   -0.06327846
 Pairs        0.04730418    0.00000000   -0.01008322
 Total        1.09197962   -0.07328204   -0.23278486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.58342373
 Nuclear energy                         0.00000000
 Kinetic energy                         6.15172776
 One electron energy                  -37.90679622
 Two electron energy                   14.09058763
 Virial quotient                       -3.87146661
 Correlation energy                    -0.23278486
 !MRCI STATE 6.1 Energy               -23.816208591322

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.83762005 (Davidson, fixed reference)
 Cluster corrected energies           -23.83762005 (Davidson, relaxed reference)
 Cluster corrected energies           -23.83762005 (Davidson, rotated reference)

 Cluster corrected energies           -23.83301209 (Pople, fixed reference)
 Cluster corrected energies           -23.83301209 (Pople, relaxed reference)
 Cluster corrected energies           -23.83301209 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.88606846 (fixed)   0.95501904 (relaxed)   0.95501904 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458488   -0.00776612   -0.16697381
 Singles      0.03254757   -0.05684691   -0.05893771
 Pairs        0.05928499   -0.00000000   -0.01291340
 Total        1.09641745   -0.06461303   -0.23882492
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42188350
 One electron energy                  -39.10275943
 Two electron energy                   15.30504084
 Virial quotient                       -3.70572256
 Correlation energy                    -0.24397581
 !MRCI STATE 7.1 Energy               -23.797718585098

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124211 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124211 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124211 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621931 (Pople, fixed reference)
 Cluster corrected energies           -23.81621931 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621931 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.93078318 (fixed)   0.95501879 (relaxed)   0.95501879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458489   -0.00776595   -0.00753520
 Singles      0.03254833   -0.05684712   -0.05893805
 Pairs        0.05928480   -0.17481092   -0.17235154
 Total        1.09641802   -0.23942399   -0.23882479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42189255
 One electron energy                  -39.10277354
 Two electron energy                   15.30505508
 Virial quotient                       -3.70571732
 Correlation energy                    -0.24397567
 !MRCI STATE 8.1 Energy               -23.797718451247

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124210 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124210 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124210 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621928 (Pople, fixed reference)
 Cluster corrected energies           -23.81621928 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621928 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.92181535 (fixed)   0.95501879 (relaxed)   0.95501879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458489   -0.00776595   -0.16697341
 Singles      0.03254833   -0.05684712   -0.05893805
 Pairs        0.05928480    0.00000000   -0.01291334
 Total        1.09641802   -0.06461307   -0.23882479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42189255
 One electron energy                  -39.10277354
 Two electron energy                   15.30505509
 Virial quotient                       -3.70571732
 Correlation energy                    -0.24397567
 !MRCI STATE 9.1 Energy               -23.797718451246

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124210 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124210 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124210 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621928 (Pople, fixed reference)
 Cluster corrected energies           -23.81621928 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621928 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95501993 (fixed)   0.95501993 (relaxed)   0.95501993 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458424   -0.00776582   -0.17169334
 Singles      0.03254602   -0.05684631   -0.05908982
 Pairs        0.05928516   -0.00000000   -0.01319194
 Total        1.09641541   -0.06461213   -0.24397509
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42187304
 One electron energy                  -39.10274500
 Two electron energy                   15.30502713
 Virial quotient                       -3.70572849
 Correlation energy                    -0.24397509
 !MRCI STATE 10.1 Energy              -23.797717867853

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124083 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124083 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124083 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621813 (Pople, fixed reference)
 Cluster corrected energies           -23.81621813 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621813 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.88606885 (fixed)   0.95501949 (relaxed)   0.95501949 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458401   -0.00776536   -0.17169233
 Singles      0.03254754   -0.05684694   -0.05909067
 Pairs        0.05928487   -0.00000000   -0.01319185
 Total        1.09641642   -0.06461231   -0.24397485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42189710
 One electron energy                  -39.10278472
 Two electron energy                   15.30506709
 Virial quotient                       -3.70571457
 Correlation energy                    -0.24397485
 !MRCI STATE 11.1 Energy              -23.797717627378

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124081 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124081 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124081 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621807 (Pople, fixed reference)
 Cluster corrected energies           -23.81621807 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621807 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.93078394 (fixed)   0.95501967 (relaxed)   0.95501967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458396   -0.00776542   -0.13507229
 Singles      0.03254711   -0.05684678   -0.05909045
 Pairs        0.05928494   -0.04015101   -0.04981210
 Total        1.09641601   -0.10476321   -0.24397484
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42189061
 One electron energy                  -39.10277426
 Two electron energy                   15.30505664
 Virial quotient                       -3.70571831
 Correlation energy                    -0.24397484
 !MRCI STATE 12.1 Energy              -23.797717623271

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124070 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124070 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124070 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621799 (Pople, fixed reference)
 Cluster corrected energies           -23.81621799 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621799 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.92181609 (fixed)   0.95501967 (relaxed)   0.95501966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458396   -0.00776542   -0.17169252
 Singles      0.03254712   -0.05684678   -0.05909045
 Pairs        0.05928494    0.00000000   -0.01319187
 Total        1.09641602   -0.06461220   -0.24397484
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55374278
 Nuclear energy                         0.00000000
 Kinetic energy                         6.42189061
 One electron energy                  -39.10277427
 Two electron energy                   15.30505665
 Virial quotient                       -3.70571831
 Correlation energy                    -0.24397484
 !MRCI STATE 13.1 Energy              -23.797717623266

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124071 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124071 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124071 (Davidson, rotated reference)

 Cluster corrected energies           -23.81621799 (Pople, fixed reference)
 Cluster corrected energies           -23.81621799 (Pople, relaxed reference)
 Cluster corrected energies           -23.81621799 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95840921 (fixed)   0.95977345 (relaxed)   0.95840924 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00848381   -0.00942126   -0.17176892
 Singles      0.02571862   -0.05449766   -0.05571596
 Pairs        0.05447198    0.00000000   -0.01198162
 Total        1.08867441   -0.06391892   -0.23946650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55889366
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33299399
 One electron energy                  -38.66857472
 Two electron energy                   14.87536544
 Virial quotient                       -3.75702382
 Correlation energy                    -0.23431561
 !MRCI STATE 14.1 Energy              -23.793209274004

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81398707 (Davidson, fixed reference)
 Cluster corrected energies           -23.81326241 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81398707 (Davidson, rotated reference)

 Cluster corrected energies           -23.80948936 (Pople, fixed reference)
 Cluster corrected energies           -23.80889799 (Pople, relaxed reference)
 Cluster corrected energies           -23.80948936 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95840816 (fixed)   0.95977352 (relaxed)   0.95840818 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00848569   -0.00942094   -0.17177948
 Singles      0.02571853   -0.05449642   -0.05571519
 Pairs        0.05447260    0.00001067   -0.01197139
 Total        1.08867681   -0.06390670   -0.23946606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55889366
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33300436
 One electron energy                  -38.66863248
 Two electron energy                   14.87542365
 Virial quotient                       -3.75701760
 Correlation energy                    -0.23431518
 !MRCI STATE 15.1 Energy              -23.793208836919

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81398716 (Davidson, fixed reference)
 Cluster corrected energies           -23.81326190 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81398716 (Davidson, rotated reference)

 Cluster corrected energies           -23.80948935 (Pople, fixed reference)
 Cluster corrected energies           -23.80889749 (Pople, relaxed reference)
 Cluster corrected energies           -23.80948935 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95840920 (fixed)   0.95977379 (relaxed)   0.95840922 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00848405   -0.00942092   -0.17176872
 Singles      0.02571830   -0.05449748   -0.05571571
 Pairs        0.05447210   -0.00000000   -0.01198163
 Total        1.08867445   -0.06391840   -0.23946606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55889366
 Nuclear energy                         0.00000000
 Kinetic energy                         6.33299251
 One electron energy                  -38.66857765
 Two electron energy                   14.87536881
 Virial quotient                       -3.75702463
 Correlation energy                    -0.23431518
 !MRCI STATE 16.1 Energy              -23.793208835830

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81398660 (Davidson, fixed reference)
 Cluster corrected energies           -23.81326176 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81398660 (Davidson, rotated reference)

 Cluster corrected energies           -23.80948890 (Pople, fixed reference)
 Cluster corrected energies           -23.80889738 (Pople, relaxed reference)
 Cluster corrected energies           -23.80948890 (Pople, rotated reference)



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
 CPU TIMES  *      1051.78    848.47    193.08      4.20      1.60      4.26
 REAL TIME  *      1108.51 SEC
 DISK USED  *       733.26 MB (local),        4.76 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -23.89410682  AU                              
 SETTING HLSDIAG(9)     =       -23.89410682  AU                              
 SETTING HLSDIAG(10)    =       -23.89410678  AU                              
 SETTING HLSDIAG(11)    =       -23.89410650  AU                              
 SETTING HLSDIAG(12)    =       -23.89410624  AU                              
 SETTING HLSDIAG(13)    =       -23.83762005  AU                              
 SETTING HLSDIAG(14)    =       -23.82124211  AU                              
 SETTING HLSDIAG(15)    =       -23.82124210  AU                              
 SETTING HLSDIAG(16)    =       -23.82124210  AU                              
 SETTING HLSDIAG(17)    =       -23.82124083  AU                              
 SETTING HLSDIAG(18)    =       -23.82124081  AU                              
 SETTING HLSDIAG(19)    =       -23.82124070  AU                              
 SETTING HLSDIAG(20)    =       -23.82124071  AU                              
 SETTING HLSDIAG(21)    =       -23.81398707  AU                              
 SETTING HLSDIAG(22)    =       -23.81398716  AU                              
 SETTING HLSDIAG(23)    =       -23.81398660  AU                              


        HLSDIAG
    -23.95898105
    -23.88156909
    -23.88156908
    -23.88156908
    -23.88156907
    -23.88156906
    -23.83256269
    -23.89410682
    -23.89410682
    -23.89410678
    -23.89410650
    -23.89410624
    -23.83762005
    -23.82124211
    -23.82124210
    -23.82124210
    -23.82124083
    -23.82124081
    -23.82124070
    -23.82124071
    -23.81398707
    -23.81398716
    -23.81398660
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -23.937588    -23.858162    -23.858162    -23.858162    -23.858162    -23.858162    -23.811228
 Replaced energies:    -23.958981    -23.881569    -23.881569    -23.881569    -23.881569    -23.881569    -23.832563

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -23.870603    -23.870603    -23.870603    -23.870602    -23.870602    -23.816209    -23.797719    -23.797718
                       -23.797718    -23.797718    -23.797718    -23.797718    -23.797718    -23.793209    -23.793209    -23.793209
 Replaced energies:    -23.894107    -23.894107    -23.894107    -23.894107    -23.894106    -23.837620    -23.821242    -23.821242
                       -23.821242    -23.821241    -23.821241    -23.821241    -23.821241    -23.813987    -23.813987    -23.813987



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -23.95898105

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   16989.96       0.00       0.00       0.00       0.00       0.00      46.04       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     197.96       0.00

    3   3.1  0.0  0.0       0.00       0.00   16989.96       0.00       0.00       0.00       0.00    -255.11       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     167.37       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   16989.96       0.00       0.00       0.00      -0.00     129.72       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -129.72       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   16989.97       0.00       0.00       0.00       0.00    -129.71
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   16989.97       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     129.71

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27745.62       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.01      46.04    -255.11      -0.00       0.00      -0.00       0.00   14238.25       0.00       0.00
                            0.00      -0.00      -0.00     129.72      -0.00      -0.00      -0.00      -0.00     173.75      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00     129.72       0.00       0.00      -0.00       0.00   14238.25       0.00
                            0.00    -197.96    -167.37      -0.00       0.00       0.00       0.00    -173.75       0.00       0.00

   10   3.1  1.0  1.0      -0.00      -0.00       0.00       0.00    -129.71       0.00       0.00       0.00       0.00   14238.26
                            0.00      -0.00      -0.00      -0.00       0.00    -129.71       0.00       0.00      -0.00      -0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     224.61      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     224.61       0.00      -0.00       0.00      -0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00    -129.68       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     129.68       0.00      -0.00       0.00      -0.00     347.42

   13   6.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00      -0.00      30.24      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      30.24      -0.00       0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.03      34.09     -13.71      -0.00      -0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00       0.00       0.00     -37.35       0.00      -0.00       0.00      -0.00      -0.70       0.00

   16   9.1  1.0  1.0       0.00      -0.00       0.00     -37.35      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.03     -35.02      11.15      -0.00      -0.00      -0.00       0.02       0.70      -0.00      -0.00

   17  10.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00     -30.23       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      30.23      -0.00      -0.00      -0.00      -0.00     -12.11

   18  11.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     -23.37       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      23.37      -0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0      -0.07     -21.82     -27.55       0.00      -0.00      -0.00      -0.03       0.00       0.00       0.00
                            0.00      -0.00       0.00      -8.06       0.00      -0.00       0.00       0.00     -15.47       0.00

   20  13.1  1.0  1.0       0.00       0.00      -0.00       8.06       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.07       0.72      35.13       0.00       0.00       0.00       0.03     -15.47       0.00       0.00

   21  14.1  1.0  1.0       0.00      -0.00       0.00       0.00     181.17       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -181.17       0.00      -0.00      -0.00       0.00

   22  15.1  1.0  1.0     254.85     205.77      37.08       0.00      -0.00      -0.00     137.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00     181.15      -0.00      -0.00      -0.00      -0.00     -15.72       0.00

   23  16.1  1.0  1.0       0.00      -0.00      -0.00     181.16       0.00       0.00      -0.00       0.00       0.00       0.00
                          254.85    -135.03     159.64      -0.00       0.00       0.00     137.01      15.72      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -183.44       0.00       0.00      -0.00      -0.00     122.86

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -122.86
                            0.00       0.00       0.00       0.00       0.00     183.44      -0.00       0.00      -0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     122.86       0.00
                            0.00     344.96    -124.05       0.00       0.00      -0.00      -0.00    -122.86       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -212.75       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     212.76       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     122.84      -0.00      -0.00
                           -0.00       0.00       0.00    -366.79       0.00      -0.00       0.00       0.00     122.84       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -8.70       0.00
                           -0.00      40.22     -14.46       0.00       0.00      -0.00      -0.00       8.70       0.00      -0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       2.29      -0.00      -0.00      -0.00       0.00     -10.70

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      10.70
                            0.00       0.00      -0.00       0.00       0.00      -2.29       0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.67       0.00      -0.00
                            0.00      -0.00       0.00      42.67       0.00       0.00      -0.00       0.00       8.67      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       6.67       0.00
                            0.13     -19.56     -54.39      -0.00      -0.00       0.00       0.05       6.67      -0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      53.97      -0.00      -0.00      -0.00      -0.00      -2.33

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.33
                           -0.00      -0.00       0.00      -0.00       0.00      53.97       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.13      -0.00
                          360.42    -100.05    -278.24      -0.00       0.00      -0.00     193.79     -11.13      -0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     256.20       0.00       0.00       0.00      -0.00      11.13

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.13
                           -0.00       0.00       0.00       0.00      -0.00    -256.21       0.00       0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.01      46.04    -255.11      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -129.72       0.00       0.00       0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00     129.72       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00     197.96     167.37       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.00      -0.00       0.00       0.00    -129.71       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     129.71      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     224.61      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -224.61      -0.00       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00    -129.68       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -129.68      -0.00       0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00      -0.00      30.24      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -30.24       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.03      34.09     -13.71      -0.00      -0.00       0.00       0.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00      37.35      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00      -0.00       0.00     -37.35      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.03      35.02     -11.15       0.00       0.00       0.00      -0.02      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00     -30.23       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -30.23       0.00       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     -23.37       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00     -23.37       0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.07     -21.82     -27.55       0.00      -0.00      -0.00      -0.03       0.00       0.00       0.00
                           -0.00       0.00      -0.00       8.06      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00      -0.00       8.06       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.72     -35.13      -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00       0.00       0.00     181.17       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     181.17      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0     254.85     205.77      37.08       0.00      -0.00      -0.00     137.02       0.00       0.00       0.00
                           -0.00       0.00       0.00    -181.15       0.00       0.00       0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00      -0.00      -0.00     181.16       0.00       0.00      -0.00       0.00       0.00       0.00
                         -254.85     135.03    -159.64       0.00      -0.00      -0.00    -137.01      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.03       0.00       0.00      -0.00      -0.07       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.03      -0.00       0.00      -0.00      -0.07

    2   2.1  0.0  0.0       0.00      -0.00      -0.00       0.00      34.09      -0.00      -0.00      -0.00     -21.82       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      35.02       0.00      -0.00       0.00      -0.72

    3   3.1  0.0  0.0       0.00      -0.00       0.00       0.00     -13.71       0.00       0.00      -0.00     -27.55      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -11.15      -0.00       0.00      -0.00     -35.13

    4   4.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00     -37.35       0.00       0.00       0.00       8.06
                            0.00      -0.00       0.00       0.00      37.35       0.00       0.00      -0.00       8.06      -0.00

    5   5.1  0.0  0.0      -0.00       0.00       0.00      30.24      -0.00      -0.00       0.00     -23.37      -0.00       0.00
                         -224.61    -129.68       0.00      -0.00      -0.00       0.00     -30.23       0.00      -0.00      -0.00

    6   6.1  0.0  0.0     224.61    -129.68      -0.00      -0.00       0.00      -0.00     -30.23       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     -30.24       0.00       0.00       0.00     -23.37       0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.02       0.00       0.00       0.00      -0.03       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.02       0.00       0.00      -0.00      -0.03

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.70       0.00      -0.00      -0.00      15.47

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.70       0.00       0.00      -0.00      15.47      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -347.42       0.00      -0.00      -0.00       0.00      12.11      -0.00      -0.00      -0.00

   11   4.1  1.0  1.0   14238.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     -16.49      -0.00      -0.00

   12   5.1  1.0  1.0       0.00   14238.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      12.10       0.00       0.00      -0.00       0.00       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   26635.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.02       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   30230.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.10      -0.00      -0.00      -0.00      -0.00     347.97       0.00      -0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   30230.20       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    -520.65       0.00       0.00      -0.00     -28.76

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   30230.20       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     520.65       0.00       0.00       0.00     -28.76      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   30230.48       0.00       0.00       0.00
                            0.00       0.00      -0.00    -347.97      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.49       0.00       0.00
                           16.49      -0.00       0.02      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.51       0.00
                            0.00      -0.00      -0.00       0.00       0.00      28.76       0.00       0.00       0.00    -172.83

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.51
                            0.00       0.00       0.00       0.00      28.76       0.00       0.00      -0.00     172.83      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.99      -0.00      66.10      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.14      -0.00       0.00      -0.00       0.04

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.14      -0.00       0.00       0.00       0.04      -0.00

   24   1.1  1.0  0.0     212.75    -122.84       0.00      -0.00       0.00      -0.00      -8.67       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -8.70       0.00       0.00      -0.00      -6.67       0.00      -0.00

   25   2.1  1.0  0.0      -0.00       0.00       0.00       8.70      -0.00       0.00      -0.00      -6.67      -0.00       0.00
                         -212.76    -122.84      -0.00      -0.00      -0.00       0.00      -8.67       0.00       0.00      -0.00

   26   3.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00     -10.70       0.00      -0.00       0.00       2.33
                           -0.00      -0.00       0.00       0.00      10.70       0.00       0.00      -0.00       2.33      -0.00

   27   4.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.36       0.00       0.00      -0.00      -9.44      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.36      -0.00       0.00      -0.00      -9.44

   28   5.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      10.46      -0.00      -0.00       0.00      -3.22      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      10.46      -0.00      -0.00      -0.00       3.22

   29   6.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.01       0.00       0.00      -0.00       0.01       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.01       0.00       0.00      -0.00       0.01

   30   7.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00     142.45       0.00       0.00       0.00     200.54
                            0.00       0.00       0.00      -0.00    -142.45       0.00       0.00      -0.00     200.54      -0.00

   31   8.1  1.0  0.0       0.36     -10.46       0.01      -0.00       0.00      -0.00    -158.53      -0.00       0.00      -0.00
                            0.00       0.00       0.00     142.45      -0.00       0.00       0.00      12.49       0.00       0.00

   32   9.1  1.0  0.0      -0.00       0.00      -0.00    -142.45       0.00      -0.00      -0.00      12.48      -0.00       0.00
                           -0.36     -10.46      -0.01      -0.00      -0.00       0.00    -158.53       0.00       0.00       0.00

   33  10.1  1.0  0.0      -0.00       0.00      -0.00      -0.00     158.53       0.00       0.00      -0.00     188.05      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00     158.53       0.00       0.00      -0.00    -188.05

   34  11.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00     -12.48       0.00      -0.00       0.00     301.04
                           -0.00       0.00      -0.00       0.00     -12.49      -0.00      -0.00      -0.00    -301.04       0.00

   35  12.1  1.0  0.0       9.44       3.22      -0.01      -0.00      -0.00       0.00    -188.05      -0.00       0.00       0.00
                            0.00       0.00       0.00    -200.54      -0.00      -0.00       0.00     301.04       0.00       0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.00    -200.54       0.00      -0.00       0.00    -301.04      -0.00       0.00
                            9.44      -3.22      -0.01       0.00      -0.00      -0.00     188.05      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.02      -0.00      -0.00      -0.00      -0.16
                           -0.00      -0.00       0.00      -0.00      -0.02      -0.00       0.00      -0.00       0.16      -0.00

   38  15.1  1.0  0.0      -6.50     -11.11      46.73      -0.00       0.00       0.00      -0.06      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.10       0.00       0.00      -0.00       0.15      -0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00      -0.00       0.10      -0.00       0.00      -0.00       0.15      -0.00       0.00
                            6.50     -11.12     -46.73       0.00      -0.00      -0.00      -0.06       0.00       0.00       0.00

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

    1   1.1  0.0  0.0       0.00     254.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -254.85      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0      -0.00     205.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     135.03      -0.00      -0.00    -344.96       0.00      -0.00       0.00     -40.22

    3   3.1  0.0  0.0       0.00      37.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -159.64       0.00      -0.00     124.05       0.00      -0.00       0.00      14.46

    4   4.1  0.0  0.0       0.00       0.00     181.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -181.15       0.00      -0.00      -0.00      -0.00       0.00     366.79      -0.00      -0.00

    5   5.1  0.0  0.0     181.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     183.44      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          181.17       0.00      -0.00      -0.00    -183.44       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00     137.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -137.01      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00    -212.75     122.84      -0.00       0.00
                            0.00       0.00     -15.72       0.00      -0.00     122.86      -0.00      -0.00      -0.00      -8.70

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00     122.86       0.00      -0.00      -0.00      -8.70
                            0.00      15.72       0.00       0.00       0.00      -0.00    -212.76    -122.84      -0.00      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00    -122.86       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -122.86       0.00      -0.00      -0.00      -0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00     212.75      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                          -17.99      -0.00      -0.00       0.00     212.76       0.00      -0.00       0.00      -0.00      -0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00    -122.84       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00     122.84       0.00      -0.00      -0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                          -66.10      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00      -0.00       8.70      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       8.70       0.00      -0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.36      10.46      -0.01       0.00
                           -0.00       0.00       0.14      -0.00       0.00     -10.70       0.00       0.00       0.00     142.45

   16   9.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00     -10.70       0.00      -0.00       0.00     142.45
                           -0.00      -0.14       0.00      -0.00      -0.00      -0.00      -0.36     -10.46      -0.01      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00      -8.67      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       8.67      -0.00       0.00       0.00      -0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00      -6.67      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       6.67      -0.00       0.00      -0.00       0.00      -0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00      -9.44      -3.22       0.01       0.00
                            0.00       0.00      -0.04      -0.00      -0.00      -2.33       0.00       0.00       0.00    -200.54

   20  13.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       2.33      -0.00      -0.00       0.00     200.54
                            0.00      -0.04       0.00       0.00       0.00       0.00       9.44      -3.22      -0.01       0.00

   21  14.1  1.0  1.0   31822.50       0.00       0.00      -0.00      11.13       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     -11.13      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   22  15.1  1.0  1.0       0.00   31822.48       0.00      -0.00      -0.00      -0.00       6.50      11.11     -46.73       0.00
                            0.00       0.00     655.00       0.00      -0.00      11.13       0.00       0.00      -0.00      -0.10

   23  16.1  1.0  1.0       0.00       0.00   31822.60      -0.00       0.00      11.13      -0.00      -0.00       0.00      -0.10
                            0.00    -655.00       0.00       0.00      -0.00      -0.00       6.50     -11.12     -46.73       0.00

   24   1.1  1.0  0.0      -0.00      -0.00      -0.00   14238.25       0.00       0.00       0.00       0.00       0.00       0.00
                           11.13      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      11.13      -0.00       0.00       0.00   14238.25       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00      -0.00      11.13       0.00       0.00   14238.26       0.00       0.00       0.00       0.00
                           -0.00     -11.13       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       6.50      -0.00       0.00       0.00       0.00   14238.32       0.00       0.00       0.00
                            0.00      -0.00      -6.50      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0      -0.00      11.11      -0.00       0.00       0.00       0.00       0.00   14238.38       0.00       0.00
                            0.00      -0.00      11.12      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00     -46.73       0.00       0.00       0.00       0.00       0.00       0.00   26635.66       0.00
                           -0.00       0.00      46.73      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0      -0.00       0.00      -0.10       0.00       0.00       0.00       0.00       0.00       0.00   30230.20
                            0.00       0.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.00      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.16       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0       0.00      -0.00    -463.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -463.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          463.16       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0     463.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00     212.75    -122.84       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     122.86      -0.00      -0.00      -0.00      -8.70

   41   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00    -122.86      -0.00       0.00       0.00       8.70
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -212.76    -122.84      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00     122.86       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -122.86       0.00       0.00      -0.00      -0.00       0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00    -212.75       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     212.76       0.00       0.00       0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00     122.84      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     122.84       0.00      -0.00       0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00      -8.70       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       8.70       0.00      -0.00       0.00       0.00       0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.36     -10.46       0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -10.70       0.00       0.00       0.00     142.45

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      10.70      -0.00       0.00      -0.00    -142.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.36     -10.46      -0.01      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       8.67       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       8.67      -0.00       0.00       0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00       6.67       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       6.67      -0.00       0.00      -0.00       0.00      -0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       9.44       3.22      -0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -2.33       0.00       0.00       0.00    -200.54

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -2.33       0.00       0.00      -0.00    -200.54
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       9.44      -3.22      -0.01       0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00     -11.13      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -11.13      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -6.50     -11.11      46.73      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      11.13       0.00       0.00      -0.00      -0.10

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     -11.13       0.00       0.00      -0.00       0.10
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       6.50     -11.12     -46.73       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                            0.00      -0.00      -0.00      -0.13       0.00       0.00    -360.42      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      46.04
                           -0.00      -0.00       0.00      19.56      -0.00       0.00     100.05       0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -255.11
                            0.00       0.00      -0.00      54.39       0.00      -0.00     278.24       0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -42.67       0.00       0.00       0.00       0.00      -0.00      -0.00     129.72

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.29      -0.00      -0.00       0.00     -53.97      -0.00      -0.00    -256.20       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       2.29      -0.00      -0.00       0.00     -53.97       0.00      -0.00     256.21      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.05       0.00      -0.00    -193.79      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0      -0.00       0.00       8.67      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -6.67       0.00      -0.00      11.13      -0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00      -0.00       0.00       6.67       0.00      -0.00     -11.13       0.00      -0.00       0.00
                           -0.00       0.00      -8.67       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00      10.70      -0.00       0.00      -0.00      -2.33      -0.00       0.00     -11.13       0.00
                           10.70       0.00       0.00      -0.00       2.33      -0.00      -0.00     -11.13       0.00       0.00

   11   4.1  1.0  1.0       0.36      -0.00      -0.00       0.00       9.44       0.00      -0.00      -6.50       0.00       0.00
                           -0.00       0.36      -0.00       0.00      -0.00      -9.44       0.00      -0.00      -6.50       0.00

   12   5.1  1.0  1.0     -10.46       0.00       0.00      -0.00       3.22       0.00       0.00     -11.11       0.00       0.00
                           -0.00      10.46      -0.00      -0.00      -0.00       3.22       0.00      -0.00      11.12       0.00

   13   6.1  1.0  1.0       0.01      -0.00      -0.00       0.00      -0.01      -0.00      -0.00      46.73      -0.00       0.00
                           -0.00       0.01       0.00       0.00      -0.00       0.01      -0.00       0.00      46.73       0.00

   14   7.1  1.0  1.0      -0.00    -142.45      -0.00      -0.00      -0.00    -200.54       0.00      -0.00       0.10       0.00
                         -142.45       0.00       0.00      -0.00     200.54      -0.00       0.00       0.10      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00     158.53       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      12.49       0.00       0.00       0.02      -0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.00      -0.00       0.00     -12.48       0.00      -0.00      -0.02       0.00       0.00       0.00
                           -0.00      -0.00    -158.53       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   17  10.1  1.0  1.0    -158.53      -0.00       0.00       0.00    -188.05       0.00      -0.00      -0.06      -0.00       0.00
                           -0.00     158.53      -0.00       0.00      -0.00    -188.05      -0.00       0.00       0.06       0.00

   18  11.1  1.0  1.0      -0.00      12.48      -0.00      -0.00      -0.00    -301.04      -0.00      -0.00       0.15       0.00
                          -12.49      -0.00      -0.00       0.00    -301.04       0.00       0.00      -0.15      -0.00       0.00

   19  12.1  1.0  1.0       0.00      -0.00     188.05       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00     301.04      -0.00       0.00      -0.16       0.00      -0.00       0.00

   20  13.1  1.0  1.0      -0.00       0.00      -0.00     301.04       0.00       0.00      -0.16      -0.00       0.00       0.00
                           -0.00      -0.00     188.05      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   21  14.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.16       0.00       0.00     463.16       0.00
                           -0.02      -0.00       0.00      -0.00       0.16      -0.00      -0.00    -463.16      -0.00       0.00

   22  15.1  1.0  1.0      -0.00      -0.00       0.06       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.15      -0.00      -0.00     463.16      -0.00      -0.00       0.00

   23  16.1  1.0  1.0       0.00      -0.00       0.00      -0.15       0.00      -0.00    -463.16      -0.00       0.00       0.00
                           -0.00      -0.00      -0.06       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -122.86

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     212.75
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -122.84
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.70

   31   8.1  1.0  0.0   30230.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   32   9.1  1.0  0.0       0.00   30230.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00   30230.48       0.00       0.00       0.00       0.00       0.00       0.00      -8.67
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   30230.49       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.67

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   30230.51       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   30230.51       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   31822.50       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -11.13

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31822.48       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31822.60      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40   1.1  1.0 -1.0       0.00      -0.00      -8.67       0.00      -0.00      -0.00      -0.00      -0.00      -0.00   14238.25
                            0.00       0.00      -0.00      -6.67       0.00      -0.00      11.13      -0.00      -0.00       0.00

   41   2.1  1.0 -1.0      -0.00       0.00      -0.00      -6.67      -0.00       0.00      11.13      -0.00       0.00       0.00
                           -0.00       0.00      -8.67       0.00       0.00      -0.00       0.00       0.00       0.00     173.75

   42   3.1  1.0 -1.0      -0.00     -10.70       0.00      -0.00       0.00       2.33       0.00      -0.00      11.13       0.00
                           10.70       0.00       0.00      -0.00       2.33      -0.00      -0.00     -11.13       0.00      -0.00

   43   4.1  1.0 -1.0      -0.36       0.00       0.00      -0.00      -9.44      -0.00       0.00       6.50      -0.00       0.00
                           -0.00       0.36      -0.00       0.00      -0.00      -9.44       0.00      -0.00      -6.50      -0.00

   44   5.1  1.0 -1.0      10.46      -0.00      -0.00       0.00      -3.22      -0.00      -0.00      11.11      -0.00       0.00
                           -0.00      10.46      -0.00      -0.00      -0.00       3.22       0.00      -0.00      11.12      -0.00

   45   6.1  1.0 -1.0      -0.01       0.00       0.00      -0.00       0.01       0.00       0.00     -46.73       0.00       0.00
                           -0.00       0.01       0.00       0.00      -0.00       0.01      -0.00       0.00      46.73      -0.00

   46   7.1  1.0 -1.0       0.00     142.45       0.00       0.00       0.00     200.54      -0.00       0.00      -0.10       0.00
                         -142.45       0.00       0.00      -0.00     200.54      -0.00       0.00       0.10      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00      -0.00    -158.53      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      12.49       0.00       0.00       0.02      -0.00       0.00       0.00

   48   9.1  1.0 -1.0       0.00      -0.00      -0.00      12.48      -0.00       0.00       0.02      -0.00      -0.00       0.00
                           -0.00       0.00    -158.53       0.00       0.00       0.00       0.00      -0.00       0.00      -0.70

   49  10.1  1.0 -1.0     158.53       0.00       0.00      -0.00     188.05      -0.00       0.00       0.06       0.00       0.00
                           -0.00     158.53       0.00       0.00      -0.00    -188.05      -0.00       0.00       0.06       0.00

   50  11.1  1.0 -1.0       0.00     -12.48       0.00      -0.00       0.00     301.04       0.00       0.00      -0.15       0.00
                          -12.49      -0.00      -0.00      -0.00    -301.04       0.00       0.00      -0.15      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.00       0.00    -188.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     301.04       0.00       0.00      -0.16       0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00      -0.00       0.00    -301.04      -0.00       0.00       0.16       0.00      -0.00       0.00
                           -0.00      -0.00     188.05      -0.00      -0.00      -0.00       0.00       0.00      -0.00      15.47

   53  14.1  1.0 -1.0      -0.00      -0.02      -0.00      -0.00      -0.00      -0.16       0.00      -0.00    -463.16       0.00
                           -0.02      -0.00       0.00      -0.00       0.16      -0.00       0.00    -463.16      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00      -0.06      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.15      -0.00      -0.00     463.16       0.00      -0.00       0.00

   55  16.1  1.0 -1.0      -0.00       0.00      -0.00       0.15      -0.00       0.00     463.16       0.00       0.00       0.00
                           -0.00      -0.00      -0.06       0.00       0.00       0.00       0.00       0.00       0.00     -15.72


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.03       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.03       0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00      34.09      -0.00      -0.00      -0.00
                         -197.96      -0.00       0.00      -0.00       0.00       0.00       0.00     -35.02      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00       0.00     -13.71       0.00       0.00      -0.00
                         -167.37      -0.00       0.00       0.00       0.00       0.00       0.00      11.15       0.00      -0.00

    4   4.1  0.0  0.0     129.72       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -37.35       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -37.35      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00    -129.71      -0.00       0.00       0.00      30.24      -0.00      -0.00       0.00     -23.37
                            0.00       0.00     224.61     129.68      -0.00       0.00       0.00      -0.00      30.23      -0.00

    6   6.1  0.0  0.0       0.00       0.00     224.61    -129.68      -0.00      -0.00       0.00      -0.00     -30.23       0.00
                            0.00    -129.71       0.00       0.00       0.00      30.24      -0.00      -0.00      -0.00      23.37

    7   7.1  0.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.02       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.02      -0.00      -0.00

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

   24   1.1  1.0  0.0      -0.00      -0.00    -212.75     122.84      -0.00       0.00      -0.00       0.00       8.67      -0.00
                           -0.00     122.86      -0.00      -0.00      -0.00      -8.70       0.00       0.00      -0.00      -6.67

   25   2.1  1.0  0.0      -0.00     122.86       0.00      -0.00      -0.00      -8.70       0.00      -0.00       0.00       6.67
                            0.00      -0.00    -212.76    -122.84      -0.00      -0.00      -0.00       0.00      -8.67       0.00

   26   3.1  1.0  0.0    -122.86       0.00       0.00      -0.00       0.00       0.00       0.00      10.70      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      10.70       0.00       0.00      -0.00

   27   4.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.36      -0.00      -0.00       0.00
                          212.76       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.36      -0.00       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00     -10.46       0.00       0.00      -0.00
                          122.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      10.46      -0.00      -0.00

   29   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.01      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.01       0.00       0.00

   30   7.1  1.0  0.0       8.70      -0.00       0.00       0.00      -0.00       0.00      -0.00    -142.45      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00    -142.45       0.00       0.00      -0.00

   31   8.1  1.0  0.0      -0.00      -0.00      -0.36      10.46      -0.01       0.00       0.00       0.00     158.53       0.00
                            0.00     -10.70       0.00       0.00       0.00     142.45       0.00       0.00       0.00      12.49

   32   9.1  1.0  0.0       0.00     -10.70       0.00      -0.00       0.00     142.45      -0.00      -0.00       0.00     -12.48
                           -0.00      -0.00      -0.36     -10.46      -0.01      -0.00      -0.00      -0.00    -158.53       0.00

   33  10.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00       0.00    -158.53      -0.00       0.00       0.00
                            8.67      -0.00       0.00       0.00      -0.00      -0.00      -0.00     158.53      -0.00       0.00

   34  11.1  1.0  0.0      -6.67      -0.00      -0.00       0.00      -0.00       0.00      -0.00      12.48      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00     -12.49      -0.00      -0.00       0.00

   35  12.1  1.0  0.0      -0.00       0.00      -9.44      -3.22       0.01       0.00       0.00      -0.00     188.05       0.00
                           -0.00      -2.33       0.00       0.00       0.00    -200.54      -0.00      -0.00       0.00     301.04

   36  13.1  1.0  0.0       0.00       2.33      -0.00      -0.00       0.00     200.54      -0.00       0.00      -0.00     301.04
                            0.00       0.00       9.44      -3.22      -0.01       0.00      -0.00      -0.00     188.05      -0.00

   37  14.1  1.0  0.0      11.13       0.00       0.00      -0.00       0.00      -0.00       0.00       0.02       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.02      -0.00       0.00      -0.00

   38  15.1  1.0  0.0      -0.00      -0.00       6.50      11.11     -46.73       0.00      -0.00      -0.00       0.06       0.00
                           -0.00      11.13       0.00       0.00      -0.00      -0.10       0.00       0.00      -0.00       0.15

   39  16.1  1.0  0.0       0.00      11.13      -0.00      -0.00       0.00      -0.10       0.00      -0.00       0.00      -0.15
                           -0.00      -0.00       6.50     -11.12     -46.73       0.00      -0.00      -0.00      -0.06       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -173.75       0.00       0.00       0.00       0.00       0.00      -0.00       0.70      -0.00       0.00

   41   2.1  1.0 -1.0   14238.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.70      -0.00      -0.00       0.00

   42   3.1  1.0 -1.0       0.00   14238.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     347.42      -0.00       0.00       0.00      -0.00     -12.11       0.00

   43   4.1  1.0 -1.0       0.00       0.00   14238.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      16.49

   44   5.1  1.0 -1.0       0.00       0.00       0.00   14238.38       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -347.42       0.00       0.00       0.00     -12.10      -0.00      -0.00       0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26635.66       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.02

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   30230.20       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      12.10       0.00       0.00       0.00       0.00    -347.97      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   30230.20       0.00       0.00       0.00
                            0.70      -0.00       0.00       0.00      -0.00      -0.00      -0.00     520.65      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.20       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00    -520.65      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.48       0.00
                            0.00      12.11      -0.00      -0.00       0.00     347.97       0.00       0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30230.49
                           -0.00      -0.00     -16.49       0.00      -0.02       0.00       0.00       0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.47      -0.00      -0.00       0.00       0.00      -0.00      -0.00     -28.76      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -28.76      -0.00      -0.00       0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -17.99       0.00     -66.10       0.00      -0.00      -0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.72      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.14       0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.14       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0      -0.07       0.00       0.00     254.85       0.00
                            0.00       0.07      -0.00       0.00     254.85

    2   2.1  0.0  0.0     -21.82       0.00      -0.00     205.77      -0.00
                           -0.00       0.72       0.00      -0.00    -135.03

    3   3.1  0.0  0.0     -27.55      -0.00       0.00      37.08      -0.00
                            0.00      35.13      -0.00      -0.00     159.64

    4   4.1  0.0  0.0       0.00       8.06       0.00       0.00     181.16
                           -8.06       0.00      -0.00     181.15      -0.00

    5   5.1  0.0  0.0      -0.00       0.00     181.17      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    -181.17      -0.00       0.00

    7   7.1  0.0  0.0      -0.03       0.00       0.00     137.02      -0.00
                            0.00       0.03       0.00      -0.00     137.01

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

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      11.13      -0.00      -0.00

   25   2.1  1.0  0.0       0.00      -0.00     -11.13       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0      -0.00      -2.33      -0.00       0.00     -11.13
                            2.33      -0.00      -0.00     -11.13       0.00

   27   4.1  1.0  0.0       9.44       0.00      -0.00      -6.50       0.00
                           -0.00      -9.44       0.00      -0.00      -6.50

   28   5.1  1.0  0.0       3.22       0.00       0.00     -11.11       0.00
                           -0.00       3.22       0.00      -0.00      11.12

   29   6.1  1.0  0.0      -0.01      -0.00      -0.00      46.73      -0.00
                           -0.00       0.01      -0.00       0.00      46.73

   30   7.1  1.0  0.0      -0.00    -200.54       0.00      -0.00       0.10
                          200.54      -0.00       0.00       0.10      -0.00

   31   8.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.02      -0.00       0.00

   32   9.1  1.0  0.0       0.00      -0.00      -0.02       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00

   33  10.1  1.0  0.0    -188.05       0.00      -0.00      -0.06      -0.00
                           -0.00    -188.05      -0.00       0.00       0.06

   34  11.1  1.0  0.0      -0.00    -301.04      -0.00      -0.00       0.15
                         -301.04       0.00       0.00      -0.15      -0.00

   35  12.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.16       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.16      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.16       0.00       0.00     463.16
                            0.16      -0.00      -0.00    -463.16      -0.00

   38  15.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00     463.16      -0.00      -0.00

   39  16.1  1.0  0.0       0.00      -0.00    -463.16      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.47      -0.00      -0.00      15.72

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -15.47       0.00      -0.00     -15.72      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      17.99       0.00       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      66.10       0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      28.76       0.00      -0.00      -0.14

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           28.76       0.00       0.00       0.14      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00

   51  12.1  1.0 -1.0   30230.51       0.00       0.00       0.00       0.00
                           -0.00     172.83      -0.00      -0.00       0.04

   52  13.1  1.0 -1.0       0.00   30230.51       0.00       0.00       0.00
                         -172.83       0.00      -0.00       0.04      -0.00

   53  14.1  1.0 -1.0       0.00       0.00   31822.50       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   31822.48       0.00
                            0.00      -0.04      -0.00      -0.00    -655.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   31822.60
                           -0.04       0.00      -0.00     655.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by    -23.95898105 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.007
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   16989.960       0.000       0.000       0.000       0.000       0.000      65.107
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   16989.963       0.000       0.000       0.000       0.000    -360.773
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   16989.963       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   16989.966       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   16989.968       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27745.624       0.001
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.007      65.107    -360.773      -0.000       0.000      -0.000       0.001   14238.248
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000     183.445       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000    -183.435       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000     317.640      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000    -183.395       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000      42.763      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.048      48.217     -19.384      -0.000      -0.000       0.000       0.025       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000     -52.816      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000     -42.752       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000     -33.045       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.102     -30.856     -38.955       0.000      -0.000      -0.000      -0.046       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000      11.393       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000       0.000     256.207       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            360.409     291.002      52.444       0.000      -0.000      -0.000     193.769       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000     256.194       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000    -183.441       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     183.440      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     344.963    -124.048       0.000       0.000      -0.000      -0.000    -173.755

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.003       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000    -366.787       0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      40.223     -14.464       0.000       0.000      -0.000      -0.000      12.300

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       2.293      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -2.293       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      42.672       0.000       0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.130     -19.557     -54.386      -0.000      -0.000       0.000       0.054       9.438

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      53.971      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      53.971       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              360.416    -100.055    -278.241      -0.000       0.000      -0.000     193.791     -15.742

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000     256.202       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000    -256.207       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     183.445      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007    -279.953    -236.691      -0.000       0.000       0.000       0.001    -173.751

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000    -183.435       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     317.643       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     183.390       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      42.763      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -52.817       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.048     -49.519      15.763      -0.000      -0.000      -0.000       0.025       0.699

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      42.752      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      33.045      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -11.392       0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.102       1.019      49.685       0.000       0.000       0.000       0.046     -15.466

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000    -256.207       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     256.190      -0.000      -0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              360.409    -190.966     225.760      -0.000       0.000       0.000     193.767      15.720

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.048       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000      48.217      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000      -0.000       0.000       0.000     -19.384       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             183.445       0.000      -0.000       0.000      -0.000      -0.000      -0.000     -52.816
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000    -183.435      -0.000       0.000       0.000      42.763      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000     317.640    -183.395      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.025       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          14238.247       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   14238.257       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   14238.317       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   14238.375       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26635.660       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   30230.203       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   30230.205       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30230.204
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

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     173.755      -0.000      -0.000      -0.000     -12.300       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000    -300.881    -173.715      -0.003      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      15.137       0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                              300.881       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.514

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                              173.715       0.000      -0.000       0.000      -0.000      -0.000      -0.000      14.787

    6    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.003      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.010

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000    -201.454       0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000     -15.137       0.000       0.000       0.000     201.454       0.000       0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.514     -14.787      -0.010      -0.000      -0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               12.264      -0.000       0.000       0.000      -0.000      -0.000      -0.000     224.199

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000     -17.657      -0.000

   12    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -3.295       0.000       0.000       0.000    -283.607      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      13.350      -4.552      -0.018       0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.030      -0.000

   15    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      15.746       0.000       0.000      -0.000      -0.135       0.000       0.000

   16    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       9.196     -15.720     -66.083       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              173.751      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.699

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.699       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.003    -347.419       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.003       0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     347.419      -0.000      -0.000      -0.000      12.103       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -12.103      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.699       0.000      -0.000      -0.000       0.000       0.000       0.000    -520.649

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000     520.649       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.106       0.000       0.000      -0.000    -347.970      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      16.493      -0.000       0.022      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.466       0.000       0.000      -0.000      -0.000       0.000       0.000      28.760

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      28.758       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      17.993      -0.000      66.104      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.719       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.140

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.140      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.102       0.000       0.000     360.409       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>              -0.000      -0.000     -30.856       0.000      -0.000     291.002      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |0 0>               0.000      -0.000     -38.955      -0.000       0.000      52.444      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      11.393       0.000       0.000     256.194       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000     -33.045      -0.000       0.000     256.207      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     183.441

    6    1  |0 0>             -42.752       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000      -0.046       0.000       0.000     193.769      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -173.755

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      12.300

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+          30230.485       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000   30230.489       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       9.438

   12    1  |1 1>+              0.000       0.000   30230.511       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000   30230.511       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   31822.500       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -15.742

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   31822.480       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   31822.602      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000   14238.248
                               -0.000      -9.438       0.000      -0.000      15.742      -0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                              -12.264       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       3.295      -0.000      -0.000     -15.746       0.000      -0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     -13.350       0.000      -0.000      -9.196      -0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       4.552       0.000      -0.000      15.720      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.018      -0.000       0.000      66.083      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000     283.607      -0.000       0.000       0.135      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      17.657       0.000       0.000       0.030      -0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                             -224.199       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -265.940      -0.000       0.000       0.078      -0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000    -425.733       0.000       0.000      -0.215      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000     425.733       0.000       0.000      -0.224       0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              265.940      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.224      -0.000       0.000    -655.009      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.215      -0.000      -0.000     655.009       0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.078       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      15.466       0.000       0.000     -15.720       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      15.466      -0.000       0.000      15.719       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.106      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     300.878
                               -0.000     -16.493      -0.000      -0.000     -17.993      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -173.720
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.003
                                0.000      -0.022       0.000      -0.000     -66.104      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              347.970       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -28.758      -0.000       0.000       0.140       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000     -28.760      -0.000      -0.000      -0.140       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -12.264
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000    -172.825       0.000       0.000      -0.039       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000     172.825      -0.000       0.000      -0.039       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.039       0.000       0.000     655.003       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.039      -0.000       0.000    -655.003       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -344.963       0.000      -0.000       0.000     -40.223      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     124.048       0.000      -0.000       0.000      14.464       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.003     366.787      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -2.293      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -183.440       0.000       0.000       0.000       0.000       0.000       0.000       2.293

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     173.755      -0.000      -0.000      -0.000     -12.300       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000    -300.881    -173.715      -0.003      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      15.137       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                              300.881       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.514

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                              173.715       0.000      -0.000       0.000      -0.000      -0.000      -0.000      14.787

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.003      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.010

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000    -201.454       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000     -15.137       0.000       0.000       0.000     201.454       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.514     -14.787      -0.010      -0.000      -0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               12.264      -0.000       0.000       0.000      -0.000      -0.000      -0.000     224.199

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000     -17.657      -0.000

   12    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -3.295       0.000       0.000       0.000    -283.607      -0.000      -0.000

   13    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      13.350      -4.552      -0.018       0.000      -0.000      -0.000

   14    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.030      -0.000

   15    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      15.746       0.000       0.000      -0.000      -0.135       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       9.196     -15.720     -66.083       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           14238.247       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   14238.257       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   14238.317       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   14238.375       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26635.660       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   30230.203       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   30230.205       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   30230.204
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

    1    1  |1 1>-             -0.000      -0.000    -300.878     173.720      -0.003       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000     173.755       0.000      -0.000      -0.000     -12.300       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-           -173.755       0.000       0.000      -0.000       0.000       0.000       0.000      15.137
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.514      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000     -14.787       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000      -0.000       0.000      -0.000       0.000       0.000       0.010      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-             12.300      -0.000       0.000       0.000      -0.000       0.000      -0.000    -201.457
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000      -0.000      -0.514      14.787      -0.010       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000     -15.137       0.000      -0.000       0.000     201.457      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-             -0.000       0.000       0.000      -0.000       0.000       0.000    -224.202      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-             -9.438      -0.000      -0.000       0.000      -0.000       0.000      -0.000      17.654
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-             -0.000       0.000     -13.350      -4.552       0.018       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       3.296      -0.000      -0.000       0.000     283.605      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 1>-             15.742       0.000       0.000      -0.000       0.000      -0.000       0.000       0.030
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       9.195      15.719     -66.082       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000      15.747      -0.000      -0.000       0.000      -0.134       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.130       0.000       0.000    -360.416      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      19.557      -0.000       0.000     100.055       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      54.386       0.000      -0.000     278.241       0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -42.672       0.000       0.000       0.000       0.000      -0.000      -0.000    -183.445

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -53.971      -0.000      -0.000    -256.202       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -53.971       0.000      -0.000     256.207       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.054       0.000      -0.000    -193.791      -0.000      -0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -9.438       0.000      -0.000      15.742      -0.000      -0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                              -12.264       0.000       0.000      -0.000       0.000       0.000       0.000    -173.751

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       3.295      -0.000      -0.000     -15.746       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     -13.350       0.000      -0.000      -9.196       0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       4.552       0.000      -0.000      15.720       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.018      -0.000       0.000      66.083       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000     283.607      -0.000       0.000       0.135      -0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      17.657       0.000       0.000       0.030      -0.000       0.000      -0.000

    9    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                             -224.199       0.000       0.000       0.000       0.000      -0.000       0.000       0.699

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -265.940      -0.000       0.000       0.078      -0.000

   11    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000    -425.733       0.000       0.000      -0.215      -0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000     425.733       0.000       0.000      -0.224       0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              265.940      -0.000      -0.000       0.000       0.000       0.000      -0.000     -15.466

   14    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.224      -0.000       0.000    -655.009      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.215      -0.000      -0.000     655.009       0.000      -0.000      -0.000

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.078       0.000       0.000       0.000       0.000       0.000       0.000      15.720

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    -300.878
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     173.720
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.003
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>           30230.485       0.000       0.000       0.000       0.000       0.000       0.000      12.264
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000   30230.489       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000   30230.511       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   30230.511       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   31822.500       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31822.480       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   31822.602       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-             12.264      -0.000       0.000       0.000       0.000       0.000       0.000   14238.248
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       9.438       0.000      -0.000     -15.742       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000      -0.000      -3.296      -0.000       0.000     -15.747       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000      13.350       0.000      -0.000      -9.195       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -0.000       4.552       0.000       0.000     -15.719       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000      -0.018      -0.000      -0.000      66.082      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000      -0.000      -0.000    -283.605       0.000      -0.000       0.134       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-            224.202       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000     -17.654       0.000      -0.000      -0.030       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000    -265.938       0.000      -0.000      -0.078      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-             -0.000       0.000      -0.000    -425.734      -0.000      -0.000       0.215       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-            265.938       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000     425.734       0.000       0.000      -0.224      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.224       0.000       0.000     655.006       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.078       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.000      -0.215       0.000      -0.000    -655.006      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.048

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              279.953       0.000      -0.000       0.000      -0.000      -0.000      -0.000      49.519

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              236.691       0.000      -0.000      -0.000      -0.000      -0.000      -0.000     -15.763

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      52.817       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -317.643    -183.390       0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     183.435      -0.000      -0.000      -0.000     -42.763       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.025

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              173.751      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.699

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.699       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.003    -347.419       0.000      -0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.003       0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     347.419      -0.000      -0.000      -0.000      12.103       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -12.103      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.699       0.000      -0.000      -0.000       0.000       0.000       0.000    -520.649

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000     520.649       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.106       0.000       0.000      -0.000    -347.970      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      16.493      -0.000       0.022      -0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.466       0.000       0.000      -0.000      -0.000       0.000       0.000      28.760

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      28.758       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      17.993      -0.000      66.104      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.719       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.140

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.140      -0.000

    1    1  |1 0>               0.000       0.000     300.878    -173.720       0.003      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000    -173.755      -0.000       0.000       0.000      12.300      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>             173.755       0.000      -0.000       0.000      -0.000      -0.000      -0.000     -15.137
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.514       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      14.787      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.010       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>             -12.300       0.000      -0.000      -0.000       0.000       0.000       0.000     201.457
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.514     -14.787       0.010      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000      15.137      -0.000       0.000      -0.000    -201.457       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000     224.202       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               9.438       0.000       0.000      -0.000       0.000      -0.000       0.000     -17.654
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000      13.350       4.552      -0.018      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>              -0.000      -3.296       0.000       0.000      -0.000    -283.605       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 0>             -15.742      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.030
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000      -9.195     -15.719      66.082      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 0>              -0.000     -15.747       0.000       0.000      -0.000       0.134      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          14238.247       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   14238.257       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   14238.317       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   14238.375       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26635.660       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   30230.203       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   30230.205       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30230.204
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
                               -0.000       0.000      -0.000      -0.102       0.000      -0.000    -360.409

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.019      -0.000       0.000     190.966

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -49.685       0.000       0.000    -225.760

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      11.392      -0.000       0.000    -256.190       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -42.752       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -33.045       0.000      -0.000     256.207       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.046      -0.000       0.000    -193.767

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      15.466       0.000       0.000     -15.720

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      15.466      -0.000       0.000      15.719       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.106      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -16.493      -0.000      -0.000     -17.993      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.022       0.000      -0.000     -66.104      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              347.970       0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -28.758      -0.000       0.000       0.140

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -28.760      -0.000      -0.000      -0.140       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -172.825       0.000       0.000      -0.039

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     172.825      -0.000       0.000      -0.039       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.039       0.000       0.000     655.003

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.039      -0.000       0.000    -655.003       0.000

    1    1  |1 0>             -12.264       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -9.438      -0.000       0.000      15.742      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       3.296       0.000      -0.000      15.747
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000      -0.000     -13.350      -0.000       0.000       9.195      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -4.552      -0.000      -0.000      15.719      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.018       0.000       0.000     -66.082       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000     283.605      -0.000       0.000      -0.134
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>            -224.202      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>              -0.000      17.654      -0.000       0.000       0.030      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000      -0.000     265.938      -0.000       0.000       0.078       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000     425.734       0.000       0.000      -0.215
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>            -265.938      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000    -425.734      -0.000       0.000       0.224       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000      -0.000      -0.000      -0.224       0.000      -0.000    -655.006
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.078      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.215      -0.000       0.000     655.006       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

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

   10    1  |1 1>-          30230.485       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   30230.489       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   30230.511       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   30230.511       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   31822.500       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   31822.480       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   31822.602
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -23.95903922    -0.00005817      -12.77      0.00000000        0.00      0.0000
    2   -23.89648139     0.06249966    13717.09      0.06255783    13729.86      1.7023
    3   -23.89648130     0.06249975    13717.11      0.06255792    13729.88      1.7023
    4   -23.89648130     0.06249975    13717.11      0.06255792    13729.88      1.7023
    5   -23.89520706     0.06377399    13996.77      0.06383217    14009.54      1.7370
    6   -23.89520698     0.06377407    13996.79      0.06383225    14009.56      1.7370
    7   -23.89520686     0.06377418    13996.82      0.06383236    14009.58      1.7370
    8   -23.89520686     0.06377419    13996.82      0.06383236    14009.58      1.7370
    9   -23.89520681     0.06377424    13996.83      0.06383242    14009.60      1.7370
   10   -23.89252389     0.06645716    14585.66      0.06651534    14598.43      1.8100
   11   -23.89252380     0.06645724    14585.68      0.06651542    14598.45      1.8100
   12   -23.89252380     0.06645725    14585.68      0.06651542    14598.45      1.8100
   13   -23.89252372     0.06645733    14585.70      0.06651550    14598.47      1.8100
   14   -23.89252372     0.06645733    14585.70      0.06651550    14598.47      1.8100
   15   -23.89252367     0.06645738    14585.71      0.06651556    14598.48      1.8100
   16   -23.89252362     0.06645743    14585.72      0.06651560    14598.49      1.8100
   17   -23.88130221     0.07767884    17048.53      0.07773701    17061.30      2.1153
   18   -23.88130212     0.07767893    17048.55      0.07773710    17061.32      2.1153
   19   -23.88130179     0.07767926    17048.63      0.07773743    17061.39      2.1153
   20   -23.88130178     0.07767927    17048.63      0.07773744    17061.40      2.1153
   21   -23.88130178     0.07767927    17048.63      0.07773744    17061.40      2.1153
   22   -23.83762883     0.12135222    26633.73      0.12141039    26646.50      3.3037
   23   -23.83762883     0.12135222    26633.73      0.12141039    26646.50      3.3037
   24   -23.83762883     0.12135222    26633.73      0.12141039    26646.50      3.3037
   25   -23.83274463     0.12623641    27705.69      0.12629459    27718.46      3.4367
   26   -23.82440913     0.13457192    29535.12      0.13463009    29547.89      3.6635
   27   -23.82440880     0.13457225    29535.20      0.13463043    29547.96      3.6635
   28   -23.82440844     0.13457261    29535.27      0.13463078    29548.04      3.6635
   29   -23.82440844     0.13457261    29535.27      0.13463078    29548.04      3.6635
   30   -23.82440831     0.13457274    29535.30      0.13463091    29548.07      3.6635
   31   -23.82203424     0.13694681    30056.35      0.13700498    30069.12      3.7281
   32   -23.82203424     0.13694681    30056.35      0.13700498    30069.12      3.7281
   33   -23.82203389     0.13694716    30056.43      0.13700534    30069.20      3.7281
   34   -23.82203354     0.13694751    30056.50      0.13700568    30069.27      3.7281
   35   -23.82203354     0.13694751    30056.50      0.13700569    30069.27      3.7281
   36   -23.82203341     0.13694764    30056.53      0.13700582    30069.30      3.7281
   37   -23.82203319     0.13694786    30056.58      0.13700603    30069.35      3.7281
   38   -23.81971568     0.13926537    30565.22      0.13932354    30577.98      3.7912
   39   -23.81886443     0.14011662    30752.04      0.14017479    30764.81      3.8144
   40   -23.81886442     0.14011662    30752.04      0.14017480    30764.81      3.8144
   41   -23.81886387     0.14011718    30752.17      0.14017536    30764.93      3.8144
   42   -23.81886387     0.14011718    30752.17      0.14017536    30764.93      3.8144
   43   -23.81886356     0.14011749    30752.23      0.14017566    30765.00      3.8144
   44   -23.81886333     0.14011772    30752.28      0.14017589    30765.05      3.8144
   45   -23.81886317     0.14011787    30752.32      0.14017605    30765.09      3.8144
   46   -23.81886317     0.14011788    30752.32      0.14017605    30765.09      3.8144
   47   -23.81886309     0.14011796    30752.34      0.14017613    30765.11      3.8144
   48   -23.81696267     0.14201838    31169.43      0.14207655    31182.20      3.8661
   49   -23.81696241     0.14201864    31169.49      0.14207681    31182.26      3.8661
   50   -23.81696238     0.14201867    31169.50      0.14207684    31182.26      3.8661
   51   -23.81096404     0.14801701    32485.98      0.14807518    32498.75      4.0293
   52   -23.81096400     0.14801705    32485.99      0.14807522    32498.75      4.0293
   53   -23.81096380     0.14801725    32486.03      0.14807543    32498.80      4.0293
   54   -23.81096373     0.14801731    32486.05      0.14807549    32498.81      4.0293
   55   -23.81096372     0.14801733    32486.05      0.14807551    32498.82      4.0293

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99979087 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000076  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000002  0.00000000  0.00000000  0.00000000 -0.14052626  0.04909322  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000004  0.00000000 -0.00000000  0.00000000  0.04910006  0.14050740 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000900 -0.00000000 -0.00000000 -0.14893430  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000901 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.14893413
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00024725  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000052 -0.00000000 -0.00000000 -0.00000000  0.39736056  0.70285183 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.54774961 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00003194 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000002 -0.54773642 -0.00000000 -0.00000000 -0.40376226  0.00000002
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000020 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.31624521  0.00000001 -0.00000000 -0.00000000  0.00000003  0.69918016
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.54763530  0.00000002  0.00000000  0.00000000 -0.00000002 -0.40370158
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000853  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000669 -0.00000000 -0.00000000 -0.00022417  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000163 -0.00000000  0.00000000 -0.00000000 -0.00027085 -0.00001529  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000342 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000532  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00022348
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000266  0.00000000  0.00000000  0.00018000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000343  0.00000000 -0.00000000 -0.00000000  0.00008122 -0.00024406  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000179  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00082039  0.00000000  0.00000000  0.00308890 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.01180603  0.00000000  0.00000000  0.00000000  0.00311007 -0.00175708 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00082672  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020  0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.54778454 -0.00000000 -0.00000000 -0.40366740  0.00000002

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.54778472  0.00000002 -0.00000000 -0.00000000  0.00000002  0.40366739

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.80734402  0.00731315 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00003688 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.63240784  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000505  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000820 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022935 -0.00000208  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000189  0.00000000 -0.00000000 -0.00001040  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000189 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001039

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000436 -0.00000000 -0.00000000  0.00000000  0.00000268 -0.00029602  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000438 -0.00000000 -0.00000000 -0.00028725  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000438  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00028724

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01180623 -0.00000000  0.00000000 -0.00000000 -0.00003236  0.00357245 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00082079  0.00000000  0.00000000  0.00310038 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00082083  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00310046

   1    1  |1 1>-          0.00000000  0.00003194 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.54774931  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000052 -0.00000000 -0.00000000 -0.00000000 -0.41002734  0.69553864 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.54773634  0.00000002  0.00000000  0.00000000 -0.00000002 -0.40376234

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000001
                          -0.00000000  0.00000000  0.00000001 -0.31623622  0.00000000  0.00000000  0.69918687 -0.00000003

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000020 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.54764060  0.00000000  0.00000000  0.40368997 -0.00000002

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000853  0.00000000 -0.00000000  0.00000004  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000668 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022416

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000341  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000163 -0.00000000 -0.00000000  0.00000000  0.00027108 -0.00001038 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000532 -0.00000000 -0.00000000 -0.00022348  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000265 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00018000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000343  0.00000000 -0.00000000  0.00000000  0.00007679  0.00024549 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00082040 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00308889

  15    1  |1 1>-          0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00082668 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01180599 -0.00000000 -0.00000000  0.00000000 -0.00307781 -0.00181317  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001812
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000651
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.14893821 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000739 -0.00000000
                          -0.00002053 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00001463 -0.00000000  0.00000688 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00001458  0.00000000  0.00000685  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57733805
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.40374271  0.44835205  0.00000000 -0.00000000  0.00000000  0.00000000  0.57640183 -0.00000000
                           0.00005564  0.00000196 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000223  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.02601424 -0.00004514  0.72978140 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000272 -0.00002231 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.61779491  0.00000002  0.13552339  0.00000838 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000006 -0.00000050  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.32986662  0.00000001 -0.65161887 -0.00004031  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000030  0.00000243 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000024  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00082564  0.00000002 -0.00038461 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00059110
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00028020 -0.00004702 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052563  0.00000000
                           0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00058652 -0.00000000 -0.00069524 -0.00000004  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00109339 -0.00000001  0.00024122 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070016
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00005640  0.00111395  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00074926  0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000693  0.00000000 -0.00000155  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000061
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00309485  0.00000564 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000043  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000059  0.00000481 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000002  0.71311589 -0.00000973  0.15731174 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000007 -0.00000058  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.71329762 -0.00000002 -0.15648510 -0.00000968  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57737282

   4    1  |1 0>           0.00000000 -0.00000339  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000637  0.77463269  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00156967  0.00000000

   5    1  |1 0>           0.00011126 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000224 -0.00000000
                           0.80732989  0.00116739  0.00000000  0.00000000  0.00000000  0.00000000  0.57742348 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000029  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00091794

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00031110 -0.00000008  0.00133183 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00030954  0.00000000 -0.00133219 -0.00000008  0.00000000  0.00000000

  10    1  |1 0>           0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00022816 -0.00000186 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00091544  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00043024  0.00000001 -0.00015376  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00043041 -0.00000000 -0.00015325 -0.00000001  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000425  0.00000000 -0.00000014 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000425 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00005564  0.00000195  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000224 -0.00000000
                          -0.40374285 -0.44600536 -0.00000000  0.00000000  0.00000000  0.00000000  0.57821975 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57733775

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000033  0.00000272 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.02686013  0.00000000  0.72975077  0.00004514 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000051  0.00000417 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000002  0.61763188 -0.00000843  0.13625005 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000243  0.00001991  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.33063174 -0.00004028  0.65123388 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000005  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00082520  0.00000000 -0.00038557 -0.00000002  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00028021  0.00004490 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052582  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00059110

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00058571 -0.00000004  0.00069592 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00109367 -0.00000000 -0.00023996 -0.00000001  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00005640  0.00111700  0.00000000 -0.00000000  0.00000000  0.00000000  0.00074474 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070017

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000693  0.00000000  0.00000155  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000043  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00309476 -0.00000565  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000061

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000003  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.36494443  0.91872923  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.91873199 -0.36494356 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000002 -0.00000045  0.98854590 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000255 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.98854644 -0.00000000 -0.00000002 -0.00000000  0.00000008 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.98854646  0.00000045  0.00000009  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000227  0.00000001 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.10322402  0.06423801  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000003  0.06083811 -0.00000000  0.00000000 -0.00001748
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.06083561  0.00000000  0.00000000  0.00000000 -0.00001776 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.10533858  0.00000005 -0.00000991 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.06082127 -0.00000003 -0.00001774 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000014 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.99978756  0.00000459 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00350459  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00001822 -0.00425822 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00432926 -0.00000000 -0.00000000 -0.00000284
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00350360  0.00000000  0.00000012 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00270980 -0.00000000 -0.00000000 -0.00000000  0.00000637 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00389976  0.00116980  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00093259 -0.00000000  0.00000000 -0.00000530
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.01623072  0.00000000  0.00000000 -0.00000007  0.01457661  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00989244 -0.01590505 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000001 -0.01622866 -0.00000000  0.00000000 -0.01457223
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000  0.00000020

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.06083743  0.00000000  0.00000000 -0.00000000  0.00001802  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000014 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.06083732  0.00000003 -0.00001801 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00400080  0.12150647  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000098  0.00000000 -0.00000000  0.00002078

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000006 -0.12163986 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001356
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.99978762

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00011533 -0.00350279 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00018736  0.00000000  0.00000000  0.00000000 -0.00000288 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00018732  0.00000000  0.00000288  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00349804  0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00473185 -0.00015581 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00442419  0.00000000  0.00000000 -0.00000000  0.00000505  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00442418 -0.00000000  0.00000505  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01872002 -0.00061638 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.01622835  0.00000000  0.00000000  0.00000007 -0.01457295 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.01622852  0.00000001  0.01457278  0.00000007 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000003  0.06083807  0.00000000 -0.00000000  0.00001748

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.10722621 -0.05730872 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.06083554 -0.00000003 -0.00001776 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.10533967 -0.00000000 -0.00000000  0.00000000 -0.00000991 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.06081960 -0.00000000 -0.00000000 -0.00000000  0.00001774  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000459  0.99978755  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00350457 -0.00000000  0.00000001  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00432926 -0.00000000 -0.00000000  0.00000284

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00029826  0.00424780  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00350361  0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00270980 -0.00000000 -0.00000637 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00093256 -0.00000000  0.00000000 -0.00000530

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00381436  0.00142377  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.01623072  0.00000001 -0.01457658 -0.00000007  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000020
                           0.00000000  0.00000000 -0.00000000  0.00000001 -0.01622850  0.00000000 -0.00000000  0.01457238

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00882484  0.01652151  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00266201 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000058 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000010  0.00661729  0.00000000  0.00000000 -0.00000000 -0.00239162  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000033 -0.00238267 -0.00000000 -0.00000000 -0.00000000 -0.00664222  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00700693  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000588  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00701164 -0.00000000  0.00000000  0.00000168
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00701163 -0.00000000 -0.00000000 -0.00000168  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.99299265 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000545 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000019  0.00062441  0.00000000  0.00000000  0.00000000  0.00108004  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00062699  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00062183  0.00000000 -0.00000000 -0.00084073
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00108058 -0.00000000 -0.00000000 -0.00048168  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00062266  0.00000000  0.00000000 -0.00111299  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000 -0.00000394  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000001  0.48811024 -0.00000000 -0.00000256 -0.52959962
                           0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000012 -0.00000000 -0.00000010  0.00000005

   8    1  |1 1>+         -0.00001174  0.59075732  0.00000000  0.00000000 -0.00000000  0.02188895 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.60358205 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00050659 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.48793983  0.00000001  0.00000000  0.08985695 -0.00000043
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000 -0.00000003  0.00000002

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.37787595  0.00000000 -0.00000164 -0.34071667
                          -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000009  0.00000000 -0.00000006  0.00000004

  12    1  |1 1>+          0.00002200 -0.17858533  0.00000000  0.00000000  0.00000000  0.53413142 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.12931726  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00010854  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00056047  0.00000000 -0.00000000 -0.00000145
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.06821095 -0.00065473 -0.00000000 -0.00000000  0.00000000  0.00039447 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00058607 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000049 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00062809  0.00000000  0.00000000  0.00055753

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00062809 -0.00000000 -0.00000000  0.00055759 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00124787  0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000104  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00124491 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.48788999  0.00000000  0.00000000 -0.00000000 -0.00020257  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000014  0.00000008
                           0.00000000  0.00000000  0.00000000  0.00000000  0.02549956 -0.00000000  0.00000369  0.76403702

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000026 -0.00000014
                          -0.00000000  0.00000000 -0.00000000 -0.02549443  0.00000000  0.00000000  0.76401070 -0.00000369

  10    1  |1 0>           0.00000000  0.00000000 -0.00040936 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.48772812  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00002550  0.00027167  0.00000000  0.00000000  0.00000000  0.65462389 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000015  0.00000000 -0.00000002  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000002  0.61657965 -0.00000000  0.00000052  0.10770627

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000 -0.00000004  0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.61657999 -0.00000002 -0.00000000 -0.10772955  0.00000052

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.06821527 -0.00000036 -0.00000000 -0.00000000 -0.00000000 -0.00077546 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00053103  0.00000000  0.00000000  0.00000543

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00053103 -0.00000000 -0.00000000  0.00000545 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00062700  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000019 -0.00062352  0.00000000 -0.00000000  0.00000000  0.00108056 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00062183  0.00000000  0.00000000  0.00084068 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00108061 -0.00000000  0.00000000  0.00048161

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00062264 -0.00000000 -0.00000001 -0.00111302

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000394

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000  0.00000018 -0.00000010
                           0.00000000 -0.00000000  0.00000000  0.48810997 -0.00000001 -0.00000000  0.52961418 -0.00000256

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00050660  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.60358308 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001173 -0.59074044 -0.00000000 -0.00000000  0.00000000  0.02237470  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000012  0.00000000 -0.00000002  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000001  0.48793993 -0.00000000  0.00000043  0.08989273

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000001  0.00000002  0.00000000 -0.00000011  0.00000006
                          -0.00000000 -0.00000000  0.00000000  0.37787623 -0.00000001 -0.00000000 -0.34075513  0.00000164

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00010853  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.12931231 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002200 -0.17902355 -0.00000000 -0.00000000 -0.00000000 -0.53398344 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00056052 -0.00000000 -0.00000000 -0.00000147  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00058604 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.06820891  0.00065494  0.00000000  0.00000000  0.00000000  0.00039388 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.02027622 -0.00001492  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000193 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000101 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000070  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000198  0.00000279  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000340 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000460  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000459 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.11817576 -0.00008338  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00091724  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000073  0.00000228  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00070518  0.00091518 -0.00000000 -0.00000000  0.00000265
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000011  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00078663 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00087989  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00028816 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000115 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000001  0.22967916  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.37208467 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00049908  0.70266499 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.02840745  0.33427255  0.00000000  0.00000000  0.70652898
                          -0.00000000  0.00000000  0.00000000 -0.00000042  0.00003947 -0.00000000 -0.00000000 -0.00124994

  10    1  |1 1>+         -0.00000000  0.57019227  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000002  0.61960696  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.44129853 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00078862 -0.06649832 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.70769721  0.46883798 -0.00000000  0.00000000  0.02916327
                          -0.00000000 -0.00000000  0.00000000  0.00001058  0.00005535 -0.00000000 -0.00000000 -0.00005159

  14    1  |1 1>+          0.00000000  0.00000000 -0.00003392 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00001790  0.00000000  0.00000000  0.00000000  0.00000000  0.57319866 -0.00049901  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00002024 -0.00004587 -0.00000000  0.00000000  0.00023840
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000042

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00101266 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00101262 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00091609  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00122134  0.00000312 -0.00000000 -0.00000000 -0.00000350

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000234  0.00091557 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000791 -0.00000002  0.00000000  0.00000000  0.00001127

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57759387  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011 -0.00004719 -0.00000000

   8    1  |1 0>           0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.40650847  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.40655855  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00006819  0.00000000  0.00000000  0.00000022
                          -0.00000000  0.00000000  0.00000000  0.00147158  0.57759327 -0.00000000 -0.00000000  0.00012250

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00124244  0.06092415 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.27013024 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.27012011  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.57319214 -0.00052260  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00002109  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00002100 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000011  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00070983  0.00091158  0.00000000  0.00000000 -0.00000265

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00091724  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000073  0.00000228  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00078669  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00087992 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00028808 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000115 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.22964640 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000045 -0.00003945 -0.00000000 -0.00000000 -0.00124984
                          -0.00000000  0.00000000 -0.00000000  0.03011620  0.33411957 -0.00000000 -0.00000000 -0.70647081

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.37208113  0.00000000  0.00000000 -0.00000000  0.00000000  0.00049892  0.70264934 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000002  0.57018656  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.61958541  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00001055  0.00005578 -0.00000000  0.00000000  0.00005194
                           0.00000000 -0.00000000 -0.00000000  0.70529854 -0.47244091 -0.00000000 -0.00000000  0.02936055

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.44130153 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00078828  0.06641728 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00003404 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000042
                          -0.00000000 -0.00000000  0.00000000 -0.00002045 -0.00004573  0.00000000 -0.00000000 -0.00023846

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001787  0.00000000  0.00000000  0.00000000  0.00000000  0.57316154 -0.00049901  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00002602 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00001698 -0.00000000 -0.00000000  0.00000000 -0.00000137  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000610  0.00000000  0.00000000 -0.00000000 -0.00000385 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000697 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000219  0.00000000  0.00000000 -0.00000000  0.00000033 -0.00000000 -0.00000043
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000218 -0.00000000 -0.00000000 -0.00000000  0.00000033  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00014978 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000244  0.00000000 -0.00000000 -0.00000000 -0.00000206  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000398  0.00000000  0.00000000  0.00000000 -0.00000500  0.00000000  0.00063789
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000034  0.00000000  0.00000000  0.00000000 -0.00000505 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000500 -0.00000000  0.00000000 -0.00000000 -0.00000444 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000634 -0.00000000  0.00000000 -0.00000000 -0.00001854 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000013  0.64108663  0.00000000  0.00000000  0.00000003 -0.13234334 -0.00000000 -0.00019903
                           0.00000003  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000006  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.11201984  0.00000000 -0.00000000 -0.00000000 -0.07598771  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.15472092  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00084262  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.56849230 -0.00000012 -0.00000000  0.00000000  0.32484530  0.00000007 -0.00000000 -0.00000000
                           0.00000034  0.00000002  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000002 -0.09388047 -0.00000000 -0.00000000 -0.00000014  0.59024299 -0.00000000  0.00034814
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000028 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.52251700  0.00000000 -0.00000000  0.00000000 -0.45891451 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.51163629 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00278642 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00012328 -0.00000000 -0.00000000 -0.00000000  0.00038810 -0.00000000 -0.70695064
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00002789  0.00000000 -0.00000000 -0.00000000 -0.00091597 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00002964  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000172  0.00000000  0.00000000 -0.00000000  0.00000257 -0.00000000 -0.00063786

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000172 -0.00000000  0.00000000  0.00000000 -0.00000257 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000285  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000464 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.65447320  0.00000000 -0.00000000  0.00000000 -0.00034488 -0.00000000

   8    1  |1 0>          -0.00000002 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000005  0.00000000  0.00000000
                           0.00000010  0.48847860  0.00000000 -0.00000000 -0.00000002  0.10832740 -0.00000000 -0.00003635

   9    1  |1 0>           0.00000029  0.00000002  0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000
                          -0.48845205  0.00000010  0.00000000 -0.00000000 -0.10844590 -0.00000002  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00356492 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.65458304  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00040148 -0.00000000  0.00000000  0.00000000  0.75347945 -0.00000000

  12    1  |1 0>           0.00000001  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000034  0.00000000 -0.00000000
                          -0.00000003 -0.13529743 -0.00000000 -0.00000000 -0.00000017  0.71898052 -0.00000000  0.00041218

  13    1  |1 0>           0.00000008  0.00000001  0.00000000 -0.00000000 -0.00000004  0.00000004  0.00000000 -0.00000000
                          -0.13547663  0.00000003  0.00000000 -0.00000000  0.71894680  0.00000017 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000 -0.00089889 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00013259  0.00000000  0.00000000  0.00000000 -0.00039553  0.00000000  0.70696129

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00013234  0.00000000 -0.00000000 -0.00000000  0.00039544  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000244  0.00000000 -0.00000000  0.00000000 -0.00000206  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000398  0.00000000  0.00000000  0.00000000 -0.00000500 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000033 -0.00000000 -0.00000000  0.00000000 -0.00000504  0.00000000  0.00035596

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000500 -0.00000000  0.00000000 -0.00000000  0.00000445 -0.00000000 -0.00063672

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000635  0.00000000  0.00000000  0.00000000 -0.00001854  0.00000000  0.02061187

   7    1  |1 1>-         -0.00000039 -0.00000003 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000
                           0.64112032 -0.00000013 -0.00000000  0.00000000 -0.13217961 -0.00000003  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00084409 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.15498953  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.11204527  0.00000000 -0.00000000  0.00000000 -0.07610192  0.00000000

  10    1  |1 1>-          0.00000002  0.00000001 -0.00000000 -0.00000000 -0.00000002  0.00000015 -0.00000000 -0.00000000
                          -0.00000012 -0.56857508 -0.00000000  0.00000000  0.00000007 -0.32470037  0.00000000 -0.00009284

  11    1  |1 1>-         -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000003 -0.00000000  0.00000000
                           0.09403125 -0.00000002 -0.00000000  0.00000000 -0.59021924 -0.00000014  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00278635 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.51162425  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.52300867  0.00000000  0.00000000  0.00000000  0.45836441 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00012303 -0.00000000  0.00000000  0.00000000 -0.00038813 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00002956 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00002713  0.00000000 -0.00000000 -0.00000000 -0.00091596 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000027  0.00000000  0.00000000 -0.00000000  0.00000043
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.01917535 -0.00000000  0.00000000 -0.00000000 -0.01331144
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.01330868 -0.00000000 -0.00000000  0.00000000  0.01917472
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000096 -0.00000000 -0.00000000 -0.00000000  0.02335185 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.02335274  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000138  0.00000000  0.00000000 -0.00000000 -0.02335288  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000355  0.00000000 -0.00000000  0.00000000 -0.00000047
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00030881 -0.00000000 -0.00000000  0.00000000  0.00067479
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00063662  0.00000000  0.00000000  0.00000000 -0.00037029  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00037142  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00035599 -0.00000000 -0.00000000  0.00000000  0.00064017 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00063674  0.00000000  0.00000000 -0.00000000 -0.00037050  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.02061172 -0.00000000 -0.00000000  0.00000000  0.00000189  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00030286 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00022729 -0.00000000  0.00000000 -0.00000000 -0.00037460
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00023749 -0.00000000  0.00000000  0.00000000 -0.00037408  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00009324 -0.00000000 -0.00000000  0.00000000  0.00032127 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00020151  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00042216  0.00000000 -0.00000000 -0.00000000 -0.00014468
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00003030 -0.00000000 -0.00000000 -0.00000000  0.00009511 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.70691880  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.74251157 -0.00000000  0.00000000 -0.00000000 -0.33906119
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.70692330  0.00000000 -0.00000000 -0.00000000  0.70694629 -0.00000000  0.00000000
                           0.00001208  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00037127  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00063787 -0.00000000 -0.00000000  0.00000000  0.00037124 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00043118  0.00000000 -0.00000000  0.00000000  0.00060551

   4    1  |1 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00074525 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00074095 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000035 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02060837  0.00000000  0.00000000 -0.00000000  0.00000085  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00023936 -0.00000000  0.00000000 -0.00000000 -0.00033607

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00002645 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00003620 -0.00000000  0.00000000  0.00000000  0.00002644 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00038988 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00041435  0.00000000  0.00000000 -0.00000000 -0.00029503

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00036955  0.00000000  0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00041212  0.00000000  0.00000000 -0.00000000 -0.00036952  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.66491100  0.00000000  0.00000000 -0.00000000 -0.47348301

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.70690824  0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.70692851 -0.00000000 -0.00000000  0.00000000  0.70694102 -0.00000000

   1    1  |1 1>-          0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00063661 -0.00000000  0.00000000  0.00000000 -0.00037038  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00073865 -0.00000000  0.00000000  0.00000000  0.00007116

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00063790  0.00000000  0.00000000 -0.00000000 -0.00037148  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00064018 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00037044 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000274 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00019877  0.00000000  0.00000000 -0.00000000 -0.00030289  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00023751  0.00000000  0.00000000  0.00000000 -0.00037411  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00027970  0.00000000 -0.00000000  0.00000000  0.00033731

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00032121  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00034804  0.00000000  0.00000000 -0.00000000 -0.00020155  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00003033  0.00000000  0.00000000  0.00000000 -0.00009512  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00027482 -0.00000000 -0.00000000  0.00000000  0.00035163

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.70698342 -0.00000000 -0.00000000  0.00000000  0.70688601 -0.00000000

  15    1  |1 1>-          0.00001209  0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                           0.70698887 -0.00000000 -0.00000000 -0.00000000  0.70688072 -0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.07761238 -0.00000000 -0.00000000  0.00000000  0.81259157


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -23.95903922     -0.00005817      -12.77      0.00000000        0.00      0.0000
     2   1    -23.89648139      0.06249966    13717.09      0.06255783    13729.86      1.7023
     3   1    -23.89648130      0.06249975    13717.11      0.06255792    13729.88      1.7023
     4   1    -23.89648130      0.06249975    13717.11      0.06255792    13729.88      1.7023
     5   1    -23.89520706      0.06377399    13996.77      0.06383217    14009.54      1.7370
     6   1    -23.89520698      0.06377407    13996.79      0.06383225    14009.56      1.7370
     7   1    -23.89520686      0.06377418    13996.82      0.06383236    14009.58      1.7370
     8   1    -23.89520686      0.06377419    13996.82      0.06383236    14009.58      1.7370
     9   1    -23.89520681      0.06377424    13996.83      0.06383242    14009.60      1.7370
    10   1    -23.89252389      0.06645716    14585.66      0.06651534    14598.43      1.8100
    11   1    -23.89252380      0.06645724    14585.68      0.06651542    14598.45      1.8100
    12   1    -23.89252380      0.06645725    14585.68      0.06651542    14598.45      1.8100
    13   1    -23.89252372      0.06645733    14585.70      0.06651550    14598.47      1.8100
    14   1    -23.89252372      0.06645733    14585.70      0.06651550    14598.47      1.8100
    15   1    -23.89252367      0.06645738    14585.71      0.06651556    14598.48      1.8100
    16   1    -23.89252362      0.06645743    14585.72      0.06651560    14598.49      1.8100
    17   1    -23.88130221      0.07767884    17048.53      0.07773701    17061.30      2.1153
    18   1    -23.88130212      0.07767893    17048.55      0.07773710    17061.32      2.1153
    19   1    -23.88130179      0.07767926    17048.63      0.07773743    17061.39      2.1153
    20   1    -23.88130178      0.07767927    17048.63      0.07773744    17061.40      2.1153
    21   1    -23.88130178      0.07767927    17048.63      0.07773744    17061.40      2.1153
    22   1    -23.83762883      0.12135222    26633.73      0.12141039    26646.50      3.3037
    23   1    -23.83762883      0.12135222    26633.73      0.12141039    26646.50      3.3037
    24   1    -23.83762883      0.12135222    26633.73      0.12141039    26646.50      3.3037
    25   1    -23.83274463      0.12623641    27705.69      0.12629459    27718.46      3.4367
    26   1    -23.82440913      0.13457192    29535.12      0.13463009    29547.89      3.6635
    27   1    -23.82440880      0.13457225    29535.20      0.13463043    29547.96      3.6635
    28   1    -23.82440844      0.13457261    29535.27      0.13463078    29548.04      3.6635
    29   1    -23.82440844      0.13457261    29535.27      0.13463078    29548.04      3.6635
    30   1    -23.82440831      0.13457274    29535.30      0.13463091    29548.07      3.6635
    31   1    -23.82203424      0.13694681    30056.35      0.13700498    30069.12      3.7281
    32   1    -23.82203424      0.13694681    30056.35      0.13700498    30069.12      3.7281
    33   1    -23.82203389      0.13694716    30056.43      0.13700534    30069.20      3.7281
    34   1    -23.82203354      0.13694751    30056.50      0.13700568    30069.27      3.7281
    35   1    -23.82203354      0.13694751    30056.50      0.13700569    30069.27      3.7281
    36   1    -23.82203341      0.13694764    30056.53      0.13700582    30069.30      3.7281
    37   1    -23.82203319      0.13694786    30056.58      0.13700603    30069.35      3.7281
    38   1    -23.81971568      0.13926537    30565.22      0.13932354    30577.98      3.7912
    39   1    -23.81886443      0.14011662    30752.04      0.14017479    30764.81      3.8144
    40   1    -23.81886442      0.14011662    30752.04      0.14017480    30764.81      3.8144
    41   1    -23.81886387      0.14011718    30752.17      0.14017536    30764.93      3.8144
    42   1    -23.81886387      0.14011718    30752.17      0.14017536    30764.93      3.8144
    43   1    -23.81886356      0.14011749    30752.23      0.14017566    30765.00      3.8144
    44   1    -23.81886333      0.14011772    30752.28      0.14017589    30765.05      3.8144
    45   1    -23.81886317      0.14011787    30752.32      0.14017605    30765.09      3.8144
    46   1    -23.81886317      0.14011788    30752.32      0.14017605    30765.09      3.8144
    47   1    -23.81886309      0.14011796    30752.34      0.14017613    30765.11      3.8144
    48   1    -23.81696267      0.14201838    31169.43      0.14207655    31182.20      3.8661
    49   1    -23.81696241      0.14201864    31169.49      0.14207681    31182.26      3.8661
    50   1    -23.81696238      0.14201867    31169.50      0.14207684    31182.26      3.8661
    51   1    -23.81096404      0.14801701    32485.98      0.14807518    32498.75      4.0293
    52   1    -23.81096400      0.14801705    32485.99      0.14807522    32498.75      4.0293
    53   1    -23.81096380      0.14801725    32486.03      0.14807543    32498.80      4.0293
    54   1    -23.81096373      0.14801731    32486.05      0.14807549    32498.81      4.0293
    55   1    -23.81096372      0.14801733    32486.05      0.14807551    32498.82      4.0293

 E0 =    -23.95898105 is the energy of the lowest zeroth-order state
 E1 =    -23.95903922 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99979087 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000076  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000002  0.00000000  0.00000000  0.00000000 -0.14052626  0.04909322  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000004  0.00000000 -0.00000000  0.00000000  0.04910006  0.14050740 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000900 -0.00000000 -0.00000000 -0.14893430  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000901 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.14893413
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00024725  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000052 -0.00000000 -0.00000000 -0.00000000  0.39736056  0.70285183 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.54774961 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00003194 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000002 -0.54773642 -0.00000000 -0.00000000 -0.40376226  0.00000002
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000020 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.31624521  0.00000001 -0.00000000 -0.00000000  0.00000003  0.69918016
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.54763530  0.00000002  0.00000000  0.00000000 -0.00000002 -0.40370158
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000853  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000669 -0.00000000 -0.00000000 -0.00022417  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000163 -0.00000000  0.00000000 -0.00000000 -0.00027085 -0.00001529  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000342 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000532  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00022348
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000266  0.00000000  0.00000000  0.00018000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000343  0.00000000 -0.00000000 -0.00000000  0.00008122 -0.00024406  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000179  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00082039  0.00000000  0.00000000  0.00308890 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.01180603  0.00000000  0.00000000  0.00000000  0.00311007 -0.00175708 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00082672  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020  0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.54778454 -0.00000000 -0.00000000 -0.40366740  0.00000002

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.54778472  0.00000002 -0.00000000 -0.00000000  0.00000002  0.40366739

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.80734402  0.00731315 -0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00003688 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.63240784  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000505  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000820 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022935 -0.00000208  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000189  0.00000000 -0.00000000 -0.00001040  0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000189 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001039

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000436 -0.00000000 -0.00000000  0.00000000  0.00000268 -0.00029602  0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000438 -0.00000000 -0.00000000 -0.00028725  0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000438  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00028724

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01180623 -0.00000000  0.00000000 -0.00000000 -0.00003236  0.00357245 -0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00082079  0.00000000  0.00000000  0.00310038 -0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00082083  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00310046

 40  1     1    1  |1 1>-       0.00000000  0.00003194 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.54774931  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000052 -0.00000000 -0.00000000 -0.00000000 -0.41002734  0.69553864 -0.00000000  0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.54773634  0.00000002  0.00000000  0.00000000 -0.00000002 -0.40376234

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000001
                               -0.00000000  0.00000000  0.00000001 -0.31623622  0.00000000  0.00000000  0.69918687 -0.00000003

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000020 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.54764060  0.00000000  0.00000000  0.40368997 -0.00000002

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000853  0.00000000 -0.00000000  0.00000004  0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000668 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022416

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000341  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000163 -0.00000000 -0.00000000  0.00000000  0.00027108 -0.00001038 -0.00000000  0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000532 -0.00000000 -0.00000000 -0.00022348  0.00000000

 50  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000265 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00018000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000343  0.00000000 -0.00000000  0.00000000  0.00007679  0.00024549 -0.00000000  0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00082040 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00308889

 54  1    15    1  |1 1>-       0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00082668 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01180599 -0.00000000 -0.00000000  0.00000000 -0.00307781 -0.00181317  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001812
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000651
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.14893821 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000739 -0.00000000
                               -0.00002053 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00001463 -0.00000000  0.00000688 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00001458  0.00000000  0.00000685  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57733805
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.40374271  0.44835205  0.00000000 -0.00000000  0.00000000  0.00000000  0.57640183 -0.00000000
                                0.00005564  0.00000196 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000223  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.02601424 -0.00004514  0.72978140 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000272 -0.00002231 -0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.61779491  0.00000002  0.13552339  0.00000838 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000006 -0.00000050  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.32986662  0.00000001 -0.65161887 -0.00004031  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000030  0.00000243 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000024  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00082564  0.00000002 -0.00038461 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00059110
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00028020 -0.00004702 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052563  0.00000000
                                0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000  0.00058652 -0.00000000 -0.00069524 -0.00000004  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00109339 -0.00000001  0.00024122 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070016
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00005640  0.00111395  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00074926  0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000693  0.00000000 -0.00000155  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000061
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00309485  0.00000564 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000043  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000059  0.00000481 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000002  0.71311589 -0.00000973  0.15731174 -0.00000000 -0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000001  0.00000000 -0.00000007 -0.00000058  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.71329762 -0.00000002 -0.15648510 -0.00000968  0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57737282

 27  1     4    1  |1 0>        0.00000000 -0.00000339  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000637  0.77463269  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00156967  0.00000000

 28  1     5    1  |1 0>        0.00011126 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000224 -0.00000000
                                0.80732989  0.00116739  0.00000000  0.00000000  0.00000000  0.00000000  0.57742348 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000029  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00091794

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00031110 -0.00000008  0.00133183 -0.00000000  0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00030954  0.00000000 -0.00133219 -0.00000008  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00022816 -0.00000186 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00091544  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00043024  0.00000001 -0.00015376  0.00000000 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00043041 -0.00000000 -0.00015325 -0.00000001  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000425  0.00000000 -0.00000014 -0.00000000 -0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000425 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00005564  0.00000195  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000224 -0.00000000
                               -0.40374285 -0.44600536 -0.00000000  0.00000000  0.00000000  0.00000000  0.57821975 -0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57733775

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000033  0.00000272 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.02686013  0.00000000  0.72975077  0.00004514 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000051  0.00000417 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000002  0.61763188 -0.00000843  0.13625005 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000243  0.00001991  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.33063174 -0.00004028  0.65123388 -0.00000000  0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000005  0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00082520  0.00000000 -0.00038557 -0.00000002  0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00028021  0.00004490 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00052582  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00059110

 49  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00058571 -0.00000004  0.00069592 -0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00109367 -0.00000000 -0.00023996 -0.00000001  0.00000000 -0.00000000

 51  1    12    1  |1 1>-      -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00005640  0.00111700  0.00000000 -0.00000000  0.00000000  0.00000000  0.00074474 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00070017

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000693  0.00000000  0.00000155  0.00000000 -0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000043  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00309476 -0.00000565  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000061


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000003  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.36494443  0.91872923  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.91873199 -0.36494356 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000002 -0.00000045  0.98854590 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000255 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.98854644 -0.00000000 -0.00000002 -0.00000000  0.00000008 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.98854646  0.00000045  0.00000009  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000227  0.00000001 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.10322402  0.06423801  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000003  0.06083811 -0.00000000  0.00000000 -0.00001748
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000016  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.06083561  0.00000000  0.00000000  0.00000000 -0.00001776 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.10533858  0.00000005 -0.00000991 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.06082127 -0.00000003 -0.00001774 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000014 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.99978756  0.00000459 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00350459  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00001822 -0.00425822 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00432926 -0.00000000 -0.00000000 -0.00000284
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00350360  0.00000000  0.00000012 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00270980 -0.00000000 -0.00000000 -0.00000000  0.00000637 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00389976  0.00116980  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00093259 -0.00000000  0.00000000 -0.00000530
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.01623072  0.00000000  0.00000000 -0.00000007  0.01457661  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00989244 -0.01590505 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000001 -0.01622866 -0.00000000  0.00000000 -0.01457223
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000  0.00000020

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.06083743  0.00000000  0.00000000 -0.00000000  0.00001802  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000014 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.06083732  0.00000003 -0.00001801 -0.00000000  0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00400080  0.12150647  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000098  0.00000000 -0.00000000  0.00002078

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000006 -0.12163986 -0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00001356
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.99978762

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00011533 -0.00350279 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00018736  0.00000000  0.00000000  0.00000000 -0.00000288 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00018732  0.00000000  0.00000288  0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00349804  0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00473185 -0.00015581 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00442419  0.00000000  0.00000000 -0.00000000  0.00000505  0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00442418 -0.00000000  0.00000505  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01872002 -0.00061638 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.01622835  0.00000000  0.00000000  0.00000007 -0.01457295 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.01622852  0.00000001  0.01457278  0.00000007 -0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000003  0.06083807  0.00000000 -0.00000000  0.00001748

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.10722621 -0.05730872 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.06083554 -0.00000003 -0.00001776 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.10533967 -0.00000000 -0.00000000  0.00000000 -0.00000991 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.06081960 -0.00000000 -0.00000000 -0.00000000  0.00001774  0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000459  0.99978755  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00350457 -0.00000000  0.00000001  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00432926 -0.00000000 -0.00000000  0.00000284

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00029826  0.00424780  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00350361  0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00270980 -0.00000000 -0.00000637 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00093256 -0.00000000  0.00000000 -0.00000530

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00381436  0.00142377  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.01623072  0.00000001 -0.01457658 -0.00000007  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000020
                                0.00000000  0.00000000 -0.00000000  0.00000001 -0.01622850  0.00000000 -0.00000000  0.01457238

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00882484  0.01652151  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00266201 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000058 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000010  0.00661729  0.00000000  0.00000000 -0.00000000 -0.00239162  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000033 -0.00238267 -0.00000000 -0.00000000 -0.00000000 -0.00664222  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00700693  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000588  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00701164 -0.00000000  0.00000000  0.00000168
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00701163 -0.00000000 -0.00000000 -0.00000168  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99299265 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000545 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000019  0.00062441  0.00000000  0.00000000  0.00000000  0.00108004  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00062699  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00062183  0.00000000 -0.00000000 -0.00084073
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00108058 -0.00000000 -0.00000000 -0.00048168  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00062266  0.00000000  0.00000000 -0.00111299  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000 -0.00000394  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000001  0.48811024 -0.00000000 -0.00000256 -0.52959962
                                0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000012 -0.00000000 -0.00000010  0.00000005

 15  1     8    1  |1 1>+      -0.00001174  0.59075732  0.00000000  0.00000000 -0.00000000  0.02188895 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.60358205 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00050659 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.48793983  0.00000001  0.00000000  0.08985695 -0.00000043
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000 -0.00000003  0.00000002

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.37787595  0.00000000 -0.00000164 -0.34071667
                               -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000009  0.00000000 -0.00000006  0.00000004

 19  1    12    1  |1 1>+       0.00002200 -0.17858533  0.00000000  0.00000000  0.00000000  0.53413142 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.12931726  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00010854  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00056047  0.00000000 -0.00000000 -0.00000145
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.06821095 -0.00065473 -0.00000000 -0.00000000  0.00000000  0.00039447 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00058607 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000049 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00062809  0.00000000  0.00000000  0.00055753

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00062809 -0.00000000 -0.00000000  0.00055759 -0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00124787  0.00000000  0.00000000 -0.00000000 -0.00000052 -0.00000000 -0.00000000

 27  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000104  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00124491 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.48788999  0.00000000  0.00000000 -0.00000000 -0.00020257  0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000014  0.00000008
                                0.00000000  0.00000000  0.00000000  0.00000000  0.02549956 -0.00000000  0.00000369  0.76403702

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000026 -0.00000014
                               -0.00000000  0.00000000 -0.00000000 -0.02549443  0.00000000  0.00000000  0.76401070 -0.00000369

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00040936 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.48772812  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00002550  0.00027167  0.00000000  0.00000000  0.00000000  0.65462389 -0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000015  0.00000000 -0.00000002  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000002  0.61657965 -0.00000000  0.00000052  0.10770627

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000 -0.00000004  0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.61657999 -0.00000002 -0.00000000 -0.10772955  0.00000052

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.06821527 -0.00000036 -0.00000000 -0.00000000 -0.00000000 -0.00077546 -0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00053103  0.00000000  0.00000000  0.00000543

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00053103 -0.00000000 -0.00000000  0.00000545 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00062700  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000019 -0.00062352  0.00000000 -0.00000000  0.00000000  0.00108056 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00062183  0.00000000  0.00000000  0.00084068 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00108061 -0.00000000  0.00000000  0.00048161

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00062264 -0.00000000 -0.00000001 -0.00111302

 45  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000394

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001  0.00000003  0.00000000  0.00000018 -0.00000010
                                0.00000000 -0.00000000  0.00000000  0.48810997 -0.00000001 -0.00000000  0.52961418 -0.00000256

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00050660  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.60358308 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001173 -0.59074044 -0.00000000 -0.00000000  0.00000000  0.02237470  0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000012  0.00000000 -0.00000002  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000001  0.48793993 -0.00000000  0.00000043  0.08989273

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000001  0.00000002  0.00000000 -0.00000011  0.00000006
                               -0.00000000 -0.00000000  0.00000000  0.37787623 -0.00000001 -0.00000000 -0.34075513  0.00000164

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00010853  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.12931231 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002200 -0.17902355 -0.00000000 -0.00000000 -0.00000000 -0.53398344 -0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00056052 -0.00000000 -0.00000000 -0.00000147  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00058604 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.06820891  0.00065494  0.00000000  0.00000000  0.00000000  0.00039388 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.02027622 -0.00001492  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000193 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000101 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000070  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000198  0.00000279  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000340 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000460  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000459 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.11817576 -0.00008338  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00091724  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000073  0.00000228  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00070518  0.00091518 -0.00000000 -0.00000000  0.00000265
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000011  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00078663 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00087989  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00028816 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000115 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000001  0.22967916  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.37208467 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00049908  0.70266499 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.02840745  0.33427255  0.00000000  0.00000000  0.70652898
                               -0.00000000  0.00000000  0.00000000 -0.00000042  0.00003947 -0.00000000 -0.00000000 -0.00124994

 17  1    10    1  |1 1>+      -0.00000000  0.57019227  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000 -0.00000002  0.61960696  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.44129853 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00078862 -0.06649832 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.70769721  0.46883798 -0.00000000  0.00000000  0.02916327
                               -0.00000000 -0.00000000  0.00000000  0.00001058  0.00005535 -0.00000000 -0.00000000 -0.00005159

 21  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00003392 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00001790  0.00000000  0.00000000  0.00000000  0.00000000  0.57319866 -0.00049901  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00002024 -0.00004587 -0.00000000  0.00000000  0.00023840
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000042

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00101266 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00101262 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00091609  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00122134  0.00000312 -0.00000000 -0.00000000 -0.00000350

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000234  0.00091557 -0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000791 -0.00000002  0.00000000  0.00000000  0.00001127

 30  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57759387  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000011 -0.00004719 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.40650847  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.40655855  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00006819  0.00000000  0.00000000  0.00000022
                               -0.00000000  0.00000000  0.00000000  0.00147158  0.57759327 -0.00000000 -0.00000000  0.00012250

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00124244  0.06092415 -0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.27013024 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.27012011  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.57319214 -0.00052260  0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00002109  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00002100 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000011  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00070983  0.00091158  0.00000000  0.00000000 -0.00000265

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00091724  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000073  0.00000228  0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00078669  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00087992 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00028808 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000115 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.22964640 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000045 -0.00003945 -0.00000000 -0.00000000 -0.00124984
                               -0.00000000  0.00000000 -0.00000000  0.03011620  0.33411957 -0.00000000 -0.00000000 -0.70647081

 48  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.37208113  0.00000000  0.00000000 -0.00000000  0.00000000  0.00049892  0.70264934 -0.00000000

 49  1    10    1  |1 1>-       0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000002  0.57018656  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.61958541  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00001055  0.00005578 -0.00000000  0.00000000  0.00005194
                                0.00000000 -0.00000000 -0.00000000  0.70529854 -0.47244091 -0.00000000 -0.00000000  0.02936055

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.44130153 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00078828  0.06641728 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00003404 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000042
                               -0.00000000 -0.00000000  0.00000000 -0.00002045 -0.00004573  0.00000000 -0.00000000 -0.00023846

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001787  0.00000000  0.00000000  0.00000000  0.00000000  0.57316154 -0.00049901  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00002602 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00001698 -0.00000000 -0.00000000  0.00000000 -0.00000137  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000610  0.00000000  0.00000000 -0.00000000 -0.00000385 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000697 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000219  0.00000000  0.00000000 -0.00000000  0.00000033 -0.00000000 -0.00000043
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000218 -0.00000000 -0.00000000 -0.00000000  0.00000033  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00014978 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000244  0.00000000 -0.00000000 -0.00000000 -0.00000206  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000398  0.00000000  0.00000000  0.00000000 -0.00000500  0.00000000  0.00063789
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000034  0.00000000  0.00000000  0.00000000 -0.00000505 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000500 -0.00000000  0.00000000 -0.00000000 -0.00000444 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000634 -0.00000000  0.00000000 -0.00000000 -0.00001854 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000013  0.64108663  0.00000000  0.00000000  0.00000003 -0.13234334 -0.00000000 -0.00019903
                                0.00000003  0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000006  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.11201984  0.00000000 -0.00000000 -0.00000000 -0.07598771  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.15472092  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00084262  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.56849230 -0.00000012 -0.00000000  0.00000000  0.32484530  0.00000007 -0.00000000 -0.00000000
                                0.00000034  0.00000002  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000002 -0.09388047 -0.00000000 -0.00000000 -0.00000014  0.59024299 -0.00000000  0.00034814
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000028 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.00000000  0.52251700  0.00000000 -0.00000000  0.00000000 -0.45891451 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.51163629 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00278642 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00012328 -0.00000000 -0.00000000 -0.00000000  0.00038810 -0.00000000 -0.70695064
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00002789  0.00000000 -0.00000000 -0.00000000 -0.00091597 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00002964  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000172  0.00000000  0.00000000 -0.00000000  0.00000257 -0.00000000 -0.00063786

 25  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000172 -0.00000000  0.00000000  0.00000000 -0.00000257 -0.00000000  0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000285  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000464 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.65447320  0.00000000 -0.00000000  0.00000000 -0.00034488 -0.00000000

 31  1     8    1  |1 0>       -0.00000002 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000005  0.00000000  0.00000000
                                0.00000010  0.48847860  0.00000000 -0.00000000 -0.00000002  0.10832740 -0.00000000 -0.00003635

 32  1     9    1  |1 0>        0.00000029  0.00000002  0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000
                               -0.48845205  0.00000010  0.00000000 -0.00000000 -0.10844590 -0.00000002  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00356492 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.65458304  0.00000000  0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00040148 -0.00000000  0.00000000  0.00000000  0.75347945 -0.00000000

 35  1    12    1  |1 0>        0.00000001  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000034  0.00000000 -0.00000000
                               -0.00000003 -0.13529743 -0.00000000 -0.00000000 -0.00000017  0.71898052 -0.00000000  0.00041218

 36  1    13    1  |1 0>        0.00000008  0.00000001  0.00000000 -0.00000000 -0.00000004  0.00000004  0.00000000 -0.00000000
                               -0.13547663  0.00000003  0.00000000 -0.00000000  0.71894680  0.00000017 -0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000 -0.00089889 -0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00013259  0.00000000  0.00000000  0.00000000 -0.00039553  0.00000000  0.70696129

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00013234  0.00000000 -0.00000000 -0.00000000  0.00039544  0.00000000 -0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000244  0.00000000 -0.00000000  0.00000000 -0.00000206  0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000398  0.00000000  0.00000000  0.00000000 -0.00000500 -0.00000000  0.00000000 -0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000033 -0.00000000 -0.00000000  0.00000000 -0.00000504  0.00000000  0.00035596

 44  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000500 -0.00000000  0.00000000 -0.00000000  0.00000445 -0.00000000 -0.00063672

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000635  0.00000000  0.00000000  0.00000000 -0.00001854  0.00000000  0.02061187

 46  1     7    1  |1 1>-      -0.00000039 -0.00000003 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000
                                0.64112032 -0.00000013 -0.00000000  0.00000000 -0.13217961 -0.00000003  0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00084409 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.15498953  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.11204527  0.00000000 -0.00000000  0.00000000 -0.07610192  0.00000000

 49  1    10    1  |1 1>-       0.00000002  0.00000001 -0.00000000 -0.00000000 -0.00000002  0.00000015 -0.00000000 -0.00000000
                               -0.00000012 -0.56857508 -0.00000000  0.00000000  0.00000007 -0.32470037  0.00000000 -0.00009284

 50  1    11    1  |1 1>-      -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000003 -0.00000000  0.00000000
                                0.09403125 -0.00000002 -0.00000000  0.00000000 -0.59021924 -0.00000014  0.00000000 -0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00278635 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.51162425  0.00000000  0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.52300867  0.00000000  0.00000000  0.00000000  0.45836441 -0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00012303 -0.00000000  0.00000000  0.00000000 -0.00038813 -0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00002956 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00002713  0.00000000 -0.00000000 -0.00000000 -0.00091596 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000027  0.00000000  0.00000000 -0.00000000  0.00000043
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.01917535 -0.00000000  0.00000000 -0.00000000 -0.01331144
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.01330868 -0.00000000 -0.00000000  0.00000000  0.01917472
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000096 -0.00000000 -0.00000000 -0.00000000  0.02335185 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.02335274  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000138  0.00000000  0.00000000 -0.00000000 -0.02335288  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000355  0.00000000 -0.00000000  0.00000000 -0.00000047
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00030881 -0.00000000 -0.00000000  0.00000000  0.00067479
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00063662  0.00000000  0.00000000  0.00000000 -0.00037029  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00037142  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00035599 -0.00000000 -0.00000000  0.00000000  0.00064017 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00063674  0.00000000  0.00000000 -0.00000000 -0.00037050  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.02061172 -0.00000000 -0.00000000  0.00000000  0.00000189  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00030286 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00022729 -0.00000000  0.00000000 -0.00000000 -0.00037460
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00023749 -0.00000000  0.00000000  0.00000000 -0.00037408  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00009324 -0.00000000 -0.00000000  0.00000000  0.00032127 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00020151  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00042216  0.00000000 -0.00000000 -0.00000000 -0.00014468
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00003030 -0.00000000 -0.00000000 -0.00000000  0.00009511 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.70691880  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00000000  0.74251157 -0.00000000  0.00000000 -0.00000000 -0.33906119
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.70692330  0.00000000 -0.00000000 -0.00000000  0.70694629 -0.00000000  0.00000000
                                0.00001208  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00037127  0.00000000  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00063787 -0.00000000 -0.00000000  0.00000000  0.00037124 -0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00043118  0.00000000 -0.00000000  0.00000000  0.00060551

 27  1     4    1  |1 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00074525 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00074095 -0.00000000  0.00000000

 29  1     6    1  |1 0>       -0.00000035 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02060837  0.00000000  0.00000000 -0.00000000  0.00000085  0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00023936 -0.00000000  0.00000000 -0.00000000 -0.00033607

 31  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00002645 -0.00000000  0.00000000  0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00003620 -0.00000000  0.00000000  0.00000000  0.00002644 -0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00038988 -0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00041435  0.00000000  0.00000000 -0.00000000 -0.00029503

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00036955  0.00000000  0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00041212  0.00000000  0.00000000 -0.00000000 -0.00036952  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.66491100  0.00000000  0.00000000 -0.00000000 -0.47348301

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.70690824  0.00000000  0.00000000  0.00000000

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.70692851 -0.00000000 -0.00000000  0.00000000  0.70694102 -0.00000000

 40  1     1    1  |1 1>-       0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00063661 -0.00000000  0.00000000  0.00000000 -0.00037038  0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00073865 -0.00000000  0.00000000  0.00000000  0.00007116

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00063790  0.00000000  0.00000000 -0.00000000 -0.00037148  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00064018 -0.00000000 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00037044 -0.00000000 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000274 -0.00000000 -0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00019877  0.00000000  0.00000000 -0.00000000 -0.00030289  0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00023751  0.00000000  0.00000000  0.00000000 -0.00037411  0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00027970  0.00000000 -0.00000000  0.00000000  0.00033731

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00032121  0.00000000  0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00034804  0.00000000  0.00000000 -0.00000000 -0.00020155  0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00003033  0.00000000  0.00000000  0.00000000 -0.00009512  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00027482 -0.00000000 -0.00000000  0.00000000  0.00035163

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.70698342 -0.00000000 -0.00000000  0.00000000  0.70688601 -0.00000000

 54  1    15    1  |1 1>-       0.00001209  0.00000000  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                                0.70698887 -0.00000000 -0.00000000 -0.00000000  0.70688072 -0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.07761238 -0.00000000 -0.00000000  0.00000000  0.81259157



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.97%    0.24%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.24%    1.97%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.22%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.22%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.79%   49.40%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.30%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   48.89%
 12  1     5    1  |1 1>+         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%   16.30%
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
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.29%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.29%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.18%    0.01%    0.00%    0.00%
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
 37  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.81%   48.38%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.30%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   10.00%    0.00%    0.00%   48.89%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   29.99%    0.00%    0.00%   16.30%    0.00%
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
 55  1    16    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          2.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
  9  1     2    1  |1 1>+        16.30%   20.10%    0.00%    0.00%    0.00%    0.00%   33.22%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.07%    0.00%   53.26%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   38.17%    0.00%    1.84%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   10.88%    0.00%   42.46%    0.00%    0.00%    0.00%
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
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.85%    0.00%    2.47%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%   50.88%    0.00%    2.45%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.18%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
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
 40  1     1    1  |1 1>-        16.30%   19.89%    0.00%    0.00%    0.00%    0.00%   33.43%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.07%    0.00%   53.25%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   38.15%    0.00%    1.86%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   10.93%    0.00%   42.41%    0.00%    0.00%
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
  2  1     2    1  |0 0>         13.32%   84.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         84.41%   13.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   97.72%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   97.72%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   97.72%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         1.07%    0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.11%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 22  1    15    1  |1 1>+         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%
 24  1     1    1  |1 0>          0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    1.48%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.48%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         1.15%    0.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    1.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%
 55  1    16    1  |1 1>-         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         98.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.00%   28.05%
 15  1     8    1  |1 1>+         0.00%   34.90%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%   36.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.81%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%   11.61%
 19  1    12    1  |1 1>+         0.00%    3.19%    0.00%    0.00%    0.00%   28.53%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    1.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%   58.38%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%   58.37%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%   23.79%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   38.02%    0.00%    0.00%    1.16%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%   38.02%    0.00%    0.00%    1.16%    0.00%
 37  1    14    1  |1 0>          0.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%   23.83%    0.00%    0.00%   28.05%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%   36.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%   34.90%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.81%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%   14.28%    0.00%    0.00%   11.61%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    1.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    3.20%    0.00%    0.00%    0.00%   28.51%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.40%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    5.28%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+        13.84%    0.00%    0.00%    0.00%    0.00%    0.00%   49.37%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.08%   11.17%    0.00%    0.00%   49.92%
 17  1    10    1  |1 1>+         0.00%   32.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%   38.39%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+        19.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.44%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   50.08%   21.98%    0.00%    0.00%    0.09%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.86%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>         33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%   16.52%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%   16.53%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.36%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.37%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    7.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    7.30%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.85%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    5.27%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.09%   11.16%    0.00%    0.00%   49.91%
 48  1     9    1  |1 1>-        13.84%    0.00%    0.00%    0.00%    0.00%    0.00%   49.37%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%   32.51%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%   38.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   49.74%   22.32%    0.00%    0.00%    0.09%
 52  1    13    1  |1 1>-        19.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.44%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.85%    0.00%    0.00%

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
 14  1     7    1  |1 1>+         0.00%   41.10%    0.00%    0.00%    0.00%    1.75%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    1.25%    0.00%    0.00%    0.00%    0.58%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    2.39%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+        32.32%    0.00%    0.00%    0.00%   10.55%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.88%    0.00%    0.00%    0.00%   34.84%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%   27.30%    0.00%    0.00%    0.00%   21.06%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   26.18%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%   42.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%   23.86%    0.00%    0.00%    0.00%    1.17%    0.00%    0.00%
 32  1     9    1  |1 0>         23.86%    0.00%    0.00%    0.00%    1.18%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.77%    0.00%
 35  1    12    1  |1 0>          0.00%    1.83%    0.00%    0.00%    0.00%   51.69%    0.00%    0.00%
 36  1    13    1  |1 0>          1.84%    0.00%    0.00%    0.00%   51.69%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 46  1     7    1  |1 1>-        41.10%    0.00%    0.00%    0.00%    1.75%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    2.40%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    1.26%    0.00%    0.00%    0.00%    0.58%    0.00%
 49  1    10    1  |1 1>-         0.00%   32.33%    0.00%    0.00%    0.00%   10.54%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.88%    0.00%    0.00%    0.00%   34.84%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   26.18%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%   27.35%    0.00%    0.00%    0.00%   21.01%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.02%
  3  1     3    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.04%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%   55.13%    0.00%    0.00%    0.00%   11.50%
 23  1    16    1  |1 1>+        49.97%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   44.21%    0.00%    0.00%    0.00%   22.42%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%   49.97%    0.00%    0.00%    0.00%   49.98%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%   49.98%    0.00%    0.00%    0.00%   49.97%    0.00%
 54  1    15    1  |1 1>-        49.98%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.60%    0.00%    0.00%    0.00%   66.03%



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
 CPU TIMES  *      2402.69   1350.89    848.47    193.08      4.20      1.60      4.26
 REAL TIME  *      2553.81 SEC
 DISK USED  *       733.26 MB (local),        4.76 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -23.810963716164

              CI              CI           MULTI         RHF-SCF
    -23.79320884    -23.81122781    -23.55374278    -23.68007621
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
