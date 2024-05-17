
 Working directory              : /wrk/irikura/molpro.tlaPGXJFjk/
 Global scratch directory       : /wrk/irikura/molpro.tlaPGXJFjk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tlaPGXJFjk/

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
 
 basis=aug-cc-pwCVQZ-PP
 
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 08-May-24          TIME: 11:32:21  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ra   ECP ECP78MDF                 selected for group  1
 Library entry RA     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry RA     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry RA     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry RA     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry RA     G aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         238
 NUMBER OF SYMMETRY AOS:          189
 NUMBER OF CONTRACTIONS:          146   (   77Ag  +   69Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.598E-05 0.369E-04 0.369E-04 0.369E-04 0.369E-04 0.369E-04 0.771E-04 0.760E-03
         2 0.111E-04 0.111E-04 0.111E-04 0.714E-03 0.714E-03 0.714E-03 0.726E-02 0.726E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     69.730 MB (compressed) written to integral file ( 15.4%)

     Node minimum: 9.175 MB, node maximum: 14.418 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4859136.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4859136      RECORD LENGTH: 524288

 Memory used in sort:       5.42 MW

 SORT1 READ    56868420. AND WROTE      905487. INTEGRALS IN      3 RECORDS. CPU TIME:     0.20 SEC, REAL TIME:     0.22 SEC
 SORT2 READ     5623101. AND WROTE    29184561. INTEGRALS IN    252 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.09 SEC

 Node minimum:     4857332.  Node maximum:     4870857. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.17       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.92      1.75
 REAL TIME  *         4.75 SEC
 DISK USED  *        29.53 MB (local),      293.59 MB (total)
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
 Number of virtual orbitals:                    138   (   75   63)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -23.68007882     -23.68007882    0.00479852    0.00479852    0.00000000    0    0.66E-03      0.11
    2    1    0     -23.68007976      -0.00000094    0.00022018    0.00022018    0.00000000    0    0.11E-03      0.23
    3    1    0     -23.68007977      -0.00000001    0.00002737    0.00002737    0.00000000    1    0.14E-04      0.34

 CONVERGENCE REACHED!  Final gradient:     0.00000213 ( 0.21E-05)
                       Final energy:     -23.68007977
 

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -23.680079772748
  RHF One-electron energy             -39.023995822219
  RHF Two-electron energy              15.343916049471
  RHF Kinetic energy                    6.017172974448
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.935416161926

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58866     1  1  s    0.99882
    2.1     2.00000    -0.16545     1  2  s    1.00368
    1.2     2.00000    -0.80466     1  1  pz   1.00008
    2.2     2.00000    -0.80466     1  1  py   0.99614
    3.2     2.00000    -0.80466     1  1  px   0.99615


 HOMO      2.1    -0.165447 =      -4.5020eV
 LUMO      4.2     0.008303 =       0.2259eV
 LUMO-HOMO         0.173750 =       4.7280eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.17       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.64       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.36      0.43      1.75
 REAL TIME  *         5.24 SEC
 DISK USED  *        31.30 MB (local),      304.21 MB (total)
 SF USED    *         5.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     132 (   69   63)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.289D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.203D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 2 6   4 3 5 1 2 6 4 5 3 7   812131011 91514 1 2   5 3 4 61415 7 81213
                                       1011 9 1 2 4 6 5 314  15 812 7131011 9 2 4   3 5 6 1 2 4 3 6 5 1   2 4 3 6 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.574D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.854D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.831D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 2   1 310 8 9 7 5 4 6 3   2 1 5 4 6 7 910 8 5   4 9 710 8 6 3 2 1 6
                                        810 5 4 7 9 810 6 9   7 5 4 3 2 1 610 8 7   9 5 4 3 2 1 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  946  ( 16 closed/active, 258 closed/virtual, 0 active/active, 672 active/virtual )
 Total number of variables:    1736
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30    5    -23.48868898     -23.60044110   -0.11175212    0.06356833 0.00010242 0.00000000  0.24E+01      0.75
   2    8   14    0    -23.58704240     -23.59255916   -0.00551676    0.04247403 0.00001392 0.00000000  0.46E+00      1.33
   3    8   14    0    -23.59258692     -23.59258852   -0.00000160    0.00057993 0.00000009 0.00000000  0.69E-02      1.90
   4    4    8    0    -23.59258852     -23.59258852   -0.00000000    0.00000063 0.00000000 0.00000000  0.86E-05      2.30

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.14E-08)
                       Final energy:    -23.59258852
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -23.698524708655
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.99886300
 One electron energy                           -38.96622728
 Two electron energy                            15.26770257
 Virial ratio                                    4.95050274
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -23.617162677690
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09430793
 One electron energy                           -38.96334020
 Two electron energy                            15.34617752
 Virial ratio                                    4.87528214
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -23.617162677679
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09430792
 One electron energy                           -38.96334018
 Two electron energy                            15.34617750
 Virial ratio                                    4.87528214
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -23.617162677599
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09430792
 One electron energy                           -38.96334018
 Two electron energy                            15.34617750
 Virial ratio                                    4.87528214
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -23.617162677550
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09430793
 One electron energy                           -38.96334020
 Two electron energy                            15.34617753
 Virial ratio                                    4.87528214
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -23.617162677541
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09430793
 One electron energy                           -38.96334019
 Two electron energy                            15.34617752
 Virial ratio                                    4.87528214
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -23.576082623352
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.94029024
 One electron energy                           -38.07387893
 Two electron energy                            14.49779630
 Virial ratio                                    4.96884356
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -23.626582494335
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11315821
 One electron energy                           -39.08703800
 Two electron energy                            15.46045550
 Virial ratio                                    4.86487339
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -23.626582494313
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11315821
 One electron energy                           -39.08703799
 Two electron energy                            15.46045550
 Virial ratio                                    4.86487339
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -23.626582494214
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11315821
 One electron energy                           -39.08703798
 Two electron energy                            15.46045548
 Virial ratio                                    4.86487339
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -23.626582494148
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11315820
 One electron energy                           -39.08703797
 Two electron energy                            15.46045547
 Virial ratio                                    4.86487339
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -23.626582494122
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11315820
 One electron energy                           -39.08703797
 Two electron energy                            15.46045547
 Virial ratio                                    4.86487339
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -23.583416548000
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.88431188
 One electron energy                           -37.89190069
 Two electron energy                            14.30848415
 Virial ratio                                    5.00784612
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -23.558884974795
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10491522
 One electron energy                           -38.71543426
 Two electron energy                            15.15654929
 Virial ratio                                    4.85900281
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -23.558884974772
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10491522
 One electron energy                           -38.71543426
 Two electron energy                            15.15654929
 Virial ratio                                    4.85900281
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -23.558884974760
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10491522
 One electron energy                           -38.71543426
 Two electron energy                            15.15654928
 Virial ratio                                    4.85900281
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -23.553733046116
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614658
 One electron energy                           -39.15717465
 Two electron energy                            15.60344161
 Virial ratio                                    4.78303542
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -23.553733046090
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614657
 One electron energy                           -39.15717464
 Two electron energy                            15.60344159
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -23.553733046067
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614657
 One electron energy                           -39.15717463
 Two electron energy                            15.60344158
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -23.553733046065
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614657
 One electron energy                           -39.15717462
 Two electron energy                            15.60344158
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -23.553733046053
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614657
 One electron energy                           -39.15717462
 Two electron energy                            15.60344157
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -23.553733046032
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614656
 One electron energy                           -39.15717461
 Two electron energy                            15.60344156
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -23.553733046018
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22614656
 One electron energy                           -39.15717460
 Two electron energy                            15.60344156
 Virial ratio                                    4.78303543
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.784154366324
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999988
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000001
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.215846304728
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.543008517657
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.456989913578
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000086
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999914
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000000087
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999937
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.249291914177
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     4.000000000007
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.256419140035
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     4.433889833789
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     3.743582646317
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     5.566089617682
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     6.750695635137
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.325238399107
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999975
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000001
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.674762412676
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.541953763286
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     2.458048465778
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.960000649455
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     4.000000000014
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.974497324650
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     7.412345959925
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     6.025495775030
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     2.587670597581
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.039997972766
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.890607234569
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000036
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999998
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.109391282596
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.915037719057
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.084961620644
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999999914
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000086
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999913
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000000063
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     4.790707436369
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.999999999978
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     7.769083535315
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.153764206286
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     2.230921578653
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     3.846239784737
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     5.209306392098
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 2 5 6 4 1 6 2   3 5 4 1 5 2 6 4 311   712 81514 91310 1 6   2 5 4 311 712 81415
                                        91310 1 6 2 4 5 311   712 81415 91310 2 6   4 5 3 1 2 6 5 3 4 1   2 6 5 3 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 2 3 1 2   3 1 5 6 810 9 7 4 2   3 1 5 6 810 9 7 4 5   610 8 4 7 9 2 1 3 5
                                        610 8 4 7 9 5 610 8   4 7 9 2 1 3 510 8 6   4 7 9 2 3 1 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58159     1  1  s    0.99735
    2.1     0.56389    -0.05612     1  2  s    0.97451
    3.1     0.23352     0.04990     1  1  d2-  0.88231
    4.1     0.23352     0.04990     1  1  d0   0.88231
    5.1     0.23352     0.04990     1  1  d2+  0.88231
    6.1     0.23352     0.04990     1  1  d1-  0.88231
    7.1     0.23352     0.04990     1  1  d1+  0.88231
    8.1     0.08576     0.02609     1  2  s   -0.49871    1  5  s   -0.36019    1 10  s    1.52131
    1.2     2.00000    -0.80379     1  1  py   0.93575
    2.2     2.00000    -0.80379     1  1  pz   0.93575
    3.2     2.00000    -0.80379     1  1  px   0.93575
    4.2     0.06091     0.04321     1  2  pz   0.55657    1  3  pz   0.34865
    5.2     0.06091     0.04321     1  2  px   0.55657    1  3  px   0.34865
    6.2     0.06091     0.04321     1  2  py   0.55657    1  3  py   0.34865
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96554034      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.02278987
 b00000a 000     -0.00844062     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.67956091
 a00000b 000      0.00844062      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.67956091
 b0000a0 000      0.00000000      0.00000012      0.00000000     -0.00000000     -0.64654214     -0.00000000      0.00000000
 a0000b0 000     -0.00000000     -0.00000012     -0.00000000      0.00000000      0.64654214      0.00000000     -0.00000000
 a000b00 000      0.00000000      0.00000738      0.64654214      0.00000027      0.00000000      0.00000025      0.00000000
 b000a00 000     -0.00000000     -0.00000738     -0.64654214     -0.00000027     -0.00000000     -0.00000025     -0.00000000
 ba00000 000      0.00000000      0.00000024      0.00000027     -0.64654214      0.00000000     -0.00000029     -0.00000000
 ab00000 000     -0.00000000     -0.00000024     -0.00000027      0.64654214     -0.00000000      0.00000029      0.00000000
 a00b000 000     -0.00000000      0.44449563     -0.00000526     -0.00000004      0.00000008      0.46951078     -0.00000000
 b00a000 000      0.00000000     -0.44449563      0.00000526      0.00000004     -0.00000008     -0.46951078      0.00000000
 a0b0000 000      0.00000000      0.46951078     -0.00000519      0.00000037      0.00000009     -0.44449563      0.00000000
 b0a0000 000     -0.00000000     -0.46951078      0.00000519     -0.00000037     -0.00000009      0.44449563     -0.00000000
 0000000 020     -0.13615514     -0.06505333      0.00000085      0.00000010     -0.00000001     -0.27238448     -0.07334336
 0000000 002     -0.13615514      0.26841854     -0.00000310      0.00000006      0.00000005      0.07985440     -0.07334335
 0000000 a0b     -0.00000000     -0.00000277     -0.24252615     -0.00000010     -0.00000000     -0.00000010     -0.00000000
 0000000 b0a      0.00000000      0.00000277      0.24252615      0.00000010      0.00000000      0.00000010      0.00000000
 0000000 0ab     -0.00000000      0.00000009      0.00000010     -0.24252615      0.00000000     -0.00000011     -0.00000000
 0000000 0ba      0.00000000     -0.00000009     -0.00000010      0.24252615     -0.00000000      0.00000011      0.00000000
 0000000 ba0      0.00000000     -0.00000005     -0.00000000      0.00000000      0.24252614     -0.00000000     -0.00000000
 0000000 ab0     -0.00000000      0.00000005      0.00000000     -0.00000000     -0.24252614      0.00000000      0.00000000
 0000000 200     -0.13615514     -0.20336521      0.00000225     -0.00000016     -0.00000004      0.19253008     -0.07334336
 0000002 000     -0.01626428     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.13975140
 0ab0000 000     -0.00000000     -0.00000004     -0.00000005      0.11276585     -0.00000000      0.00000005     -0.00000000
 0ba0000 000      0.00000000      0.00000004      0.00000005     -0.11276585      0.00000000     -0.00000005      0.00000000
 0000200 000     -0.04839458      0.02619505     -0.00000034     -0.00000004      0.00000000      0.10968116      0.08967315
 0000020 000     -0.04839459     -0.10808419      0.00000125     -0.00000003     -0.00000002     -0.03215500      0.08967316
 000b0a0 000      0.00000000     -0.00000002     -0.00000000      0.00000000      0.09765809      0.00000000      0.00000000
 000a0b0 000     -0.00000000      0.00000002      0.00000000     -0.00000000     -0.09765809     -0.00000000     -0.00000000
 0b00a00 000      0.00000000     -0.00000002     -0.00000000      0.00000000      0.09765809      0.00000000     -0.00000000
 0a00b00 000     -0.00000000      0.00000002      0.00000000     -0.00000000     -0.09765809     -0.00000000      0.00000000
 0000ab0 000      0.00000000      0.00000004      0.00000004     -0.09765809      0.00000000     -0.00000004     -0.00000000
 0000ba0 000     -0.00000000     -0.00000004     -0.00000004      0.09765809     -0.00000000      0.00000004      0.00000000
 000ab00 000      0.00000000      0.00000111      0.09765809      0.00000004      0.00000000      0.00000004     -0.00000000
 000ba00 000     -0.00000000     -0.00000111     -0.09765809     -0.00000004     -0.00000000     -0.00000004      0.00000000
 0b000a0 000      0.00000000      0.00000111      0.09765809      0.00000004      0.00000000      0.00000004     -0.00000000
 0a000b0 000     -0.00000000     -0.00000111     -0.09765809     -0.00000004     -0.00000000     -0.00000004      0.00000000
 0002000 000     -0.04839459      0.08188914     -0.00000090      0.00000007      0.00000002     -0.07752616      0.08967315
 0200000 000     -0.04839459      0.08188914     -0.00000090      0.00000007      0.00000002     -0.07752616      0.08967315
 0020000 000     -0.04839459     -0.08188914      0.00000090     -0.00000007     -0.00000002      0.07752616      0.08967315
 00ab000 000      0.00000000      0.07752616     -0.00000092     -0.00000001      0.00000001      0.08188914     -0.00000001
 00ba000 000     -0.00000000     -0.07752616      0.00000092      0.00000001     -0.00000001     -0.08188914      0.00000001
 00b00a0 000      0.00000000     -0.00000001     -0.00000000      0.00000000      0.05638292      0.00000000     -0.00000000
 00a00b0 000     -0.00000000      0.00000001      0.00000000     -0.00000000     -0.05638292     -0.00000000      0.00000000
 00a0b00 000     -0.00000000     -0.00000064     -0.05638292     -0.00000002     -0.00000000     -0.00000002      0.00000000
 00b0a00 000      0.00000000      0.00000064      0.05638292      0.00000002      0.00000000      0.00000002     -0.00000000
 
 Energy:        -23.69852471    -23.61716268    -23.61716268    -23.61716268    -23.61716268    -23.61716268    -23.57608262
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 00aa000 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a0000a0 000      0.99999810     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000     -0.00000000     -0.00000024      0.00000285     -0.00000536      0.99999810     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000021     -0.00000355      0.99999810      0.00000536      0.00000000     -0.00000000
 a00a000 000      0.00000000      0.98932084      0.14574117      0.00000031     -0.00000018      0.00000000     -0.00000000
 a0a0000 000      0.00000000     -0.14574117      0.98932084      0.00000354     -0.00000285      0.00000000      0.00000000
 0aa0000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a00a00 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 000a0a0 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000aa0 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000301
 0a000a0 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.32232260
 000aa00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.32232260
 0000000 aa0     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 0aa     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000646
 0000000 a0a      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.69321043
 0a0a000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000601
 00a0a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.55827913
 00a00a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:        -23.62658249    -23.62658249    -23.62658249    -23.62658249    -23.62658249    -23.58341655    -23.55888497

 State:                8               9              10              11              12              13              14
 a00000a 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00aa000 000      0.00000000     -0.00000000     -0.00000000      1.00000000      0.00000005     -0.00000300     -0.00000008
 a0000a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0aa0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000008      0.00001691      0.19606390     -0.00000042
 0a00a00 000      0.00000000      0.32232262     -0.08944199      0.00000101      0.00000000      0.00000010     -0.00000000
 000a0a0 000      0.00000000      0.32232259      0.88404497     -0.00000015     -0.00000000     -0.00000002      0.00000000
 0000aa0 000      0.32232260      0.00000000     -0.00000000      0.00000273      0.00007583      0.87706736      0.00000100
 0a000a0 000      0.00000301     -0.00000000     -0.00000000     -0.00000007      0.86528387     -0.00007458     -0.22645932
 000aa00 000     -0.00000301      0.00000000      0.00000000      0.00000004      0.43558925     -0.00003845      0.78119268
 0000000 aa0     -0.00000000      0.69321044      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 0aa      0.69321043     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 a0a      0.00000646      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000001
 0a0a000 000      0.64464520      0.00000000      0.00000000     -0.00000136     -0.00003791     -0.43853368     -0.00000050
 00a0a00 000     -0.00000520      0.00000000      0.00000000     -0.00000006      0.24808430     -0.00002086     -0.58176814
 00a00a0 000      0.00000000     -0.55827911      0.45876423      0.00000049      0.00000000      0.00000005     -0.00000000
 
 Energy:        -23.55888497    -23.55888497    -23.55373305    -23.55373305    -23.55373305    -23.55373305    -23.55373305

 State:               15              16
 a00000a 000      0.00000000      0.00000000
 00aa000 000      0.00000052     -0.00000113
 a0000a0 000      0.00000000      0.00000000
 a000a00 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a0a0000 000      0.00000000     -0.00000000
 0aa0000 000      0.98059112     -0.00000202
 0a00a00 000      0.00000181      0.88994388
 000a0a0 000     -0.00000028     -0.13588414
 0000aa0 000     -0.17536488      0.00000025
 0a000a0 000     -0.00000011      0.00000000
 000aa00 000      0.00000051     -0.00000000
 0000000 aa0     -0.00000000     -0.00000001
 0000000 0aa      0.00000000     -0.00000000
 0000000 a0a     -0.00000000      0.00000000
 0a0a000 000      0.08768244     -0.00000013
 00a0a00 000     -0.00000036      0.00000000
 00a00a0 000      0.00000089      0.43535662
 
 Energy:        -23.55373305    -23.55373305
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.07       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.37      2.01      0.43      1.75
 REAL TIME  *         7.91 SEC
 DISK USED  *        43.72 MB (local),      378.74 MB (total)
 SF USED    *        41.63 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -23.69852471   -0.0
    -23.61716268    6.0
    -23.61716268    6.0
    -23.61716268    6.0
    -23.61716268    6.0
    -23.61716268    6.0
    -23.57608262   -0.0
    -23.62658249    6.0
    -23.62658249    6.0
    -23.62658249    6.0
    -23.62658249    6.0
    -23.62658249    6.0
    -23.58341655   -0.0
    -23.55888497    2.0
    -23.55888497    2.0
    -23.55888497    2.0
    -23.55373305   12.0
    -23.55373305   12.0
    -23.55373305   12.0
    -23.55373305   12.0
    -23.55373305   12.0
    -23.55373305   12.0
    -23.55373305   12.0
                                                  


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
 Number of external orbitals:     132 (  69  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.69852471
     2       -23.61716268
     3       -23.61716268
     4       -23.61716268
     5       -23.61716268
     6       -23.61716268
     7       -23.57608262

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.77D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        423216
 Number of doubly external configurations:        842739
 Total number of contracted configurations:      1273806
 Total number of uncontracted configurations:    5453442

 Diagonal Coupling coefficients finished.               Storage:   3217856 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    801799 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.69852471    -0.00000000    -0.22109572  0.38D-01  0.50D-01     1.11
    1     2     2     1.00000000     0.00000000   -23.61716268     0.00000000    -0.22852227  0.45D-01  0.55D-01     1.11
    1     3     3     1.00000000     0.00000000   -23.61716268    -0.00000000    -0.22887582  0.45D-01  0.55D-01     1.11
    1     4     4     1.00000000     0.00000000   -23.61716268     0.00000000    -0.22874099  0.45D-01  0.55D-01     1.11
    1     5     5     1.00000000     0.00000000   -23.61716268    -0.00000000    -0.22895162  0.45D-01  0.55D-01     1.11
    1     6     6     1.00000000     0.00000000   -23.61716268     0.00000000    -0.22855359  0.45D-01  0.55D-01     1.11
    1     7     7     1.00000000     0.00000000   -23.57608262     0.00000000    -0.21610090  0.45D-01  0.48D-01     1.11
    2     1     1     1.07353332    -0.21720289   -23.91572760    -0.21720289    -0.00637227  0.22D-02  0.98D-03    13.64
    2     2     2     1.08240020    -0.21796906   -23.83513174    -0.21796906    -0.00658220  0.26D-02  0.12D-02    13.64
    2     3     3     1.08248068    -0.21795490   -23.83511757    -0.21795490    -0.00660015  0.26D-02  0.12D-02    13.64
    2     4     4     1.08253575    -0.21792407   -23.83508675    -0.21792407    -0.00664377  0.26D-02  0.12D-02    13.64
    2     5     5     1.08257080    -0.21790011   -23.83506279    -0.21790011    -0.00666572  0.26D-02  0.12D-02    13.64
    2     6     6     1.08258516    -0.21789223   -23.83505491    -0.21789223    -0.00667647  0.26D-02  0.12D-02    13.64
    2     7     7     1.07932096    -0.21368643   -23.78976906    -0.21368643    -0.00609463  0.25D-02  0.10D-02    13.64
    3     1     1     1.07610668    -0.22374511   -23.92226982    -0.00654222    -0.00025533  0.71D-04  0.45D-04    26.03
    3     2     2     1.08347797    -0.22461420   -23.84177688    -0.00664514    -0.00029810  0.10D-03  0.63D-04    26.03
    3     3     3     1.08345474    -0.22461329   -23.84177596    -0.00665839    -0.00029832  0.10D-03  0.63D-04    26.03
    3     4     4     1.08349442    -0.22461250   -23.84177518    -0.00668843    -0.00030024  0.10D-03  0.64D-04    26.03
    3     5     5     1.08349648    -0.22461173   -23.84177440    -0.00671161    -0.00030089  0.10D-03  0.64D-04    26.03
    3     6     6     1.08349257    -0.22461166   -23.84177434    -0.00671943    -0.00030081  0.10D-03  0.64D-04    26.03
    3     7     7     1.07967665    -0.21987623   -23.79595885    -0.00618980    -0.00025354  0.77D-04  0.52D-04    26.03
    4     1     1     1.07716269    -0.22402019   -23.92254490    -0.00027508    -0.00001583  0.96D-05  0.21D-05    38.29
    4     2     2     1.08514344    -0.22494467   -23.84210735    -0.00033047    -0.00002587  0.23D-04  0.30D-05    38.29
    4     3     3     1.08514591    -0.22494461   -23.84210728    -0.00033132    -0.00002591  0.23D-04  0.30D-05    38.29
    4     4     4     1.08513492    -0.22494441   -23.84210709    -0.00033191    -0.00002599  0.23D-04  0.30D-05    38.29
    4     5     5     1.08514537    -0.22494437   -23.84210705    -0.00033264    -0.00002608  0.23D-04  0.30D-05    38.29
    4     6     6     1.08514490    -0.22494434   -23.84210702    -0.00033268    -0.00002609  0.23D-04  0.30D-05    38.29
    4     7     7     1.08084498    -0.22014356   -23.79622618    -0.00026733    -0.00001527  0.10D-04  0.22D-05    38.29
    5     1     1     1.07754202    -0.22403894   -23.92256365    -0.00001874    -0.00000131  0.70D-06  0.22D-06    50.39
    5     2     2     1.08587034    -0.22497935   -23.84214203    -0.00003468    -0.00000359  0.20D-05  0.54D-06    50.39
    5     3     3     1.08587008    -0.22497933   -23.84214200    -0.00003472    -0.00000361  0.20D-05  0.55D-06    50.39
    5     4     4     1.08586953    -0.22497929   -23.84214197    -0.00003488    -0.00000363  0.20D-05  0.55D-06    50.39
    5     5     5     1.08586913    -0.22497926   -23.84214194    -0.00003489    -0.00000365  0.21D-05  0.55D-06    50.39
    5     6     6     1.08586895    -0.22497926   -23.84214193    -0.00003491    -0.00000365  0.21D-05  0.55D-06    50.39
    5     7     7     1.08108037    -0.22016169   -23.79624432    -0.00001814    -0.00000146  0.11D-05  0.23D-06    50.39
    6     1     1     1.07760320    -0.22404045   -23.92256516    -0.00000151    -0.00000011  0.35D-07  0.21D-07    62.46
    6     2     2     1.08599428    -0.22498389   -23.84214657    -0.00000455    -0.00000039  0.20D-06  0.63D-07    62.46
    6     3     3     1.08599398    -0.22498389   -23.84214657    -0.00000457    -0.00000039  0.20D-06  0.63D-07    62.46
    6     4     4     1.08599467    -0.22498388   -23.84214656    -0.00000459    -0.00000040  0.21D-06  0.64D-07    62.46
    6     5     5     1.08599411    -0.22498388   -23.84214656    -0.00000462    -0.00000040  0.21D-06  0.65D-07    62.46
    6     6     6     1.08599414    -0.22498388   -23.84214656    -0.00000462    -0.00000040  0.21D-06  0.65D-07    62.46
    6     7     7     1.08112322    -0.22016354   -23.79624617    -0.00000185    -0.00000017  0.73D-07  0.37D-07    62.46
    7     1     1     1.07761894    -0.22404056   -23.92256527    -0.00000011    -0.00000001  0.42D-08  0.11D-08    74.56
    7     2     2     1.08603542    -0.22498433   -23.84214701    -0.00000043    -0.00000004  0.40D-07  0.63D-08    74.56
    7     3     3     1.08603531    -0.22498433   -23.84214700    -0.00000043    -0.00000004  0.40D-07  0.63D-08    74.56
    7     4     4     1.08603507    -0.22498432   -23.84214700    -0.00000044    -0.00000004  0.41D-07  0.65D-08    74.56
    7     5     5     1.08603522    -0.22498432   -23.84214700    -0.00000044    -0.00000004  0.40D-07  0.64D-08    74.56
    7     6     6     1.08603510    -0.22498432   -23.84214700    -0.00000044    -0.00000005  0.41D-07  0.65D-08    74.56
    7     7     7     1.08113723    -0.22016373   -23.79624636    -0.00000019    -0.00000002  0.17D-07  0.41D-08    74.56
    8     1     1     1.07762288    -0.22404057   -23.92256528    -0.00000001    -0.00000000  0.10D-08  0.44D-09    85.17
    8     2     2     1.08604775    -0.22498438   -23.84214706    -0.00000005    -0.00000001  0.44D-08  0.11D-08    85.17
    8     3     3     1.08604771    -0.22498438   -23.84214706    -0.00000005    -0.00000001  0.44D-08  0.11D-08    85.17
    8     4     4     1.08604757    -0.22498438   -23.84214705    -0.00000005    -0.00000001  0.46D-08  0.11D-08    85.17
    8     5     5     1.08604758    -0.22498438   -23.84214705    -0.00000005    -0.00000001  0.46D-08  0.11D-08    85.17
    8     6     6     1.08604765    -0.22498438   -23.84214705    -0.00000005    -0.00000001  0.46D-08  0.11D-08    85.17
    8     7     7     1.08113938    -0.22016376   -23.79624638    -0.00000002    -0.00000000  0.85D-09  0.35D-09    85.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.6%
 S   3.6%  23.9%
 P   0.8%  15.7%  22.1%

 Initialization:   0.8%
 Other:           28.5%

 Total CPU:       85.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9317699   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0453351
 2/00000\222000          -0.0509050  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9152929
 2/000\00222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.8924966   0.0000000   0.0000000
 2/\00000222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8924966  -0.0000000
 2/0000\0222000           0.0000000  -0.0000000  -0.0000000   0.8924966  -0.0000000   0.0000000  -0.0000000
 2/0\0000222000           0.0000000   0.0211507   0.8922461   0.0000000   0.0000000   0.0000000   0.0000000
 2/00\000222000          -0.0000000   0.8922460  -0.0211507   0.0000000  -0.0000000   0.0000000   0.0000000
 20000000222/0\           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2827617  -0.0000000  -0.0000000
 20000000222/\0          -0.0000000   0.0000000  -0.0000000  -0.2827616  -0.0000000   0.0000000  -0.0000000
 200000002220/\          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2827616  -0.0000000
 20000000222200          -0.1101445  -0.0054713  -0.2308088   0.0000000  -0.0000000   0.0000000  -0.0836440
 20000000222002          -0.1101444   0.2026220   0.1106661  -0.0000000   0.0000000  -0.0000000  -0.0836441
 20000000222020          -0.1101445  -0.1971506   0.1201427  -0.0000000   0.0000000  -0.0000000  -0.0836441
 20000002222000          -0.0099609   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1559688
 20/\0000222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.1479455   0.0000000
 200/\000222000          -0.0000000   0.1479038  -0.0035061  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/00\00222000           0.0000000  -0.0000000   0.0000000  -0.1281247   0.0000000   0.0000000   0.0000000
 2000/0\0222000           0.0000000  -0.0000000   0.0000000  -0.1281247   0.0000000   0.0000000   0.0000000
 20/000\0222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1281247   0.0000000   0.0000000
 20000/\0222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1281246  -0.0000000
 2000/\00222000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1281246  -0.0000000  -0.0000000
 20200000222000          -0.0495178   0.0024792   0.1045837   0.0000000  -0.0000000  -0.0000000   0.0807193
 20002000222000          -0.0495181   0.0024791   0.1045837   0.0000000  -0.0000000  -0.0000000   0.0807192
 20020000222000          -0.0495181  -0.0024791  -0.1045835  -0.0000000   0.0000000  -0.0000000   0.0807192
 20000020222000          -0.0495178  -0.0918118  -0.0501449   0.0000000   0.0000000  -0.0000000   0.0807192
 20000200222000          -0.0495178   0.0893327  -0.0544389  -0.0000000  -0.0000000  -0.0000000   0.0807193
 200/00\0222000          -0.0000000  -0.0000000   0.0000000  -0.0739727   0.0000000   0.0000000   0.0000000
 200/0\00222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0739727  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956188   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.066732
 2           0.000000    0.672913    0.000000   -0.000000   -0.000000    0.677752   -0.000000
 3          -0.000000    0.677752    0.000000    0.000000   -0.000000   -0.672913    0.000000
 4          -0.000000   -0.000000   -0.000000    0.000000    0.955071    0.000000    0.000000
 5           0.000000    0.000000    0.955071   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.955071   -0.000000    0.000000    0.000000
 7           0.071869    0.000000    0.000000    0.000000   -0.000000    0.000000    0.954997

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958510    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.002605
 2           0.000000    0.955071    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.955071   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.955071    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.955071   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.955071    0.000000
 7           0.002605    0.000000   -0.000000    0.000000    0.000000    0.000000    0.957693


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95618797 (fixed)   0.95892710 (relaxed)   0.95851019 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01004268   -0.01448120   -0.16519387
 Singles      0.03150185   -0.06136391   -0.06286275
 Pairs        0.04690057    0.01487784    0.00401606
 Total        1.08844510   -0.06096727   -0.22404057
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.69788412
 Nuclear energy                         0.00000000
 Kinetic energy                         6.20583648
 One electron energy                  -38.96353202
 Two electron energy                   15.04096675
 Virial quotient                       -3.85484944
 Correlation energy                    -0.22468116
 !MRCI STATE 1.1 Energy               -23.922565275900

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.94243722 (Davidson, fixed reference)
 Cluster corrected energies           -23.94222462 (Davidson, relaxed reference)
 Cluster corrected energies           -23.94243722 (Davidson, rotated reference)

 Cluster corrected energies           -23.93933038 (Pople, fixed reference)
 Cluster corrected energies           -23.93914160 (Pople, relaxed reference)
 Cluster corrected energies           -23.93933038 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.67775161 (fixed)   0.95661563 (relaxed)   0.95507057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00943917   -0.01032605   -0.15196691
 Singles      0.03569893   -0.06050685   -0.06251880
 Pairs        0.05116104    0.00000000   -0.01049867
 Total        1.09629915   -0.07083290   -0.22498438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716268
 Nuclear energy                         0.00000000
 Kinetic energy                         6.28879630
 One electron energy                  -38.94305443
 Two electron energy                   15.10090737
 Virial quotient                       -3.79120994
 Correlation energy                    -0.22498438
 !MRCI STATE 2.1 Energy               -23.842147057084

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.86381286 (Davidson, fixed reference)
 Cluster corrected energies           -23.86301676 (Davidson, relaxed reference)
 Cluster corrected energies           -23.86381286 (Davidson, rotated reference)

 Cluster corrected energies           -23.86051194 (Pople, fixed reference)
 Cluster corrected energies           -23.85979960 (Pople, relaxed reference)
 Cluster corrected energies           -23.86051194 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.67775163 (fixed)   0.95661565 (relaxed)   0.95507059 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00943917   -0.01032605   -0.15196692
 Singles      0.03569890   -0.06050685   -0.06251880
 Pairs        0.05116103   -0.00000000   -0.01049866
 Total        1.09629910   -0.07083290   -0.22498438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716268
 Nuclear energy                         0.00000000
 Kinetic energy                         6.28879625
 One electron energy                  -38.94305401
 Two electron energy                   15.10090695
 Virial quotient                       -3.79120997
 Correlation energy                    -0.22498438
 !MRCI STATE 3.1 Energy               -23.842147055736

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.86381285 (Davidson, fixed reference)
 Cluster corrected energies           -23.86301675 (Davidson, relaxed reference)
 Cluster corrected energies           -23.86381285 (Davidson, rotated reference)

 Cluster corrected energies           -23.86051193 (Pople, fixed reference)
 Cluster corrected energies           -23.85979959 (Pople, relaxed reference)
 Cluster corrected energies           -23.86051193 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95507067 (fixed)   0.95661571 (relaxed)   0.95507067 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00943913   -0.01032605   -0.15196696
 Singles      0.03569874   -0.06050682   -0.06251878
 Pairs        0.05116104   -0.00000000   -0.01049863
 Total        1.09629891   -0.07083287   -0.22498438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716268
 Nuclear energy                         0.00000000
 Kinetic energy                         6.28879608
 One electron energy                  -38.94305214
 Two electron energy                   15.10090509
 Virial quotient                       -3.79121007
 Correlation energy                    -0.22498438
 !MRCI STATE 4.1 Energy               -23.842147053938

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.86381280 (Davidson, fixed reference)
 Cluster corrected energies           -23.86301671 (Davidson, relaxed reference)
 Cluster corrected energies           -23.86381280 (Davidson, rotated reference)

 Cluster corrected energies           -23.86051189 (Pople, fixed reference)
 Cluster corrected energies           -23.85979956 (Pople, relaxed reference)
 Cluster corrected energies           -23.86051189 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95507066 (fixed)   0.95661571 (relaxed)   0.95507066 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00943913   -0.01032605   -0.15196697
 Singles      0.03569874   -0.06050681   -0.06251878
 Pairs        0.05116106    0.00000000   -0.01049863
 Total        1.09629893   -0.07083286   -0.22498438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716268
 Nuclear energy                         0.00000000
 Kinetic energy                         6.28879605
 One electron energy                  -38.94305205
 Two electron energy                   15.10090499
 Virial quotient                       -3.79121009
 Correlation energy                    -0.22498438
 !MRCI STATE 5.1 Energy               -23.842147053796

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.86381281 (Davidson, fixed reference)
 Cluster corrected energies           -23.86301671 (Davidson, relaxed reference)
 Cluster corrected energies           -23.86381281 (Davidson, rotated reference)

 Cluster corrected energies           -23.86051189 (Pople, fixed reference)
 Cluster corrected energies           -23.85979956 (Pople, relaxed reference)
 Cluster corrected energies           -23.86051189 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95507063 (fixed)   0.95661568 (relaxed)   0.95507063 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00943914   -0.01032605   -0.15196697
 Singles      0.03569880   -0.06050680   -0.06251878
 Pairs        0.05116107   -0.00000000   -0.01049862
 Total        1.09629900   -0.07083285   -0.22498438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61716268
 Nuclear energy                         0.00000000
 Kinetic energy                         6.28879613
 One electron energy                  -38.94305263
 Two electron energy                   15.10090558
 Virial quotient                       -3.79121004
 Correlation energy                    -0.22498438
 !MRCI STATE 6.1 Energy               -23.842147053485

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.86381282 (Davidson, fixed reference)
 Cluster corrected energies           -23.86301673 (Davidson, relaxed reference)
 Cluster corrected energies           -23.86381282 (Davidson, rotated reference)

 Cluster corrected energies           -23.86051191 (Pople, fixed reference)
 Cluster corrected energies           -23.85979957 (Pople, relaxed reference)
 Cluster corrected energies           -23.86051191 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95499658 (fixed)   0.95797157 (relaxed)   0.95769350 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00847523   -0.01294389   -0.01423540
 Singles      0.03520320   -0.06066491   -0.06274939
 Pairs        0.04662385   -0.14584390   -0.14317897
 Total        1.09030228   -0.21945270   -0.22016376
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.57672321
 Nuclear energy                         0.00000000
 Kinetic energy                         6.14922648
 One electron energy                  -37.99394138
 Two electron energy                   14.19769500
 Virial quotient                       -3.86979508
 Correlation energy                    -0.21952317
 !MRCI STATE 7.1 Energy               -23.796246381972

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.81606982 (Davidson, fixed reference)
 Cluster corrected energies           -23.81593090 (Davidson, relaxed reference)
 Cluster corrected energies           -23.81606982 (Davidson, rotated reference)

 Cluster corrected energies           -23.81298922 (Pople, fixed reference)
 Cluster corrected energies           -23.81286557 (Pople, relaxed reference)
 Cluster corrected energies           -23.81298922 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       71.44       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        93.27     88.90      2.01      0.43      1.75
 REAL TIME  *       101.55 SEC
 DISK USED  *       114.09 MB (local),      800.96 MB (total)
 SF USED    *       734.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -23.94243722  AU                              
 SETTING HLSDIAG(2)     =       -23.86381286  AU                              
 SETTING HLSDIAG(3)     =       -23.86381285  AU                              
 SETTING HLSDIAG(4)     =       -23.86381280  AU                              
 SETTING HLSDIAG(5)     =       -23.86381281  AU                              
 SETTING HLSDIAG(6)     =       -23.86381282  AU                              
 SETTING HLSDIAG(7)     =       -23.81606982  AU                              


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
 Number of external orbitals:     132 (  69  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.62658249
     2       -23.62658249
     3       -23.62658249
     4       -23.62658249
     5       -23.62658249
     6       -23.58341655
     7       -23.55888497
     8       -23.55888497
     9       -23.55888497
    10       -23.55373305
    11       -23.55373305
    12       -23.55373305
    13       -23.55373305
    14       -23.55373305
    15       -23.55373305
    16       -23.55373305

 Number of blocks in overlap matrix:   321   Smallest eigenvalue:  0.96D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        631398
 Number of doubly external configurations:       1472571
 Total number of contracted configurations:      2115807
 Total number of uncontracted configurations:    8050887

 Diagonal Coupling coefficients finished.               Storage:   6506972 words, CPU-Time:      2.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    841724 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.62658249     0.00000000    -0.23400734  0.47D-01  0.57D-01     4.18
    1     2     2     1.00000000     0.00000000   -23.62658249     0.00000000    -0.23381920  0.47D-01  0.56D-01     4.18
    1     3     3     1.00000000     0.00000000   -23.62658249     0.00000000    -0.23382463  0.47D-01  0.56D-01     4.18
    1     4     4     1.00000000     0.00000000   -23.62658249    -0.00000000    -0.23400663  0.47D-01  0.57D-01     4.18
    1     5     5     1.00000000     0.00000000   -23.62658249    -0.00000000    -0.23400770  0.47D-01  0.57D-01     4.18
    1     6     6     1.00000000     0.00000000   -23.58341655     0.00000000    -0.20989558  0.41D-01  0.45D-01     4.18
    1     7     7     1.00000000     0.00000000   -23.55888497    -0.00000000    -0.22039483  0.35D-01  0.56D-01     4.18
    1     8     8     1.00000000     0.00000000   -23.55888497    -0.00000000    -0.22032322  0.35D-01  0.56D-01     4.18
    1     9     9     1.00000000     0.00000000   -23.55888497    -0.00000000    -0.22039361  0.35D-01  0.56D-01     4.18
    1    10    10     1.00000000     0.00000000   -23.55373305    -0.00000000    -0.23798563  0.43D-01  0.65D-01     4.18
    1    11    11     1.00000000     0.00000000   -23.55373305    -0.00000000    -0.23768928  0.43D-01  0.65D-01     4.18
    1    12    12     1.00000000     0.00000000   -23.55373305    -0.00000000    -0.23831196  0.43D-01  0.66D-01     4.18
    1    13    13     1.00000000     0.00000000   -23.55373305     0.00000000    -0.23829168  0.43D-01  0.66D-01     4.18
    1    14    14     1.00000000     0.00000000   -23.55373305     0.00000000    -0.23798696  0.43D-01  0.65D-01     4.18
    1    15    15     1.00000000     0.00000000   -23.55373305    -0.00000000    -0.23810419  0.43D-01  0.65D-01     4.18
    1    16    16     1.00000000     0.00000000   -23.55373305    -0.00000000    -0.23830435  0.43D-01  0.66D-01     4.18
    2     1     1     1.08236583    -0.22054306   -23.84712555    -0.22054306    -0.00702393  0.26D-02  0.12D-02    55.40
    2     2     2     1.08236922    -0.22054204   -23.84712453    -0.22054204    -0.00702510  0.26D-02  0.12D-02    55.40
    2     3     3     1.08236151    -0.22050945   -23.84709195    -0.22050945    -0.00706472  0.26D-02  0.12D-02    55.40
    2     4     4     1.08237778    -0.22050682   -23.84708931    -0.22050682    -0.00706746  0.26D-02  0.12D-02    55.40
    2     5     5     1.08237564    -0.22050293   -23.84708542    -0.22050293    -0.00707117  0.26D-02  0.12D-02    55.40
    2     6     6     1.07780416    -0.21227485   -23.79569140    -0.21227485    -0.00506787  0.16D-02  0.77D-03    55.40
    2     7     7     1.08572065    -0.21501889   -23.77390386    -0.21501889    -0.00634420  0.25D-02  0.12D-02    55.40
    2     8     8     1.08576118    -0.21496508   -23.77385006    -0.21496508    -0.00641330  0.25D-02  0.13D-02    55.40
    2     9     9     1.08575669    -0.21496187   -23.77384685    -0.21496187    -0.00641590  0.25D-02  0.13D-02    55.40
    2    10    10     1.08577370    -0.22009562   -23.77382867    -0.22009562    -0.00644148  0.25D-02  0.13D-02    55.40
    2    11    11     1.08580950    -0.22006208   -23.77379512    -0.22006208    -0.00648205  0.25D-02  0.13D-02    55.40
    2    12    12     1.08579656    -0.22005750   -23.77379055    -0.22005750    -0.00648940  0.25D-02  0.13D-02    55.40
    2    13    13     1.08579531    -0.22005530   -23.77378835    -0.22005530    -0.00649177  0.25D-02  0.13D-02    55.40
    2    14    14     1.07665606    -0.21694693   -23.77067998    -0.21694693    -0.00593362  0.23D-02  0.12D-02    55.40
    2    15    15     1.07669443    -0.21692536   -23.77065841    -0.21692536    -0.00595890  0.23D-02  0.12D-02    55.40
    2    16    16     1.07669295    -0.21692446   -23.77065751    -0.21692446    -0.00595956  0.23D-02  0.12D-02    55.40
    3     1     1     1.08377588    -0.22771562   -23.85429811    -0.00717256    -0.00027210  0.91D-04  0.51D-04   107.00
    3     2     2     1.08377588    -0.22771545   -23.85429794    -0.00717341    -0.00027211  0.91D-04  0.51D-04   107.00
    3     3     3     1.08378309    -0.22771469   -23.85429719    -0.00720524    -0.00027293  0.91D-04  0.51D-04   107.00
    3     4     4     1.08378329    -0.22771422   -23.85429671    -0.00720740    -0.00027335  0.91D-04  0.51D-04   107.00
    3     5     5     1.08378316    -0.22771413   -23.85429662    -0.00721120    -0.00027345  0.91D-04  0.51D-04   107.00
    3     6     6     1.08113033    -0.21770626   -23.80112280    -0.00543141    -0.00017024  0.48D-04  0.29D-04   107.00
    3     7     7     1.08730483    -0.22159911   -23.78048409    -0.00658022    -0.00022727  0.71D-04  0.49D-04   107.00
    3     8     8     1.08732625    -0.22159791   -23.78048288    -0.00663282    -0.00023029  0.70D-04  0.51D-04   107.00
    3     9     9     1.08731399    -0.22159690   -23.78048187    -0.00663502    -0.00023017  0.71D-04  0.50D-04   107.00
    3    10    10     1.08731531    -0.22674870   -23.78048175    -0.00665308    -0.00023045  0.71D-04  0.51D-04   107.00
    3    11    11     1.08732383    -0.22674841   -23.78048145    -0.00668633    -0.00023105  0.69D-04  0.51D-04   107.00
    3    12    12     1.08732155    -0.22674837   -23.78048142    -0.00669087    -0.00023085  0.70D-04  0.51D-04   107.00
    3    13    13     1.08732645    -0.22674789   -23.78048094    -0.00669259    -0.00023115  0.70D-04  0.51D-04   107.00
    3    14    14     1.07665064    -0.22304108   -23.77677412    -0.00609414    -0.00023114  0.47D-04  0.62D-04   107.00
    3    15    15     1.07665426    -0.22303884   -23.77677189    -0.00611348    -0.00023314  0.47D-04  0.63D-04   107.00
    3    16    16     1.07665394    -0.22303880   -23.77677185    -0.00611434    -0.00023316  0.47D-04  0.63D-04   107.00
    4     1     1     1.08550755    -0.22802808   -23.85461057    -0.00031246    -0.00002217  0.21D-04  0.22D-05   158.41
    4     2     2     1.08550737    -0.22802802   -23.85461052    -0.00031258    -0.00002220  0.21D-04  0.22D-05   158.41
    4     3     3     1.08550735    -0.22802802   -23.85461051    -0.00031333    -0.00002221  0.21D-04  0.22D-05   158.41
    4     4     4     1.08550807    -0.22802796   -23.85461045    -0.00031373    -0.00002220  0.21D-04  0.22D-05   158.41
    4     5     5     1.08550880    -0.22802783   -23.85461033    -0.00031371    -0.00002220  0.21D-04  0.22D-05   158.41
    4     6     6     1.08244963    -0.21789428   -23.80131083    -0.00018803    -0.00000932  0.77D-05  0.99D-06   158.41
    4     7     7     1.08900487    -0.22186734   -23.78075232    -0.00026823    -0.00001715  0.16D-04  0.19D-05   158.41
    4     8     8     1.08900285    -0.22186711   -23.78075209    -0.00026920    -0.00001722  0.16D-04  0.19D-05   158.41
    4     9     9     1.08900283    -0.22186710   -23.78075208    -0.00027021    -0.00001722  0.16D-04  0.19D-05   158.41
    4    10    10     1.08900932    -0.22701854   -23.78075158    -0.00026984    -0.00001713  0.16D-04  0.19D-05   158.41
    4    11    11     1.08900185    -0.22701818   -23.78075123    -0.00026977    -0.00001721  0.16D-04  0.19D-05   158.41
    4    12    12     1.08900127    -0.22701811   -23.78075115    -0.00026974    -0.00001724  0.16D-04  0.19D-05   158.41
    4    13    13     1.08900123    -0.22701809   -23.78075114    -0.00027020    -0.00001725  0.16D-04  0.19D-05   158.41
    4    14    14     1.07758821    -0.22330048   -23.77703353    -0.00025941    -0.00001621  0.14D-04  0.21D-05   158.41
    4    15    15     1.07758743    -0.22329997   -23.77703302    -0.00026113    -0.00001631  0.14D-04  0.21D-05   158.41
    4    16    16     1.07758743    -0.22329996   -23.77703300    -0.00026116    -0.00001632  0.14D-04  0.21D-05   158.41
    5     1     1     1.08630827    -0.22805767   -23.85464016    -0.00002959    -0.00000264  0.12D-05  0.45D-06   209.27
    5     2     2     1.08630821    -0.22805766   -23.85464015    -0.00002963    -0.00000264  0.12D-05  0.46D-06   209.27
    5     3     3     1.08630808    -0.22805766   -23.85464015    -0.00002964    -0.00000264  0.12D-05  0.46D-06   209.27
    5     4     4     1.08630630    -0.22805752   -23.85464001    -0.00002956    -0.00000264  0.12D-05  0.45D-06   209.27
    5     5     5     1.08630602    -0.22805739   -23.85463989    -0.00002956    -0.00000264  0.12D-05  0.45D-06   209.27
    5     6     6     1.08284775    -0.21790518   -23.80132173    -0.00001090    -0.00000083  0.51D-06  0.12D-06   209.27
    5     7     7     1.08970208    -0.22188985   -23.78077483    -0.00002251    -0.00000151  0.63D-06  0.28D-06   209.27
    5     8     8     1.08970131    -0.22188973   -23.78077471    -0.00002262    -0.00000153  0.64D-06  0.28D-06   209.27
    5     9     9     1.08970130    -0.22188973   -23.78077471    -0.00002263    -0.00000153  0.64D-06  0.28D-06   209.27
    5    10    10     1.08970317    -0.22704109   -23.78077414    -0.00002256    -0.00000149  0.61D-06  0.27D-06   209.27
    5    11    11     1.08970086    -0.22704082   -23.78077387    -0.00002264    -0.00000154  0.64D-06  0.28D-06   209.27
    5    12    12     1.08970138    -0.22704082   -23.78077386    -0.00002271    -0.00000154  0.64D-06  0.28D-06   209.27
    5    13    13     1.08970135    -0.22704081   -23.78077386    -0.00002272    -0.00000154  0.64D-06  0.28D-06   209.27
    5    14    14     1.07789156    -0.22332161   -23.77705466    -0.00002113    -0.00000173  0.76D-06  0.32D-06   209.27
    5    15    15     1.07789134    -0.22332117   -23.77705422    -0.00002120    -0.00000174  0.77D-06  0.32D-06   209.27
    5    16    16     1.07789133    -0.22332117   -23.77705422    -0.00002121    -0.00000174  0.77D-06  0.32D-06   209.27
    6     1     1     1.08643632    -0.22806095   -23.85464344    -0.00000328    -0.00000024  0.15D-06  0.30D-07   260.18
    6     2     2     1.08643627    -0.22806094   -23.85464344    -0.00000328    -0.00000024  0.15D-06  0.30D-07   260.18
    6     3     3     1.08643631    -0.22806094   -23.85464344    -0.00000328    -0.00000024  0.15D-06  0.30D-07   260.18
    6     4     4     1.08643439    -0.22806079   -23.85464328    -0.00000327    -0.00000024  0.15D-06  0.30D-07   260.18
    6     5     5     1.08643430    -0.22806066   -23.85464316    -0.00000327    -0.00000024  0.15D-06  0.30D-07   260.18
    6     6     6     1.08294004    -0.21790624   -23.80132279    -0.00000105    -0.00000009  0.67D-07  0.10D-07   260.18
    6     7     7     1.08977251    -0.22189169   -23.78077666    -0.00000184    -0.00000009  0.32D-07  0.22D-07   260.18
    6     8     8     1.08977300    -0.22189160   -23.78077657    -0.00000186    -0.00000009  0.32D-07  0.22D-07   260.18
    6     9     9     1.08977299    -0.22189160   -23.78077657    -0.00000186    -0.00000009  0.32D-07  0.22D-07   260.18
    6    10    10     1.08977178    -0.22704290   -23.78077595    -0.00000181    -0.00000009  0.31D-07  0.21D-07   260.18
    6    11    11     1.08977223    -0.22704269   -23.78077574    -0.00000187    -0.00000009  0.32D-07  0.23D-07   260.18
    6    12    12     1.08977201    -0.22704268   -23.78077573    -0.00000186    -0.00000009  0.32D-07  0.22D-07   260.18
    6    13    13     1.08977202    -0.22704268   -23.78077573    -0.00000187    -0.00000009  0.32D-07  0.22D-07   260.18
    6    14    14     1.07791357    -0.22332376   -23.77705680    -0.00000215    -0.00000013  0.36D-07  0.26D-07   260.18
    6    15    15     1.07791335    -0.22332332   -23.77705637    -0.00000215    -0.00000013  0.36D-07  0.26D-07   260.18
    6    16    16     1.07791335    -0.22332332   -23.77705637    -0.00000215    -0.00000013  0.36D-07  0.26D-07   260.18
    7     1     1     1.08647751    -0.22806122   -23.85464371    -0.00000027    -0.00000002  0.20D-07  0.28D-08   310.99
    7     2     2     1.08647758    -0.22806121   -23.85464371    -0.00000027    -0.00000002  0.20D-07  0.28D-08   310.99
    7     3     3     1.08647759    -0.22806121   -23.85464371    -0.00000027    -0.00000002  0.20D-07  0.28D-08   310.99
    7     4     4     1.08647604    -0.22806106   -23.85464355    -0.00000027    -0.00000002  0.20D-07  0.27D-08   310.99
    7     5     5     1.08647597    -0.22806094   -23.85464343    -0.00000027    -0.00000002  0.20D-07  0.27D-08   310.99
    7     6     6     1.08296081    -0.21790635   -23.80132290    -0.00000011    -0.00000001  0.90D-08  0.10D-08   310.99
    7     7     7     1.08979071    -0.22189179   -23.78077677    -0.00000010    -0.00000001  0.66D-08  0.19D-08   310.99
    7     8     8     1.08979136    -0.22189170   -23.78077667    -0.00000010    -0.00000001  0.67D-08  0.20D-08   310.99
    7     9     9     1.08979136    -0.22189170   -23.78077667    -0.00000010    -0.00000001  0.67D-08  0.20D-08   310.99
    7    10    10     1.08978949    -0.22704300   -23.78077605    -0.00000010    -0.00000001  0.64D-08  0.19D-08   310.99
    7    11    11     1.08979069    -0.22704280   -23.78077584    -0.00000011    -0.00000001  0.67D-08  0.20D-08   310.99
    7    12    12     1.08979031    -0.22704278   -23.78077583    -0.00000010    -0.00000001  0.67D-08  0.20D-08   310.99
    7    13    13     1.08979032    -0.22704278   -23.78077583    -0.00000010    -0.00000001  0.67D-08  0.20D-08   310.99
    7    14    14     1.07792409    -0.22332390   -23.77705695    -0.00000014    -0.00000001  0.83D-08  0.14D-08   310.99
    7    15    15     1.07792386    -0.22332347   -23.77705651    -0.00000014    -0.00000001  0.84D-08  0.14D-08   310.99
    7    16    16     1.07792386    -0.22332347   -23.77705651    -0.00000014    -0.00000001  0.84D-08  0.14D-08   310.99
    8     1     1     1.08649282    -0.22806124   -23.85464374    -0.00000003    -0.00000000  0.18D-08  0.50D-09   330.97
    8     2     2     1.08649292    -0.22806124   -23.85464374    -0.00000003    -0.00000000  0.18D-08  0.50D-09   330.97
    8     3     3     1.08649292    -0.22806124   -23.85464373    -0.00000003    -0.00000000  0.18D-08  0.50D-09   330.97
    8     4     4     1.08649137    -0.22806109   -23.85464358    -0.00000003    -0.00000000  0.18D-08  0.51D-09   330.97
    8     5     5     1.08649126    -0.22806096   -23.85464346    -0.00000003    -0.00000000  0.18D-08  0.51D-09   330.97
    8     6     6     1.08296081    -0.21790635   -23.80132290    -0.00000000    -0.00000001  0.90D-08  0.10D-08   330.97
    8     7     7     1.08979070    -0.22189179   -23.78077677    -0.00000000    -0.00000001  0.66D-08  0.19D-08   330.97
    8     8     8     1.08979135    -0.22189170   -23.78077667    -0.00000000    -0.00000001  0.67D-08  0.20D-08   330.97
    8     9     9     1.08979135    -0.22189170   -23.78077667    -0.00000000    -0.00000001  0.67D-08  0.20D-08   330.97
    8    10    10     1.08978948    -0.22704300   -23.78077605    -0.00000000    -0.00000001  0.64D-08  0.19D-08   330.97
    8    11    11     1.08979069    -0.22704280   -23.78077584    -0.00000000    -0.00000001  0.67D-08  0.20D-08   330.97
    8    12    12     1.08979030    -0.22704278   -23.78077583    -0.00000000    -0.00000001  0.67D-08  0.20D-08   330.97
    8    13    13     1.08979031    -0.22704278   -23.78077583    -0.00000000    -0.00000001  0.67D-08  0.20D-08   330.97
    8    14    14     1.07792408    -0.22332390   -23.77705695    -0.00000000    -0.00000001  0.83D-08  0.14D-08   330.97
    8    15    15     1.07792386    -0.22332347   -23.77705651    -0.00000000    -0.00000001  0.84D-08  0.14D-08   330.97
    8    16    16     1.07792386    -0.22332347   -23.77705651    -0.00000000    -0.00000001  0.84D-08  0.14D-08   330.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.1%
 S   2.4%  21.4%
 P   0.7%  18.9%  22.1%

 Initialization:   0.8%
 Other:           29.5%

 Total CPU:      331.0 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000           0.0000000   0.0000000   0.0000000  -0.0000053   0.0000000   0.9571995  -0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 200//000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000482   0.0000000   0.0000000   0.0000000
                         -0.0000000   0.9556369   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 20//0000222000          -0.0000509  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9556361   0.0000000
                          0.0000000  -0.0000000  -0.0000035   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2/00/000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000051   0.9555573  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000543  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2/0/0000222000           0.0000000  -0.0000000   0.0000000   0.9555571   0.0000051   0.0000063   0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2//00000222000           0.9555568   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000574   0.0000000
                          0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2/0000/0222000          -0.0000000   0.9555568   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000342
                         -0.0000000   0.0000000   0.0000000   0.0000410  -0.0000000   0.0000000   0.0000000  -0.0000007
 2/000/00222000          -0.0000000  -0.0000000   0.9555568  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000342   0.0000000   0.0000000  -0.0000000   0.0000410  -0.0000000  -0.0000007  -0.0000000
 20000//0222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000031   0.0000000
                         -0.0000000  -0.0000000   0.8548485  -0.0000000   0.0000000   0.3246031   0.0000000  -0.0000000
 2000/0/0222000          -0.0000000  -0.0000410   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6901741
                         -0.0000000  -0.0000000   0.0000000   0.5042515  -0.0000000   0.0000000   0.0000000   0.3248403
 2000//00222000          -0.0000000   0.0000000   0.0000410   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                          0.6900790   0.0000000   0.0000000   0.0000000  -0.5043816   0.0000000  -0.3248403  -0.0000000
 20/000/0222000          -0.0000000   0.0000000   0.0000005   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                          0.6608645   0.0000000   0.0000000   0.0000000   0.5422090  -0.0000000   0.3246544  -0.0000000
 20/00/00222000           0.0000000   0.0000005  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6607623
                         -0.0000000   0.0000000   0.0000000   0.5423336  -0.0000000  -0.0000000   0.0000000   0.3246544
 20/0/000222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000016  -0.0000000
                          0.0000000   0.0000000  -0.4271710   0.0000000   0.0000000   0.6498599  -0.0000000   0.0000000
 200000002220//           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000  -0.0000000   0.0001840   0.0000000   0.0000000   0.6282729  -0.0000000   0.0000000
 20000000222//0          -0.0000000   0.0000004   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000787
                          0.0000000   0.0000000   0.0000000   0.0001398   0.0000000  -0.0000000  -0.0000000   0.6282679
 20000000222/0/           0.0000000  -0.0000000   0.0000004   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000787   0.0000000  -0.0000000  -0.0000000   0.0001398   0.0000000   0.6282679   0.0000000
 200/0/00222000          -0.0000000   0.0000000  -0.0000239   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0169924   0.0000000  -0.0000000   0.0000000   0.6040283  -0.0000000  -0.5628235  -0.0000000
 200/00/0222000          -0.0000000  -0.0000239   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0171063
                         -0.0000000  -0.0000000  -0.0000000   0.6040250  -0.0000000  -0.0000000   0.0000000  -0.5628235

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  29.1    -0.0000000  -0.0000000  -0.0000000   0.0000001   0.0000000  -0.0609606   0.0000000  -0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.000000    0.955520   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000010    0.000000   -0.000050    0.000000
 2           0.955520   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001   -0.000047
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000004
 3           0.000000   -0.000000    0.000000    0.000000    0.955520    0.000000    0.000001    0.000000    0.000000    0.000000
            -0.000000    0.000012   -0.000000    0.000046    0.000000   -0.000000
 4           0.000000   -0.139267    0.945317   -0.000000   -0.000000   -0.000005    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.945317    0.139267    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000048   -0.000000    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000001    0.000006   -0.000000   -0.000000    0.957199   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000057   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.187362    0.000000    0.937089   -0.000000
 8           0.000034    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000125    0.677084
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.674386
 9          -0.000000    0.000000   -0.000000    0.000000   -0.000034   -0.000000    0.000125    0.000000    0.000000   -0.000000
            -0.000000    0.868273   -0.000000    0.399177    0.000000   -0.000000
 10          0.000000   -0.000054   -0.000008   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.955637    0.000000   -0.000000    0.000000   -0.000000    0.000000
 11          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000291    0.000000    0.000000
             0.000000    0.000000    0.937089    0.000000   -0.187362    0.000000
 12          0.000041    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000220    0.674387
             0.000000    0.000000   -0.000000   -0.000000    0.000000    0.677085
 13         -0.000000    0.000000   -0.000000    0.000000    0.000041   -0.000000    0.000220    0.000000    0.000000   -0.000000
            -0.000000    0.399177    0.000000   -0.868274    0.000000   -0.000000
 14          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.959081   -0.000000    0.000000
             0.000000   -0.000000   -0.000287    0.000000    0.000057   -0.000000
 15          0.000000    0.000000   -0.000000    0.000000   -0.000001    0.000000    0.959081   -0.000000   -0.000000    0.000000
            -0.000000   -0.000206    0.000000    0.000149    0.000000    0.000000
 16         -0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.959081   -0.000068
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000245

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955520    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000003   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.955520   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000002    0.000000   -0.000000
             0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.955520   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000002   -0.000000
             0.000000   -0.000000    0.000002    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.955520   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.955520   -0.000000    0.000000    0.000000    0.000000   -0.000003
            -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.957199   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 7           0.000003   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.955636   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000002   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.955636    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 9           0.000000    0.000000   -0.000002    0.000000    0.000000   -0.000000    0.000000    0.000000    0.955636    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000   -0.000003    0.000000    0.000000   -0.000000    0.000000    0.955637
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.955637    0.000000    0.000000   -0.000000    0.000000    0.000000
 12         -0.000000    0.000002   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.955637    0.000000    0.000000   -0.000000   -0.000000
 13         -0.000000    0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.955637    0.000000   -0.000000    0.000000
 14         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.959081    0.000000    0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.959081   -0.000000
 16         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959081


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95551988 (fixed)   0.95572733 (relaxed)   0.95551988 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00807696   -0.01198329   -0.15374475
 Singles      0.03629698   -0.06151152   -0.06371942
 Pairs        0.05089445   -0.00000000   -0.01059707
 Total        1.09526838   -0.07349482   -0.22806124
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658249
 Nuclear energy                         0.00000000
 Kinetic energy                         6.29699689
 One electron energy                  -39.04372783
 Two electron energy                   15.18908409
 Virial quotient                       -3.78825719
 Correlation energy                    -0.22806125
 !MRCI STATE 1.1 Energy               -23.854643739066

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.87637076 (Davidson, fixed reference)
 Cluster corrected energies           -23.87626234 (Davidson, relaxed reference)
 Cluster corrected energies           -23.87637076 (Davidson, rotated reference)

 Cluster corrected energies           -23.87172206 (Pople, fixed reference)
 Cluster corrected energies           -23.87163292 (Pople, relaxed reference)
 Cluster corrected energies           -23.87172206 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95551983 (fixed)   0.95572728 (relaxed)   0.95551983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00807696   -0.01198327   -0.15374551
 Singles      0.03629700   -0.06151154   -0.06371944
 Pairs        0.05089451    0.00000087   -0.01059629
 Total        1.09526848   -0.07349394   -0.22806124
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658249
 Nuclear energy                         0.00000000
 Kinetic energy                         6.29699711
 One electron energy                  -39.04372779
 Two electron energy                   15.18908406
 Virial quotient                       -3.78825706
 Correlation energy                    -0.22806124
 !MRCI STATE 2.1 Energy               -23.854643735042

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.87637078 (Davidson, fixed reference)
 Cluster corrected energies           -23.87626236 (Davidson, relaxed reference)
 Cluster corrected energies           -23.87637078 (Davidson, rotated reference)

 Cluster corrected energies           -23.87172207 (Pople, fixed reference)
 Cluster corrected energies           -23.87163294 (Pople, relaxed reference)
 Cluster corrected energies           -23.87172207 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95551983 (fixed)   0.95572728 (relaxed)   0.95551983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00807696   -0.01198327   -0.15374472
 Singles      0.03629701   -0.06151154   -0.06371944
 Pairs        0.05089451    0.00000000   -0.01059708
 Total        1.09526848   -0.07349481   -0.22806124
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658249
 Nuclear energy                         0.00000000
 Kinetic energy                         6.29699710
 One electron energy                  -39.04372781
 Two electron energy                   15.18908407
 Virial quotient                       -3.78825706
 Correlation energy                    -0.22806124
 !MRCI STATE 3.1 Energy               -23.854643734762

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.87637078 (Davidson, fixed reference)
 Cluster corrected energies           -23.87626236 (Davidson, relaxed reference)
 Cluster corrected energies           -23.87637078 (Davidson, rotated reference)

 Cluster corrected energies           -23.87172207 (Pople, fixed reference)
 Cluster corrected energies           -23.87163294 (Pople, relaxed reference)
 Cluster corrected energies           -23.87172207 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94531655 (fixed)   0.95572763 (relaxed)   0.95552016 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00807772   -0.01198377   -0.15374572
 Singles      0.03629531   -0.06151058   -0.06371825
 Pairs        0.05089471    0.00000000   -0.01059712
 Total        1.09526773   -0.07349435   -0.22806109
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658249
 Nuclear energy                         0.00000000
 Kinetic energy                         6.29699651
 One electron energy                  -39.04372484
 Two electron energy                   15.18908126
 Virial quotient                       -3.78825739
 Correlation energy                    -0.22806109
 !MRCI STATE 4.1 Energy               -23.854643582783

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.87637045 (Davidson, fixed reference)
 Cluster corrected energies           -23.87626201 (Davidson, relaxed reference)
 Cluster corrected energies           -23.87637045 (Davidson, rotated reference)

 Cluster corrected energies           -23.87172177 (Pople, fixed reference)
 Cluster corrected energies           -23.87163263 (Pople, relaxed reference)
 Cluster corrected energies           -23.87172177 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94531673 (fixed)   0.95572781 (relaxed)   0.95552034 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00807742   -0.01198361   -0.15374556
 Singles      0.03629524   -0.06151062   -0.06371830
 Pairs        0.05089464   -0.00000000   -0.01059710
 Total        1.09526730   -0.07349423   -0.22806096
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62658249
 Nuclear energy                         0.00000000
 Kinetic energy                         6.29699636
 One electron energy                  -39.04372515
 Two electron energy                   15.18908170
 Virial quotient                       -3.78825747
 Correlation energy                    -0.22806096
 !MRCI STATE 5.1 Energy               -23.854643458130

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.87637021 (Davidson, fixed reference)
 Cluster corrected energies           -23.87626178 (Davidson, relaxed reference)
 Cluster corrected energies           -23.87637021 (Davidson, rotated reference)

 Cluster corrected energies           -23.87172156 (Pople, fixed reference)
 Cluster corrected energies           -23.87163241 (Pople, relaxed reference)
 Cluster corrected energies           -23.87172156 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95719948 (fixed)   0.95719948 (relaxed)   0.95719948 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00781856   -0.01292002   -0.14562495
 Singles      0.03810735   -0.06067091   -0.06319739
 Pairs        0.04550210    0.00000000   -0.00908401
 Total        1.09142801   -0.07359093   -0.21790635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.58341655
 Nuclear energy                         0.00000000
 Kinetic energy                         6.12625550
 One electron energy                  -37.91043302
 Two electron energy                   14.10911012
 Virial quotient                       -3.88513390
 Correlation energy                    -0.21790635
 !MRCI STATE 6.1 Energy               -23.801322901197

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.82124565 (Davidson, fixed reference)
 Cluster corrected energies           -23.82124565 (Davidson, relaxed reference)
 Cluster corrected energies           -23.82124565 (Davidson, rotated reference)

 Cluster corrected energies           -23.81695389 (Pople, fixed reference)
 Cluster corrected energies           -23.81695389 (Pople, relaxed reference)
 Cluster corrected energies           -23.81695389 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.93708907 (fixed)   0.95563607 (relaxed)   0.95563607 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478198   -0.00791414   -0.15175755
 Singles      0.03287537   -0.05677805   -0.05851516
 Pairs        0.05734470    0.00000000   -0.01161909
 Total        1.09500205   -0.06469219   -0.22189179
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39173635
 One electron energy                  -39.09667609
 Two electron energy                   15.31589933
 Virial quotient                       -3.72055033
 Correlation energy                    -0.22704372
 !MRCI STATE 7.1 Energy               -23.780776766756

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234639 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234639 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234639 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772918 (Pople, fixed reference)
 Cluster corrected energies           -23.79772918 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772918 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.67708445 (fixed)   0.95563578 (relaxed)   0.95563578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478198   -0.00791397   -0.25638722
 Singles      0.03287618   -0.05677830   -0.05851555
 Pairs        0.05734455    0.11457022    0.09301106
 Total        1.09500271    0.04987795   -0.22189170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39174530
 One electron energy                  -39.09668896
 Two electron energy                   15.31591229
 Virial quotient                       -3.72054510
 Correlation energy                    -0.22704363
 !MRCI STATE 8.1 Energy               -23.780776674751

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234644 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234644 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234644 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772920 (Pople, fixed reference)
 Cluster corrected energies           -23.79772920 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772920 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.86827271 (fixed)   0.95563578 (relaxed)   0.95563578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478198   -0.00791397   -0.15175714
 Singles      0.03287618   -0.05677830   -0.05851555
 Pairs        0.05734455    0.00000000   -0.01161901
 Total        1.09500272   -0.06469227   -0.22189170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39174531
 One electron energy                  -39.09668900
 Two electron energy                   15.31591232
 Virial quotient                       -3.72054510
 Correlation energy                    -0.22704363
 !MRCI STATE 9.1 Energy               -23.780776674744

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234644 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234644 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234644 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772920 (Pople, fixed reference)
 Cluster corrected energies           -23.79772920 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772920 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95563691 (fixed)   0.95563691 (relaxed)   0.95563691 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478133   -0.00791384   -0.15648498
 Singles      0.03287399   -0.05677749   -0.05866907
 Pairs        0.05734481   -0.00000000   -0.01188895
 Total        1.09500012   -0.06469133   -0.22704300
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39172559
 One electron energy                  -39.09666286
 Two electron energy                   15.31588682
 Virial quotient                       -3.72055648
 Correlation energy                    -0.22704300
 !MRCI STATE 10.1 Energy              -23.780776045161

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234516 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234516 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234516 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772804 (Pople, fixed reference)
 Cluster corrected energies           -23.79772804 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772804 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.93708947 (fixed)   0.95563652 (relaxed)   0.95563652 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478105   -0.00791336   -0.15648402
 Singles      0.03287533   -0.05677814   -0.05866996
 Pairs        0.05734465   -0.00000000   -0.01188881
 Total        1.09500103   -0.06469150   -0.22704280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39174962
 One electron energy                  -39.09669983
 Two electron energy                   15.31592399
 Virial quotient                       -3.72054246
 Correlation energy                    -0.22704280
 !MRCI STATE 11.1 Energy              -23.780775844926

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234514 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234514 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234514 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772799 (Pople, fixed reference)
 Cluster corrected energies           -23.79772799 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772799 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.67708482 (fixed)   0.95563671 (relaxed)   0.95563671 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478100   -0.00791342   -0.05143525
 Singles      0.03287490   -0.05677797   -0.05866973
 Pairs        0.05734469   -0.11502868   -0.11693780
 Total        1.09500059   -0.17972006   -0.22704278
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39174282
 One electron energy                  -39.09668904
 Two electron energy                   15.31591321
 Virial quotient                       -3.72054641
 Correlation energy                    -0.22704278
 !MRCI STATE 12.1 Energy              -23.780775829848

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234503 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234503 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234503 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772790 (Pople, fixed reference)
 Cluster corrected energies           -23.79772790 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772790 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.86827369 (fixed)   0.95563670 (relaxed)   0.95563670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00478100   -0.00791342   -0.15648421
 Singles      0.03287490   -0.05677797   -0.05866973
 Pairs        0.05734469    0.00000000   -0.01188884
 Total        1.09500060   -0.06469139   -0.22704278
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55373305
 Nuclear energy                         0.00000000
 Kinetic energy                         6.39174283
 One electron energy                  -39.09668910
 Two electron energy                   15.31591327
 Virial quotient                       -3.72054641
 Correlation energy                    -0.22704278
 !MRCI STATE 13.1 Energy              -23.780775829784

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80234503 (Davidson, fixed reference)
 Cluster corrected energies           -23.80234503 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80234503 (Davidson, rotated reference)

 Cluster corrected energies           -23.79772790 (Pople, fixed reference)
 Cluster corrected energies           -23.79772790 (Pople, relaxed reference)
 Cluster corrected energies           -23.79772790 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95908132 (fixed)   0.96042277 (relaxed)   0.95908136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00855811   -0.00953928   -0.15705083
 Singles      0.02601976   -0.05449746   -0.05547456
 Pairs        0.05257121    0.00000000   -0.01079850
 Total        1.08714907   -0.06403675   -0.22332390
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55888497
 Nuclear energy                         0.00000000
 Kinetic energy                         6.30343364
 One electron energy                  -38.66232107
 Two electron energy                   14.88526412
 Virial quotient                       -3.77208015
 Correlation energy                    -0.21817197
 !MRCI STATE 14.1 Energy              -23.777056946181

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.79607043 (Davidson, fixed reference)
 Cluster corrected energies           -23.79540834 (Davidson, relaxed reference)
 Cluster corrected energies           -23.79607043 (Davidson, rotated reference)

 Cluster corrected energies           -23.79194361 (Pople, fixed reference)
 Cluster corrected energies           -23.79140405 (Pople, relaxed reference)
 Cluster corrected energies           -23.79194361 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95908131 (fixed)   0.96042313 (relaxed)   0.95908135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00855834   -0.00953894   -0.15705062
 Singles      0.02601943   -0.05449730   -0.05547434
 Pairs        0.05257133   -0.00000000   -0.01079850
 Total        1.08714910   -0.06403624   -0.22332347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55888497
 Nuclear energy                         0.00000000
 Kinetic energy                         6.30343197
 One electron energy                  -38.66232342
 Two electron energy                   14.88526691
 Virial quotient                       -3.77208109
 Correlation energy                    -0.21817154
 !MRCI STATE 15.1 Energy              -23.777056512279

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.79606997 (Davidson, fixed reference)
 Cluster corrected energies           -23.79540770 (Davidson, relaxed reference)
 Cluster corrected energies           -23.79606997 (Davidson, rotated reference)

 Cluster corrected energies           -23.79194315 (Pople, fixed reference)
 Cluster corrected energies           -23.79140345 (Pople, relaxed reference)
 Cluster corrected energies           -23.79194315 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95908131 (fixed)   0.96042313 (relaxed)   0.95908135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00855834   -0.00953894   -0.15708888
 Singles      0.02601942   -0.05449730   -0.05547434
 Pairs        0.05257133    0.00004159   -0.01076025
 Total        1.08714910   -0.06399465   -0.22332347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55888497
 Nuclear energy                         0.00000000
 Kinetic energy                         6.30343198
 One electron energy                  -38.66232340
 Two electron energy                   14.88526689
 Virial quotient                       -3.77208108
 Correlation energy                    -0.21817154
 !MRCI STATE 16.1 Energy              -23.777056512184

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.79606996 (Davidson, fixed reference)
 Cluster corrected energies           -23.79540770 (Davidson, relaxed reference)
 Cluster corrected energies           -23.79606996 (Davidson, rotated reference)

 Cluster corrected energies           -23.79194315 (Pople, fixed reference)
 Cluster corrected energies           -23.79140345 (Pople, relaxed reference)
 Cluster corrected energies           -23.79194315 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      333.78       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       467.81    374.52     88.90      2.01      0.43      1.75
 REAL TIME  *       496.12 SEC
 DISK USED  *       376.42 MB (local),        2.32 GB (total)
 SF USED    *         2.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -23.87637076  AU                              
 SETTING HLSDIAG(9)     =       -23.87637078  AU                              
 SETTING HLSDIAG(10)    =       -23.87637078  AU                              
 SETTING HLSDIAG(11)    =       -23.87637045  AU                              
 SETTING HLSDIAG(12)    =       -23.87637021  AU                              
 SETTING HLSDIAG(13)    =       -23.82124565  AU                              
 SETTING HLSDIAG(14)    =       -23.80234639  AU                              
 SETTING HLSDIAG(15)    =       -23.80234644  AU                              
 SETTING HLSDIAG(16)    =       -23.80234644  AU                              
 SETTING HLSDIAG(17)    =       -23.80234516  AU                              
 SETTING HLSDIAG(18)    =       -23.80234514  AU                              
 SETTING HLSDIAG(19)    =       -23.80234503  AU                              
 SETTING HLSDIAG(20)    =       -23.80234503  AU                              
 SETTING HLSDIAG(21)    =       -23.79607043  AU                              
 SETTING HLSDIAG(22)    =       -23.79606997  AU                              
 SETTING HLSDIAG(23)    =       -23.79606996  AU                              


        HLSDIAG
    -23.94243722
    -23.86381286
    -23.86381285
    -23.86381280
    -23.86381281
    -23.86381282
    -23.81606982
    -23.87637076
    -23.87637078
    -23.87637078
    -23.87637045
    -23.87637021
    -23.82124565
    -23.80234639
    -23.80234644
    -23.80234644
    -23.80234516
    -23.80234514
    -23.80234503
    -23.80234503
    -23.79607043
    -23.79606997
    -23.79606996
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -23.922565    -23.842147    -23.842147    -23.842147    -23.842147    -23.842147    -23.796246
 Replaced energies:    -23.942437    -23.863813    -23.863813    -23.863813    -23.863813    -23.863813    -23.816070

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -23.854644    -23.854644    -23.854644    -23.854644    -23.854643    -23.801323    -23.780777    -23.780777
                       -23.780777    -23.780776    -23.780776    -23.780776    -23.780776    -23.777057    -23.777057    -23.777057
 Replaced energies:    -23.876371    -23.876371    -23.876371    -23.876370    -23.876370    -23.821246    -23.802346    -23.802346
                       -23.802346    -23.802345    -23.802345    -23.802345    -23.802345    -23.796070    -23.796070    -23.796070



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -23.94243722

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01

    2   2.1  0.0  0.0       0.00   17256.05       0.00       0.00       0.00       0.00       0.00       0.00    -121.55      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     131.95

    3   3.1  0.0  0.0       0.00       0.00   17256.06       0.00       0.00       0.00       0.00       0.00     222.46       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     216.45

    4   4.1  0.0  0.0       0.00       0.00       0.00   17256.07       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     126.85      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   17256.06       0.00       0.00     126.85      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   17256.06       0.00       0.00       0.00    -126.86
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -126.86      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27734.44      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00      -0.00     126.85       0.00      -0.00   14499.91       0.00       0.00
                           -0.00       0.00       0.00    -126.85       0.00      -0.00       0.00       0.00      -0.00      -0.00

    9   2.1  1.0  1.0      -0.01    -121.55     222.46      -0.00      -0.00       0.00      -0.00       0.00   14499.91       0.00
                           -0.00       0.00       0.00       0.00      -0.00     126.86      -0.00       0.00      -0.00    -168.94

   10   3.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00    -126.86       0.00       0.00       0.00   14499.91
                            0.01    -131.95    -216.45       0.00       0.00       0.00       0.00       0.00     168.94      -0.00

   11   4.1  1.0  1.0       0.00      -0.00       0.00    -219.65      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     219.65       0.00      -0.00       0.00      -0.00      -0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00     126.82      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     126.82       0.00      -0.00    -337.79       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   14   7.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      28.89       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -28.89       0.00       0.00      -0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.04      35.21      -1.71       0.00       0.00       0.00       0.02       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      35.57       0.00      -0.00      -0.00      -0.52

   16   9.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00      35.57      -0.00       0.00       0.00       0.00
                            0.04     -35.25      -0.03       0.00       0.00       0.00       0.02      -0.00      -0.51       0.00

   17  10.1  1.0  1.0      -0.00      -0.00       0.00     -28.88      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -28.88       0.00       0.00     -12.57      -0.00       0.00

   18  11.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00     -22.31       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -22.31       0.00       0.00      -0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0      -0.08     -11.02     -31.61      -0.00       0.00       0.00      -0.04       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       8.18      -0.00      -0.00      -0.00     -16.06

   20  13.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00      -8.18      -0.00       0.00       0.00       0.00
                            0.08      -9.50      32.09       0.00      -0.00      -0.00       0.04      -0.00      16.07       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00      -0.00     182.54      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     182.54       0.00      -0.00       0.00       0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00    -182.53      -0.00       0.00       0.00       0.00
                          256.07    -179.91     109.61      -0.00      -0.00      -0.00     135.42      -0.00     -15.78      -0.00

   23  16.1  1.0  1.0    -256.07    -184.90    -100.96      -0.00       0.00       0.00    -135.42       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     182.53       0.00      -0.00       0.00      15.78

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -119.46
                            0.00    -358.39       8.50       0.00       0.00      -0.00       0.00      -0.00    -119.46      -0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00     179.40      -0.00      -0.00     119.46      -0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     119.46       0.00       0.00
                            0.00      -0.00       0.00    -179.40       0.00      -0.00       0.00       0.00       0.00      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     206.86       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     206.86

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -119.43      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     358.70      -0.00       0.00      -0.00     119.43

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -9.03
                           -0.00      40.83      -0.97       0.00      -0.00       0.00       0.00       0.00      -9.03       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       1.52       0.00      -0.00      11.08      -0.00      -0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.08      -0.00      -0.00
                            0.00      -0.00       0.00       1.51      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      40.76      -0.00      -0.00       0.00      -9.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       6.93
                            0.15      -1.31     -55.26      -0.00      -0.00      -0.00       0.06      -0.00      -6.93      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      51.58       0.00      -0.00       2.57       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.57      -0.00       0.00
                            0.00      -0.00      -0.00     -51.58      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.17
                          362.15      -7.06    -297.84       0.00      -0.00      -0.00     191.53      -0.00      11.17      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.18      -0.00      -0.00
                           -0.00      -0.00       0.00     258.15       0.00      -0.00       0.00       0.00      -0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -258.15       0.00      -0.00      11.18       0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00     126.85       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     126.85      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.01    -121.55     222.46      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -126.86       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00    -126.86       0.00       0.00       0.00       0.00
                           -0.01     131.95     216.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00      -0.00       0.00    -219.65      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -219.65      -0.00       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00      -0.00       0.00     126.82      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -126.82      -0.00       0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      28.89       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      28.89      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.04      35.21      -1.71       0.00       0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -35.57      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00      35.57      -0.00       0.00       0.00       0.00
                           -0.04      35.25       0.03      -0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0      -0.00      -0.00       0.00     -28.88      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      28.88      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00     -22.31       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      22.31      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.08     -11.02     -31.61      -0.00       0.00       0.00      -0.04       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -8.18       0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00      -8.18      -0.00       0.00       0.00       0.00
                           -0.08       9.50     -32.09      -0.00       0.00       0.00      -0.04      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00     182.54      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -182.54      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00    -182.53      -0.00       0.00       0.00       0.00
                         -256.07     179.91    -109.61       0.00       0.00       0.00    -135.42      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0    -256.07    -184.90    -100.96      -0.00       0.00       0.00    -135.42       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -182.53      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.04      -0.00      -0.00      -0.00      -0.08      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.04      -0.00       0.00       0.00      -0.08

    2   2.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      35.21       0.00      -0.00      -0.00     -11.02      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      35.25       0.00      -0.00      -0.00       9.50

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -1.71      -0.00       0.00      -0.00     -31.61      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.03       0.00       0.00      -0.00     -32.09

    4   4.1  0.0  0.0    -219.65     126.82       0.00      -0.00       0.00       0.00     -28.88      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      28.89       0.00      -0.00       0.00      22.31      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00      -0.00      -0.00      28.89       0.00       0.00      -0.00     -22.31       0.00       0.00
                         -219.65    -126.82       0.00      -0.00       0.00      -0.00      28.88      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      35.57      -0.00       0.00       0.00      -8.18
                           -0.00      -0.00       0.00      -0.00     -35.57      -0.00      -0.00      -0.00      -8.18       0.00

    7   7.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.02      -0.00      -0.00      -0.00      -0.04      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.02      -0.00       0.00       0.00      -0.04

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     337.79       0.00       0.00       0.00       0.00      12.57      -0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.51       0.00      -0.00       0.00     -16.07

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.52      -0.00      -0.00      -0.00      16.06      -0.00

   11   4.1  1.0  1.0   14499.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00     -17.13       0.00      -0.00

   12   5.1  1.0  1.0       0.00   14500.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      12.56      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   26598.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.03       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   30746.38       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.56       0.00       0.00      -0.00       0.00    -338.97      -0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   30746.37       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -507.79      -0.00      -0.00      -0.00     -18.99

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   30746.37       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     507.79       0.00      -0.00       0.00     -19.05      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   30746.65       0.00       0.00       0.00
                           -0.00      -0.00       0.00     338.97       0.00       0.00      -0.00      -0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.66       0.00       0.00
                           17.13       0.00       0.03       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.68       0.00
                           -0.00       0.00      -0.00       0.00       0.00      19.05      -0.00       0.00       0.00    -168.98

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.68
                            0.00       0.00       0.00      -0.00      18.99       0.00      -0.00       0.00     168.98       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.05       0.00      68.07       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.16       0.00       0.00       0.00       0.06       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.16       0.00       0.00       0.00      -0.06

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      11.08      -0.00       0.00       0.00      -2.57
                            0.00      -0.00       0.00      -0.00     -11.08       0.00       0.00       0.00      -2.57       0.00

   25   2.1  1.0  0.0    -206.86     119.43      -0.00      -0.00       0.00       0.00      -9.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       9.03       0.00       0.00      -0.00       6.93      -0.00       0.00

   26   3.1  1.0  0.0      -0.00       0.00      -0.00       9.03       0.00       0.00       0.00      -6.93       0.00      -0.00
                         -206.86    -119.43      -0.00      -0.00       0.00       0.00       9.00       0.00       0.00       0.00

   27   4.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.25      -0.00       0.00      -0.00      -9.80      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.25       0.00       0.00      -0.00      -9.80

   28   5.1  1.0  0.0      -0.00       0.00       0.00       0.00      10.90       0.00      -0.00       0.00      -3.20       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      10.90       0.00      -0.00      -0.00       3.20

   29   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.01       0.00      -0.00      -0.00       0.01       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.01      -0.00      -0.00       0.00       0.01

   30   7.1  1.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00     141.37       0.00       0.00       0.00     193.47
                            0.00       0.00      -0.00      -0.00    -141.33      -0.00       0.00      -0.00     193.49       0.00

   31   8.1  1.0  0.0       0.25     -10.90       0.01       0.00      -0.00      -0.00     151.99       0.00      -0.00       0.00
                            0.00       0.00       0.00     141.33       0.00      -0.00      -0.00       8.29       0.00       0.00

   32   9.1  1.0  0.0       0.00      -0.00      -0.00    -141.37       0.00      -0.00       0.00       8.23       0.00      -0.00
                           -0.25     -10.90      -0.01       0.00       0.00       0.00     151.96      -0.00       0.00      -0.00

   33  10.1  1.0  0.0      -0.00       0.00       0.00      -0.00    -151.99      -0.00       0.00      -0.00    -185.20      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00    -151.96       0.00      -0.00      -0.00     185.23

   34  11.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -8.23       0.00       0.00      -0.00     293.38
                           -0.00       0.00       0.00       0.00      -8.29       0.00       0.00       0.00    -293.38       0.00

   35  12.1  1.0  0.0       9.80       3.20      -0.01      -0.00       0.00      -0.00     185.20       0.00       0.00       0.00
                            0.00       0.00      -0.00    -193.49      -0.00      -0.00       0.00     293.38       0.00       0.00

   36  13.1  1.0  0.0       0.00      -0.00      -0.00    -193.47      -0.00       0.00       0.00    -293.38      -0.00       0.00
                            9.80      -3.20      -0.01      -0.00      -0.00       0.00    -185.23      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.04      -0.00       0.00       0.00      -0.19
                            0.00       0.00      -0.00       0.00      -0.04       0.00       0.00       0.00       0.19       0.00

   38  15.1  1.0  0.0      -0.00       0.00      -0.00       0.10      -0.00       0.00      -0.00       0.19       0.00       0.00
                            6.53     -11.15     -48.12      -0.00      -0.00       0.00       0.06       0.00      -0.00      -0.00

   39  16.1  1.0  0.0       6.53      11.15     -48.12       0.00       0.00      -0.00      -0.06       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.10       0.00      -0.00       0.00      -0.19      -0.00      -0.00

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

    1   1.1  0.0  0.0       0.00       0.00    -256.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -256.07      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00      -0.00    -184.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     179.91       0.00     358.39      -0.00       0.00      -0.00       0.00      -0.00     -40.83

    3   3.1  0.0  0.0       0.00      -0.00    -100.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -109.61      -0.00      -8.50       0.00      -0.00      -0.00       0.00      -0.00       0.97

    4   4.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -182.54       0.00      -0.00      -0.00      -0.00     179.40      -0.00      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0     182.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -179.40      -0.00      -0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00    -182.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -182.53       0.00       0.00       0.00       0.00    -358.70       0.00      -0.00

    7   7.1  0.0  0.0       0.00      -0.00    -135.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -135.42      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00     119.46      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00    -119.46      -0.00       0.00      -0.00       0.00      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00     206.86    -119.43       0.00       0.00
                            0.00      15.78      -0.00     119.46       0.00      -0.00       0.00       0.00       0.00       9.03

   10   3.1  1.0  1.0       0.00       0.00       0.00    -119.46      -0.00       0.00       0.00      -0.00       0.00      -9.03
                           -0.00       0.00     -15.78       0.00       0.00       0.00    -206.86    -119.43      -0.00      -0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00    -206.86      -0.00      -0.00      -0.00       0.00      -0.00
                          -18.05      -0.00       0.00      -0.00      -0.00     206.86       0.00       0.00      -0.00      -0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00     119.43       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     119.43      -0.00       0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          -68.07       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       9.03       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -9.03       0.00       0.00       0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.25      10.90      -0.01      -0.00
                            0.00       0.16       0.00      11.08      -0.00      -0.00       0.00       0.00       0.00     141.33

   16   9.1  1.0  1.0       0.00       0.00       0.00      11.08       0.00       0.00      -0.00       0.00       0.00     141.37
                            0.00      -0.00       0.16      -0.00      -0.00      -0.00      -0.25     -10.90      -0.01       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00      -0.00      -9.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -9.00      -0.00      -0.00       0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -6.93      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -6.93      -0.00      -0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00      -9.80      -3.20       0.01       0.00
                            0.00      -0.06      -0.00       2.57       0.00      -0.00       0.00       0.00      -0.00    -193.49

   20  13.1  1.0  1.0       0.00       0.00       0.00      -2.57       0.00      -0.00      -0.00       0.00       0.00     193.47
                            0.00      -0.00       0.06      -0.00      -0.00      -0.00       9.80      -3.20      -0.01      -0.00

   21  14.1  1.0  1.0   32123.80       0.00       0.00      -0.00      -0.00      11.17      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      11.17      -0.00       0.00       0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00   32123.90       0.00     -11.18       0.00       0.00       0.00      -0.00       0.00      -0.10
                           -0.00       0.00     653.82       0.00      -0.00      -0.00       6.53     -11.15     -48.12      -0.00

   23  16.1  1.0  1.0       0.00       0.00   32123.90       0.00       0.00       0.00      -6.53     -11.15      48.12      -0.00
                           -0.00    -653.82       0.00      11.18       0.00       0.00       0.00      -0.00       0.00       0.10

   24   1.1  1.0  0.0      -0.00     -11.18       0.00   14499.91       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -11.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00       0.00       0.00       0.00   14499.91       0.00       0.00       0.00       0.00       0.00
                          -11.17       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0      11.17       0.00       0.00       0.00       0.00   14499.91       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0      -0.00       0.00      -6.53       0.00       0.00       0.00   14499.98       0.00       0.00       0.00
                           -0.00      -6.53      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0      -0.00      -0.00     -11.15       0.00       0.00       0.00       0.00   14500.03       0.00       0.00
                           -0.00      11.15       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0      -0.00       0.00      48.12       0.00       0.00       0.00       0.00       0.00   26598.48       0.00
                            0.00      48.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0      -0.00      -0.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.38
                           -0.00       0.00      -0.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -0.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00    -462.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     462.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0     462.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -462.33       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -119.46       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -119.46      -0.00       0.00      -0.00       0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00    -206.86     119.43      -0.00      -0.00
                           -0.00      -0.00      -0.00     119.46      -0.00      -0.00       0.00       0.00       0.00       9.03

   42   3.1  1.0 -1.0       0.00       0.00       0.00     119.46       0.00       0.00      -0.00       0.00      -0.00       9.03
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00    -206.86    -119.43      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00      -0.00     206.86       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     206.86      -0.00       0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -119.43      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     119.43      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -9.03      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -9.03       0.00       0.00       0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.25     -10.90       0.01       0.00
                           -0.00      -0.00      -0.00      11.08      -0.00      -0.00       0.00       0.00       0.00     141.33

   48   9.1  1.0 -1.0       0.00       0.00       0.00     -11.08      -0.00      -0.00       0.00      -0.00      -0.00    -141.37
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.25     -10.90      -0.01       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       9.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -9.00      -0.00      -0.00       0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       6.93       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -6.93      -0.00      -0.00       0.00       0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       9.80       3.20      -0.01      -0.00
                           -0.00      -0.00      -0.00       2.57       0.00      -0.00       0.00       0.00      -0.00    -193.49

   52  13.1  1.0 -1.0       0.00       0.00       0.00       2.57      -0.00       0.00       0.00      -0.00      -0.00    -193.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       9.80      -3.20      -0.01      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     -11.17       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      11.17      -0.00       0.00       0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00      11.18      -0.00      -0.00      -0.00       0.00      -0.00       0.10
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       6.53     -11.15     -48.12      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       6.53      11.15     -48.12       0.00
                           -0.00      -0.00      -0.00      11.18       0.00       0.00       0.00      -0.00       0.00       0.10


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.15      -0.00      -0.00    -362.15       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       1.31      -0.00       0.00       7.06       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      55.26       0.00       0.00     297.84      -0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -1.51       0.00       0.00      -0.00      51.58      -0.00    -258.15      -0.00    -126.85

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     126.85
                           -1.52       0.00       0.00       0.00     -51.58       0.00       0.00      -0.00     258.15       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -40.76       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.06       0.00      -0.00    -191.53      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00     -11.08       0.00      -0.00      -0.00       2.57       0.00      11.18      -0.00       0.00
                          -11.08       0.00       0.00       0.00      -2.57       0.00       0.00      -0.00     -11.18       0.00

    9   2.1  1.0  1.0      -0.00      -0.00       9.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       6.93      -0.00       0.00     -11.17       0.00      -0.00       0.00

   10   3.1  1.0  1.0      -0.00      -0.00      -0.00       6.93      -0.00       0.00     -11.17      -0.00      -0.00       0.00
                            0.00       0.00       9.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   11   4.1  1.0  1.0       0.25       0.00      -0.00       0.00       9.80       0.00       0.00      -0.00       6.53       0.00
                           -0.00       0.25       0.00       0.00      -0.00      -9.80      -0.00      -6.53      -0.00       0.00

   12   5.1  1.0  1.0     -10.90      -0.00       0.00      -0.00       3.20      -0.00       0.00       0.00      11.15       0.00
                           -0.00      10.90       0.00      -0.00      -0.00       3.20      -0.00      11.15       0.00       0.00

   13   6.1  1.0  1.0       0.01      -0.00       0.00       0.00      -0.01      -0.00       0.00      -0.00     -48.12       0.00
                           -0.00       0.01      -0.00      -0.00       0.00       0.01       0.00      48.12      -0.00       0.00

   14   7.1  1.0  1.0       0.00    -141.37      -0.00      -0.00      -0.00    -193.47       0.00       0.10       0.00       0.00
                         -141.33      -0.00       0.00      -0.00     193.49       0.00      -0.00       0.00      -0.10       0.00

   15   8.1  1.0  1.0      -0.00       0.00    -151.99      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       8.29       0.00       0.00       0.04       0.00      -0.00       0.00

   16   9.1  1.0  1.0      -0.00      -0.00      -0.00      -8.23      -0.00       0.00      -0.04       0.00      -0.00       0.00
                            0.00      -0.00     151.96      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   17  10.1  1.0  1.0     151.99       0.00       0.00       0.00     185.20       0.00      -0.00      -0.00      -0.06       0.00
                            0.00    -151.96      -0.00      -0.00      -0.00     185.23      -0.00      -0.06      -0.00       0.00

   18  11.1  1.0  1.0       0.00       8.23      -0.00       0.00       0.00    -293.38       0.00       0.19       0.00       0.00
                           -8.29       0.00       0.00      -0.00    -293.38       0.00      -0.00      -0.00       0.19       0.00

   19  12.1  1.0  1.0      -0.00       0.00    -185.20      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     293.38      -0.00       0.00      -0.19       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00      -0.00      -0.00     293.38       0.00       0.00      -0.19       0.00      -0.00       0.00
                           -0.00       0.00    -185.23      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.04       0.00      -0.00      -0.00       0.19      -0.00     462.33      -0.00       0.00
                           -0.04       0.00       0.00       0.00       0.19       0.00       0.00       0.00     462.33       0.00

   22  15.1  1.0  1.0       0.00      -0.00       0.00      -0.19      -0.00      -0.00    -462.33       0.00      -0.00       0.00
                           -0.00       0.00       0.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   23  16.1  1.0  1.0      -0.00       0.00       0.06      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.19      -0.00      -0.00    -462.33       0.00      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     119.46

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -119.46
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   8.1  1.0  0.0   30746.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.08

   32   9.1  1.0  0.0       0.00   30746.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.08
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00   30746.65       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   30746.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   30746.68       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       2.57

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   30746.68       0.00       0.00       0.00      -2.57
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32123.80       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32123.90       0.00     -11.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32123.90       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      11.18

   40   1.1  1.0 -1.0       0.00      11.08      -0.00       0.00       0.00      -2.57      -0.00     -11.18       0.00   14499.91
                          -11.08       0.00       0.00       0.00      -2.57       0.00       0.00      -0.00     -11.18      -0.00

   41   2.1  1.0 -1.0       0.00       0.00      -9.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       6.93      -0.00       0.00     -11.17       0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00      -6.93       0.00      -0.00      11.17       0.00       0.00       0.00
                            0.00       0.00       9.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   43   4.1  1.0 -1.0      -0.25      -0.00       0.00      -0.00      -9.80      -0.00      -0.00       0.00      -6.53       0.00
                           -0.00       0.25       0.00       0.00      -0.00      -9.80      -0.00      -6.53      -0.00      -0.00

   44   5.1  1.0 -1.0      10.90       0.00      -0.00       0.00      -3.20       0.00      -0.00      -0.00     -11.15       0.00
                           -0.00      10.90       0.00      -0.00      -0.00       3.20      -0.00      11.15       0.00     337.79

   45   6.1  1.0 -1.0      -0.01       0.00      -0.00      -0.00       0.01       0.00      -0.00       0.00      48.12       0.00
                           -0.00       0.01      -0.00      -0.00       0.00       0.01       0.00      48.12      -0.00       0.00

   46   7.1  1.0 -1.0      -0.00     141.37       0.00       0.00       0.00     193.47      -0.00      -0.10      -0.00       0.00
                         -141.33      -0.00       0.00      -0.00     193.49       0.00      -0.00       0.00      -0.10       0.00

   47   8.1  1.0 -1.0      -0.00      -0.00     151.99       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       8.29       0.00       0.00       0.04       0.00      -0.00       0.00

   48   9.1  1.0 -1.0       0.00      -0.00       0.00       8.23       0.00      -0.00       0.04      -0.00       0.00       0.00
                            0.00       0.00     151.96      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   49  10.1  1.0 -1.0    -151.99      -0.00       0.00      -0.00    -185.20      -0.00       0.00       0.00       0.06       0.00
                            0.00    -151.96       0.00      -0.00      -0.00     185.23      -0.00      -0.06      -0.00      12.57

   50  11.1  1.0 -1.0      -0.00      -8.23       0.00       0.00      -0.00     293.38      -0.00      -0.19      -0.00       0.00
                           -8.29       0.00       0.00       0.00    -293.38       0.00      -0.00      -0.00       0.19      -0.00

   51  12.1  1.0 -1.0       0.00      -0.00     185.20       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00     293.38       0.00       0.00      -0.19       0.00       0.00       0.00

   52  13.1  1.0 -1.0      -0.00       0.00       0.00    -293.38      -0.00       0.00       0.19      -0.00       0.00       0.00
                           -0.00       0.00    -185.23      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   53  14.1  1.0 -1.0      -0.00      -0.04      -0.00       0.00       0.00      -0.19      -0.00    -462.33       0.00       0.00
                           -0.04       0.00       0.00       0.00       0.19       0.00      -0.00       0.00     462.33      -0.00

   54  15.1  1.0 -1.0      -0.00       0.00      -0.00       0.19       0.00       0.00     462.33       0.00       0.00       0.00
                           -0.00       0.00       0.06       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   55  16.1  1.0 -1.0       0.00      -0.00      -0.06       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.19      -0.00      -0.00    -462.33       0.00       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0      -0.01       0.00       0.00      -0.00       0.00      -0.00       0.04      -0.00      -0.00      -0.00
                           -0.00       0.01       0.00      -0.00      -0.00      -0.00       0.00       0.04       0.00      -0.00

    2   2.1  0.0  0.0    -121.55      -0.00      -0.00      -0.00       0.00      -0.00      35.21       0.00      -0.00      -0.00
                            0.00    -131.95       0.00       0.00       0.00       0.00       0.00     -35.25      -0.00       0.00

    3   3.1  0.0  0.0     222.46       0.00       0.00       0.00       0.00       0.00      -1.71      -0.00       0.00      -0.00
                            0.00    -216.45       0.00      -0.00       0.00       0.00       0.00      -0.03      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00    -219.65     126.82       0.00      -0.00       0.00       0.00     -28.88      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     -28.89      -0.00       0.00      -0.00     -22.31

    5   5.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00      28.89       0.00       0.00      -0.00     -22.31
                           -0.00       0.00     219.65     126.82      -0.00       0.00      -0.00       0.00     -28.88       0.00

    6   6.1  0.0  0.0       0.00    -126.86       0.00       0.00       0.00       0.00       0.00      35.57      -0.00       0.00
                          126.86       0.00       0.00       0.00      -0.00       0.00      35.57       0.00       0.00       0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.02      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.02       0.00      -0.00

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

   24   1.1  1.0  0.0      -0.00     119.46      -0.00      -0.00      -0.00      -0.00      -0.00     -11.08       0.00      -0.00
                         -119.46      -0.00       0.00      -0.00       0.00      -0.00     -11.08       0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00       0.00     206.86    -119.43       0.00       0.00      -0.00      -0.00       9.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       9.03       0.00       0.00      -0.00       6.93

   26   3.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -9.03      -0.00      -0.00      -0.00       6.93
                            0.00       0.00    -206.86    -119.43      -0.00      -0.00       0.00       0.00       9.00       0.00

   27   4.1  1.0  0.0    -206.86      -0.00      -0.00      -0.00       0.00      -0.00       0.25       0.00      -0.00       0.00
                           -0.00     206.86       0.00       0.00      -0.00      -0.00      -0.00       0.25       0.00       0.00

   28   5.1  1.0  0.0     119.43       0.00       0.00       0.00      -0.00      -0.00     -10.90      -0.00       0.00      -0.00
                           -0.00     119.43      -0.00       0.00      -0.00      -0.00      -0.00      10.90       0.00      -0.00

   29   6.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01      -0.00      -0.00

   30   7.1  1.0  0.0      -0.00       9.03       0.00       0.00      -0.00      -0.00       0.00    -141.37      -0.00      -0.00
                           -9.03       0.00       0.00       0.00      -0.00       0.00    -141.33      -0.00       0.00      -0.00

   31   8.1  1.0  0.0       0.00       0.00      -0.25      10.90      -0.01      -0.00      -0.00       0.00    -151.99      -0.00
                           -0.00      -0.00       0.00       0.00       0.00     141.33      -0.00      -0.00      -0.00       8.29

   32   9.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00     141.37      -0.00      -0.00      -0.00      -8.23
                           -0.00      -0.00      -0.25     -10.90      -0.01       0.00       0.00      -0.00     151.96      -0.00

   33  10.1  1.0  0.0      -9.00       0.00       0.00      -0.00      -0.00       0.00     151.99       0.00       0.00       0.00
                            0.00      -9.00      -0.00      -0.00       0.00      -0.00       0.00    -151.96      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -6.93      -0.00       0.00      -0.00       0.00       0.00       8.23      -0.00       0.00
                           -6.93      -0.00      -0.00       0.00       0.00       0.00      -8.29       0.00       0.00      -0.00

   35  12.1  1.0  0.0      -0.00       0.00      -9.80      -3.20       0.01       0.00      -0.00       0.00    -185.20      -0.00
                            0.00      -0.00       0.00       0.00      -0.00    -193.49      -0.00      -0.00       0.00     293.38

   36  13.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00     193.47       0.00      -0.00      -0.00     293.38
                           -0.00      -0.00       9.80      -3.20      -0.01      -0.00      -0.00       0.00    -185.23      -0.00

   37  14.1  1.0  0.0      -0.00      11.17      -0.00      -0.00      -0.00      -0.00       0.00       0.04       0.00      -0.00
                           11.17      -0.00       0.00       0.00      -0.00       0.00      -0.04       0.00       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.10       0.00      -0.00       0.00      -0.19
                           -0.00      -0.00       6.53     -11.15     -48.12      -0.00      -0.00       0.00       0.06       0.00

   39  16.1  1.0  0.0       0.00       0.00      -6.53     -11.15      48.12      -0.00      -0.00       0.00       0.06      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.10       0.00      -0.00       0.00      -0.19

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -337.79      -0.00      -0.00      -0.00      -0.00     -12.57       0.00

   41   2.1  1.0 -1.0   14499.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     168.94      -0.00       0.00      -0.00      -0.00      -0.00      -0.51      -0.00       0.00

   42   3.1  1.0 -1.0       0.00   14499.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -168.94       0.00      -0.00      -0.00      -0.00       0.00      -0.52       0.00       0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00   14499.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      17.13

   44   5.1  1.0 -1.0       0.00       0.00       0.00   14500.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     -12.56       0.00      -0.00      -0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26598.48       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.03

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   30746.38       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      12.56      -0.00      -0.00       0.00      -0.00     338.97       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   30746.37       0.00       0.00       0.00
                            0.00       0.52       0.00      -0.00       0.00      -0.00       0.00     507.79       0.00       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.37       0.00       0.00
                            0.51      -0.00      -0.00       0.00      -0.00       0.00    -507.79      -0.00       0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.65       0.00
                            0.00      -0.00       0.00       0.00      -0.00    -338.97      -0.00      -0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   30746.66
                           -0.00      -0.00     -17.13      -0.00      -0.03      -0.00      -0.00       0.00      -0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      16.06       0.00      -0.00       0.00      -0.00      -0.00     -19.05       0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.07      -0.00      -0.00      -0.00      -0.00       0.00     -18.99      -0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -18.05      -0.00     -68.07      -0.00       0.00       0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.78       0.00      -0.00      -0.00       0.00      -0.00       0.16      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -15.78       0.00      -0.00      -0.00       0.00       0.00       0.16      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0      -0.08      -0.00       0.00       0.00    -256.07
                           -0.00       0.08       0.00     256.07       0.00

    2   2.1  0.0  0.0     -11.02      -0.00       0.00      -0.00    -184.90
                            0.00      -9.50      -0.00    -179.91      -0.00

    3   3.1  0.0  0.0     -31.61      -0.00       0.00      -0.00    -100.96
                            0.00      32.09       0.00     109.61       0.00

    4   4.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00     182.54      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00     182.54       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -8.18      -0.00    -182.53       0.00
                            8.18      -0.00      -0.00      -0.00     182.53

    7   7.1  0.0  0.0      -0.04      -0.00       0.00      -0.00    -135.42
                           -0.00       0.04       0.00     135.42       0.00

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

   24   1.1  1.0  0.0      -0.00       2.57       0.00      11.18      -0.00
                           -2.57       0.00       0.00      -0.00     -11.18

   25   2.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00     -11.17       0.00      -0.00

   26   3.1  1.0  0.0      -0.00       0.00     -11.17      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00

   27   4.1  1.0  0.0       9.80       0.00       0.00      -0.00       6.53
                           -0.00      -9.80      -0.00      -6.53      -0.00

   28   5.1  1.0  0.0       3.20      -0.00       0.00       0.00      11.15
                           -0.00       3.20      -0.00      11.15       0.00

   29   6.1  1.0  0.0      -0.01      -0.00       0.00      -0.00     -48.12
                            0.00       0.01       0.00      48.12      -0.00

   30   7.1  1.0  0.0      -0.00    -193.47       0.00       0.10       0.00
                          193.49       0.00      -0.00       0.00      -0.10

   31   8.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.04       0.00      -0.00

   32   9.1  1.0  0.0      -0.00       0.00      -0.04       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00

   33  10.1  1.0  0.0     185.20       0.00      -0.00      -0.00      -0.06
                           -0.00     185.23      -0.00      -0.06      -0.00

   34  11.1  1.0  0.0       0.00    -293.38       0.00       0.19       0.00
                         -293.38       0.00      -0.00      -0.00       0.19

   35  12.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.19       0.00       0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.19       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00

   37  14.1  1.0  0.0      -0.00       0.19      -0.00     462.33      -0.00
                            0.19       0.00       0.00       0.00     462.33

   38  15.1  1.0  0.0      -0.00      -0.00    -462.33       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -462.33       0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      16.07      -0.00     -15.78       0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -16.06       0.00       0.00      -0.00      15.78

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      18.05       0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      68.07      -0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      18.99      -0.00      -0.16      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           19.05       0.00      -0.00       0.00      -0.16

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   51  12.1  1.0 -1.0   30746.68       0.00       0.00       0.00       0.00
                           -0.00     168.98      -0.00       0.06       0.00

   52  13.1  1.0 -1.0       0.00   30746.68       0.00       0.00       0.00
                         -168.98      -0.00      -0.00       0.00      -0.06

   53  14.1  1.0 -1.0       0.00       0.00   32123.80       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   32123.90       0.00
                           -0.06      -0.00       0.00      -0.00    -653.82

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   32123.90
                           -0.00       0.06       0.00     653.82      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by    -23.94243722 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   17256.053       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   17256.056       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   17256.066       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   17256.065       0.000       0.000     179.392
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   17256.061       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27734.438      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000     179.392       0.000      -0.000   14499.912
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.007    -171.894     314.611      -0.000      -0.000       0.000      -0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000    -179.402       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000    -310.637      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000     179.347      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000      40.857       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.058      49.791      -2.420       0.000       0.000       0.000       0.030       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      50.301      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000     -40.846      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000      -0.000     -31.555       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.117     -15.578     -44.697      -0.000       0.000       0.000      -0.053       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000     -11.572      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000      -0.000     258.155      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000    -258.141      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+           -362.140    -261.491    -142.784      -0.000       0.000       0.000    -191.509       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -358.395       8.496       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000     179.398      -0.000      -0.000     168.941

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -179.398       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.002      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000     358.698      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      40.827      -0.968       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       1.519       0.000      -0.000      15.669

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       1.509      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      40.764      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.151      -1.310     -55.257      -0.000      -0.000      -0.000       0.065      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      51.576       0.000      -0.000       3.630

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -51.576      -0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              362.147      -7.060    -297.840       0.000      -0.000      -0.000     191.533      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000     258.154       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -258.155       0.000      -0.000      15.805

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -179.392       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000     179.402      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007    -186.608    -306.113       0.000       0.000       0.000       0.001       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     310.635       0.000      -0.000       0.002

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     179.350       0.000      -0.000    -337.789

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -40.857       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      50.303       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.058     -49.852      -0.049       0.000       0.000       0.000       0.030      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -40.846       0.000       0.000     -12.568

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -31.555       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      11.562      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.117     -13.433      45.385       0.000      -0.000      -0.000       0.053      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     258.155       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              362.140    -254.432     155.013      -0.000      -0.000      -0.000     191.509      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     258.141       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.007       0.000       0.000      -0.000       0.000      -0.000       0.058      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -171.894      -0.000      -0.000      -0.000       0.000      -0.000      49.791       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             314.611       0.000       0.000       0.000       0.000       0.000      -2.420      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000    -310.637     179.347       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000      -0.000      -0.000      -0.000      40.857       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000    -179.402       0.000       0.000       0.000       0.000       0.000      50.301
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.001       0.000       0.000      -0.000       0.000      -0.000       0.030      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          14499.908       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   14499.908       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   14499.982       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   14500.033       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26598.477       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   30746.385       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   30746.374       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30746.374
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

    1    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                             -168.941      -0.000       0.000      -0.000       0.000      -0.000     -15.669       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      12.770       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -292.539    -168.904      -0.003      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     292.539       0.000       0.000      -0.000      -0.000      -0.000       0.348

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     168.904      -0.000       0.000      -0.000      -0.000      -0.000      15.415

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.003       0.000       0.000       0.000       0.000      -0.000       0.012

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -12.770       0.000       0.000       0.000      -0.000       0.000    -199.870      -0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000     199.870       0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.348     -15.415      -0.012       0.000       0.000       0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     -12.732      -0.000      -0.000       0.000      -0.000       0.000    -214.901

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.797      -0.000      -0.000       0.000       0.000       0.000     -11.722       0.000

   12    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000    -273.642      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      13.866      -4.522      -0.021      -0.000      -0.000       0.000

   14    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               15.800      -0.000       0.000       0.000      -0.000       0.000      -0.051       0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       9.230     -15.775     -68.050      -0.000      -0.000       0.000

   16    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.142       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002     337.789       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -168.937       0.000      -0.000       0.000       0.000       0.000       0.512

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              168.937      -0.000       0.000       0.000       0.000      -0.000       0.515      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      12.565      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -12.565       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.515      -0.000       0.000      -0.000       0.000      -0.000    -507.791

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.512       0.000       0.000      -0.000       0.000      -0.000     507.791       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     338.967       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      17.128       0.000       0.027       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -16.065      -0.000       0.000      -0.000       0.000       0.000      19.051

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.065       0.000       0.000       0.000       0.000      -0.000      18.987       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      18.050       0.000      68.072       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.778      -0.000       0.000       0.000      -0.000       0.000      -0.162       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      15.778      -0.000       0.000       0.000      -0.000      -0.000      -0.163

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000      -0.000      -0.117      -0.000       0.000       0.000    -362.140       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>              -0.000      -0.000     -15.578      -0.000       0.000      -0.000    -261.491       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     358.395

    3    1  |0 0>               0.000      -0.000     -44.697      -0.000       0.000      -0.000    -142.784       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -8.496

    4    1  |0 0>             -40.846      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>              -0.000     -31.555       0.000       0.000     258.155       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>              -0.000       0.000       0.000     -11.572      -0.000    -258.141       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000      -0.000      -0.053      -0.000       0.000      -0.000    -191.509       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     168.941

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      15.669

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+          30746.655       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000   30746.658       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000   30746.683       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       3.630

   13    1  |1 1>+              0.000       0.000       0.000   30746.683       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   32123.798       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32123.900       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32123.900       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      15.805

    1    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000   14499.912
                                0.000       0.000      -3.630       0.000       0.000      -0.000     -15.805       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       9.797      -0.000       0.000     -15.800       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               12.732       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000     -13.866      -0.000      -9.230      -0.000      -0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       4.522      -0.000      15.775       0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.021       0.000      68.050      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000     273.642       0.000      -0.000       0.000      -0.142      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      11.722       0.000       0.000       0.051       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              214.901      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000     261.948      -0.000      -0.082      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000    -414.900       0.000      -0.000      -0.000       0.264      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     414.900       0.000       0.000      -0.263       0.000       0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -261.948      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.263       0.000       0.000       0.000     653.831      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.082       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.264      -0.000      -0.000    -653.831       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.568      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -16.065       0.000      15.778      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -168.941
                               -0.000      -0.000      16.065      -0.000      -0.000       0.000     -15.778      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.128       0.000      -0.000     -18.050      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.027       0.000      -0.000     -68.072       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -338.967      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -18.987       0.000       0.162       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      15.668
                               -0.000       0.000     -19.051      -0.000       0.000      -0.000       0.163      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.001       0.000       0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -168.983       0.000      -0.060      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -3.633
                               -0.000       0.000     168.983       0.000       0.000      -0.000       0.060       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -15.805
                                0.000       0.000       0.060       0.000      -0.000       0.000     653.825      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.060      -0.000    -653.825       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000     -40.827       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.968      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     179.398      -0.000      -0.000      -0.000      -0.000      -0.000      -1.509

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -179.398      -0.000      -0.000      -0.000      -0.000       0.000      -1.519       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.002    -358.698       0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                             -168.941      -0.000       0.000      -0.000       0.000      -0.000     -15.669       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      12.770       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -292.539    -168.904      -0.003      -0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     292.539       0.000       0.000      -0.000      -0.000      -0.000       0.348

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     168.904      -0.000       0.000      -0.000      -0.000      -0.000      15.415

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.003       0.000       0.000       0.000       0.000      -0.000       0.012

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -12.770       0.000       0.000       0.000      -0.000       0.000    -199.870      -0.000

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000     199.870       0.000      -0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.348     -15.415      -0.012       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     -12.732      -0.000      -0.000       0.000      -0.000       0.000    -214.901

   11    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.797      -0.000      -0.000       0.000       0.000       0.000     -11.722       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000    -273.642      -0.000      -0.000

   13    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      13.866      -4.522      -0.021      -0.000      -0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               15.800      -0.000       0.000       0.000      -0.000       0.000      -0.051       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       9.230     -15.775     -68.050      -0.000      -0.000       0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.142       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           14499.908       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   14499.908       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   14499.982       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   14500.033       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26598.477       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   30746.385       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   30746.374       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   30746.374
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

    1    1  |1 1>-             -0.000     168.941      -0.000      -0.000      -0.000      -0.000      -0.000     -15.668
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000     292.540    -168.901       0.003       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000      -0.000       0.000     -12.770      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-           -292.540      -0.000       0.000      -0.000       0.000      -0.000       0.351       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-            168.901       0.000       0.000       0.000      -0.000      -0.000     -15.414      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.003      -0.000      -0.000       0.000       0.000       0.000       0.012      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-             -0.000      12.770       0.000       0.000      -0.000       0.000       0.000    -199.922
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.351      15.414      -0.012      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000     199.922      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-            -12.732       0.000       0.000      -0.000      -0.000       0.000     214.950       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000      -9.797      -0.000       0.000      -0.000       0.000       0.000      11.646
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-             -0.000       0.000     -13.866      -4.525       0.021       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   13    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000     273.608       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-             -0.000      15.800      -0.000      -0.000      -0.000      -0.000       0.000       0.051
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.142       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000      -9.230     -15.775      68.050      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.151      -0.000      -0.000    -362.147       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.310      -0.000       0.000       7.060       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      55.257       0.000       0.000     297.840      -0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      51.576      -0.000    -258.154      -0.000     179.392

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -51.576       0.000       0.000      -0.000     258.155      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -40.764       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.065       0.000      -0.000    -191.533      -0.000       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -3.630       0.000       0.000      -0.000     -15.805       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       9.797      -0.000       0.000     -15.800       0.000      -0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               12.732       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000     -13.866      -0.000      -9.230      -0.000       0.002

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       4.522      -0.000      15.775       0.000    -337.789

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.021       0.000      68.050      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000     273.642       0.000      -0.000       0.000      -0.142      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      11.722       0.000       0.000       0.051       0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              214.901      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000     261.948      -0.000      -0.082      -0.000     -12.568

   11    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000    -414.900       0.000      -0.000      -0.000       0.264       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     414.900       0.000       0.000      -0.263       0.000       0.000      -0.000

   13    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -261.948      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.263       0.000       0.000       0.000     653.831       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.082       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.264      -0.000      -0.000    -653.831       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     168.941
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -15.668
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>           30746.655       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000   30746.658       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000   30746.683       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000   30746.683       0.000       0.000       0.000       3.633
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   32123.798       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32123.900       0.000      15.805
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32123.900      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -0.000       3.633       0.000      15.805      -0.000   14499.912
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-             12.732       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-             -0.000       9.797      -0.000       0.000     -15.800      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000      13.866       0.000       0.000      -0.000       9.230       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000      -0.000       4.525      -0.000       0.000       0.000      15.775       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000      -0.021      -0.000       0.000      -0.000     -68.050       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-             -0.000      -0.000      -0.000    -273.608       0.000       0.142       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-           -214.950      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-             -0.000     -11.646      -0.000       0.000      -0.051       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000     261.908       0.000      -0.000      -0.000      -0.082       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -0.000       0.000       0.000    -414.900       0.000       0.264       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-           -261.908      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000     414.900       0.000       0.000      -0.263       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000      -0.000      -0.000       0.263       0.000     653.831      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000      -0.264      -0.000      -0.000    -653.831       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.082      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.007      -0.000       0.000       0.000       0.000      -0.000      -0.058

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     186.608      -0.000      -0.000      -0.000      -0.000      -0.000      49.852

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     306.113      -0.000       0.000      -0.000      -0.000      -0.000       0.049

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      40.857       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -310.635    -179.350       0.000      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -179.402      -0.000      -0.000      -0.000       0.000      -0.000     -50.303      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.001       0.000       0.000       0.000       0.000      -0.000      -0.030

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002     337.789       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -168.937       0.000      -0.000       0.000       0.000       0.000       0.512

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              168.937      -0.000       0.000       0.000       0.000      -0.000       0.515      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      12.565      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -12.565       0.000       0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.515      -0.000       0.000      -0.000       0.000      -0.000    -507.791

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.512       0.000       0.000      -0.000       0.000      -0.000     507.791       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     338.967       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      17.128       0.000       0.027       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -16.065      -0.000       0.000      -0.000       0.000       0.000      19.051

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.065       0.000       0.000       0.000       0.000      -0.000      18.987       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      18.050       0.000      68.072       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.778      -0.000       0.000       0.000      -0.000       0.000      -0.162       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      15.778      -0.000       0.000       0.000      -0.000      -0.000      -0.163

    1    1  |1 0>               0.000    -168.941       0.000       0.000       0.000       0.000       0.000      15.668
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000    -292.540     168.901      -0.003      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      12.770       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>             292.540       0.000       0.000       0.000      -0.000       0.000      -0.351      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>            -168.901      -0.000      -0.000       0.000       0.000       0.000      15.414       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.003       0.000       0.000      -0.000       0.000      -0.000      -0.012       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000     -12.770      -0.000      -0.000       0.000       0.000      -0.000     199.922
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.351     -15.414       0.012       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000    -199.922       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   10    1  |1 0>              12.732      -0.000      -0.000       0.000       0.000      -0.000    -214.950      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 0>               0.000       9.797       0.000      -0.000       0.000      -0.000      -0.000     -11.646
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000      13.866       4.525      -0.021      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000    -273.608      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000     -15.800       0.000       0.000       0.000       0.000      -0.000      -0.051
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.142      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000       9.230      15.775     -68.050       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          14499.908       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   14499.908       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   14499.982       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   14500.033       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26598.477       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   30746.385       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   30746.374       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   30746.374
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
                               -0.000       0.000       0.000      -0.117      -0.000    -362.140      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      13.433       0.000     254.432       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -45.385      -0.000    -155.013      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      31.555      -0.000      -0.000    -258.155       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               40.846      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -11.562       0.000       0.000       0.000    -258.141

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.053      -0.000    -191.509      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.568      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -16.065       0.000      15.778      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      16.065      -0.000      -0.000       0.000     -15.778

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.128       0.000      -0.000     -18.050      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.027       0.000      -0.000     -68.072       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -338.967      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -18.987       0.000       0.162       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -19.051      -0.000       0.000      -0.000       0.163

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -168.983       0.000      -0.060      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     168.983       0.000       0.000      -0.000       0.060

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.060       0.000      -0.000       0.000     653.825

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.060      -0.000    -653.825       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -3.633      -0.000     -15.805       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>             -12.732      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -9.797       0.000      -0.000      15.800       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000     -13.866      -0.000      -0.000       0.000      -9.230
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -4.525       0.000      -0.000      -0.000     -15.775
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.021       0.000      -0.000       0.000      68.050
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000     273.608      -0.000      -0.142      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>             214.950       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000      11.646       0.000      -0.000       0.051      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000      -0.000    -261.908      -0.000       0.000       0.000       0.082
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000      -0.000     414.900      -0.000      -0.264      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>             261.908       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000    -414.900      -0.000       0.000       0.263      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.263       0.000    -653.831       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 0>              -0.000       0.264       0.000       0.000     653.831       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.082       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

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

   10    1  |1 1>-          30746.655       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   30746.658       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   30746.683       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   30746.683       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   32123.798       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32123.900       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32123.900
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -23.94249538    -0.00005816      -12.76      0.00000000        0.00      0.0000
    2   -23.87867953     0.06375770    13993.20      0.06381585    14005.96      1.7365
    3   -23.87867946     0.06375777    13993.21      0.06381592    14005.98      1.7365
    4   -23.87867946     0.06375777    13993.21      0.06381592    14005.98      1.7365
    5   -23.87743600     0.06500123    14266.12      0.06505938    14278.88      1.7704
    6   -23.87743590     0.06500133    14266.14      0.06505948    14278.91      1.7704
    7   -23.87743578     0.06500144    14266.17      0.06505960    14278.93      1.7704
    8   -23.87743578     0.06500144    14266.17      0.06505960    14278.93      1.7704
    9   -23.87743573     0.06500149    14266.18      0.06505965    14278.94      1.7704
   10   -23.87483173     0.06760550    14837.69      0.06766365    14850.45      1.8412
   11   -23.87483165     0.06760557    14837.71      0.06766373    14850.47      1.8412
   12   -23.87483165     0.06760557    14837.71      0.06766373    14850.47      1.8412
   13   -23.87483159     0.06760564    14837.72      0.06766379    14850.49      1.8412
   14   -23.87483159     0.06760564    14837.72      0.06766379    14850.49      1.8412
   15   -23.87483152     0.06760570    14837.74      0.06766386    14850.50      1.8412
   16   -23.87483147     0.06760575    14837.75      0.06766391    14850.51      1.8412
   17   -23.86355929     0.07887793    17311.71      0.07893609    17324.47      2.1480
   18   -23.86355920     0.07887802    17311.72      0.07893618    17324.49      2.1480
   19   -23.86355884     0.07887838    17311.80      0.07893654    17324.57      2.1480
   20   -23.86355884     0.07887838    17311.80      0.07893654    17324.57      2.1480
   21   -23.86355884     0.07887839    17311.80      0.07893654    17324.57      2.1480
   22   -23.82125431     0.12118292    26596.58      0.12124107    26609.34      3.2991
   23   -23.82125431     0.12118292    26596.58      0.12124107    26609.34      3.2991
   24   -23.82125430     0.12118292    26596.58      0.12124108    26609.34      3.2991
   25   -23.81622995     0.12620728    27699.30      0.12626543    27712.06      3.4359
   26   -23.80543165     0.13700557    30069.25      0.13706373    30082.01      3.7297
   27   -23.80543129     0.13700593    30069.33      0.13706409    30082.09      3.7297
   28   -23.80543095     0.13700628    30069.40      0.13706443    30082.17      3.7297
   29   -23.80543095     0.13700628    30069.40      0.13706443    30082.17      3.7297
   30   -23.80543084     0.13700638    30069.43      0.13706454    30082.19      3.7297
   31   -23.80311802     0.13931920    30577.03      0.13937736    30589.79      3.7927
   32   -23.80311802     0.13931920    30577.03      0.13937736    30589.79      3.7927
   33   -23.80311763     0.13931959    30577.12      0.13937775    30589.88      3.7927
   34   -23.80311734     0.13931989    30577.18      0.13937804    30589.94      3.7927
   35   -23.80311734     0.13931989    30577.18      0.13937804    30589.94      3.7927
   36   -23.80311722     0.13932000    30577.21      0.13937816    30589.97      3.7927
   37   -23.80311697     0.13932025    30577.26      0.13937841    30590.02      3.7927
   38   -23.80180997     0.14062725    30864.11      0.14068541    30876.88      3.8282
   39   -23.80003035     0.14240688    31254.70      0.14246503    31267.46      3.8767
   40   -23.80003033     0.14240689    31254.70      0.14246505    31267.46      3.8767
   41   -23.80002973     0.14240749    31254.83      0.14246565    31267.60      3.8767
   42   -23.80002973     0.14240749    31254.83      0.14246565    31267.60      3.8767
   43   -23.80002944     0.14240779    31254.90      0.14246594    31267.66      3.8767
   44   -23.80002924     0.14240798    31254.94      0.14246614    31267.70      3.8767
   45   -23.80002909     0.14240813    31254.97      0.14246629    31267.74      3.8767
   46   -23.80002909     0.14240813    31254.97      0.14246629    31267.74      3.8767
   47   -23.80002901     0.14240822    31254.99      0.14246637    31267.75      3.8767
   48   -23.79904050     0.14339672    31471.94      0.14345488    31484.71      3.9036
   49   -23.79904050     0.14339672    31471.94      0.14345488    31484.71      3.9036
   50   -23.79904024     0.14339698    31472.00      0.14345514    31484.76      3.9036
   51   -23.79305206     0.14938517    32786.25      0.14944332    32799.02      4.0666
   52   -23.79305194     0.14938528    32786.28      0.14944344    32799.04      4.0666
   53   -23.79305194     0.14938528    32786.28      0.14944344    32799.04      4.0666
   54   -23.79305177     0.14938545    32786.32      0.14944361    32799.08      4.0666
   55   -23.79305174     0.14938548    32786.32      0.14944364    32799.09      4.0666

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99979300 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000076  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.14577305 -0.00306459  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00306515 -0.14575198 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000770  0.00000000  0.00000000  0.00000000  0.00000006  0.14588428
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000769  0.00000000  0.00000000 -0.14588432  0.00000006
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001

   6    1  |0 0>          -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00024322  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000015  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000011 -0.54774230 -0.00000000 -0.00000000  0.40394549 -0.00000018
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003

   2    1  |1 1>+          0.00000052  0.00000000 -0.00000000  0.00000000  0.40202002  0.70062420  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.54775141 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00049191  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.31623078  0.00000007  0.00000000  0.00000000  0.00000030  0.69950704
                          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000011

   5    1  |1 1>+          0.00000000 -0.00000000  0.54764013  0.00000011 -0.00000000 -0.00000000 -0.00000018 -0.40387222
                          -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000902  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000687  0.00000000  0.00000000 -0.00027037  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000193  0.00000000  0.00000000 -0.00000000  0.00032802  0.00001204  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000351  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000541 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026962
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000285 -0.00000000 -0.00000000  0.00021623 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000387  0.00000000  0.00000000  0.00000000 -0.00009221  0.00029522  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000185 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00082199 -0.00000000 -0.00000000  0.00306079 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00082853  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000074 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.01174582 -0.00000000  0.00000000 -0.00000000  0.00307103 -0.00176091 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.80774740  0.00216261  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003
                           0.00000000 -0.00000000 -0.00000011  0.54778222 -0.00000000 -0.00000000  0.40386103 -0.00000018

   3    1  |1 0>          -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006
                          -0.00000000 -0.00000000  0.54778239  0.00000011  0.00000000  0.00000000  0.00000018  0.40386098

   4    1  |1 0>          -0.00000000 -0.00056794  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.63240411  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000364  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000867 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00027568  0.00000074  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000182  0.00000000  0.00000000 -0.00000816  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000809

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000500  0.00000000 -0.00000000 -0.00000000 -0.00000096  0.00035771  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000462  0.00000000  0.00000000 -0.00034602  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000462  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00034602

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.01174606 -0.00000000 -0.00000000 -0.00000000  0.00000948 -0.00354047 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00082254  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00307270

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00082253  0.00000000  0.00000000 -0.00307270  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006
                           0.00000000  0.00000000 -0.54774217 -0.00000011  0.00000000  0.00000000  0.00000018  0.40394566

   2    1  |1 1>-          0.00000000  0.00049191 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.54775108 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000052 -0.00000000 -0.00000000  0.00000000  0.40576563 -0.69846183 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000006
                          -0.00000000 -0.00000000 -0.00000007  0.31623660 -0.00000000 -0.00000000  0.69950280 -0.00000030

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003
                           0.00000000  0.00000000  0.00000011 -0.54763681 -0.00000000 -0.00000000  0.40387966 -0.00000018

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000902 -0.00000000  0.00000000  0.00000004 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000687 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027037

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000351 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000193  0.00000000 -0.00000000 -0.00000000 -0.00032810  0.00001023 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000541 -0.00000000 -0.00000000  0.00026962 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000285 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00021624

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000184 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000388  0.00000000 -0.00000000 -0.00000000 -0.00009057 -0.00029571 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00082200 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00306078

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01174582 -0.00000000 -0.00000000 -0.00000000  0.00306155  0.00177733  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000074  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00082854  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002070
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000049
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00001378 -0.00000000  0.00000838 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00001375 -0.00000000 -0.00000841 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.14588833  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000854  0.00000000
                           0.00000658  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000001 -0.04735762  0.00000024  0.72870453  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.57733930
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.40392818  0.44760992 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57697644 -0.00000000
                           0.00001821  0.00002837  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006973  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.60216081  0.00000010 -0.19349660  0.00000006  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000002  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.39016952  0.00000007  0.61740895 -0.00000020 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000025 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00087770  0.00000000  0.00030591  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00059374
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00033658 -0.00003209  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054665  0.00000000
                           0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00052851  0.00000000 -0.00076298  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00108556 -0.00000000 -0.00035694 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00072245
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00007294  0.00113830 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00075596  0.00000000
                          -0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000708  0.00000000  0.00000235  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00306695  0.00000569 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000013  0.00000000
                           0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000061
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57737022

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000002  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000012  0.69372482  0.00000007  0.22808580  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000002  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.69524496 -0.00000012  0.22340895 -0.00000007 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00004910  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.00000000
                          -0.00000467  0.77463686 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00058401  0.00000000

   5    1  |1 0>           0.00003641 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00006978 -0.00000000
                           0.80770127  0.00043733 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57742438 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000031  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00093678

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00044670 -0.00000000 -0.00132295 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00043769  0.00000000  0.00132596 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000
                          -0.00027436  0.00000070 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00093409 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00042700  0.00000000  0.00018273  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00042830 -0.00000000  0.00017961 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000435 -0.00000000  0.00000015 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000436  0.00000000  0.00000017  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.04244936  0.00000001  0.72900692 -0.00000024 -0.00000000  0.00000000

   2    1  |1 1>-          0.00001821 -0.00002832  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006981  0.00000000
                           0.40392841  0.44674412 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57764722  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.57733901

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000010 -0.60084830 -0.00000006 -0.19754051 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000007  0.39431186 -0.00000020 -0.61476965 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000025  0.00000000  0.00000008  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00087561  0.00000000  0.00031182 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000
                          -0.00033660  0.00003149  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054656  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00059361

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00052336  0.00000000  0.00076652  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00108794 -0.00000000  0.00034962 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000
                          -0.00007288  0.00113943 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075435 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00072256

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000710  0.00000000 -0.00000231  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000061

  16    1  |1 1>-          0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00306695  0.00000570 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.02677177  0.98865060 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.98865360 -0.02677171 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000001  0.98900127  0.00000005 -0.00000008  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.98900126 -0.00000001  0.00000000  0.00000000  0.00000008  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000005  0.98900072  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003271  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.05959074 -0.00000000  0.00000000  0.00000000  0.00001750 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.10292209 -0.05990835 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.05959353  0.00000000 -0.00000000 -0.00001721
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000197  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.10318261 -0.00000001 -0.00000976  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.05957457  0.00000000 -0.00001748  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99980501 -0.00008632  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000004 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00328584  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00008686 -0.00400734  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00404624  0.00000000  0.00000000 -0.00000305
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00328490  0.00000000 -0.00000010  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00253958 -0.00000000  0.00000000  0.00000000  0.00000678  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00362644  0.00115317 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00092945  0.00000000 -0.00000000 -0.00000546
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.01632723  0.00000000 -0.00000000  0.00000121  0.01396479 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.01632507  0.00000000 -0.00000000 -0.01396050
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000054  0.00000000  0.00000000 -0.00000005

  16    1  |1 1>+          0.00947396  0.01628626 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00040150 -0.11907941  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.05959281 -0.00000000  0.00000000 -0.00000000 -0.00001777  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.05959279 -0.00000000 -0.00001777  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000  0.00002049

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000394 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.11914927 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000331
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.99980509

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001106 -0.00328593  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00012146  0.00000000 -0.00000000 -0.00000000 -0.00000309  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00012070 -0.00000000  0.00000309 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00327927 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00444280 -0.00001496 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00414910  0.00000000 -0.00000000  0.00000000  0.00000526 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00414912  0.00000000  0.00000525 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01884081 -0.00006353 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.01632498 -0.00000000  0.01396102 -0.00000121  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.01632499 -0.00000000  0.00000000  0.00000121  0.01396102 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.05959080 -0.00000000  0.00001750 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000197  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.05959353  0.00000000 -0.00000000 -0.00001721

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.10332379 -0.05921290  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.10318200 -0.00000000  0.00000000 -0.00000000 -0.00000976  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.05957574 -0.00000000  0.00000000  0.00000000  0.00001748 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000009  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00008632  0.99980501 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00328587  0.00000000  0.00000001 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00404642  0.00000000  0.00000000  0.00000304

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00011320  0.00400689 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00328489 -0.00000000  0.00000000  0.00000000  0.00000010  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00253956  0.00000000 -0.00000678  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00092867  0.00000000 -0.00000000 -0.00000547

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00361860  0.00117683  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.01632722 -0.00000000 -0.01396479  0.00000121 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00936391  0.01634976 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000054 -0.00000000 -0.00000000  0.00000005
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.01632506  0.00000000 -0.00000000 -0.01396049

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00238570  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000063  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000001 -0.00657889  0.00000000 -0.00000000  0.00000000 -0.00015609  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000037  0.00015543 -0.00000000  0.00000000 -0.00000000 -0.00660633  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00655813  0.00000000 -0.00000000  0.00000154 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00655812 -0.00000000  0.00000000  0.00000152
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00655344  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000057  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.99443210 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000446  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00062452 -0.00000000  0.00000000  0.00084412
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000018  0.00062657 -0.00000000  0.00000000 -0.00000000 -0.00108501  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00062975 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00108542 -0.00000000  0.00000000 -0.00050593  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00062539  0.00000000 -0.00000000 -0.00113098  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000455  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000003  0.48811464 -0.00000000 -0.00000014 -0.53342755
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   8    1  |1 1>+         -0.00001191 -0.59306376  0.00000000 -0.00000000  0.00000000  0.01512351  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.60180549  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00005266  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.48794318 -0.00000003  0.00000000 -0.08072703  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.37787784  0.00000000 -0.00000009 -0.35123775
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00002114  0.17102571  0.00000000 -0.00000000  0.00000000  0.53429197  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.13737836 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00001202 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00056318  0.00000000 -0.00000000 -0.00001287
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00059536  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.06082314 -0.00068097 -0.00000000 -0.00000000  0.00000000 -0.00041397 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00125329 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00063089 -0.00000000 -0.00000000 -0.00058648

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00063089 -0.00000000  0.00000000  0.00058544 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00125039  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.48788388  0.00000000 -0.00000000  0.00000000  0.00004127 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.01734585 -0.00000000  0.00000019  0.75545052

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.01722989  0.00000000 -0.00000000  0.75585423 -0.00000019

  10    1  |1 0>           0.00000000 -0.00000000  0.00004268 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.48771804  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002582  0.00005390  0.00000000 -0.00000000  0.00000000  0.65462455  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000003  0.61686071 -0.00000000  0.00000003  0.12229071

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.61686402 -0.00000003  0.00000000 -0.12216739  0.00000003

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.06082919 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00081340  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00052855 -0.00000000  0.00000000  0.00002035 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00052847 -0.00000000 -0.00000000 -0.00002040

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00062452 -0.00000000  0.00000000 -0.00084495  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00062975  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000019  0.00062674  0.00000000 -0.00000000  0.00000000  0.00108490  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00108541 -0.00000000  0.00000000  0.00050685

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00062540 -0.00000000 -0.00000000 -0.00113067

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000  0.00000455

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.48811720 -0.00000003  0.00000000  0.53320209 -0.00000014

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00005266 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.60183122  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001190  0.59309842 -0.00000000  0.00000000 -0.00000000  0.01492864 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.48794309  0.00000000 -0.00000002 -0.08014983

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.37787432 -0.00000002  0.00000000 -0.35062173  0.00000009

  12    1  |1 1>-          0.00000000 -0.00000000  0.00001201 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.13726478  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002113  0.17082908 -0.00000000  0.00000000 -0.00000000 -0.53432216  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00056298 -0.00000000  0.00000000 -0.00001291  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.06082315 -0.00068083  0.00000000 -0.00000000  0.00000000  0.00041411  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00059540 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02020559 -0.00000742 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000213 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000006 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000238  0.00000313  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000509  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000507  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000378 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10537898 -0.00003585 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00081722  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00093607  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000075 -0.00000232 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00071937 -0.00093404 -0.00000000  0.00000000 -0.00000303
                          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000007 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00089011  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00031223 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000133 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.22061785  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.36621623  0.00000000 -0.00000000  0.00000000  0.00000000  0.00030234  0.70179098  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.01884200 -0.34051402 -0.00000000  0.00000000 -0.70676613
                          -0.00000000 -0.00000000  0.00000000 -0.00000021  0.00002452  0.00000000 -0.00000000  0.00013814

  10    1  |1 1>+          0.00000000  0.00000000 -0.57155526 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.61370071  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.44617445  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00046603 -0.06674889  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70812455 -0.46414857  0.00000000  0.00000000 -0.02001034
                          -0.00000000 -0.00000000 -0.00000000  0.00000796  0.00003342  0.00000000 -0.00000000  0.00000391

  14    1  |1 1>+          0.00000000 -0.00004400  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00004262  0.00005983 -0.00000000  0.00000000 -0.00053225
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010

  16    1  |1 1>+          0.00002257  0.00000000 -0.00000000  0.00000000  0.00000000 -0.57400656  0.00030657  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00093489 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00102346  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00102405 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00124642 -0.00000347  0.00000000 -0.00000000  0.00000388

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000260 -0.00093443 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000880  0.00000002  0.00000000  0.00000000 -0.00001939

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57760328 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000021  0.00021162  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.42298877  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.42227525  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000002  0.00004159  0.00000000  0.00000000 -0.00000005
                           0.00000000  0.00000000 -0.00000000 -0.00160897  0.57761054  0.00000000  0.00000000 -0.00028000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000225 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00073490  0.07690874  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.26269499 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.26273893  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57403719 -0.00032643 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00003674 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00003652  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00081637 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000007  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00072457  0.00093002  0.00000000  0.00000000 -0.00000303

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00093607  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000075  0.00000232  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00088959 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00031338 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000131  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.22115206 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00002450  0.00000000 -0.00000000  0.00013816
                          -0.00000000 -0.00000000  0.00000000  0.02087190 -0.34031559  0.00000000 -0.00000000  0.70688917

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.36613220 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00030240  0.70188031  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.57163663 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.61405668  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000793  0.00003371  0.00000000 -0.00000000 -0.00000385
                           0.00000000 -0.00000000 -0.00000000  0.70552376  0.46815067  0.00000000 -0.00000000 -0.01970395

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.44624329  0.00000000 -0.00000000  0.00000000  0.00000000  0.00046622  0.06695327  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00004376  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002259 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57400664 -0.00030659 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010
                           0.00000000 -0.00000000  0.00000000  0.00004297 -0.00005977 -0.00000000  0.00000000 -0.00053226

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00001187 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00001906 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000044 -0.00000000 -0.00000000 -0.00000000 -0.00000445  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000235  0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000  0.00000141
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000235  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000034 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000754  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000 -0.00006129 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000389  0.00000000  0.00000000  0.00000000  0.00000000  0.00000565 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000252  0.00000000 -0.00000000  0.00000000  0.00000221  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000  0.00035633
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000532  0.00000000 -0.00000000 -0.00000505  0.00000000  0.00000000  0.00063798
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00001110  0.00000000  0.00000000 -0.00003221  0.00000000  0.00000000  0.01974653
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.64147549  0.00000059  0.00000000  0.00000000 -0.00000003 -0.13047638  0.00000000 -0.00000000
                           0.00000007 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.11920407 -0.00000000  0.00000000  0.00000000 -0.08482517 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.14828932  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00011712 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000052 -0.56746422  0.00000000 -0.00000000 -0.32663692  0.00000008 -0.00000000 -0.00018672
                           0.00000003 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.09559262 -0.00000009  0.00000000 -0.00000000  0.00000015  0.58997067  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000025  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.52097109  0.00000000  0.00000000 -0.00000000 -0.45861621  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.51366291  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00040568  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00029260 -0.00000000  0.00000000  0.00000000  0.00000000  0.00087922  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00002919 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00002504 -0.00000000  0.00000000 -0.00000000  0.00053921  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000301  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000199  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000308  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000200  0.00000000  0.00000000 -0.00000308  0.00000000  0.00000000  0.00063930

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000485 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.65447049 -0.00000000  0.00000000 -0.00000000 -0.00041206 -0.00000000

   8    1  |1 0>          -0.00000006  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                           0.48992135  0.00000045  0.00000000  0.00000000  0.00000002  0.10024587  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000002  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000045 -0.48989412  0.00000000 -0.00000000 -0.10036385  0.00000003 -0.00000000  0.00010078

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00051698 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.65458565  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00044949 -0.00000000  0.00000000 -0.00000000  0.75201784 -0.00000000

  12    1  |1 0>           0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000031 -0.00000000  0.00000000
                          -0.13092329 -0.00000012  0.00000000 -0.00000000  0.00000018  0.71997202  0.00000000  0.00000000

  13    1  |1 0>          -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000012 -0.13120329 -0.00000000 -0.00000000  0.71992312 -0.00000018 -0.00000000  0.00093952

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000  0.00000000 -0.00052762 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00030026 -0.00000000 -0.00000000  0.00089034 -0.00000000 -0.00000000 -0.70694045

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00029866 -0.00000000  0.00000000  0.00000000  0.00000000  0.00089062  0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000389 -0.00000000  0.00000000  0.00000565 -0.00000000 -0.00000000 -0.00063933

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000253 -0.00000000  0.00000000 -0.00000000 -0.00000221  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000022 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000532 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000506 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001104  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003223 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000003 -0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000059  0.64154354  0.00000000  0.00000000 -0.13014899  0.00000003  0.00000000 -0.00043310

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00011671  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.14778129 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.11874145 -0.00000000  0.00000000 -0.00000000 -0.08488972 -0.00000000

  10    1  |1 1>-         -0.00000007  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000
                           0.56763300  0.00000052  0.00000000  0.00000000  0.00000008  0.32634340  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000009  0.09589327  0.00000000  0.00000000 -0.58992017  0.00000015  0.00000000 -0.00079301

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00040567  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.51365201 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.52148649 -0.00000000  0.00000000 -0.00000000  0.45797133 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00029433  0.00000000  0.00000000 -0.00087890  0.00000000  0.00000000  0.70699518

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00002424  0.00000000 -0.00000000  0.00000000 -0.00053920 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00003016 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00056723 -0.00000000 -0.00000000 -0.02346196 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.02345893 -0.00000000  0.00000000  0.00056729  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000001  0.02347890 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000142  0.00000000  0.00000000 -0.02347891  0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.02347794
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00002634

   7    1  |0 0>          -0.00000000  0.00000000  0.00000227 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00063933  0.00000000 -0.00000000  0.00037690 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00065215  0.00000000 -0.00000000 -0.00037622 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00063804 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00037573
                          -0.00000000  0.00000048  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000042

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00064924 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037579  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000190 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00043218  0.00000000  0.00000000 -0.00031376  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00002481 -0.00000000 -0.00000000 -0.00046432 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00053110  0.00000000  0.00000000 -0.00000000  0.00000000  0.00037984
                           0.00000000 -0.00000040  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00033387  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00079287  0.00000000 -0.00000000  0.00019203 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00045660  0.00000000 -0.00000000  0.00013405  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00005768  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00011243
                           0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013

  14    1  |1 1>+          0.70699521  0.00000000  0.00000000 -0.70688397  0.00000019  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000056  0.00000002  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.70696810 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.70691092
                          -0.00000000  0.00053268 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00079315

  16    1  |1 1>+          0.00000000 -0.00000000  0.40848530  0.00000000  0.00000000  0.70671794  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000036 -0.00000000 -0.00000000 -0.00075421 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00063929 -0.00000000 -0.00000000  0.00037665 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00037665 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000056  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00074691 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000084
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00075157

   6    1  |1 0>           0.00000000 -0.00001488  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.01974313 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00043653 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00009989  0.00000000 -0.00000000 -0.00002939  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00002937 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000046
                          -0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00041257

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00054937  0.00000000 -0.00000000 -0.00000029  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00093943 -0.00000000  0.00000000 -0.00037276  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00037273  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.81625635  0.00000000 -0.00000000 -0.00038700 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000019  0.70693883 -0.00000000  0.00000000

  16    1  |1 0>           0.00000001  0.00000000 -0.00000000  0.00000056  0.00000002  0.00000000 -0.00000000
                           0.70694041  0.00000000 -0.00000000  0.70693886 -0.00000019 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00037690 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000048  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000042
                          -0.00000000  0.00063804  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00037573

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00065251 -0.00000000  0.00000000 -0.00037561 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00035633 -0.00000000 -0.00000000  0.00064924 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00063797  0.00000000 -0.00000000  0.00037580 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01974653 -0.00000000  0.00000000  0.00000190 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00031377  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000040 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000043
                           0.00000000  0.00053092 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00037990

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00002515  0.00000000  0.00000000  0.00046436  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00018803 -0.00000000 -0.00000000  0.00033399 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00019200  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                           0.00000000 -0.00005803  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00011234

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00045654 -0.00000000  0.00000000  0.00013440  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000019  0.70688401 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.40781504 -0.00000000  0.00000000  0.70710487  0.00000000

  16    1  |1 1>-          0.00000000 -0.00053268 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00079315
                          -0.00000000  0.70696803  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70691099


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -23.94249538     -0.00005816      -12.76      0.00000000        0.00      0.0000
     2   1    -23.87867953      0.06375770    13993.20      0.06381585    14005.96      1.7365
     3   1    -23.87867946      0.06375777    13993.21      0.06381592    14005.98      1.7365
     4   1    -23.87867946      0.06375777    13993.21      0.06381592    14005.98      1.7365
     5   1    -23.87743600      0.06500123    14266.12      0.06505938    14278.88      1.7704
     6   1    -23.87743590      0.06500133    14266.14      0.06505948    14278.91      1.7704
     7   1    -23.87743578      0.06500144    14266.17      0.06505960    14278.93      1.7704
     8   1    -23.87743578      0.06500144    14266.17      0.06505960    14278.93      1.7704
     9   1    -23.87743573      0.06500149    14266.18      0.06505965    14278.94      1.7704
    10   1    -23.87483173      0.06760550    14837.69      0.06766365    14850.45      1.8412
    11   1    -23.87483165      0.06760557    14837.71      0.06766373    14850.47      1.8412
    12   1    -23.87483165      0.06760557    14837.71      0.06766373    14850.47      1.8412
    13   1    -23.87483159      0.06760564    14837.72      0.06766379    14850.49      1.8412
    14   1    -23.87483159      0.06760564    14837.72      0.06766379    14850.49      1.8412
    15   1    -23.87483152      0.06760570    14837.74      0.06766386    14850.50      1.8412
    16   1    -23.87483147      0.06760575    14837.75      0.06766391    14850.51      1.8412
    17   1    -23.86355929      0.07887793    17311.71      0.07893609    17324.47      2.1480
    18   1    -23.86355920      0.07887802    17311.72      0.07893618    17324.49      2.1480
    19   1    -23.86355884      0.07887838    17311.80      0.07893654    17324.57      2.1480
    20   1    -23.86355884      0.07887838    17311.80      0.07893654    17324.57      2.1480
    21   1    -23.86355884      0.07887839    17311.80      0.07893654    17324.57      2.1480
    22   1    -23.82125431      0.12118292    26596.58      0.12124107    26609.34      3.2991
    23   1    -23.82125431      0.12118292    26596.58      0.12124107    26609.34      3.2991
    24   1    -23.82125430      0.12118292    26596.58      0.12124108    26609.34      3.2991
    25   1    -23.81622995      0.12620728    27699.30      0.12626543    27712.06      3.4359
    26   1    -23.80543165      0.13700557    30069.25      0.13706373    30082.01      3.7297
    27   1    -23.80543129      0.13700593    30069.33      0.13706409    30082.09      3.7297
    28   1    -23.80543095      0.13700628    30069.40      0.13706443    30082.17      3.7297
    29   1    -23.80543095      0.13700628    30069.40      0.13706443    30082.17      3.7297
    30   1    -23.80543084      0.13700638    30069.43      0.13706454    30082.19      3.7297
    31   1    -23.80311802      0.13931920    30577.03      0.13937736    30589.79      3.7927
    32   1    -23.80311802      0.13931920    30577.03      0.13937736    30589.79      3.7927
    33   1    -23.80311763      0.13931959    30577.12      0.13937775    30589.88      3.7927
    34   1    -23.80311734      0.13931989    30577.18      0.13937804    30589.94      3.7927
    35   1    -23.80311734      0.13931989    30577.18      0.13937804    30589.94      3.7927
    36   1    -23.80311722      0.13932000    30577.21      0.13937816    30589.97      3.7927
    37   1    -23.80311697      0.13932025    30577.26      0.13937841    30590.02      3.7927
    38   1    -23.80180997      0.14062725    30864.11      0.14068541    30876.88      3.8282
    39   1    -23.80003035      0.14240688    31254.70      0.14246503    31267.46      3.8767
    40   1    -23.80003033      0.14240689    31254.70      0.14246505    31267.46      3.8767
    41   1    -23.80002973      0.14240749    31254.83      0.14246565    31267.60      3.8767
    42   1    -23.80002973      0.14240749    31254.83      0.14246565    31267.60      3.8767
    43   1    -23.80002944      0.14240779    31254.90      0.14246594    31267.66      3.8767
    44   1    -23.80002924      0.14240798    31254.94      0.14246614    31267.70      3.8767
    45   1    -23.80002909      0.14240813    31254.97      0.14246629    31267.74      3.8767
    46   1    -23.80002909      0.14240813    31254.97      0.14246629    31267.74      3.8767
    47   1    -23.80002901      0.14240822    31254.99      0.14246637    31267.75      3.8767
    48   1    -23.79904050      0.14339672    31471.94      0.14345488    31484.71      3.9036
    49   1    -23.79904050      0.14339672    31471.94      0.14345488    31484.71      3.9036
    50   1    -23.79904024      0.14339698    31472.00      0.14345514    31484.76      3.9036
    51   1    -23.79305206      0.14938517    32786.25      0.14944332    32799.02      4.0666
    52   1    -23.79305194      0.14938528    32786.28      0.14944344    32799.04      4.0666
    53   1    -23.79305194      0.14938528    32786.28      0.14944344    32799.04      4.0666
    54   1    -23.79305177      0.14938545    32786.32      0.14944361    32799.08      4.0666
    55   1    -23.79305174      0.14938548    32786.32      0.14944364    32799.09      4.0666

 E0 =    -23.94243722 is the energy of the lowest zeroth-order state
 E1 =    -23.94249538 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99979300 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000076  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.14577305 -0.00306459  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00306515 -0.14575198 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000770  0.00000000  0.00000000  0.00000000  0.00000006  0.14588428
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000002

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000769  0.00000000  0.00000000 -0.14588432  0.00000006
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001

  6  1     6    1  |0 0>       -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00024322  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000015  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000011 -0.54774230 -0.00000000 -0.00000000  0.40394549 -0.00000018
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003

  9  1     2    1  |1 1>+       0.00000052  0.00000000 -0.00000000  0.00000000  0.40202002  0.70062420  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.54775141 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00049191  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.31623078  0.00000007  0.00000000  0.00000000  0.00000030  0.69950704
                               -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000011

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.54764013  0.00000011 -0.00000000 -0.00000000 -0.00000018 -0.40387222
                               -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000902  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000687  0.00000000  0.00000000 -0.00027037  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000193  0.00000000  0.00000000 -0.00000000  0.00032802  0.00001204  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000351  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000541 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026962
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000285 -0.00000000 -0.00000000  0.00021623 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000387  0.00000000  0.00000000  0.00000000 -0.00009221  0.00029522  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000185 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00082199 -0.00000000 -0.00000000  0.00306079 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.00082853  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000074 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.01174582 -0.00000000  0.00000000 -0.00000000  0.00307103 -0.00176091 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.80774740  0.00216261  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003
                                0.00000000 -0.00000000 -0.00000011  0.54778222 -0.00000000 -0.00000000  0.40386103 -0.00000018

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006
                               -0.00000000 -0.00000000  0.54778239  0.00000011  0.00000000  0.00000000  0.00000018  0.40386098

 27  1     4    1  |1 0>       -0.00000000 -0.00056794  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.63240411  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000364  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000867 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00027568  0.00000074  0.00000000 -0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000182  0.00000000  0.00000000 -0.00000816  0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000809

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000500  0.00000000 -0.00000000 -0.00000000 -0.00000096  0.00035771  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000462  0.00000000  0.00000000 -0.00034602  0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000462  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00034602

 37  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.01174606 -0.00000000 -0.00000000 -0.00000000  0.00000948 -0.00354047 -0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00082254  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00307270

 39  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00082253  0.00000000  0.00000000 -0.00307270  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000006
                                0.00000000  0.00000000 -0.54774217 -0.00000011  0.00000000  0.00000000  0.00000018  0.40394566

 41  1     2    1  |1 1>-       0.00000000  0.00049191 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.54775108 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000052 -0.00000000 -0.00000000  0.00000000  0.40576563 -0.69846183 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000006
                               -0.00000000 -0.00000000 -0.00000007  0.31623660 -0.00000000 -0.00000000  0.69950280 -0.00000030

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003
                                0.00000000  0.00000000  0.00000011 -0.54763681 -0.00000000 -0.00000000  0.40387966 -0.00000018

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000902 -0.00000000  0.00000000  0.00000004 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000687 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027037

 47  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000351 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000193  0.00000000 -0.00000000 -0.00000000 -0.00032810  0.00001023 -0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000541 -0.00000000 -0.00000000  0.00026962 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000285 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00021624

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000184 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000388  0.00000000 -0.00000000 -0.00000000 -0.00009057 -0.00029571 -0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00082200 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00306078

 54  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01174582 -0.00000000 -0.00000000 -0.00000000  0.00306155  0.00177733  0.00000000 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000074  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00082854  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002070
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000049
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00001378 -0.00000000  0.00000838 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00001375 -0.00000000 -0.00000841 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.14588833  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000854  0.00000000
                                0.00000658  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000001 -0.04735762  0.00000024  0.72870453  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.57733930
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.40392818  0.44760992 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57697644 -0.00000000
                                0.00001821  0.00002837  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006973  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.60216081  0.00000010 -0.19349660  0.00000006  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000002  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.39016952  0.00000007  0.61740895 -0.00000020 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000025 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00087770  0.00000000  0.00030591  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00059374
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00033658 -0.00003209  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054665  0.00000000
                                0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00052851  0.00000000 -0.00076298  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00108556 -0.00000000 -0.00035694 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00072245
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00007294  0.00113830 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00075596  0.00000000
                               -0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000708  0.00000000  0.00000235  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00306695  0.00000569 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000013  0.00000000
                                0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000061
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57737022

 25  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000002  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000012  0.69372482  0.00000007  0.22808580  0.00000000 -0.00000000

 26  1     3    1  |1 0>        0.00000000  0.00000000  0.00000002  0.00000002  0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.69524496 -0.00000012  0.22340895 -0.00000007 -0.00000000 -0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00004910  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.00000000
                               -0.00000467  0.77463686 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00058401  0.00000000

 28  1     5    1  |1 0>        0.00003641 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00006978 -0.00000000
                                0.80770127  0.00043733 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57742438 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000031  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00093678

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00044670 -0.00000000 -0.00132295 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00043769  0.00000000  0.00132596 -0.00000000 -0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000
                               -0.00027436  0.00000070 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00093409 -0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00042700  0.00000000  0.00018273  0.00000000 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00042830 -0.00000000  0.00017961 -0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000435 -0.00000000  0.00000015 -0.00000000 -0.00000000 -0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000436  0.00000000  0.00000017  0.00000000 -0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.04244936  0.00000001  0.72900692 -0.00000024 -0.00000000  0.00000000

 41  1     2    1  |1 1>-       0.00001821 -0.00002832  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006981  0.00000000
                                0.40392841  0.44674412 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57764722  0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.57733901

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000010 -0.60084830 -0.00000006 -0.19754051 -0.00000000  0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000007  0.39431186 -0.00000020 -0.61476965 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000025  0.00000000  0.00000008  0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00087561  0.00000000  0.00031182 -0.00000000 -0.00000000  0.00000000

 47  1     8    1  |1 1>-      -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000
                               -0.00033660  0.00003149  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054656  0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00059361

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00052336  0.00000000  0.00076652  0.00000000 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00108794 -0.00000000  0.00034962 -0.00000000 -0.00000000 -0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000
                               -0.00007288  0.00113943 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075435 -0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00072256

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000710  0.00000000 -0.00000231  0.00000000  0.00000000  0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000061

 55  1    16    1  |1 1>-       0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00306695  0.00000570 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.02677177  0.98865060 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.98865360 -0.02677171 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000001  0.98900127  0.00000005 -0.00000008  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.98900126 -0.00000001  0.00000000  0.00000000  0.00000008  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000005  0.98900072  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003271  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.05959074 -0.00000000  0.00000000  0.00000000  0.00001750 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.10292209 -0.05990835 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.05959353  0.00000000 -0.00000000 -0.00001721
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000197  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.10318261 -0.00000001 -0.00000976  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.05957457  0.00000000 -0.00001748  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99980501 -0.00008632  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000004 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00328584  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00008686 -0.00400734  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00404624  0.00000000  0.00000000 -0.00000305
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00328490  0.00000000 -0.00000010  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000  0.00253958 -0.00000000  0.00000000  0.00000000  0.00000678  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00362644  0.00115317 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00092945  0.00000000 -0.00000000 -0.00000546
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.01632723  0.00000000 -0.00000000  0.00000121  0.01396479 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.01632507  0.00000000 -0.00000000 -0.01396050
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000054  0.00000000  0.00000000 -0.00000005

 23  1    16    1  |1 1>+       0.00947396  0.01628626 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00040150 -0.11907941  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.05959281 -0.00000000  0.00000000 -0.00000000 -0.00001777  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.05959279 -0.00000000 -0.00001777  0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000  0.00002049

 28  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000394 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.11914927 -0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000331
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.99980509

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001106 -0.00328593  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00012146  0.00000000 -0.00000000 -0.00000000 -0.00000309  0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00012070 -0.00000000  0.00000309 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00327927 -0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00444280 -0.00001496 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00414910  0.00000000 -0.00000000  0.00000000  0.00000526 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00414912  0.00000000  0.00000525 -0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01884081 -0.00006353 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.01632498 -0.00000000  0.01396102 -0.00000121  0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.01632499 -0.00000000  0.00000000  0.00000121  0.01396102 -0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.05959080 -0.00000000  0.00001750 -0.00000000  0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000197  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.05959353  0.00000000 -0.00000000 -0.00001721

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.10332379 -0.05921290  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.10318200 -0.00000000  0.00000000 -0.00000000 -0.00000976  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.05957574 -0.00000000  0.00000000  0.00000000  0.00001748 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000009  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00008632  0.99980501 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00328587  0.00000000  0.00000001 -0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00404642  0.00000000  0.00000000  0.00000304

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00011320  0.00400689 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00328489 -0.00000000  0.00000000  0.00000000  0.00000010  0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00253956  0.00000000 -0.00000678  0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00092867  0.00000000 -0.00000000 -0.00000547

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00361860  0.00117683  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.01632722 -0.00000000 -0.01396479  0.00000121 -0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00936391  0.01634976 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000054 -0.00000000 -0.00000000  0.00000005
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.01632506  0.00000000 -0.00000000 -0.01396049


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00238570  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000063  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000001 -0.00657889  0.00000000 -0.00000000  0.00000000 -0.00015609  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000037  0.00015543 -0.00000000  0.00000000 -0.00000000 -0.00660633  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00655813  0.00000000 -0.00000000  0.00000154 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00655812 -0.00000000  0.00000000  0.00000152
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00655344  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000057  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99443210 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000446  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00062452 -0.00000000  0.00000000  0.00084412
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000018  0.00062657 -0.00000000  0.00000000 -0.00000000 -0.00108501  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00062975 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00108542 -0.00000000  0.00000000 -0.00050593  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00062539  0.00000000 -0.00000000 -0.00113098  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000455  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000003  0.48811464 -0.00000000 -0.00000014 -0.53342755
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

 15  1     8    1  |1 1>+      -0.00001191 -0.59306376  0.00000000 -0.00000000  0.00000000  0.01512351  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000  0.60180549  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00005266  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.48794318 -0.00000003  0.00000000 -0.08072703  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.37787784  0.00000000 -0.00000009 -0.35123775
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00002114  0.17102571  0.00000000 -0.00000000  0.00000000  0.53429197  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.13737836 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00001202 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00056318  0.00000000 -0.00000000 -0.00001287
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000  0.00059536  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.06082314 -0.00068097 -0.00000000 -0.00000000  0.00000000 -0.00041397 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00125329 -0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00063089 -0.00000000 -0.00000000 -0.00058648

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00063089 -0.00000000  0.00000000  0.00058544 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00125039  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.48788388  0.00000000 -0.00000000  0.00000000  0.00004127 -0.00000000 -0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.01734585 -0.00000000  0.00000019  0.75545052

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.01722989  0.00000000 -0.00000000  0.75585423 -0.00000019

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00004268 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.48771804  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002582  0.00005390  0.00000000 -0.00000000  0.00000000  0.65462455  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000003  0.61686071 -0.00000000  0.00000003  0.12229071

 36  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.61686402 -0.00000003  0.00000000 -0.12216739  0.00000003

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.06082919 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00081340  0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00052855 -0.00000000  0.00000000  0.00002035 -0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00052847 -0.00000000 -0.00000000 -0.00002040

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00062452 -0.00000000  0.00000000 -0.00084495  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00062975  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000019  0.00062674  0.00000000 -0.00000000  0.00000000  0.00108490  0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00108541 -0.00000000  0.00000000  0.00050685

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00062540 -0.00000000 -0.00000000 -0.00113067

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000  0.00000455

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.48811720 -0.00000003  0.00000000  0.53320209 -0.00000014

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00005266 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.60183122  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001190  0.59309842 -0.00000000  0.00000000 -0.00000000  0.01492864 -0.00000000 -0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.48794309  0.00000000 -0.00000002 -0.08014983

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.37787432 -0.00000002  0.00000000 -0.35062173  0.00000009

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00001201 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.13726478  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002113  0.17082908 -0.00000000  0.00000000 -0.00000000 -0.53432216  0.00000000  0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00056298 -0.00000000  0.00000000 -0.00001291  0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.06082315 -0.00068083  0.00000000 -0.00000000  0.00000000  0.00041411  0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00059540 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02020559 -0.00000742 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000213 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000006 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000238  0.00000313  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000509  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000507  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000378 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10537898 -0.00003585 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00081722  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00093607  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000075 -0.00000232 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00071937 -0.00093404 -0.00000000  0.00000000 -0.00000303
                               -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000007 -0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00089011  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00031223 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000133 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.22061785  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.36621623  0.00000000 -0.00000000  0.00000000  0.00000000  0.00030234  0.70179098  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.01884200 -0.34051402 -0.00000000  0.00000000 -0.70676613
                               -0.00000000 -0.00000000  0.00000000 -0.00000021  0.00002452  0.00000000 -0.00000000  0.00013814

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.57155526 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.61370071  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.44617445  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00046603 -0.06674889  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70812455 -0.46414857  0.00000000  0.00000000 -0.02001034
                               -0.00000000 -0.00000000 -0.00000000  0.00000796  0.00003342  0.00000000 -0.00000000  0.00000391

 21  1    14    1  |1 1>+       0.00000000 -0.00004400  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00004262  0.00005983 -0.00000000  0.00000000 -0.00053225
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010

 23  1    16    1  |1 1>+       0.00002257  0.00000000 -0.00000000  0.00000000  0.00000000 -0.57400656  0.00030657  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00093489 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00102346  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00102405 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00124642 -0.00000347  0.00000000 -0.00000000  0.00000388

 28  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000260 -0.00093443 -0.00000000  0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000880  0.00000002  0.00000000  0.00000000 -0.00001939

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57760328 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000021  0.00021162  0.00000000

 31  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.42298877  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.42227525  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000002  0.00004159  0.00000000  0.00000000 -0.00000005
                                0.00000000  0.00000000 -0.00000000 -0.00160897  0.57761054  0.00000000  0.00000000 -0.00028000

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000225 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00073490  0.07690874  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.26269499 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.26273893  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57403719 -0.00032643 -0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00003674 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00003652  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00081637 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000007  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00072457  0.00093002  0.00000000  0.00000000 -0.00000303

 42  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00093607  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000075  0.00000232  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00088959 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00031338 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000131  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.22115206 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00002450  0.00000000 -0.00000000  0.00013816
                               -0.00000000 -0.00000000  0.00000000  0.02087190 -0.34031559  0.00000000 -0.00000000  0.70688917

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.36613220 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00030240  0.70188031  0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.57163663 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.61405668  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000793  0.00003371  0.00000000 -0.00000000 -0.00000385
                                0.00000000 -0.00000000 -0.00000000  0.70552376  0.46815067  0.00000000 -0.00000000 -0.01970395

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.44624329  0.00000000 -0.00000000  0.00000000  0.00000000  0.00046622  0.06695327  0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00004376  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002259 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57400664 -0.00030659 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010
                                0.00000000 -0.00000000  0.00000000  0.00004297 -0.00005977 -0.00000000  0.00000000 -0.00053226


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00001187 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00001906 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000044 -0.00000000 -0.00000000 -0.00000000 -0.00000445  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000235  0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000  0.00000141
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000235  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000034 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000754  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000 -0.00006129 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000389  0.00000000  0.00000000  0.00000000  0.00000000  0.00000565 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000252  0.00000000 -0.00000000  0.00000000  0.00000221  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000  0.00035633
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000532  0.00000000 -0.00000000 -0.00000505  0.00000000  0.00000000  0.00063798
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00001110  0.00000000  0.00000000 -0.00003221  0.00000000  0.00000000  0.01974653
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.64147549  0.00000059  0.00000000  0.00000000 -0.00000003 -0.13047638  0.00000000 -0.00000000
                                0.00000007 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.11920407 -0.00000000  0.00000000  0.00000000 -0.08482517 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.14828932  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00011712 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000052 -0.56746422  0.00000000 -0.00000000 -0.32663692  0.00000008 -0.00000000 -0.00018672
                                0.00000003 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.09559262 -0.00000009  0.00000000 -0.00000000  0.00000015  0.58997067  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000025  0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000  0.52097109  0.00000000  0.00000000 -0.00000000 -0.45861621  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.51366291  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00040568  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00029260 -0.00000000  0.00000000  0.00000000  0.00000000  0.00087922  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00002919 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00002504 -0.00000000  0.00000000 -0.00000000  0.00053921  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000301  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000199  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000308  0.00000000  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000200  0.00000000  0.00000000 -0.00000308  0.00000000  0.00000000  0.00063930

 27  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000485 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.65447049 -0.00000000  0.00000000 -0.00000000 -0.00041206 -0.00000000

 31  1     8    1  |1 0>       -0.00000006  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000
                                0.48992135  0.00000045  0.00000000  0.00000000  0.00000002  0.10024587  0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000002  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000045 -0.48989412  0.00000000 -0.00000000 -0.10036385  0.00000003 -0.00000000  0.00010078

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00051698 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.65458565  0.00000000  0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00044949 -0.00000000  0.00000000 -0.00000000  0.75201784 -0.00000000

 35  1    12    1  |1 0>        0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000031 -0.00000000  0.00000000
                               -0.13092329 -0.00000012  0.00000000 -0.00000000  0.00000018  0.71997202  0.00000000  0.00000000

 36  1    13    1  |1 0>       -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000012 -0.13120329 -0.00000000 -0.00000000  0.71992312 -0.00000018 -0.00000000  0.00093952

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000  0.00000000 -0.00052762 -0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00030026 -0.00000000 -0.00000000  0.00089034 -0.00000000 -0.00000000 -0.70694045

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00029866 -0.00000000  0.00000000  0.00000000  0.00000000  0.00089062  0.00000000 -0.00000001

 40  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000389 -0.00000000  0.00000000  0.00000565 -0.00000000 -0.00000000 -0.00063933

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000253 -0.00000000  0.00000000 -0.00000000 -0.00000221  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000022 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000532 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000506 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001104  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003223 -0.00000000  0.00000000

 46  1     7    1  |1 1>-       0.00000003 -0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000059  0.64154354  0.00000000  0.00000000 -0.13014899  0.00000003  0.00000000 -0.00043310

 47  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00011671  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.14778129 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.11874145 -0.00000000  0.00000000 -0.00000000 -0.08488972 -0.00000000

 49  1    10    1  |1 1>-      -0.00000007  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000
                                0.56763300  0.00000052  0.00000000  0.00000000  0.00000008  0.32634340  0.00000000  0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000009  0.09589327  0.00000000  0.00000000 -0.58992017  0.00000015  0.00000000 -0.00079301

 51  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00040567  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.51365201 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.52148649 -0.00000000  0.00000000 -0.00000000  0.45797133 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00029433  0.00000000  0.00000000 -0.00087890  0.00000000  0.00000000  0.70699518

 54  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00002424  0.00000000 -0.00000000  0.00000000 -0.00053920 -0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00003016 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00056723 -0.00000000 -0.00000000 -0.02346196 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.02345893 -0.00000000  0.00000000  0.00056729  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000001  0.02347890 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000142  0.00000000  0.00000000 -0.02347891  0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.02347794
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00002634

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000227 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00063933  0.00000000 -0.00000000  0.00037690 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000  0.00065215  0.00000000 -0.00000000 -0.00037622 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00063804 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00037573
                               -0.00000000  0.00000048  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000042

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00064924 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037579  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000190 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00043218  0.00000000  0.00000000 -0.00031376  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00002481 -0.00000000 -0.00000000 -0.00046432 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00053110  0.00000000  0.00000000 -0.00000000  0.00000000  0.00037984
                                0.00000000 -0.00000040  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00033387  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00079287  0.00000000 -0.00000000  0.00019203 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00045660  0.00000000 -0.00000000  0.00013405  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00005768  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00011243
                                0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013

 21  1    14    1  |1 1>+       0.70699521  0.00000000  0.00000000 -0.70688397  0.00000019  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000056  0.00000002  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000  0.70696810 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.70691092
                               -0.00000000  0.00053268 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00079315

 23  1    16    1  |1 1>+       0.00000000 -0.00000000  0.40848530  0.00000000  0.00000000  0.70671794  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000036 -0.00000000 -0.00000000 -0.00075421 -0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00063929 -0.00000000 -0.00000000  0.00037665 -0.00000000 -0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00037665 -0.00000000  0.00000000

 27  1     4    1  |1 0>       -0.00000000  0.00000056  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00074691 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000084
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00075157

 29  1     6    1  |1 0>        0.00000000 -0.00001488  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.01974313 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00043653 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00009989  0.00000000 -0.00000000 -0.00002939  0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00002937 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000046
                               -0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00041257

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00054937  0.00000000 -0.00000000 -0.00000029  0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00093943 -0.00000000  0.00000000 -0.00037276  0.00000000  0.00000000  0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00037273  0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.81625635  0.00000000 -0.00000000 -0.00038700 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000019  0.70693883 -0.00000000  0.00000000

 39  1    16    1  |1 0>        0.00000001  0.00000000 -0.00000000  0.00000056  0.00000002  0.00000000 -0.00000000
                                0.70694041  0.00000000 -0.00000000  0.70693886 -0.00000019 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00037690 -0.00000000  0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000048  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000042
                               -0.00000000  0.00063804  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00037573

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00065251 -0.00000000  0.00000000 -0.00037561 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00035633 -0.00000000 -0.00000000  0.00064924 -0.00000000 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00063797  0.00000000 -0.00000000  0.00037580 -0.00000000 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01974653 -0.00000000  0.00000000  0.00000190 -0.00000000 -0.00000000 -0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00031377  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000040 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000043
                                0.00000000  0.00053092 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00037990

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00002515  0.00000000  0.00000000  0.00046436  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00018803 -0.00000000 -0.00000000  0.00033399 -0.00000000 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00019200  0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                                0.00000000 -0.00005803  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00011234

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00045654 -0.00000000  0.00000000  0.00013440  0.00000000

 53  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000019  0.70688401 -0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.40781504 -0.00000000  0.00000000  0.70710487  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00053268 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00079315
                               -0.00000000  0.70696803  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70691099



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.12%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    2.12%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.13%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.13%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.32%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.16%   49.09%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   48.93%
 12  1     5    1  |1 1>+         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%   16.31%
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
 23  1    16    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.25%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.31%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.31%
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
 40  1     1    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.32%
 41  1     2    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.46%   48.78%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   10.00%    0.00%    0.00%   48.93%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   29.99%    0.00%    0.00%   16.31%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          2.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.22%    0.00%   53.10%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 10  1     3    1  |1 1>+        16.32%   20.04%    0.00%    0.00%    0.00%    0.00%   33.29%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   36.26%    0.00%    3.74%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   15.22%    0.00%   38.12%    0.00%    0.00%    0.00%
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
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   48.13%    0.00%    5.20%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   48.34%    0.00%    4.99%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.24%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
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
 40  1     1    1  |1 1>-         0.00%    0.00%    0.18%    0.00%   53.15%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-        16.32%   19.96%    0.00%    0.00%    0.00%    0.00%   33.37%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   36.10%    0.00%    3.90%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   15.55%    0.00%   37.79%    0.00%    0.00%
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
  2  1     2    1  |0 0>          0.07%   97.74%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         97.74%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   97.81%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   97.81%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   97.81%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.36%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         1.06%    0.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.06%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.35%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%
 23  1    16    1  |1 1>+         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    1.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.42%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         1.07%    0.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    1.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.35%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.96%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         98.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.00%   28.45%
 15  1     8    1  |1 1>+         0.00%   35.17%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%   36.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.65%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%   12.34%
 19  1    12    1  |1 1>+         0.00%    2.92%    0.00%    0.00%    0.00%   28.55%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    1.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%   57.07%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%   57.13%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%   23.79%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   38.05%    0.00%    0.00%    1.50%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%   38.05%    0.00%    0.00%    1.49%    0.00%
 37  1    14    1  |1 0>          0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%   23.83%    0.00%    0.00%   28.43%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%   36.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%   35.18%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.64%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%   14.28%    0.00%    0.00%   12.29%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    1.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    2.92%    0.00%    0.00%    0.00%   28.55%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.11%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    4.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+        13.41%    0.00%    0.00%    0.00%    0.00%    0.00%   49.25%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.04%   11.59%    0.00%    0.00%   49.95%
 17  1    10    1  |1 1>+         0.00%    0.00%   32.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%   37.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+        19.91%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   50.14%   21.54%    0.00%    0.00%    0.04%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.95%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>         33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%   17.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%   17.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.36%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.59%    0.00%
 35  1    12    1  |1 0>          0.00%    6.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    6.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.95%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    4.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.04%   11.58%    0.00%    0.00%   49.97%
 48  1     9    1  |1 1>-        13.41%    0.00%    0.00%    0.00%    0.00%    0.00%   49.26%    0.00%
 49  1    10    1  |1 1>-         0.00%   32.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%   37.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   49.78%   21.92%    0.00%    0.00%    0.04%
 52  1    13    1  |1 1>-        19.91%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.95%    0.00%    0.00%
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
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 14  1     7    1  |1 1>+        41.15%    0.00%    0.00%    0.00%    0.00%    1.70%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    1.42%    0.00%    0.00%    0.00%    0.72%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    2.20%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%   32.20%    0.00%    0.00%   10.67%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.91%    0.00%    0.00%    0.00%    0.00%   34.81%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%   27.14%    0.00%    0.00%    0.00%   21.03%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%   26.38%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%   42.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>         24.00%    0.00%    0.00%    0.00%    0.00%    1.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%   24.00%    0.00%    0.00%    1.01%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.55%    0.00%
 35  1    12    1  |1 0>          1.71%    0.00%    0.00%    0.00%    0.00%   51.84%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    1.72%    0.00%    0.00%   51.83%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%   41.16%    0.00%    0.00%    1.69%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    2.18%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    1.41%    0.00%    0.00%    0.00%    0.72%    0.00%
 49  1    10    1  |1 1>-        32.22%    0.00%    0.00%    0.00%    0.00%   10.65%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.92%    0.00%    0.00%   34.80%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%   26.38%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%   27.19%    0.00%    0.00%    0.00%   20.97%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+        49.98%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   49.97%
 23  1    16    1  |1 1>+         0.00%    0.00%   16.69%    0.00%    0.00%   49.95%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   66.63%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
 39  1    16    1  |1 0>         49.98%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%   16.63%    0.00%    0.00%   50.00%    0.00%
 55  1    16    1  |1 1>-         0.00%   49.98%    0.00%    0.00%    0.00%    0.00%   49.97%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      333.78       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1310.40    842.59    374.52     88.90      2.01      0.43      1.75
 REAL TIME  *      1384.96 SEC
 DISK USED  *       376.42 MB (local),        2.32 GB (total)
 SF USED    *         2.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=    -23.793051743106

              CI              CI           MULTI         RHF-SCF
    -23.77705651    -23.79624638    -23.55373305    -23.68007977
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
